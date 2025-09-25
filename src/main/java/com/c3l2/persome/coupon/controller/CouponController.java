package com.c3l2.persome.coupon.controller;

import com.c3l2.persome.common.ApiResponse;
import com.c3l2.persome.coupon.dto.CouponDto;
import com.c3l2.persome.coupon.service.CouponService;
import com.c3l2.persome.user.security.CustomUserDetails;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/coupons")
@RequiredArgsConstructor
public class CouponController {
    private final CouponService couponService;
    @GetMapping("/membership")
    public ResponseEntity<ApiResponse<List<CouponDto>>> getMembershipCoupons(@RequestParam String level, @AuthenticationPrincipal CustomUserDetails userDetails) {
        List<CouponDto> coupons = couponService.getMembershipCoupons(userDetails.getId(), level);
        return ApiResponse.ok("등급별 쿠폰 조회 성공.",coupons);
    }
}
