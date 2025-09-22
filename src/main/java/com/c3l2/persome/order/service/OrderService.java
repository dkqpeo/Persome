package com.c3l2.persome.order.service;

import com.c3l2.persome.cart.entity.CartItem;
import com.c3l2.persome.cart.repository.CartItemRepository;
import com.c3l2.persome.config.error.ErrorCode;
import com.c3l2.persome.config.error.exceprion.BusinessException;
import com.c3l2.persome.coupon.service.UserCouponService;
import com.c3l2.persome.delivery.entity.DeliverySnapshot;
import com.c3l2.persome.order.dto.response.*;
import com.c3l2.persome.order.entity.Order;
import com.c3l2.persome.order.entity.OrderItem;
import com.c3l2.persome.order.entity.ReceiveType;
import com.c3l2.persome.point.dto.PointChangeRequestDto;
import com.c3l2.persome.point.dto.PointChangeResponseDto;
import com.c3l2.persome.point.entity.TransactionType;
import com.c3l2.persome.point.service.UserPointService;
import com.c3l2.persome.product.entity.Product;
import com.c3l2.persome.product.entity.ProductOption;
import com.c3l2.persome.product.repository.ProductOptionRepository;
import com.c3l2.persome.user.entity.User;
import com.c3l2.persome.order.dto.*;
import com.c3l2.persome.order.dto.request.OrderRequestDto;
import com.c3l2.persome.order.repository.OrderRepository;
import com.c3l2.persome.user.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.c3l2.persome.order.entity.OrderStatus;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@RequiredArgsConstructor
@Service
public class OrderService {
    private final OrderRepository orderRepository;
    private final UserRepository userRepository;
    private final ProductOptionRepository productOptionRepository;
    private final CartItemRepository cartItemRepository;
    private final PricingService pricingService;
    private final UserPointService userPointService;
    private final UserCouponService userCouponService;

    //주문 준비
    public OrderPrepareResponseDto prepareOrder(List<Long> cartItemIds) {
        List<CartItem> cartItems = cartItemRepository.findAllById(cartItemIds);

        List<OrderItemDto> itemDtos = new ArrayList<>();
        int productPriceSum = 0;
        int discountSum = 0;
        int finalPriceSum = 0;

        for (CartItem ci : cartItems) {

            Product product = ci.getProductOption().getProduct();
            ProductOption option = ci.getProductOption();
            int qty = ci.getQuantity();

            PriceCalculationResult calc = pricingService.calculateFinalPrice(product, option, qty);

            productPriceSum += calc.getTotalPrice().intValue();
            discountSum += calc.getPromoDiscount().intValue();
            finalPriceSum += calc.getFinalPrice().intValue();

            OrderItemDto itemDto = OrderItemDto.builder()
                    .orderItemId(null)
                    .productOptionId(option.getId())
                    .productName(product.getName() + " - " + option.getName())
                    .quantity(qty)
                    .unitPrice(calc.getUnitPrice())
                    .totalPrice(calc.getTotalPrice())
                    .status("PREPARE")
                    .imageUrl(product.getProductImgs().isEmpty() ? null :
                            String.valueOf(product.getProductImgs().getFirst()))
                    .build();

            itemDtos.add(itemDto);
        }

        OrderPrepareDto summary = OrderPrepareDto.builder()
                .productPrice(productPriceSum)
                .discountPrice(discountSum)
                .shippingFee(0)
                .finalPrice(finalPriceSum)
                .build();

        return OrderPrepareResponseDto.builder()
                .items(itemDtos)
                .summary(summary)
                .build();
    }

    //주문 생성
    @Transactional
    public OrderResponseDto createOrder(Long userId, OrderRequestDto request) {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new BusinessException(ErrorCode.USER_NOT_EXISTS));

        //1. 주문 생성
        Order order = request.toEntity(user);

        //2. 주문 상품 생성 + 가격 계산
        BigDecimal originalPrice = BigDecimal.ZERO;   // 프로모션 적용 전 총액
        BigDecimal promoDiscountTotal = BigDecimal.ZERO; // 프로모션 할인 총액
        BigDecimal promoAppliedTotal = BigDecimal.ZERO;    // 프로모션 적용 후 총액
        int totalQty = 0;

        for (OrderRequestDto.OrderProductDto productDto : request.getProducts()) {
            ProductOption option = productOptionRepository.findById(productDto.getProductOptionId())
                    .orElseThrow(() -> new BusinessException(ErrorCode.PRODUCT_OPTION_NOT_FOUND));

            Product product = option.getProduct();

            //프로모션, 옵션 추가금 등등 모두 계산한 가격 * 수량
            PriceCalculationResult calc = pricingService.calculateFinalPrice(
                    product,
                    option,
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
            originalPrice = originalPrice.add(calc.getTotalPrice());               // 프로모션 전 총액
            promoDiscountTotal = promoDiscountTotal.add(calc.getPromoDiscount()); // 프로모션 할인 총액
            promoAppliedTotal = promoAppliedTotal.add(calc.getFinalPrice());     // 프로모션 적용 후 합계
            totalQty += productDto.getQuantity();

        }

        order.applyPricing(originalPrice, promoDiscountTotal, totalQty);

        //3. 쿠폰 할인 적용
        BigDecimal afterCoupon = promoAppliedTotal;
        if (request.getUserCouponId() != null) {
            afterCoupon = userCouponService.applyCoupon(request.getUserCouponId(), promoAppliedTotal);
            order.applyCouponDiscount(promoAppliedTotal.subtract(afterCoupon));
        }

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
                throw new BusinessException(ErrorCode.ORDER_POINT_USE_FAILED);
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
        List<Order> orders = orderRepository.findByUserId(userId);

        return orders.stream()
                .map(OrderSummaryDto::fromEntity)
                .toList();
    }

    //주문 상세 조회
    @Transactional(readOnly = true)
    public OrderResponseDto getOrderDetail(Long orderId) {
        Order order = orderRepository.findById(orderId)
                .orElseThrow(() -> new BusinessException(ErrorCode.ORDER_NOT_FOUND));
        return OrderResponseDto.fromEntity(order);
    }

    //주문 취소
    @Transactional
    public void cancelOrder(Long orderId, Long userId) {
        Order order = orderRepository.findById(orderId)
                .orElseThrow(() -> new BusinessException(ErrorCode.ORDER_NOT_FOUND));

        //주문자가 맞는지 확인
        if (!order.getUser().getId().equals(userId)) {
            throw new BusinessException(ErrorCode.ORDER_USER_MISMATCH);
        }

        //취소 가능 상태만 허용
        if (!(order.getOrderStatus() == OrderStatus.PENDING
                || order.getOrderStatus() == OrderStatus.PAID
                || order.getOrderStatus() == OrderStatus.PROCESSING)) {
            throw new BusinessException(ErrorCode.ORDER_CANNOT_CANCEL);
        }

        //1. 쿠폰 복구
        userCouponService.restoreCoupon(order.getUserCoupon());

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
