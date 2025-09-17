package com.c3l2.persome.cart.dto;

import com.c3l2.persome.entity.cart.Cart;
import lombok.Builder;
import lombok.Getter;

import java.util.List;

@Getter
@Builder
public class CartResponseDto {

    private Long cartId;
    private List<CartItemResponseDto> cartItems;

    public static CartResponseDto from(Cart cart) {

        List<CartItemResponseDto> itemList = cart.getCartItems().stream()
                .map(CartItemResponseDto::from)
                .toList();

        return CartResponseDto.builder()
                .cartId(cart.getId())
                .cartItems(itemList)
                .build();
    }
}
