package com.c3l2.persome.admin.dto;

import com.c3l2.persome.order.entity.Order;
import com.c3l2.persome.order.entity.OrderStatus;
import com.c3l2.persome.order.entity.ReceiveType;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class AdminOrderResponse {
    private final Long id;
    private final Long userId;
    private final String userName;
    private final OrderStatus status;
    private final ReceiveType receiveType;
    private final LocalDateTime orderDate;
    private final BigDecimal totalAmount;
    private final Integer totalQuantity;
    private final Integer shippingFee;

    public static AdminOrderResponse from(Order order) {
        return AdminOrderResponse.builder()
                .id(order.getId())
                .userId(order.getUser().getId())
                .userName(order.getUser().getName())
                .status(order.getOrderStatus())
                .receiveType(order.getReceiveType())
                .orderDate(order.getOrderDate())
                .totalAmount(order.getOrderTotalAmount())
                .totalQuantity(order.getOrderTotalQty())
                .shippingFee(order.getShippingFee())
                .build();
    }
}
