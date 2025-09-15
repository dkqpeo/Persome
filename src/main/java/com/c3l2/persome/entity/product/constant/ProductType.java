package com.c3l2.persome.entity.product.constant;

public enum ProductType {

    ORIGINAL, SALE;

    public static ProductType of(String type) {
        return ProductType.valueOf(type);
    }
}
