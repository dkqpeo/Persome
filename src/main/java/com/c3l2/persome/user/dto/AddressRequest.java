package com.c3l2.persome.user.dto;

import lombok.*;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class AddressRequest {
    private String label;
    private String zip;
    private String roadAddr;
    private String jibunAddr;
    private String addrDetail;
    private Boolean defaultShipping;
    private String address;
    private Long userId;
    private Boolean isDefaultShipping; // 기본 배송지 여부
}
