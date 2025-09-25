package com.c3l2.persome.cs.dto;

import com.c3l2.persome.cs.entity.Notice;
import com.c3l2.persome.cs.entity.constant.Category;
import com.c3l2.persome.cs.entity.constant.FaqChannel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class NoticeRequestDto {

    private String title;
    private String content;
    private Boolean important;
    private Boolean active;
    private Category category;
    private FaqChannel channel;

    public Notice toEntity() {
        return Notice.builder()
                .title(title)
                .content(content)
                .isImportant(Boolean.TRUE.equals(important))
                .isActive(active == null || active)
                .viewCount(0)
                .category(category == null ? Category.NORMAL : category)
                .channel(channel == null ? FaqChannel.ONLINE : channel)
                .build();
    }
}
