package com.c3l2.persome.order.dto.response;

import com.c3l2.persome.delivery.dto.DeliverySnapshotDto;
import com.c3l2.persome.entity.order.Order;
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
    private DeliverySnapshotDto deliveryInfo;   // 배송 스냅샷
    private List<OrderItemDto> items;           // 주문 상품 목록

    public static OrderResponseDto fromEntity(Order order) {
        return OrderResponseDto.builder()
                .orderId(order.getId())
                .userId(order.getUser().getId())
                .orderDate(order.getOrderDate())
                .totalPrice(order.getOrderTotalAmount())
                .orderStatus(order.getOrderStatus().name())
                .deliveryInfo(order.getDelivery() != null
                        ? DeliverySnapshotDto.fromEntity(order.getDelivery().getDeliverySnapshot())
                        : null)
                .items(order.getOrderItems().stream()
                        .map(OrderItemDto::fromEntity)
                        .toList())
                .build();
    }
}
