package com.c3l2.persome.admin.dto;

import com.c3l2.persome.coupon.entity.UserCoupon;
import com.c3l2.persome.coupon.entity.constant.UserCouponStatus;
import com.c3l2.persome.user.entity.User;
import java.time.LocalDateTime;
import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class AdminIssuedCouponResponse {

    private final Long id;
    private final Long userId;
    private final String loginId;
    private final String userName;
    private final Long couponId;
    private final String couponName;
    private final String couponCode;
    private final UserCouponStatus status;
    private final LocalDateTime createdAt;
    private final LocalDateTime expiredAt;
    private final LocalDateTime usedAt;

    public static AdminIssuedCouponResponse from(UserCoupon userCoupon) {
        User user = userCoupon.getUser();
        return AdminIssuedCouponResponse.builder()
                .id(userCoupon.getId())
                .userId(user != null ? user.getId() : null)
                .loginId(user != null ? user.getLoginId() : null)
                .userName(user != null ? user.getName() : null)
                .couponId(userCoupon.getCoupon() != null ? userCoupon.getCoupon().getId() : null)
                .couponName(userCoupon.getCoupon() != null ? userCoupon.getCoupon().getName() : null)
                .couponCode(userCoupon.getCoupon() != null ? userCoupon.getCoupon().getCode() : null)
                .status(userCoupon.getStatus())
                .createdAt(userCoupon.getCreatedAt())
                .expiredAt(userCoupon.getExpiredAt())
                .usedAt(userCoupon.getUsedAt())
                .build();
    }
}
