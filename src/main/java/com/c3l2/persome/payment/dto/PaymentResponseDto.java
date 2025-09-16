package com.c3l2.persome.payment.dto;

import com.c3l2.persome.entity.payment.Payment;
import com.c3l2.persome.entity.payment.PaymentMethod;
import com.c3l2.persome.entity.payment.PaymentStatus;
import lombok.*;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Getter
@Builder
@AllArgsConstructor
public class PaymentResponseDto {
    private Long paymentId;
    private Long orderId;
    private PaymentMethod method;
    private PaymentStatus status;
    private BigDecimal amount;
    private LocalDateTime paidAt;

    public static PaymentResponseDto fromEntity(Payment payment) {
        return PaymentResponseDto.builder()
                .paymentId(payment.getId())
                .orderId(payment.getOrder().getId())
                .method(payment.getMethod())
                .status(payment.getStatus())
                .amount(payment.getAmount())
                .paidAt(payment.getPaidAt())
                .build();
    }
}
