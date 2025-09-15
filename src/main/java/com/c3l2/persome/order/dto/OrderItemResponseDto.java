package com.c3l2.persome.order.dto;

import com.c3l2.persome.entity.order.OrderItem;
import lombok.*;

import java.math.BigDecimal;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class OrderItemResponseDto {
    private Long productId;
    private String productName;
    private int quantity;
    private BigDecimal price;

    public static OrderItemResponseDto fromEntity(OrderItem item) {
        return OrderItemResponseDto.builder()
                .productId(item.getProductOption().getId())
                .productName(item.getProductOption().getName())
                .quantity(item.getQuantity())
                .price(item.getTotalPrice())
                .build();
    }
}