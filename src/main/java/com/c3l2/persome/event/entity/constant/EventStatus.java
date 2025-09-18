package com.c3l2.persome.event.entity.constant;

public enum EventStatus {

    DRAFT, SCHEDULED, ACTIVE, ENDED, INACTIVE;

    public static EventStatus of(String eventStatus) {
        return EventStatus.valueOf(eventStatus);
    }
}
