package com.c3l2.persome.order.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;

import java.math.BigDecimal;

@Getter
@AllArgsConstructor
public class PriceCalculationResult {
    private BigDecimal unitPrice;            // 단가(원가/세일가) + 옵션
    private BigDecimal totalPrice;           // 수량 × 단가 +프로모션 할인 적용
    private BigDecimal couponDiscount;       // 쿠폰 할인액
    private BigDecimal pointDiscount;        // 포인트 사용액
    private BigDecimal promoDiscount;        // 프로모션 할인액
    private BigDecimal finalPrice;           // 최종 결제금액
}
