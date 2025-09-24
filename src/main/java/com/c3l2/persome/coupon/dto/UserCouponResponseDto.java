package com.c3l2.persome.coupon.dto;

import com.c3l2.persome.coupon.entity.UserCoupon;
import com.c3l2.persome.coupon.entity.constant.DiscountType;
import lombok.*;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class UserCouponResponseDto {
    private Long userCouponId;
    private Long userId;
    private Long couponId;
    private String couponName;
    private String status;
    private LocalDateTime expiredAt;
    private LocalDateTime startDate;
    private LocalDateTime endDate;

    private DiscountType discountType;   // RATE or FIXED
    private BigDecimal discountValue;    // 30 (30% or 30원)

    public static UserCouponResponseDto fromEntity(UserCoupon userCoupon) {
        return UserCouponResponseDto.builder()
                .userCouponId(userCoupon.getId())
                .userId(userCoupon.getUser().getId())
                .couponId(userCoupon.getCoupon().getId())
                .couponName(userCoupon.getCoupon().getName())
                .status(userCoupon.getStatus().getLabel())
                .expiredAt(userCoupon.getExpiredAt())
                .discountType(userCoupon.getCoupon().getDiscountType())
                .discountValue(userCoupon.getCoupon().getDiscountValue())
                .startDate(userCoupon.getCoupon().getStartDate())
                .endDate(userCoupon.getCoupon().getEndDate())
                .build();
    }
}
