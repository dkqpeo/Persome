package com.c3l2.persome.payment.dto;

import com.c3l2.persome.payment.entity.Payment;
import com.c3l2.persome.payment.entity.PaymentMethod;
import com.c3l2.persome.payment.entity.PaymentStatus;
import lombok.*;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Getter
@Builder
@AllArgsConstructor
public class PaymentResponseDto {
    private Long paymentId;
    private Long orderId;
    private String method;
    private String status;
    private BigDecimal amount;
    private LocalDateTime paidAt;

    public static PaymentResponseDto fromEntity(Payment payment) {
        return PaymentResponseDto.builder()
                .paymentId(payment.getId())
                .orderId(payment.getOrder().getId())
                .method(payment.getMethod().getLabel())
                .status(payment.getStatus().getLabel())
                .amount(payment.getAmount())
                .paidAt(payment.getPaidAt())
                .build();
    }
}
