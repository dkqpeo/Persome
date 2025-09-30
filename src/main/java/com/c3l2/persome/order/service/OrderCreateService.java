package com.c3l2.persome.order.service;

import com.c3l2.persome.config.error.ErrorCode;
import com.c3l2.persome.config.error.exceprion.BusinessException;
import com.c3l2.persome.coupon.service.UserCouponService;
import com.c3l2.persome.delivery.entity.Delivery;
import com.c3l2.persome.delivery.entity.DeliverySnapshot;
import com.c3l2.persome.delivery.entity.DeliveryStatus;
import com.c3l2.persome.order.dto.PriceCalculationResult;
import com.c3l2.persome.order.dto.request.OrderRequestDto;
import com.c3l2.persome.order.dto.response.OrderResponseDto;
import com.c3l2.persome.order.entity.Order;
import com.c3l2.persome.order.entity.OrderItem;
import com.c3l2.persome.order.entity.ReceiveType;
import com.c3l2.persome.payment.dto.KakaoPayReadyResponse;
import com.c3l2.persome.payment.dto.KakaoPayRequest;
import com.c3l2.persome.payment.dto.PaymentResponseDto;
import com.c3l2.persome.payment.entity.Payment;
import com.c3l2.persome.payment.entity.PaymentMethod;
import com.c3l2.persome.payment.entity.PaymentStatus;
import com.c3l2.persome.payment.service.KakaoPaymentService;
import com.c3l2.persome.payment.service.PaymentService;
import com.c3l2.persome.point.dto.PointChangeRequestDto;
import com.c3l2.persome.point.dto.PointChangeResponseDto;
import com.c3l2.persome.point.entity.TransactionType;
import com.c3l2.persome.product.entity.Product;
import com.c3l2.persome.product.entity.ProductOption;
import com.c3l2.persome.product.service.ProductOptionService;
import com.c3l2.persome.user.entity.User;
import com.c3l2.persome.user.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

@Slf4j
@Service
@Transactional
@RequiredArgsConstructor
public class OrderCreateService {

    private final OrderService orderService;

    private final UserService userService;
    private final UserCouponService userCouponService;

    private final ProductOptionService productOptionService;
    private final PricingService pricingService;

    private final PaymentService paymentService;
    private final KakaoPaymentService kakaoPaymentService;

    private final OrderPostProcessService orderPostProcessService;

    public OrderResponseDto createOrder(Long userId, OrderRequestDto request, HttpServletRequest httpRequest) {

        User user = userService.getUserById(userId);
        
        // 1. 주문 및 상품 처리
        OrderWithCalculation orderResult = createOrderWithItems(user, request);
        Order savedOrder = orderService.save(orderResult.order());
        
        // 2. 할인 적용 (쿠폰, 배송비, 포인트) - promoAppliedTotal 전달
        BigDecimal finalAmount = applyAllDiscounts(savedOrder, request, user, orderResult.promoAppliedTotal());
        
        // 3. 배송 처리
        processDeliveryIfNeeded(savedOrder, request);
        
        // 4. 결제 처리
        PaymentProcessResult paymentResult = processPayment(savedOrder, request, httpRequest);
        
        // 5. 주문 완료 후처리 (포인트 적립, 장바구니 삭제, 재고 반영)
        orderPostProcessService.processOrderCompletion(savedOrder, request.getCartItemIds(), user, finalAmount);
        
        // 9. 응답 생성
        return buildOrderResponse(savedOrder, paymentResult);
    }

    /**
     * 주문 및 주문 상품들을 생성하고 기본 가격을 계산합니다.
     */
    private OrderWithCalculation createOrderWithItems(User user, OrderRequestDto request) {
        Order order = request.toEntity(user);
        order.addRequestMessage(request.getRequestMessage());

        BigDecimal originalPrice = BigDecimal.ZERO;
        BigDecimal promoDiscountTotal = BigDecimal.ZERO;
        BigDecimal promoAppliedTotal = BigDecimal.ZERO;
        int totalQty = 0;

        for (OrderRequestDto.OrderProductDto productDto : request.getProducts()) {
            ProductOption option = productOptionService.getById(productDto.getProductOptionId());
            Product product = option.getProduct();

            PriceCalculationResult calc = pricingService.calculateFinalPrice(
                    product,
                    option,
                    productDto.getQuantity()
            );

            OrderItem orderItem = OrderItem.builder()
                    .order(order)
                    .productOption(option)
                    .quantity(productDto.getQuantity())
                    .unitPrice(calc.getUnitPrice())
                    .totalPrice(calc.getFinalPrice())
                    .build();
            order.getOrderItems().add(orderItem);

            originalPrice = originalPrice.add(calc.getTotalPrice());
            promoDiscountTotal = promoDiscountTotal.add(calc.getPromoDiscount());
            promoAppliedTotal = promoAppliedTotal.add(calc.getFinalPrice());
            totalQty += productDto.getQuantity();
        }

        order.applyPricing(originalPrice, promoDiscountTotal, totalQty);
        return new OrderWithCalculation(order, promoAppliedTotal);
    }

    /**
     * 쿠폰, 배송비, 포인트 할인을 순차적으로 적용합니다.
     */
    private BigDecimal applyAllDiscounts(Order savedOrder, OrderRequestDto request, User user, BigDecimal promoAppliedTotal) {
        BigDecimal currentAmount = promoAppliedTotal; // 올바른 프로모션 적용 후 금액 사용

        // 쿠폰 할인 적용
        if (request.getUserCouponId() != null) {
            BigDecimal afterCoupon = userCouponService.applyCoupon(request.getUserCouponId(), currentAmount);
            savedOrder.applyCouponDiscount(currentAmount.subtract(afterCoupon));
            currentAmount = afterCoupon;
        }

        // 배송비 계산 및 적용
        int shippingFee = calculateShippingFee(currentAmount, request.getReceiveType());
        savedOrder.applyShippingFee(shippingFee);
        currentAmount = currentAmount.add(BigDecimal.valueOf(shippingFee));

        // 포인트 할인 적용
        if (request.getUsePointAmount() != null && request.getUsePointAmount() > 0) {
            PointChangeResponseDto pointResponse = orderPostProcessService.usePoints(user.getId(), savedOrder.getId(), request.getUsePointAmount());

            if (!pointResponse.isSuccess()) {
                throw new BusinessException(ErrorCode.ORDER_POINT_USE_FAILED);
            }

            int usedPoints = request.getUsePointAmount();
            savedOrder.applyPointDiscount(BigDecimal.valueOf(usedPoints));
            currentAmount = currentAmount.subtract(BigDecimal.valueOf(usedPoints));
        }

        savedOrder.calculateFinalAmount(currentAmount);
        return currentAmount;
    }

    /**
     * 배송이 필요한 경우 배송 정보를 생성합니다.
     */
    private void processDeliveryIfNeeded(Order savedOrder, OrderRequestDto request) {
        if (request.getReceiveType() == ReceiveType.DELIVERY) {
            Delivery delivery = Delivery.builder()
                    .order(savedOrder)
                    .deliveryStatus(DeliveryStatus.READY)
                    .build();

            DeliverySnapshot snapshot = DeliverySnapshot.builder()
                    .receiverName(request.getReceiverName())
                    .receiverPhone(request.getReceiverPhone())
                    .zipCode(request.getZipCode())
                    .jibunAddr(request.getJibunAddr())
                    .roadAddr(request.getRoadAddr())
                    .addressDetail(request.getAddressDetail())
                    .delivery(delivery)
                    .build();

            delivery.addSnapshot(snapshot);
            savedOrder.registerDelivery(snapshot);
        }
    }

    /**
     * 결제 방법에 따른 결제 처리를 수행합니다.
     */
    private PaymentProcessResult processPayment(Order savedOrder, OrderRequestDto request, HttpServletRequest httpRequest) {
        if (request.getPaymentMethod().equals(PaymentMethod.KAKAO_PAY)) {
            return processKakaoPayment(savedOrder, request, httpRequest);
        } else {
            return processDirectPayment(savedOrder, request);
        }
    }

    private PaymentProcessResult processKakaoPayment(Order savedOrder, OrderRequestDto request, HttpServletRequest httpRequest) {
        KakaoPayRequest kakaoPayRequest = KakaoPayRequest.from(
                savedOrder.getId(),
                request.getProducts().getFirst().getProductName(),
                savedOrder.getOrderTotalQty(),
                savedOrder.getOrderTotalAmount()
        );

        KakaoPayReadyResponse readyResponse = kakaoPaymentService.kakaoPayReady(kakaoPayRequest);

        Payment payment = Payment.builder()
                .order(savedOrder)
                .method(request.getPaymentMethod())
                .status(PaymentStatus.PENDING)
                .amount(savedOrder.getOrderTotalAmount())
                .transactionId(readyResponse.getTid())
                .build();

        Payment savedPayment = paymentService.save(payment);
        httpRequest.getSession().setAttribute("kakao_order_id", savedOrder.getId());

        return new PaymentProcessResult(savedPayment, readyResponse.getNextRedirectPcUrl());
    }

    private PaymentProcessResult processDirectPayment(Order savedOrder, OrderRequestDto request) {
        Payment payment = Payment.builder()
                .order(savedOrder)
                .method(request.getPaymentMethod())
                .status(PaymentStatus.PAID)
                .amount(savedOrder.getOrderTotalAmount())
                .paidAt(LocalDateTime.now())
                .build();

        Payment savedPayment = paymentService.save(payment);
        savedOrder.paid();

        return new PaymentProcessResult(savedPayment, null);
    }

    /**
     * 주문 응답 DTO를 생성합니다.
     */
    private OrderResponseDto buildOrderResponse(Order savedOrder, PaymentProcessResult paymentResult) {
        OrderResponseDto baseResponse = OrderResponseDto.fromEntity(savedOrder, PaymentResponseDto.fromEntity(paymentResult.payment()));

        if (paymentResult.paymentUrl() != null) {
            // 카카오페이의 경우 결제 URL 포함
            return OrderResponseDto.builder()
                    .orderId(baseResponse.getOrderId())
                    .userId(baseResponse.getUserId())
                    .orderDate(baseResponse.getOrderDate())
                    .totalPrice(baseResponse.getTotalPrice())
                    .orderStatus(baseResponse.getOrderStatus())
                    .couponDiscountAmount(baseResponse.getCouponDiscountAmount())
                    .pointUsedAmount(baseResponse.getPointUsedAmount())
                    .promoDiscountAmount(baseResponse.getPromoDiscountAmount())
                    .originalPrice(baseResponse.getOriginalPrice())
                    .deliveryInfo(baseResponse.getDeliveryInfo())
                    .items(baseResponse.getItems())
                    .payment(baseResponse.getPayment())
                    .requestMessage(baseResponse.getRequestMessage())
                    .shippingFee(baseResponse.getShippingFee())
                    .paymentUrl(paymentResult.paymentUrl())
                    .build();
        }

        return baseResponse;
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

    /**
     * 주문 생성 결과를 담는 record 클래스
     */
    private record OrderWithCalculation(Order order, BigDecimal promoAppliedTotal) {}
    
    /**
     * 결제 처리 결과를 담는 record 클래스
     */
    private record PaymentProcessResult(Payment payment, String paymentUrl) {}
}
