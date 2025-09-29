package com.c3l2.persome.payment.service;

import com.c3l2.persome.payment.dto.KakaoPayRequest;
import com.c3l2.persome.payment.dto.KakaoPayReadyResponse;
import com.c3l2.persome.payment.dto.KakaoPayApproveResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.HashMap;
import java.util.Map;

@Service
@RequiredArgsConstructor
public class KakaoPaymentService {

    private static final String HOST = "https://open-api.kakaopay.com";
    private static final String READY_URL = "/online/v1/payment/ready";
    private static final String APPROVE_URL = "/online/v1/payment/approve";

    @Value("${kakao.pay.secret.key}")
    private String secretKey;
    
    @Value("${kakao.pay.cid}")
    private String cid;
    
    @Value("${server.base.url}")
    private String baseUrl;
    
    private final RestTemplate restTemplate;

    public KakaoPayReadyResponse kakaoPayReady(KakaoPayRequest request) {
        
        HttpHeaders headers = new HttpHeaders();
        headers.add("Authorization", "SECRET_KEY " + secretKey);
        headers.setContentType(MediaType.APPLICATION_JSON);
        
        Map<String, Object> requestBody = new HashMap<>();
        requestBody.put("cid", cid);
        requestBody.put("partner_order_id", request.getOrderId().toString());
        requestBody.put("partner_user_id", "123456789"); // 실제 사용자 ID로 변경
        requestBody.put("item_name", request.getItemName());
        requestBody.put("quantity", String.valueOf(request.getQuantity()));
        requestBody.put("total_amount", String.valueOf(request.getTotalAmount()));
        requestBody.put("vat_amount", "0"); // 부가세 (선택사항)
        requestBody.put("tax_free_amount", "0");
        requestBody.put("approval_url", baseUrl + "/api/payment/kakao/approve?orderId=" + request.getOrderId());
        requestBody.put("cancel_url", baseUrl + "/api/payment/kakao/cancel?orderId=" + request.getOrderId());
        requestBody.put("fail_url", baseUrl + "/api/payment/kakao/fail?orderId=" + request.getOrderId());
        
        HttpEntity<Map<String, Object>> entity = new HttpEntity<>(requestBody, headers);
        
        KakaoPayReadyResponse response = restTemplate.postForObject(
            HOST + READY_URL,
            entity,
            KakaoPayReadyResponse.class
        );
        
        return response;
    }
    
    public KakaoPayApproveResponse kakaoPayApprove(String tid, String pgToken, Long orderId) {
        
        HttpHeaders headers = new HttpHeaders();
        headers.add("Authorization", "SECRET_KEY " + secretKey);
        headers.setContentType(MediaType.APPLICATION_JSON);
        
        Map<String, Object> requestBody = new HashMap<>();
        requestBody.put("cid", cid);
        requestBody.put("tid", tid);
        requestBody.put("partner_order_id", orderId.toString());
        requestBody.put("partner_user_id", "123456789"); // 실제 사용자 ID로 변경
        requestBody.put("pg_token", pgToken);
        
        HttpEntity<Map<String, Object>> entity = new HttpEntity<>(requestBody, headers);
        
        // 디버깅용 로그
        System.out.println("카카오페이 승인 요청 Body: " + requestBody);
        System.out.println("카카오페이 승인 요청 URL: " + HOST + APPROVE_URL);
        
        KakaoPayApproveResponse response = restTemplate.postForObject(
            HOST + APPROVE_URL,
            entity,
            KakaoPayApproveResponse.class
        );
        
        // 응답 데이터 로그
        System.out.println("카카오페이 승인 응답: " + response);
        if (response != null) {
            System.out.println("응답 AID: " + response.getAid());
            System.out.println("응답 TID: " + response.getTid());
            System.out.println("응답 결제방법: " + response.getPaymentMethodType());
            System.out.println("응답 금액 정보: " + (response.getAmount() != null ? response.getAmount().getTotal() : "null"));
        }
        
        return response;
    }
}
