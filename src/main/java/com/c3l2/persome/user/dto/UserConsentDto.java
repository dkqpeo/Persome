package com.c3l2.persome.user.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UserConsentDto {
    private String policyCode;  // PRIVACY_POLICY, TERMS_OF_SERVICE 등
    private boolean agreed;
}
