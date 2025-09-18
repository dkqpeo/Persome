package com.c3l2.persome.coupon.dto;

import com.c3l2.persome.coupon.entity.Coupon;
import com.c3l2.persome.coupon.entity.constant.CouponStatus;
import com.c3l2.persome.coupon.entity.constant.DiscountType;
import lombok.*;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class CouponDto {
    private Long id;
    private String name;
    private String code;
    private DiscountType discountType;     //RATE, FIXED
    private BigDecimal discountValue;
    private BigDecimal minOrderPrice;
    private BigDecimal maxDiscountPrice;
    private Integer limitIssueCount;
    private Integer issueCount;
    private Integer usedCount;
    private LocalDateTime startDate;
    private LocalDateTime endDate;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;
    private CouponStatus status;           //ACTIVE, INACTIVE

    public static CouponDto fromEntity(Coupon coupon) {
        return CouponDto.builder()
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
                .build();
    }
}