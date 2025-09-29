package com.c3l2.persome.event.dto;

import jakarta.validation.Valid;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import java.time.LocalDateTime;
import java.util.List;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class EventAdminRequestDto {

    @NotBlank
    private String name;

    private String thumbnailUrl;

    @NotBlank
    private String description;

    @NotNull
    private LocalDateTime startDate;

    @NotNull
    private LocalDateTime endDate;

    @NotBlank
    private String status;

    @Valid
    private List<EventImageRequest> images;

    @Getter
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    public static class EventImageRequest {
        @NotBlank
        private String url;

        @NotNull
        private Integer order;
    }
}
