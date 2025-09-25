package com.c3l2.persome.cs.dto;

import com.c3l2.persome.cs.entity.Faq;
import com.c3l2.persome.cs.entity.constant.FaqCategory;
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
public class FAQResponse {

    private Long id;
    private FaqCategory category;
    private FaqChannel channel;
    private String question;
    private String answer;
    private Integer sortOrder;
    private Integer viewCount;
    private boolean isActive;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;

    public static FAQResponse from(Faq faq) {
        return FAQResponse.builder()
                .id(faq.getId())
                .category(faq.getCategory())
                .question(faq.getQuestion())
                .answer(faq.getAnswer())
                .channel(faq.getChannel())
                .sortOrder(faq.getSortOrder())
                .viewCount(faq.getViewCount())
                .isActive(faq.isActive())
                .createdAt(faq.getCreatedAt())
                .updatedAt(faq.getUpdatedAt())
                .build();
    }
}
