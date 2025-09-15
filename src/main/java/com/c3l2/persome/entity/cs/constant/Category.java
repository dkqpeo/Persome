package com.c3l2.persome.entity.cs.constant;

import com.c3l2.persome.entity.event.constant.EventType;

public enum Category {

    EVENT, NORMAL, DELIVERY,MARKET;

    public static Category of(String category) {
        return Category.valueOf(category);
    }
}
