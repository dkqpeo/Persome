package com.c3l2.persome.payment.service;

import com.c3l2.persome.entity.order.Order;
import com.c3l2.persome.entity.payment.Payment;
import com.c3l2.persome.entity.payment.PaymentMethod;
import com.c3l2.persome.entity.payment.PaymentStatus;
import com.c3l2.persome.order.repository.OrderRepository;
import com.c3l2.persome.payment.dto.PaymentRequestDto;
import com.c3l2.persome.payment.dto.PaymentResponseDto;
import com.c3l2.persome.payment.repository.PaymentRepository;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.Optional;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
class PaymentServiceTest {

    @InjectMocks
    private PaymentService paymentService;

    @Mock
    private PaymentRepository paymentRepository;

    @Mock
    private OrderRepository orderRepository;

    @Test
    void 결제생성_성공() {
        // given
        Long orderId = 1L;
        Order order = Order.builder()
                .id(orderId)
                .orderTotalAmount(BigDecimal.valueOf(30000))
                .build();

        PaymentRequestDto request = PaymentRequestDto.builder()
                .orderId(orderId)
                .method(PaymentMethod.CARD)
                .amount(BigDecimal.valueOf(30000))
                .build();

        Payment payment = Payment.builder()
                .id(10L)
                .order(order)
                .method(PaymentMethod.CARD)
                .status(PaymentStatus.PAID)
                .amount(BigDecimal.valueOf(30000))
                .paidAt(LocalDateTime.now())
                .build();

        when(orderRepository.findById(orderId)).thenReturn(Optional.of(order));
        when(paymentRepository.save(any(Payment.class))).thenReturn(payment);

        // when
        PaymentResponseDto response = paymentService.createPayment(request);

        // then
        assertThat(response).isNotNull();
        assertThat(response.getOrderId()).isEqualTo(orderId);
        assertThat(response.getAmount()).isEqualByComparingTo(BigDecimal.valueOf(30000));
        assertThat(response.getStatus()).isEqualTo(PaymentStatus.PAID);
    }
    @Test
    void 결제실패_주문없음() {
        // given
        Long orderId = 99L;
        PaymentRequestDto request = PaymentRequestDto.builder()
                .orderId(orderId)
                .method(PaymentMethod.CARD)
                .amount(BigDecimal.valueOf(10000))
                .build();

        when(orderRepository.findById(orderId)).thenReturn(Optional.empty());

        // when & then
        assertThatThrownBy(() -> paymentService.createPayment(request))
                .isInstanceOf(IllegalArgumentException.class)
                .hasMessage("주문을 찾을 수 없습니다.");
    }
}