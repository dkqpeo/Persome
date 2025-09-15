package com.c3l2.persome.entity.event.constant;

public enum EventType {

    PROMOTION, BANNER, SALE, COUPON;

    public static EventType of(String eventType){
        return EventType.valueOf(eventType);
    }
}
