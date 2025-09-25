package com.c3l2.persome.promotion.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class PromotionTargetDto {
    private String targetType;
    private Long targetId;
    private String targetName;
}
