package com.c3l2.persome.entity.event.constant;

public enum EventStatus {

    DRAFT, SCHEDULED, ACTIVE, ENDED, INACTIVE;

    public static EventStatus of(String eventStatus) {
        return EventStatus.valueOf(eventStatus);
    }
}
