package com.c3l2.persome.order.dto;

import com.c3l2.persome.entity.order.Order;
import lombok.*;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class OrderSummaryDto {
    private Long orderId;
    private LocalDateTime orderDate;
    private BigDecimal totalPrice;
    private String orderStatus;

    public static OrderSummaryDto fromEntity(Order order) {
        return OrderSummaryDto.builder()
                .orderId(order.getId())
                .orderDate(order.getOrderDate())
                .totalPrice(order.getOrderTotalAmount())
                .orderStatus(order.getOrderStatus().name())
                .build();
    }
}

