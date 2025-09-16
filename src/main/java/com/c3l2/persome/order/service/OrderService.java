package com.c3l2.persome.order.service;

import com.c3l2.persome.coupon.repository.UserCouponRepository;
import com.c3l2.persome.entity.coupon.Coupon;
import com.c3l2.persome.entity.coupon.UserCoupon;
import com.c3l2.persome.entity.coupon.constant.DiscountType;
import com.c3l2.persome.entity.coupon.constant.UserCouponStatus;
import com.c3l2.persome.entity.delivery.Delivery;
import com.c3l2.persome.entity.delivery.DeliverySnapshot;
import com.c3l2.persome.entity.delivery.DeliveryStatus;
import com.c3l2.persome.entity.order.Order;
import com.c3l2.persome.entity.order.OrderItem;
import com.c3l2.persome.entity.order.ReceiveType;
import com.c3l2.persome.entity.product.Product;
import com.c3l2.persome.entity.product.ProductOption;
import com.c3l2.persome.entity.user.User;
import com.c3l2.persome.order.dto.*;
import com.c3l2.persome.order.dto.response.OrderResponseDto;
import com.c3l2.persome.order.dto.request.OrderRequestDto;
import com.c3l2.persome.order.dto.response.OrderSummaryDto;
import com.c3l2.persome.order.repository.OrderRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

@RequiredArgsConstructor
@Service
public class OrderService {
    private final OrderRepository orderRepository;
    private final UserRepository userRepository;
    private final ProductOptionRepository productOptionRepository;
    private final UserCouponRepository userCouponRepository;
    private final PricingService pricingService;

    //주문 생성
    @Transactional
    public OrderResponseDto createOrder(Long userId, OrderRequestDto request) {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new IllegalArgumentException("회원 정보를 찾을 수 없습니다."));

        //1. 주문 생성
        Order order = request.toEntity(user);

        //2. 주문 상품 생성 + 가격 계산
        BigDecimal originalPrice = BigDecimal.ZERO;   // 프로모션 적용 전 총액
        BigDecimal promoDiscountTotal = BigDecimal.ZERO; // 프로모션 할인 총액
        BigDecimal promoAppliedTotal = BigDecimal.ZERO;    // 프로모션 적용 후 총액
        int totalQty = 0;

        for (OrderRequestDto.OrderProductDto productDto : request.getProducts()) {
            ProductOption option = productOptionRepository.findById(productDto.getProductOptionId())
                    .orElseThrow(() -> new IllegalArgumentException("상품 옵션을 찾을 수 없습니다."));

            Product product = option.getProduct();

            //프로모션, 옵션 추가금 등등 모두 계산한 가격 * 수량
            PriceCalculationResult calc = pricingService.calculateFinalPrice(
                    product,
                    option,
                    user,
                    productDto.getQuantity()
            );
            //주문 아이템 생성
            OrderItem orderItem = OrderItem.builder()
                    .order(order)
                    .productOption(option)
                    .quantity(productDto.getQuantity())
                    .unitPrice(calc.getUnitPrice())
                    .totalPrice(calc.getFinalPrice())
                    .build();
            order.getOrderItems().add(orderItem);

            // 합계 누적
            originalPrice = originalPrice.add(calc.getTotalPrice());      // 프로모션 전 총액
            promoDiscountTotal = promoDiscountTotal.add(calc.getPromoDiscount()); // 프로모션 할인 총액
            promoAppliedTotal = promoAppliedTotal.add(calc.getFinalPrice());     // 프로모션 적용 후 합계
            totalQty += productDto.getQuantity();

        }

        order.setOriginalPrice(originalPrice);
        order.setPromoDiscountAmount(promoDiscountTotal);
        order.setOrderTotalQty(totalQty);

        //3. 쿠폰 할인 적용
        UserCoupon userCoupon = null;
        if (request.getUserCouponId() != null) {
            userCoupon = userCouponRepository.findById(request.getUserCouponId())
                    .orElseThrow(() -> new IllegalArgumentException("선택한 쿠폰을 찾을 수 없습니다."));
            order.setUserCoupon(userCoupon);
        }
        BigDecimal afterCoupon = applyCoupon(userCoupon, promoAppliedTotal);
        order.setCouponDiscountAmount(promoAppliedTotal.subtract(afterCoupon));

        //4. 포인트 할인 적용
        BigDecimal afterPoint = applyPoint(user, request.getUsePointAmount(), afterCoupon);
        order.setPointUsedAmount(afterCoupon.subtract(afterPoint));

        //5. 배송비 계산
        int shippingFee = calculateShippingFee(promoAppliedTotal,request.getReceiveType());
        order.setShippingFee(shippingFee);

        //6. 최종 주문 금액 (포인트 할인 후 금액 + 배송비)
        order.setOrderTotalAmount(afterPoint.add(BigDecimal.valueOf(shippingFee)));

        //7. 배송 스냅샷 저장
        if (request.getReceiveType() == ReceiveType.DELIVERY) {
            DeliverySnapshot snapshot = DeliverySnapshot.builder()
                    .receiverName(request.getReceiverName())
                    .receiverPhone(request.getReceiverPhone())
                    .address(request.getAddress())
                    .addressDetail(request.getAddressDetail())
                    .build();

            Delivery delivery = Delivery.builder()
                    .order(order)
                    .deliveryStatus(DeliveryStatus.READY)
                    .deliverySnapshot(snapshot)
                    .build();

            order.setDelivery(delivery);
        }

        //8. 저장 & 응답
        Order savedOrder = orderRepository.save(order);
        return OrderResponseDto.fromEntity(savedOrder);
    }

    //주문 목록 조회
    @Transactional(readOnly = true)
    public List<OrderSummaryDto> getUserOrders(Long userId) {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new IllegalArgumentException("회원 정보를 찾을 수 없습니다."));

        List<Order> orders = orderRepository.findByUserId(userId);

        return orders.stream()
                .map(OrderSummaryDto::fromEntity)
                .toList();
    }

    //주문 상세 조회
    @Transactional(readOnly = true)
    public OrderResponseDto getOrderDetail(Long orderId) {
        Order order = orderRepository.findById(orderId)
                .orElseThrow(() -> new IllegalArgumentException("주문을 찾을 수 없습니다."));
        return OrderResponseDto.fromEntity(order);
    }

    //쿠폰 할인 - 주문 전체 금액 기준(배송비 제외)
    private BigDecimal applyCoupon(UserCoupon userCoupon, BigDecimal orderPrice) {
        if (userCoupon == null || userCoupon.getStatus() != UserCouponStatus.ISSUED) {
            return orderPrice;
        }

        Coupon coupon = userCoupon.getCoupon();
        LocalDateTime now = LocalDateTime.now();

        //유효기간 체크
        if (coupon.getStartDate() != null && coupon.getStartDate().isAfter(now)) {return orderPrice;}
        if (coupon.getEndDate() != null && coupon.getEndDate().isBefore(now)) {return orderPrice;}

        //최소 주문 금액 조건 체크
        if (coupon.getMinOrderPrice() != null && orderPrice.compareTo(coupon.getMinOrderPrice()) < 0) {return orderPrice;}

        //할인 금액 계산
        BigDecimal discount = BigDecimal.ZERO;
        if (coupon.getDiscountType() == DiscountType.FIXED) {
            discount = coupon.getDiscountValue();
        } else if (coupon.getDiscountType() == DiscountType.RATE) {
            BigDecimal rate = coupon.getDiscountValue().divide(BigDecimal.valueOf(100));
            discount = orderPrice.multiply(rate);
        }

        //최대 할인 금액 제한
        if (coupon.getMaxDiscountPrice() != null) {
            discount = discount.min(coupon.getMaxDiscountPrice());
        }

        //최종 금액
        BigDecimal discountedPrice = orderPrice.subtract(discount).max(BigDecimal.ZERO);

        //쿠폰 사용 처리
        userCoupon.setStatus(UserCouponStatus.USED);
        userCoupon.setUsedAt(now);
        userCouponRepository.save(userCoupon);

        return discountedPrice;
    }

    // 포인트 할인 - 주문 전체 금액 + 쿠폰 할인 후 기준(배송비 제외)
    private BigDecimal applyPoint(User user, Integer usePointAmount, BigDecimal currentPrice) {
        if (usePointAmount == null || usePointAmount <= 0) {return currentPrice;}

        int availablePoints = user.getUserPoint().getBalance(); // 유저 보유 포인트

        // 실제 사용할 포인트 = min(요청포인트, 보유포인트, 결제금액)
        int applicablePoints = Math.min(usePointAmount, Math.min(availablePoints, currentPrice.intValue()));

        // 차감된 결제 금액
        BigDecimal discountedPrice = currentPrice.subtract(BigDecimal.valueOf(applicablePoints));

        // 유저 포인트 차감
        user.getUserPoint().setBalance(availablePoints - applicablePoints);

        return discountedPrice;
    }


    //배송비 계산
    private int calculateShippingFee(BigDecimal itemsTotal, ReceiveType receiveType) {
        if (receiveType == ReceiveType.PICKUP) {
            return 0;
        }
        int baseFee = 2500;
        BigDecimal freeThreshold = BigDecimal.valueOf(30000);

        return itemsTotal.compareTo(freeThreshold) >= 0 ? 0 : baseFee;
    }
}
