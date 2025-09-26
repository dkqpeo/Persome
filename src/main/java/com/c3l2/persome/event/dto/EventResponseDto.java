package com.c3l2.persome.event.dto;

import com.c3l2.persome.event.entity.Event;
import com.c3l2.persome.event.entity.constant.EventStatus;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class EventResponseDto {
    private Long id;
    private String name;
    private String thumbnailUrl;
    private String description;
    private LocalDateTime startDate;
    private LocalDateTime endDate;
    private String status;

    public static EventResponseDto fromEntity(Event event, String status) {
        return EventResponseDto.builder()
                .id(event.getId())
                .name(event.getName())
                .thumbnailUrl(event.getThumbnailUrl())
                .description(event.getDescription())
                .startDate(event.getStartDate())
                .endDate(event.getEndDate())
                .status(status)
                .build();
    }


    // ✅ 상태만 교체하는 메서드
    public EventResponseDto withStatus(String newStatus) {
        return EventResponseDto.builder()
                .id(this.id)
                .name(this.name)
                .thumbnailUrl(this.thumbnailUrl)
                .description(this.description)
                .startDate(this.startDate)
                .endDate(this.endDate)
                .status(newStatus)
                .build();
    }
}

