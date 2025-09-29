package com.c3l2.persome.payment.dto;

import lombok.*;

import java.math.BigDecimal;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class KakaoPayRequest {

    private Long orderId;
    private String itemName;
    private int quantity;
    private BigDecimal totalAmount;


    public static KakaoPayRequest from(Long orderId, String itemName, int quantity, BigDecimal totalAmount) {

        return KakaoPayRequest.builder()
                .orderId(orderId)
                .itemName(itemName)
                .quantity(quantity)
                .totalAmount(totalAmount)
                .build();
    }
}
