package com.c3l2.persome.cart.dto;

import com.c3l2.persome.entity.cart.CartItem;
import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class CartItemResponseDto {

    private Long cartItemId;
    private Integer quantity;
    private Long productOptionId;

    public static CartItemResponseDto from(CartItem cartItem) {

        return CartItemResponseDto.builder()
                .cartItemId(cartItem.getId())
                .quantity(cartItem.getQuantity())
                .productOptionId(cartItem.getProductOption().getId())
                .build();
    }
}
