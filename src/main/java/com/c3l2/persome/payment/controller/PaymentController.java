package com.c3l2.persome.payment.controller;

import com.c3l2.persome.common.ApiResponse;
import com.c3l2.persome.entity.payment.Payment;
import com.c3l2.persome.entity.payment.PaymentMethod;
import com.c3l2.persome.payment.dto.PaymentRequestDto;
import com.c3l2.persome.payment.dto.PaymentResponseDto;
import com.c3l2.persome.payment.service.PaymentService;
import jakarta.servlet.http.HttpSession;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.List;

@Controller
public class PaymentController {
    private PaymentService paymentService;

    //결제 생성
    @PostMapping("/payments")
    public ResponseEntity<ApiResponse<PaymentResponseDto>> createPayment(@RequestBody PaymentRequestDto request) {
        return ApiResponse.ok("결제가 완료되었습니다.",paymentService.createPayment(request));
    }

    //결제 수단 조회
    @GetMapping("/payments/methods")
    public ResponseEntity<List<PaymentMethod>> getPaymentMethods() {
        return ResponseEntity.ok(Arrays.asList(PaymentMethod.values()));
    }

    //특정 주문의 결제 조회
    @GetMapping("/orders/{orderId}/payment")
    public ResponseEntity<ApiResponse<PaymentResponseDto>> getPaymentByOrderId(@PathVariable Long orderId){
        PaymentResponseDto response = paymentService.getPaymentByOrderId(orderId);
        return ApiResponse.ok("결제 내역 조회 성공.", response);
    }

    //사용자 결제 내역 목록 조회
    @GetMapping("/users/{userId}/payments")
    public ResponseEntity<ApiResponse<List<PaymentResponseDto>>> getPaymentByUserId(HttpSession session) {
        Long userId = (Long) session.getAttribute("userId");
        List<PaymentResponseDto> response = paymentService.getUserPayments(userId);
        return  ApiResponse.ok("사용자 결제 내역 목록 조회 성공", response);
    }
}
