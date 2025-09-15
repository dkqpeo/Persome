package com.c3l2.persome.entity.product.constant;

public enum ProductStatus {

    판매중, 품절, 일시품절, 입고예정;

    public static ProductStatus of(String status) {
        return ProductStatus.valueOf(status);
    }
}
