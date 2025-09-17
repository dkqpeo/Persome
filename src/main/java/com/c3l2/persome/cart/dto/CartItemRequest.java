package com.c3l2.persome.cart.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class CartItemRequest {
    private Long productOptionId;
    private Integer quantity;
}
