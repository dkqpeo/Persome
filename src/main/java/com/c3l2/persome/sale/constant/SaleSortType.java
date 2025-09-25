package com.c3l2.persome.sale.constant;

import java.util.Locale;

public enum SaleSortType {

    POPULAR,
    PRICE_HIGH,
    PRICE_LOW;

    public static SaleSortType from(String value) {
        if (value == null || value.isBlank()) {
            return POPULAR;
        }

        String normalized = value.trim().replace('-', '_').toUpperCase(Locale.ROOT);
        return switch (normalized) {
            case "PRICE_HIGH", "HIGH", "DESC", "PRICE_DESC" -> PRICE_HIGH;
            case "PRICE_LOW", "LOW", "ASC", "PRICE_ASC" -> PRICE_LOW;
            case "POPULAR", "POPULARITY", "RANDOM" -> POPULAR;
            default -> POPULAR;
        };
    }
}
