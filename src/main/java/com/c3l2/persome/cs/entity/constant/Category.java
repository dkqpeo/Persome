package com.c3l2.persome.cs.entity.constant;

public enum Category {

    EVENT, NORMAL, DELIVERY,MARKET;

    public static Category of(String category) {
        return Category.valueOf(category);
    }
}
