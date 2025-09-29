package com.c3l2.persome.event.dto;

import com.c3l2.persome.coupon.dto.CouponDto;
import com.c3l2.persome.event.entity.Event;
import com.c3l2.persome.event.entity.EventImg;
import com.c3l2.persome.promotion.dto.PromotionDto;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.List;

@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class EventDetailAdminResponseDto {
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

    public static EventDetailAdminResponseDto fromEntity(
            Event event,
            String status,
            List<PromotionDto> promotions,
            List<CouponDto> coupons
    ) {
        return EventDetailAdminResponseDto.builder()
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
}

