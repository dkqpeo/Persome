package com.c3l2.persome.admin.dto;

import jakarta.validation.Valid;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

public record AdminPromotionRequest(
        @NotBlank String status,
        @NotBlank String discountType,
        @NotNull BigDecimal discountValue,
        @NotNull LocalDateTime startDate,
        @NotNull LocalDateTime endDate,
        Long eventId,
        @Valid List<TargetRequest> targets
) {
    public record TargetRequest(
            @NotBlank String targetType,
            @NotNull Long targetId
    ) {
    }
}
