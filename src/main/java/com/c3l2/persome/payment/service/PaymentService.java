package com.c3l2.persome.payment.service;

import com.c3l2.persome.order.entity.Order;
import com.c3l2.persome.order.entity.OrderStatus;
import com.c3l2.persome.payment.entity.Payment;
import com.c3l2.persome.payment.entity.PaymentStatus;
import com.c3l2.persome.order.repository.OrderRepository;
import com.c3l2.persome.payment.dto.PaymentRequestDto;
import com.c3l2.persome.payment.dto.PaymentResponseDto;
import com.c3l2.persome.payment.repository.PaymentRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.List;

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

    //사용자 결제 내역 조회 - 전부
    @Transactional(readOnly = true)
    public List<PaymentResponseDto> getUserPayments(Long userId) {
        return paymentRepository.findByOrder_User_Id(userId).stream()
                .map(PaymentResponseDto::fromEntity)
                .toList();
    }

    //특정 주문 결제 내역 조회
    @Transactional(readOnly = true)
    public PaymentResponseDto getPaymentByOrderId(Long orderId) {
        Payment payment = paymentRepository.findByOrderId(orderId)
                .orElseThrow(() -> new IllegalArgumentException("해당 주문에 대한 결제를 찾을 수 없습니다."));
        return PaymentResponseDto.fromEntity(payment);
    }
}
