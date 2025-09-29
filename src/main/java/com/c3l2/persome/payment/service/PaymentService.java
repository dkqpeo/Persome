package com.c3l2.persome.payment.service;

import com.c3l2.persome.config.error.ErrorCode;
import com.c3l2.persome.config.error.exceprion.BusinessException;
import com.c3l2.persome.order.entity.Order;
import com.c3l2.persome.order.service.OrderService;
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

    @Transactional
    public Payment save(Payment payment) {
        return paymentRepository.save(payment);
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

    public Payment findByOrderId(Long orderId) {

        return paymentRepository.findByOrderId(orderId)
                .orElseThrow(() -> new BusinessException(ErrorCode.ORDER_PAYMENT_FAILED));
    }
}
