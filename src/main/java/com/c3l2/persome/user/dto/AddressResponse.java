package com.c3l2.persome.user.dto;

import com.c3l2.persome.user.entity.UserAddress;
import lombok.*;

@Getter
@Builder
@AllArgsConstructor
public class AddressResponse {
    private Long id;
    private String label;
    private String zip;
    private String roadAddr;
    private String jibunAddr;
    private String addrDetail;
    private Boolean defaultShipping;

    public static AddressResponse from(UserAddress entity) {
        return AddressResponse.builder()
                .id(entity.getId())
                .label(entity.getLabel())
                .zip(entity.getZip())
                .roadAddr(entity.getRoadAddr())
                .jibunAddr(entity.getJibunAddr())
                .addrDetail(entity.getAddrDetail())
                .defaultShipping(entity.getDefaultShipping())
                .build();
    }
}