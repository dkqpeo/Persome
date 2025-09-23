package com.c3l2.persome.cart.dto;

import com.c3l2.persome.cart.entity.Cart;
import com.c3l2.persome.cart.entity.CartItem;
import com.c3l2.persome.product.entity.ProductOption;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class CartItemRequestDto {
    private Long productOptionId;
    private Integer quantity;

    public CartItem toEntity(Cart cart, ProductOption productOption) {
        return CartItem.builder()
                .cart(cart)
                .productOption(productOption)
                .quantity(this.quantity)
                .build();
    }
}
