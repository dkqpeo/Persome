package com.c3l2.persome.payment.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Getter
@NoArgsConstructor
public class KakaoPayReadyResponse {
    
    private String tid; // 결제 고유 번호
    
    @JsonProperty("next_redirect_pc_url")
    private String nextRedirectPcUrl; // PC 웹으로 결제 요청할 때 사용

    @JsonProperty("created_at")
    private String createdAt; // 결제 준비 요청 시간
}