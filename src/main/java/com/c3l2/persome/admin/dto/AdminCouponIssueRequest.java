package com.c3l2.persome.admin.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

public record AdminCouponIssueRequest(
        @NotNull(message = "쿠폰 ID는 필수입니다.")
        Long couponId,
        @NotBlank(message = "회원 로그인 ID는 필수입니다.")
        String loginId
) {
}
