package com.c3l2.persome.payment.service;

import com.c3l2.persome.entity.order.Order;
import com.c3l2.persome.entity.order.OrderStatus;
import com.c3l2.persome.entity.payment.Payment;
import com.c3l2.persome.entity.payment.PaymentStatus;
import com.c3l2.persome.order.repository.OrderRepository;
import com.c3l2.persome.payment.dto.PaymentRequestDto;
import com.c3l2.persome.payment.dto.PaymentResponseDto;
import com.c3l2.persome.payment.repository.PaymentRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;

@Service
@RequiredArgsConstructor
public class PaymentService {
    private final PaymentRepository paymentRepository;
    private final OrderRepository orderRepository;

    // 결제 생성
    @Transactional
    public PaymentResponseDto createPayment(PaymentRequestDto request) {
        Order order = orderRepository.findById(request.getOrderId())
                .orElseThrow(() -> new IllegalArgumentException("주문을 찾을 수 없습니다."));

        // 결제 생성
        Payment payment = Payment.builder()
                .order(order)
                .method(request.getMethod())
                .status(PaymentStatus.PAID)
                .amount(request.getAmount())
                .paidAt(LocalDateTime.now())
                .build();

        Payment saved = paymentRepository.save(payment);

        // 주문 상태 변경
        order.setOrderStatus(OrderStatus.PAID);

        return PaymentResponseDto.fromEntity(saved);
    }
}
