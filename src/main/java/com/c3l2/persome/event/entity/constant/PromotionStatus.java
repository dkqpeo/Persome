package com.c3l2.persome.event.entity.constant;

public enum PromotionStatus {

    DRAFT, SCHEDULED, ACTIVE, ENDED, INACTIVE;

    public static PromotionStatus of (String promotionStatus) {
        return PromotionStatus.valueOf(promotionStatus);
    }
}
