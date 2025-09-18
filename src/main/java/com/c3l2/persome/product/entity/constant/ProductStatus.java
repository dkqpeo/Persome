package com.c3l2.persome.product.entity.constant;

public enum ProductStatus {

    판매중, 품절, 일시품절, 입고예정;

    public static ProductStatus of(String status) {
        return ProductStatus.valueOf(status);
    }
}
