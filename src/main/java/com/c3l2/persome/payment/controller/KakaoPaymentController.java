package com.c3l2.persome.payment.controller;

import com.c3l2.persome.config.error.ErrorCode;
import com.c3l2.persome.config.error.exceprion.ControllerException;
import com.c3l2.persome.order.entity.Order;
import com.c3l2.persome.order.repository.OrderRepository;
import com.c3l2.persome.payment.dto.KakaoPayApproveResponse;
import com.c3l2.persome.payment.entity.Payment;
import com.c3l2.persome.payment.entity.PaymentStatus;
import com.c3l2.persome.payment.repository.PaymentRepository;
import com.c3l2.persome.payment.service.KakaoPaymentService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/api/payment/kakao")
@RequiredArgsConstructor
@Slf4j
public class KakaoPaymentController {
    
    private final KakaoPaymentService kakaoPaymentService;
    private final PaymentRepository paymentRepository;
    private final OrderRepository orderRepository;

    // 카카오페이 api에 결제 승인 요청.
    @GetMapping("/approve")
    public String kakaoPayApprove(@RequestParam("pg_token") String pgToken,
                                 @RequestParam("orderId") Long orderId,
                                 HttpServletRequest request) {

        try {
            // Payment 엔티티에서 tid 조회
            Payment payment = paymentRepository.findByOrderId(orderId)
                    .orElseThrow(() -> new ControllerException(ErrorCode.ORDER_PAYMENT_FAILED));
            
            // 카카오페이 승인 API 호출
            KakaoPayApproveResponse approveResponse = kakaoPaymentService.kakaoPayApprove(
                payment.getTransactionId(), 
                pgToken, 
                orderId
            );
            
            // 결제 상태 업데이트
            payment.updateStatus(PaymentStatus.PAID);
            paymentRepository.save(payment);
            
            // 주문 상태 업데이트
            Order order = payment.getOrder();
            order.paid();
            orderRepository.save(order);

            log.info("카카오페이 결제 승인 완료. 주문 ID: {}, TID: {}", orderId, approveResponse.getTid());

            // 세션에서 주문 ID 제거
            request.getSession().removeAttribute("kakao_order_id");
            return "redirect:/orders/complete?orderId=" + orderId;
            
        } catch (Exception e) {
            log.error("카카오페이 결제 승인 실패. 주문 ID: {}", orderId, e);
            //return "redirect:/orders?failed=true&orderId=" + orderId;
            throw new ControllerException(ErrorCode.ORDER_PAYMENT_FAILED);
        }
    }
    
    @GetMapping("/cancel")
    public String kakaoPayCancel(HttpServletRequest request) {
        Long orderId = (Long) request.getSession().getAttribute("kakao_order_id");
        log.info("카카오페이 결제 취소. 주문 ID: {}", orderId);
        if (orderId != null) {
            // 세션에서 주문 ID 제거
            request.getSession().removeAttribute("kakao_order_id");
            return "redirect:/orders?cancelled=true&orderId=" + orderId;
        }
        return "redirect:/orders?cancelled=true";
    }
    
    @GetMapping("/fail")
    public String kakaoPayFail(HttpServletRequest request) {
        Long orderId = (Long) request.getSession().getAttribute("kakao_order_id");
        log.error("카카오페이 결제 실패. 주문 ID: {}", orderId);
        if (orderId != null) {
            // 세션에서 주문 ID 제거
            request.getSession().removeAttribute("kakao_order_id");
            //return "redirect:/orders?failed=true&orderId=" + orderId;
            throw new ControllerException(ErrorCode.ORDER_PAYMENT_FAILED);
        }
        //return "redirect:/orders?failed=true";
        throw new ControllerException(ErrorCode.ORDER_PAYMENT_FAILED);
    }
}