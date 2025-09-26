package com.c3l2.persome.admin.dto;

import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import java.util.List;

public record AdminPromotionProductUpdateRequest(@NotEmpty List<@NotNull Long> productIds) {
}
