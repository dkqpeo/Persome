package com.c3l2.persome.payment.controller;

import com.c3l2.persome.common.ApiResponse;
import com.c3l2.persome.payment.entity.PaymentMethod;
import com.c3l2.persome.payment.dto.PaymentRequestDto;
import com.c3l2.persome.payment.dto.PaymentResponseDto;
import com.c3l2.persome.payment.service.PaymentCreateService;
import com.c3l2.persome.payment.service.PaymentService;
import com.c3l2.persome.user.security.CustomUserDetails;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api")
public class PaymentController {
    private final PaymentService paymentService;
    private final PaymentCreateService paymentCreateService;

    //결제 생성
    @PostMapping("/payments")
    public ResponseEntity<ApiResponse<PaymentResponseDto>> createPayment(@RequestBody PaymentRequestDto request) {
        return ApiResponse.ok("결제가 완료되었습니다.",paymentCreateService.createPayment(request));
    }

    //결제 수단 조회
    @GetMapping("/payments/methods")
    public ResponseEntity<List<Map<String, String>>> getPaymentMethods() {
        List<Map<String, String>> methods = Arrays.stream(PaymentMethod.values())
                .map(pm -> Map.of("code", pm.name(), "label", pm.getLabel()))
                .toList();
        return ResponseEntity.ok(methods);
    }

    //특정 주문의 결제 조회
    @GetMapping("/orders/{orderId}/payment")
    public ResponseEntity<ApiResponse<PaymentResponseDto>> getPaymentByOrderId(@PathVariable Long orderId){
        PaymentResponseDto response = paymentService.getPaymentByOrderId(orderId);
        return ApiResponse.ok("결제 내역 조회 성공.", response);
    }

    //사용자 결제 내역 목록 조회
    @GetMapping("/users/me/payments")
    public ResponseEntity<ApiResponse<List<PaymentResponseDto>>> getPaymentByUserId(@AuthenticationPrincipal CustomUserDetails userDetails) {
        List<PaymentResponseDto> response = paymentService.getUserPayments(userDetails.getId());
        return  ApiResponse.ok("사용자 결제 내역 목록 조회 성공", response);
    }
}
