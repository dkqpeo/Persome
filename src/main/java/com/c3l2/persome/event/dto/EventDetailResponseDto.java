package com.c3l2.persome.event.dto;

import com.c3l2.persome.coupon.dto.CouponDto;
import com.c3l2.persome.event.entity.Event;
import com.c3l2.persome.promotion.dto.PromotionDto;
import lombok.*;

import java.time.LocalDateTime;
import java.util.List;

@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class EventDetailResponseDto {
    private Long id;
    private String name;
    private String thumbnailUrl;
    private String description;
    private LocalDateTime startDate;
    private LocalDateTime endDate;
    private String status;

    private List<PromotionDto> promotions;
    private List<CouponDto> coupons;

    public static EventDetailResponseDto fromEntity(
            Event event,
            List<PromotionDto> promotions,
            List<CouponDto> coupons
    ) {
        return EventDetailResponseDto.builder()
                .id(event.getId())
                .name(event.getName())
                .thumbnailUrl(event.getThumbnailUrl())
                .description(event.getDescription())
                .startDate(event.getStartDate())
                .endDate(event.getEndDate())
                .status(event.getStatus().name())
                .promotions(promotions)
                .coupons(coupons)
                .build();
    }
}
