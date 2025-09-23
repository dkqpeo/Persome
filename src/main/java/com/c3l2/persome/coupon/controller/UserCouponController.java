package com.c3l2.persome.coupon.controller;

import com.c3l2.persome.common.ApiResponse;
import com.c3l2.persome.coupon.dto.UserCouponRequestDto;
import com.c3l2.persome.coupon.dto.UserCouponResponseDto;
import com.c3l2.persome.coupon.service.UserCouponService;
import com.c3l2.persome.user.security.CustomUserDetails;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("api/users/me/coupons")
public class UserCouponController {
    private final UserCouponService userCouponService;

    //사용자 쿠폰 발급
    @PostMapping
    public ResponseEntity<ApiResponse<UserCouponResponseDto>> issueCoupon(@RequestBody UserCouponRequestDto userCouponRequestDto, @AuthenticationPrincipal CustomUserDetails userDetails){
        UserCouponResponseDto response = userCouponService.issueUserCoupon(userDetails.getId(), userCouponRequestDto.getCouponId());
        return ApiResponse.ok("쿠폰 발급 성공!", response);
    }

    //사용자 쿠폰 전체 조회
    @GetMapping
    public ResponseEntity<ApiResponse<List<UserCouponResponseDto>>> userCoupons(@AuthenticationPrincipal CustomUserDetails userDetails){
        return ApiResponse.ok("사용자 쿠폰 전체 조회.", userCouponService.getUserCoupons(userDetails.getId()));
    }

    //적용 가능한 쿠폰 조회
    @GetMapping("/available")
    public ResponseEntity<ApiResponse<List<UserCouponResponseDto>>> availableCoupons(@AuthenticationPrincipal CustomUserDetails userDetails){
        return ApiResponse.ok("적용 가능한 쿠폰 조회", userCouponService.getAvailableUserCoupons(userDetails.getId()));
    }
}
