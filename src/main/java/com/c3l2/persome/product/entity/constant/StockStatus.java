package com.c3l2.persome.product.entity.constant;

public enum StockStatus {

    SELLING, LOW_STOCK, OUT_OF_STOCK, INCOMMING, DISCONTINUED;

    public static StockStatus of(String name) {
        return StockStatus.valueOf(name);
    }
}
