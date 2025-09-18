package com.c3l2.persome.point.controller;

import com.c3l2.persome.point.dto.PointTransactionResponseDto;
import com.c3l2.persome.point.dto.PointChangeRequestDto;
import com.c3l2.persome.point.dto.PointChangeResponseDto;
import com.c3l2.persome.point.dto.UserPointResponseDto;
import com.c3l2.persome.point.service.PointTransactionService;
import com.c3l2.persome.point.service.UserPointService;
import com.c3l2.persome.user.security.CustomUserDetails;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;

@RestController
@RequestMapping("/users/me/points")
@RequiredArgsConstructor
public class UserPointController {
    private final UserPointService userPointService;
    private final PointTransactionService pointTransactionService;

    // 내 포인트 조회
    @GetMapping
    public ResponseEntity<UserPointResponseDto> getMyPoints(@AuthenticationPrincipal CustomUserDetails userDetails) {
        UserPointResponseDto responseDto = userPointService.getMyPoint(userDetails.getId());

        return ResponseEntity.ok(responseDto);
    }

    // 포인트 거래 이력 조회
    @GetMapping("/transactions")
    public ResponseEntity<Page<PointTransactionResponseDto>> getMyTransactions(
            @AuthenticationPrincipal CustomUserDetails userDetails,
            @RequestParam(required = false) @DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME) LocalDate start,
            @RequestParam(required = false) @DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME) LocalDate end,
            @PageableDefault(size = 20, sort = "occurredAt", direction = Sort.Direction.DESC) Pageable pageable) {
        Long userId = userDetails.getId();

        if (start == null) {
            start = LocalDate.now().minusMonths(1);
        }
        if (end == null) {
            start = LocalDate.now();
        }

        Page<PointTransactionResponseDto> transactions =
                pointTransactionService.getMyPointTransactions(userId, start, end, pageable);

        return ResponseEntity.ok(transactions);
    }

    // 당월 포인트 소멸 예정 조회
    @GetMapping("/expiring/this-month")
    public ResponseEntity<Integer> getMyExpiringPointsThisMonth(
            @AuthenticationPrincipal CustomUserDetails userDetails
    ) {
        Long userId = userDetails.getId();
        int expiringPoints = pointTransactionService.getExpiringPointsThisMonth(userId);

        return ResponseEntity.ok(expiringPoints);
    }

    // 포인트 변경
    @PostMapping("/change")
    public ResponseEntity<PointChangeResponseDto> changePoints(
            @AuthenticationPrincipal CustomUserDetails userDetails,
            @RequestBody PointChangeRequestDto pointChangeRequestDto
    ) {
        Long userId = userDetails.getId();
        PointChangeResponseDto pointUseResponseDto = userPointService.changePoints(userId, pointChangeRequestDto);
        return ResponseEntity.ok(pointUseResponseDto);
    }
}
