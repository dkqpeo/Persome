package com.c3l2.persome.order.dto;

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
public class OrderDetailDto {
    private Long orderId;
    private LocalDateTime orderDate;
    private BigDecimal totalPrice;
    private String orderStatus;
    private DeliverySnapshotDto deliveryInfo;
    private List<OrderItemResponseDto> items;

    public static OrderDetailDto fromEntity(Order order) {
        return OrderDetailDto.builder()
                .orderId(order.getId())
                .orderDate(order.getOrderDate())
                .totalPrice(order.getOrderTotalAmount())
                .orderStatus(order.getOrderStatus().name())
                .deliveryInfo(order.getDelivery() != null
                        ? DeliverySnapshotDto.fromEntity(order.getDelivery().getDeliverySnapshot())
                        : null)
                .items(order.getOrderItems().stream()
                        .map(OrderItemResponseDto::fromEntity)
                        .toList())
                .build();
    }
}
