package com.c3l2.persome.admin.controller;

import com.c3l2.persome.admin.dto.AdminCouponRequest;
import com.c3l2.persome.admin.service.AdminCouponService;
import com.c3l2.persome.common.ApiResponse;
import com.c3l2.persome.coupon.dto.CouponDto;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("/admin/coupons")
public class AdminCouponController {

    private final AdminCouponService adminCouponService;

    @PostMapping
    public ResponseEntity<ApiResponse<CouponDto>> createCoupon(@Valid @RequestBody AdminCouponRequest request) {
        CouponDto created = adminCouponService.createCoupon(request);
        return ResponseEntity.status(HttpStatus.CREATED)
                .body(ApiResponse.<CouponDto>builder()
                        .message("쿠폰 등록에 성공했습니다.")
                        .data(created)
                        .build());
    }
}

