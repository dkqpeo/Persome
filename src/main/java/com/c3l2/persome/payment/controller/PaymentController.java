package com.c3l2.persome.payment.controller;

import com.c3l2.persome.common.ApiResponse;
import com.c3l2.persome.entity.payment.PaymentMethod;
import com.c3l2.persome.payment.dto.PaymentRequestDto;
import com.c3l2.persome.payment.dto.PaymentResponseDto;
import com.c3l2.persome.payment.service.PaymentService;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Arrays;
import java.util.List;

@RequestMapping("/payments")
@Controller
public class PaymentController {
    private PaymentService paymentService;

    //결제 생성
    @PostMapping
    public ResponseEntity<ApiResponse<PaymentResponseDto>> createPayment(@RequestBody PaymentRequestDto request) {
        return ApiResponse.ok("결제가 완료되었습니다.",paymentService.createPayment(request));
    }

    //결제 수단 조회
    @GetMapping("/methods")
    public ResponseEntity<List<PaymentMethod>> getPaymentMethods() {
        return ResponseEntity.ok(Arrays.asList(PaymentMethod.values()));
    }

}
