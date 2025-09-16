package com.c3l2.persome.order.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;

import java.math.BigDecimal;

@Getter
@AllArgsConstructor
public class PriceCalculationResult {
    private BigDecimal unitPrice;            // 단가(원가/세일가) + 옵션
    private BigDecimal totalPrice;           // unitPrice * 수량 (프로모션 적용 전)
    private BigDecimal promoDiscount;        // 프로모션 할인액
    private BigDecimal finalPrice;           // 프로모션 할인 적용 금액
}
