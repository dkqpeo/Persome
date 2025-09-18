package com.c3l2.persome.promotion.entity;

public enum PromotionStatus {

    DRAFT, SCHEDULED, ACTIVE, ENDED, INACTIVE;

    public static PromotionStatus of (String promotionStatus) {
        return PromotionStatus.valueOf(promotionStatus);
    }
}
