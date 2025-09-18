package com.c3l2.persome.coupon.entity.constant;

public enum CouponStatus {

    ACTIVE, INACTIVE;

    public static CouponStatus of(String couponstatus) {
        return CouponStatus.valueOf(couponstatus);
    }

}
