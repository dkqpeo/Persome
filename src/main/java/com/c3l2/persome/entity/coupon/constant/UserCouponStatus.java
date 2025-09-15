package com.c3l2.persome.entity.coupon.constant;

public enum UserCouponStatus {

    ISSUED, USED, EXPIRED ;

    public static UserCouponStatus of(String usercouponstatus) {
        return UserCouponStatus.valueOf(usercouponstatus);
    }
    }