package com.c3l2.persome.promotion.dto;

import com.c3l2.persome.promotion.entity.Promotion;
import lombok.*;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class PromotionDto {
    private Long id;
    private String status;        //DRAFT, SCHEDULED, ACTIVE, ENDED, INACTIVE
    private String discountType;  //RATE, FIXED
    private BigDecimal discountValue;
    private LocalDateTime startDate;
    private LocalDateTime endDate;
    private LocalDateTime createdAt;

    private List<PromotionTargetDto> targets;

    public static PromotionDto fromEntity(Promotion promotion, List<PromotionTargetDto> targets) {
        String targetType = promotion.getPromotionTarget().isEmpty()
                ? null
                : promotion.getPromotionTarget().getFirst().getTargetType().name();

        return PromotionDto.builder()
                .id(promotion.getId())
                .status(promotion.getStatus().name())
                .discountType(promotion.getDiscountType().name())
                .discountValue(promotion.getDiscountValue())
                .startDate(promotion.getStartDate())
                .endDate(promotion.getEndDate())
                .createdAt(promotion.getCreatedAt())
                .targets(targets)
                .build();
    }

}
