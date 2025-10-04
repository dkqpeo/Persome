package com.c3l2.persome.admin.dto;

import com.c3l2.persome.promotion.entity.Promotion;
import com.c3l2.persome.promotion.entity.PromotionTarget;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

public record AdminPromotionSummaryDto(
        Long id,
        String status,
        String discountType,
        BigDecimal discountValue,
        LocalDateTime startDate,
        LocalDateTime endDate,
        Long eventId,
        String eventName,
        List<TargetSummary> targets
) {

    public static AdminPromotionSummaryDto from(Promotion promotion) {
        Long eventId = promotion.getEvent() != null ? promotion.getEvent().getId() : null;
        String eventName = promotion.getEvent() != null ? promotion.getEvent().getName() : null;

        List<TargetSummary> targetSummaries = promotion.getPromotionTarget().stream()
                .map(TargetSummary::from)
                .toList();

        return new AdminPromotionSummaryDto(
                promotion.getId(),
                promotion.getStatus().name(),
                promotion.getDiscountType().name(),
                promotion.getDiscountValue(),
                promotion.getStartDate(),
                promotion.getEndDate(),
                eventId,
                eventName,
                targetSummaries
        );
    }

    public record TargetSummary(
            String targetType,
            Long targetId
    ) {
        private static TargetSummary from(PromotionTarget target) {
            return new TargetSummary(
                    target.getTargetType().name(),
                    target.getTargetId()
            );
        }
    }
}

