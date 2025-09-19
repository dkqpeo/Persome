package com.c3l2.persome.user.dto;

import com.c3l2.persome.user.entity.UserAddress;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public final class JOJOAddressResponse {

    private Long id;
    private String label;       // 주소 라벨
    private String zip;         // 우편번호
    private String roadAddr;    // 도로명 주소
    private String jibunAddr;   // 지번 주소
    private String addrDetail;  // 상세 주소
    private Boolean isDefaultShipping; // 기본 배송지 여부

    // UserAddress 객체로부터 JOJOAddressResponse 객체로 변환
    public static JOJOAddressResponse from(UserAddress userAddress) {
        return JOJOAddressResponse.builder()
                .label(userAddress.getLabel())               // userAddress의 값을 사용
                .zip(userAddress.getZip())                   // userAddress의 값을 사용
                .roadAddr(userAddress.getRoadAddr())         // userAddress의 값을 사용
                .jibunAddr(userAddress.getJibunAddr())       // userAddress의 값을 사용
                .addrDetail(userAddress.getAddrDetail())     // userAddress의 값을 사용
                .isDefaultShipping(userAddress.getDefaultShipping()) // userAddress의 값을 사용
                .build();
    }
}