package com.c3l2.persome.coupon.entity.constant;

public enum DiscountType {

    RATE, FIXED;

    public static DiscountType of(String discountType) {
        return DiscountType.valueOf(discountType);
    }

}
