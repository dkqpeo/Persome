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
import com.c3l2.persome.entity.point.TransactionType;
import com.c3l2.persome.entity.product.Product;
import com.c3l2.persome.entity.product.ProductOption;
import com.c3l2.persome.entity.user.User;
import com.c3l2.persome.order.dto.*;
import com.c3l2.persome.order.dto.response.OrderResponseDto;
import com.c3l2.persome.order.dto.request.OrderRequestDto;
import com.c3l2.persome.order.dto.response.OrderSummaryDto;
import com.c3l2.persome.order.repository.OrderRepository;
import com.c3l2.persome.user.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.c3l2.persome.entity.order.OrderStatus;

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
    private final UserPointService userPointService;

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

        order.applyPricing(originalPrice, promoDiscountTotal, totalQty);

        //3. 쿠폰 할인 적용
        UserCoupon userCoupon = null;
        if (request.getUserCouponId() != null) {
            userCoupon = userCouponRepository.findById(request.getUserCouponId())
                    .orElseThrow(() -> new IllegalArgumentException("선택한 쿠폰을 찾을 수 없습니다."));
            order.assignUserCoupon(userCoupon);
        }
        BigDecimal afterCoupon = applyCoupon(userCoupon, promoAppliedTotal);
        order.applyCouponDiscount(promoAppliedTotal.subtract(afterCoupon));

        //4. 배송비 계산
        int shippingFee = calculateShippingFee(promoAppliedTotal,request.getReceiveType());
        order.applyShippingFee(shippingFee);

        // 배송비 반영된 결제 금액 (쿠폰 적용 후 + 배송비)
        BigDecimal priceWithShipping = afterCoupon.add(BigDecimal.valueOf(shippingFee));

        //5. 포인트 할인 적용
        BigDecimal afterPoint = priceWithShipping;
        if (request.getUsePointAmount() != null && request.getUsePointAmount() > 0) {
            //포인트 사용
            PointChangeRequestDto useDto = PointChangeRequestDto.builder()
                    .orderId(order.getId())
                    .amount(request.getUsePointAmount())
                    .type(TransactionType.USE)
                    .build();

            PointChangeResponseDto pointResponse = userPointService.changePoints(user.getId(), useDto);

            if (!pointResponse.isSuccess()) {
                throw new IllegalStateException("포인트 사용에 실패했습니다.");
            }

            // 할인 금액 적용
            order.applyPointDiscount(BigDecimal.valueOf(pointResponse.getChangedPoints()));

            // 결제 금액 계산용
            afterPoint = priceWithShipping.subtract(BigDecimal.valueOf(pointResponse.getChangedPoints()));
        }

        //6. 최종 주문 금액
        order.calculateFinalAmount(afterPoint);

        //7. 배송 스냅샷 저장
        if (request.getReceiveType() == ReceiveType.DELIVERY) {
            DeliverySnapshot snapshot = DeliverySnapshot.builder()
                    .receiverName(request.getReceiverName())
                    .receiverPhone(request.getReceiverPhone())
                    .address(request.getAddress())
                    .addressDetail(request.getAddressDetail())
                    .build();
            order.registerDelivery(snapshot);
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

    //주문 취소
    @Transactional
    public void cancelOrder(Long orderId, Long userId) {
        Order order = orderRepository.findById(orderId)
                .orElseThrow(() -> new IllegalArgumentException("주문을 찾을 수 없습니다."));

        //주문자가 맞는지 확인
        if (!order.getUser().getId().equals(userId)) {
            throw new IllegalStateException("본인의 주문만 취소할 수 있습니다.");
        }

        //취소 가능 상태만 허용
        if (!(order.getOrderStatus() == OrderStatus.PENDING
                || order.getOrderStatus() == OrderStatus.PAID
                || order.getOrderStatus() == OrderStatus.PROCESSING)) {
            throw new IllegalStateException("현재 상태에서는 주문을 취소할 수 없습니다.");
        }

        //1. 쿠폰 복구
        UserCoupon userCoupon = order.getUserCoupon();
        if (userCoupon != null && userCoupon.getStatus() == UserCouponStatus.USED) {
            userCoupon.setStatus(UserCouponStatus.ISSUED);
            userCoupon.setUsedAt(null);
            userCouponRepository.save(userCoupon);
        }

        //2. 포인트 복구
        if (order.getPointUsedAmount() != null && order.getPointUsedAmount().compareTo(BigDecimal.ZERO) > 0) {
            int refundPoints = order.getPointUsedAmount().intValue();
            PointChangeRequestDto restoreDto = PointChangeRequestDto.builder()
                    .orderId(order.getId())
                    .amount(refundPoints)
                    .type(TransactionType.RESTORE)
                    .build();
            userPointService.changePoints(userId, restoreDto);
        }

        //3. 상태 변경
        order.cancel();

        orderRepository.save(order);
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
