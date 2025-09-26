package com.c3l2.persome.admin.dto;

import jakarta.validation.Valid;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import java.time.LocalDateTime;
import java.util.List;

public record AdminEventRequest(
        @NotBlank String name,
        String thumbnailUrl,
        @NotBlank String description,
        @NotNull LocalDateTime startDate,
        @NotNull LocalDateTime endDate,
        @NotBlank String status,
        @Valid List<ImageRequest> images
) {
    public record ImageRequest(
            @NotBlank String url,
            @NotNull Integer order
    ) {
    }
}
