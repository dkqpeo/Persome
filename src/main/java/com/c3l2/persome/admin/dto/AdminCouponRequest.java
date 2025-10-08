package com.c3l2.persome.admin.dto;

import jakarta.validation.constraints.DecimalMin;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import java.math.BigDecimal;
import java.time.LocalDateTime;

public record AdminCouponRequest(
        @NotBlank @Size(max = 100) String name,
        @NotBlank @Size(max = 100) String code,
        @NotBlank String discountType,
        @NotNull @DecimalMin(value = "0.0", inclusive = false) BigDecimal discountValue,
        @NotNull @DecimalMin(value = "0.0") BigDecimal minOrderPrice,
        @NotNull @DecimalMin(value = "0.0") BigDecimal maxDiscountPrice,
        @NotNull @Min(1) Integer limitIssueCount,
        @NotNull LocalDateTime startDate,
        @NotNull LocalDateTime endDate,
        @NotBlank String status,
        Long eventId
) {
}

