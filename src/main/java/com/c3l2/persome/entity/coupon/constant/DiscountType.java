package com.c3l2.persome.entity.coupon.constant;

public enum DiscountType {

    RATE, FIXED;

    public static DiscountType of(String discountType) {
        return DiscountType.valueOf(discountType);
    }

}
