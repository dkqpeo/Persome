package com.c3l2.persome.cart.dto;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class CartItemUpdateQuantity {
    private Long cartItemId;
    private Integer updateQuantity;
}
