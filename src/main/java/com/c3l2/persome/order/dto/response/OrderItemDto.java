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
        var product = orderItem.getProductOption().getProduct();

        String imageUrl = null;
        if (!product.getProductImgs().isEmpty()) {
            imageUrl = product.getProductImgs().getFirst().getImgUrl();
        }
        return OrderItemDto.builder()
                .orderItemId(orderItem.getId())
                .productOptionId(orderItem.getProductOption().getId())
                .productName(product.getName())
                .quantity(orderItem.getQuantity())
                .unitPrice(orderItem.getUnitPrice())
                .totalPrice(orderItem.getTotalPrice())
                .status(orderItem.getOrder().getOrderStatus().name())
                .imageUrl(imageUrl)
                .build();
    }
}
