package com.c3l2.persome.cs.dto;

import com.c3l2.persome.cs.entity.Notice;
import com.c3l2.persome.cs.entity.constant.Category;
import com.c3l2.persome.cs.entity.constant.FaqChannel;
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
    private FaqChannel channel;
    private boolean important;
    private int viewCount;
    private boolean active;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;

    public static NoticeResponseDto from(Notice notice) {
        return NoticeResponseDto.builder()
                .id(notice.getId())
                .title(notice.getTitle())
                .content(notice.getContent())
                .category(notice.getCategory())
                .channel(notice.getChannel() == null ? FaqChannel.ONLINE : notice.getChannel())
                .important(notice.isImportant())
                .viewCount(notice.getViewCount())
                .active(notice.isActive())
                .createdAt(notice.getCreatedAt())
                .updatedAt(notice.getUpdatedAt())
                .build();
    }
}
