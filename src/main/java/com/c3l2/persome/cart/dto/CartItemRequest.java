package com.c3l2.persome.cart.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class CartItemRequest {
    private Long productOptionId;
    private Integer quantity;

    //추가한 코드
    private String label;
    private String zip;
    private String roadAddr;
    private String jibunAddr;
    private String addrDetail;
    private Boolean isDefaultShipping;

}
