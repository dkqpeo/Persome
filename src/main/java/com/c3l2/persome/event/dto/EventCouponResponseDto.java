package com.c3l2.persome.event.dto;

import com.c3l2.persome.coupon.entity.Coupon;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class EventCouponResponseDto {
    private Long couponId;
    private String name;
    private String status;        // ACTIVE / INACTIVE
    private LocalDateTime startDate;
    private LocalDateTime endDate;
    private BigDecimal discountValue;
    private String discountType;
    private BigDecimal minOrderPrice;
    private BigDecimal maxDiscountPrice;

    private boolean alreadyIssued; // ✅ 로그인 유저 기준

    public static EventCouponResponseDto fromCoupon(Coupon coupon, boolean alreadyIssued) {
        return EventCouponResponseDto.builder()
                .couponId(coupon.getId())
                .name(coupon.getName())
                .status(coupon.getStatus().name())
                .startDate(coupon.getStartDate())
                .endDate(coupon.getEndDate())
                .discountValue(coupon.getDiscountValue())
                .discountType(coupon.getDiscountType().name())
                .minOrderPrice(coupon.getMinOrderPrice())
                .maxDiscountPrice(coupon.getMaxDiscountPrice())
                .alreadyIssued(alreadyIssued)
                .build();
    }
}

