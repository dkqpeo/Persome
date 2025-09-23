package com.c3l2.persome.cs.dto;

import com.c3l2.persome.cs.entity.Faq;
import com.c3l2.persome.cs.entity.constant.FaqCategory;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class FAQRequestDto {

    private FaqCategory category;
    private String question;
    private String answer;
    private Integer sortOrder;
    private Boolean isActive;

    public Faq toEntity() {
        return Faq.builder()
                .category(category)
                .question(question)
                .answer(answer)
                .sortOrder(sortOrder == null ? 0 : sortOrder)
                .isActive(isActive == null || isActive)
                .viewCount(0)
                .build();
    }
}
