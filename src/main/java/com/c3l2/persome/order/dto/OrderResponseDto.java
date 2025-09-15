package com.c3l2.persome.order.dto;

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
    private DeliverySnapshotDto deliveryInfo;      //배송 스냅샷 DTO
    private List<OrderItemResponseDto> items;      //주문 상품 DTO 리스트

    public static OrderResponseDto fromEntity(Order order) {
        return OrderResponseDto.builder()
                .orderId(order.getId())
                .userId(order.getUser().getId())
                .orderDate(order.getOrderDate())
                .totalPrice(order.getOrderTotalAmount())
                .orderStatus(String.valueOf(order.getOrderStatus()))
                .deliveryInfo(DeliverySnapshotDto.fromEntity(order.getDelivery().getDeliverySnapshot()))
                .items(order.getOrderItems().stream()
                        .map(OrderItemResponseDto::fromEntity)
                        .toList())
                .build();
    }
}
