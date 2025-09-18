package com.c3l2.persome.event.entity.constant;

public enum DiscountType {

    FIXED, RATE;

    public static DiscountType of(String discountType) {
        return DiscountType.valueOf(discountType);
    }
}
