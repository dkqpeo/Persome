package com.c3l2.persome.payment.dto;

import com.c3l2.persome.entity.payment.PaymentMethod;
import lombok.*;

import java.math.BigDecimal;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PaymentRequestDto {
    private Long orderId;              // 주문 ID
    private PaymentMethod method;      // 결제 수단
    private BigDecimal amount;         // 결제 금액
}