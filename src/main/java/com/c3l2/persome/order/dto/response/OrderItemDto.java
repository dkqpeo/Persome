package com.c3l2.persome.order.dto.response;

import com.c3l2.persome.order.entity.OrderItem;
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
    private String imageUrl;

    public static OrderItemDto fromEntity(OrderItem orderItem) {
        return OrderItemDto.builder()
                .orderItemId(orderItem.getId())
                .productOptionId(orderItem.getProductOption().getId())
                .productName(orderItem.getProductOption().getProduct().getName())
                .quantity(orderItem.getQuantity())
                .unitPrice(orderItem.getUnitPrice())
                .totalPrice(orderItem.getTotalPrice())
                .status(orderItem.getOrder().getOrderStatus().name())
                .imageUrl(String.valueOf(orderItem.getProductOption().getProduct().getProductImgs().getFirst()))
                .build();
    }
}
