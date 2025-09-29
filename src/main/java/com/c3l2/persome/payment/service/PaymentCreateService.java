package com.c3l2.persome.payment.service;

import com.c3l2.persome.order.entity.Order;
import com.c3l2.persome.order.service.OrderService;
import com.c3l2.persome.payment.dto.PaymentRequestDto;
import com.c3l2.persome.payment.dto.PaymentResponseDto;
import com.c3l2.persome.payment.entity.Payment;
import com.c3l2.persome.payment.entity.PaymentStatus;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;

@Service
@RequiredArgsConstructor
@Transactional
public class PaymentCreateService {

    private final PaymentService paymentService;
    private final OrderService orderService;

    // 결제 생성
    public PaymentResponseDto createPayment(PaymentRequestDto request) {
        Order order = orderService.findById(request.getOrderId());

        // 결제 생성
        Payment payment = Payment.builder()
                .order(order)
                .method(request.getMethod())
                .status(PaymentStatus.PAID)
                .amount(request.getAmount())
                .paidAt(LocalDateTime.now())
                .build();

        Payment saved = paymentService.save(payment);

        // 주문 상태 변경
        order.paid();

        return PaymentResponseDto.fromEntity(saved);
    }
}