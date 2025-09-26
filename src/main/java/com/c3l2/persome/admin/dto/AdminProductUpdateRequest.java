package com.c3l2.persome.admin.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

public record AdminProductUpdateRequest(
        @NotBlank String name,
        @NotBlank String description,
        @NotNull Long categoryId,
        @NotNull Long brandId
) {
}
