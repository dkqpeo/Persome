package com.c3l2.persome.entity.coupon.constant;

import com.c3l2.persome.entity.event.constant.EventStatus;

public enum CouponStatus {

    ACTIVE, INACTIVE;

    public static CouponStatus of(String couponstatus) {
        return CouponStatus.valueOf(couponstatus);
    }

}
