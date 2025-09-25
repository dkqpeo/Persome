package com.c3l2.persome.coupon.controller;

import com.c3l2.persome.common.ApiResponse;
import com.c3l2.persome.coupon.dto.CouponDto;
import com.c3l2.persome.coupon.service.CouponService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
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
    public ResponseEntity<ApiResponse<List<CouponDto>>> getMembershipCoupons(@RequestParam String level) {
        List<CouponDto> coupons = couponService.getMembershipCoupons(level);
        return ApiResponse.ok("",coupons);
    }
}
