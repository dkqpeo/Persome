package com.c3l2.persome.order.controller;

import com.c3l2.persome.common.ApiResponse;
import com.c3l2.persome.order.dto.response.OrderCountDto;
import com.c3l2.persome.order.dto.response.OrderPrepareResponseDto;
import com.c3l2.persome.order.dto.response.OrderResponseDto;
import com.c3l2.persome.order.dto.request.OrderRequestDto;
import com.c3l2.persome.order.dto.response.OrderSummaryDto;
import com.c3l2.persome.order.service.OrderService;
import com.c3l2.persome.user.security.CustomUserDetails;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("api/orders")
public class OrderController {
    private final OrderService orderService;

    //주문 준비
    @GetMapping("/prepare")
    public ResponseEntity<ApiResponse<OrderPrepareResponseDto>> prepareOrder(@RequestParam List<Long> cartItemIds){
        OrderPrepareResponseDto response = orderService.prepareOrder(cartItemIds);
        return ApiResponse.ok("주문 준비 조회 성공",  response);
    }

    //주문 생성
    @PostMapping
    public ResponseEntity<ApiResponse<OrderResponseDto>> createOrder(@RequestBody OrderRequestDto request, @AuthenticationPrincipal CustomUserDetails userDetails) {
        OrderResponseDto response = orderService.createOrder(userDetails.getId(), request);
        return ApiResponse.ok("주문이 정상적으로 생성되었습니다.",response );
    }

    //주문 목록 조회
    @GetMapping("/my")
    public ResponseEntity<ApiResponse<Page<OrderSummaryDto>>> getOrders(
            @AuthenticationPrincipal CustomUserDetails userDetails,
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "10") int size,
            @RequestParam(required = false) @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate fromDate
    ) {
        Page<OrderSummaryDto> orders = orderService.getUserOrders(userDetails.getId(), page, size, fromDate);
        return ApiResponse.ok("주문 내역 조회 성공.", orders);
    }

    //기간별 주문 count 조회
    @GetMapping("/my/range")
    public ResponseEntity<ApiResponse<List<OrderCountDto>>> getOrderStatusCountsByRange(
            @AuthenticationPrincipal CustomUserDetails userDetails,
            @RequestParam @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate fromDate,
            @RequestParam(required = false) @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate toDate
    ) {
        List<OrderCountDto> counts = orderService.getUserOrderStatusCounts(userDetails.getId(), fromDate, toDate);
        return ApiResponse.ok("기간별 주문 상태 카운트 조회 성공", counts);
    }

    //주문 상세 조회
    @GetMapping("/{orderId}")
    public ResponseEntity<ApiResponse<OrderResponseDto>> getOrderDetail(@PathVariable Long orderId) {
        OrderResponseDto orderDetail = orderService.getOrderDetail(orderId);
        return ApiResponse.ok("주문 상세 조회 성공", orderDetail);
    }

    //주문 취소
    @PatchMapping("/{orderId}/cancel")
    public ResponseEntity<String> cancelOrder(@PathVariable Long orderId, @AuthenticationPrincipal CustomUserDetails userDetails){
        orderService.cancelOrder(orderId, userDetails.getId());
        return ResponseEntity.ok("주문이 성공적으로 취소되었습니다.");
    }
}
