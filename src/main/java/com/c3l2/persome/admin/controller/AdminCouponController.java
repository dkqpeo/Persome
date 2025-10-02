package com.c3l2.persome.admin.controller;

import com.c3l2.persome.admin.dto.AdminCouponIssueRequest;
import com.c3l2.persome.admin.dto.AdminCouponPageResponse;
import com.c3l2.persome.admin.dto.AdminCouponRequest;
import com.c3l2.persome.admin.dto.AdminIssuedCouponPageResponse;
import com.c3l2.persome.admin.dto.AdminIssuedCouponResponse;
import com.c3l2.persome.admin.service.AdminCouponService;
import com.c3l2.persome.common.ApiResponse;
import com.c3l2.persome.coupon.dto.CouponDto;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("/admin/coupons")
public class AdminCouponController {

    private final AdminCouponService adminCouponService;

    @GetMapping
    public ResponseEntity<AdminCouponPageResponse> getCoupons(
            @RequestParam(name = "page", defaultValue = "0") int page,
            @RequestParam(name = "size", defaultValue = "20") int size,
            @RequestParam(name = "keyword", required = false) String keyword,
            @RequestParam(name = "status", required = false) String status
    ) {
        return ResponseEntity.ok(adminCouponService.getCoupons(page, size, keyword, status));
    }

    @PostMapping
    public ResponseEntity<ApiResponse<CouponDto>> createCoupon(@Valid @RequestBody AdminCouponRequest request) {
        CouponDto created = adminCouponService.createCoupon(request);
        return ResponseEntity.status(HttpStatus.CREATED)
                .body(ApiResponse.<CouponDto>builder()
                        .message("쿠폰 등록에 성공했습니다.")
                        .data(created)
                        .build());
    }

    @PostMapping("/issue")
    public ResponseEntity<ApiResponse<AdminIssuedCouponResponse>> issueCoupon(
            @Valid @RequestBody AdminCouponIssueRequest request
    ) {
        AdminIssuedCouponResponse issued = adminCouponService.issueCoupon(request);
        return ResponseEntity.status(HttpStatus.CREATED)
                .body(ApiResponse.<AdminIssuedCouponResponse>builder()
                        .message("쿠폰 발급에 성공했습니다.")
                        .data(issued)
                        .build());
    }

    @GetMapping("/issued")
    public ResponseEntity<AdminIssuedCouponPageResponse> getIssuedCoupons(
            @RequestParam(name = "page", defaultValue = "0") int page,
            @RequestParam(name = "size", defaultValue = "20") int size,
            @RequestParam(name = "member", required = false) String loginId,
            @RequestParam(name = "coupon", required = false) String couponKeyword,
            @RequestParam(name = "status", required = false) String status
    ) {
        return ResponseEntity.ok(
                adminCouponService.getIssuedCoupons(page, size, loginId, couponKeyword, status)
        );
    }
}
