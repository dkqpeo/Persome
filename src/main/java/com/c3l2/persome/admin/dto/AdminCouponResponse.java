package com.c3l2.persome.admin.dto;

import com.c3l2.persome.coupon.entity.Coupon;
import com.c3l2.persome.coupon.entity.constant.CouponStatus;
import com.c3l2.persome.coupon.entity.constant.DiscountType;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class AdminCouponResponse {

    private final Long id;
    private final String name;
    private final String code;
    private final DiscountType discountType;
    private final BigDecimal discountValue;
    private final BigDecimal minOrderPrice;
    private final BigDecimal maxDiscountPrice;
    private final Integer limitIssueCount;
    private final Integer issueCount;
    private final Integer usedCount;
    private final LocalDateTime startDate;
    private final LocalDateTime endDate;
    private final LocalDateTime createdAt;
    private final LocalDateTime updatedAt;
    private final CouponStatus status;
    private final Long eventId;
    private final String eventName;

    public static AdminCouponResponse from(Coupon coupon) {
        return AdminCouponResponse.builder()
                .id(coupon.getId())
                .name(coupon.getName())
                .code(coupon.getCode())
                .discountType(coupon.getDiscountType())
                .discountValue(coupon.getDiscountValue())
                .minOrderPrice(coupon.getMinOrderPrice())
                .maxDiscountPrice(coupon.getMaxDiscountPrice())
                .limitIssueCount(coupon.getLimitIssueCount())
                .issueCount(coupon.getIssueCount())
                .usedCount(coupon.getUsedCount())
                .startDate(coupon.getStartDate())
                .endDate(coupon.getEndDate())
                .createdAt(coupon.getCreatedAt())
                .updatedAt(coupon.getUpdatedAt())
                .status(coupon.getStatus())
                .eventId(coupon.getEvent() != null ? coupon.getEvent().getId() : null)
                .eventName(coupon.getEvent() != null ? coupon.getEvent().getName() : null)
                .build();
    }
}
