package com.c3l2.persome.coupon.entity.constant;

import lombok.Getter;

@Getter
public enum UserCouponStatus {

    ISSUED("발급됨"),
    USED("사용완료"),
    EXPIRED("만료됨");

    private final String label;

    UserCouponStatus(String label) {
        this.label = label;
    }

    public static UserCouponStatus of(String userCouponStatus) {
        return UserCouponStatus.valueOf(userCouponStatus);
    }
}