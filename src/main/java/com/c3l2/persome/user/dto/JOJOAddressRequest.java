package com.c3l2.persome.user.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class JOJOAddressRequest {
    private String address;
    private Long userId;
    // 배송지 관련 필드들
    private String label;          // 배송지명
    private String zip;            // 우편번호
    private String roadAddr;       // 도로명 주소
    private String jibunAddr;      // 지번 주소
    private String addrDetail;     // 상세 주소
    private Boolean isDefaultShipping; // 기본 배송지 여부
}
