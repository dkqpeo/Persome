package com.c3l2.persome.coupon.dto;

import com.c3l2.persome.coupon.entity.UserCoupon;
import lombok.*;

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

    public static UserCouponResponseDto fromEntity(UserCoupon userCoupon) {
        return UserCouponResponseDto.builder()
                .userCouponId(userCoupon.getId())
                .userId(userCoupon.getUser().getId())
                .couponId(userCoupon.getCoupon().getId())
                .couponName(userCoupon.getCoupon().getName())
                .status(userCoupon.getStatus().name())
                .expiredAt(userCoupon.getExpiredAt())
                .build();
    }
}
