package com.c3l2.persome.promotion.entity;

public enum DiscountType {

    FIXED, RATE;

    public static DiscountType of(String discountType) {
        return DiscountType.valueOf(discountType);
    }
}
