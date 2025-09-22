package com.c3l2.persome.order.dto.response;

import com.c3l2.persome.delivery.dto.DeliverySnapshotDto;
import com.c3l2.persome.order.entity.Order;
import com.c3l2.persome.payment.dto.PaymentResponseDto;
import lombok.*;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class OrderResponseDto {
    private Long orderId;
    private Long userId;
    private LocalDateTime orderDate;
    private BigDecimal totalPrice;
    private String orderStatus;
    private BigDecimal couponDiscountAmount;   // 쿠폰 할인액
    private BigDecimal pointUsedAmount;        // 포인트 할인액
    private BigDecimal promoDiscountAmount;    // 프로모션 할인액
    private BigDecimal originalPrice;          // 할인 전 총액
    private DeliverySnapshotDto deliveryInfo;   // 배송 스냅샷
    private List<OrderItemDto> items;           // 주문 상품 목록
    private PaymentResponseDto payment;
    private String requestMessage;

    public static OrderResponseDto fromEntity(Order order, PaymentResponseDto payment) {
        return OrderResponseDto.builder()
                .orderId(order.getId())
                .userId(order.getUser().getId())
                .orderDate(order.getOrderDate())
                .totalPrice(order.getOrderTotalAmount())
                .orderStatus(order.getOrderStatus().getLabel())
                .couponDiscountAmount(order.getCouponDiscountAmount())
                .pointUsedAmount(order.getPointUsedAmount())
                .promoDiscountAmount(order.getPromoDiscountAmount())
                .originalPrice(order.getOriginalPrice())
                .deliveryInfo(order.getDelivery() != null
                        ? DeliverySnapshotDto.fromEntity(order.getDelivery().getDeliverySnapshot())
                        : null)
                .items(order.getOrderItems().stream()
                        .map(OrderItemDto::fromEntity)
                        .toList())
                .payment(payment)
                .requestMessage(order.getRequestMessage())
                .build();
    }
}
