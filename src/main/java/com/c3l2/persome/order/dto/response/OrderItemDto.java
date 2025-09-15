package com.c3l2.persome.order.dto.response;

import com.c3l2.persome.entity.order.OrderItem;
import lombok.*;
import java.math.BigDecimal;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class OrderItemDto {
    private Long orderItemId;
    private Long productOptionId;
    private String productName;
    private int quantity;
    private BigDecimal unitPrice;
    private BigDecimal totalPrice;
    private String status;

    public static OrderItemDto fromEntity(OrderItem orderItem) {
        return OrderItemDto.builder()
                .orderItemId(orderItem.getId())
                .productOptionId(orderItem.getProductOption().getId())
                .productName(orderItem.getProductOption().getProduct().getName())
                .quantity(orderItem.getQuantity())
                .unitPrice(orderItem.getUnitPrice())
                .totalPrice(orderItem.getTotalPrice())
                .status(orderItem.getOrder().getOrderStatus().name())
                .build();
    }
}
