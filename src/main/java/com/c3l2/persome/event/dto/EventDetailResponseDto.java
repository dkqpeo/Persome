package com.c3l2.persome.event.dto;

import com.c3l2.persome.coupon.dto.CouponDto;
import com.c3l2.persome.event.entity.Event;
import com.c3l2.persome.event.entity.EventImg;
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

    private List<String> images;
    private List<PromotionDto> promotions;
    private List<CouponDto> coupons;

    public static EventDetailResponseDto fromEntity(
            Event event,
            String status,
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
                .status(status)
                .images(event.getEventImgs().stream()
                        .map(EventImg::getImgUrl)
                        .toList())
                .promotions(promotions)
                .coupons(coupons)
                .build();
    }

    public EventDetailResponseDto withStatus(String newStatus) {
        return EventDetailResponseDto.builder()
                .id(this.id)
                .name(this.name)
                .thumbnailUrl(this.thumbnailUrl)
                .description(this.description)
                .startDate(this.startDate)
                .endDate(this.endDate)
                .status(newStatus)
                .images(this.images)
                .promotions(this.promotions)
                .coupons(this.coupons)
                .build();
    }
}
