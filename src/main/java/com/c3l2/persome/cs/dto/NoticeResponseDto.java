package com.c3l2.persome.cs.dto;

import com.c3l2.persome.cs.entity.Notice;
import com.c3l2.persome.cs.entity.constant.Category;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class NoticeResponseDto {

    private Long id;
    private String title;
    private String content;
    private Category category;

    @JsonProperty("is_important")
    private boolean important;

    @JsonProperty("view_count")
    private int viewCount;

    @JsonProperty("is_active")
    private boolean active;

    @JsonProperty("created_at")
    private LocalDateTime createdAt;

    @JsonProperty("updated_at")
    private LocalDateTime updatedAt;

    public static NoticeResponseDto from(Notice notice) {
        return NoticeResponseDto.builder()
                .id(notice.getId())
                .title(notice.getTitle())
                .content(notice.getContent())
                .category(notice.getCategory())
                .important(notice.isImportant())
                .viewCount(notice.getViewCount())
                .active(notice.isActive())
                .createdAt(notice.getCreatedAt())
                .updatedAt(notice.getUpdatedAt())
                .build();
    }
}
