package com.c3l2.persome.order;

import com.c3l2.persome.common.ApiResponse;
import com.c3l2.persome.order.dto.OrderRequestDto;
import com.c3l2.persome.order.dto.OrderResponseDto;
import com.c3l2.persome.order.service.OrderService;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/orders")
@RequiredArgsConstructor
public class OrderController {
    private final OrderService orderService;

    //주문 생성
    @PostMapping
    public ResponseEntity<ApiResponse<OrderResponseDto>> createOrder(@RequestBody OrderRequestDto request, HttpSession session) {
        // 세션에서 userId 가져오기
        Long userId = (Long) session.getAttribute("userId");
        if (userId == null) {
            return ApiResponse.error("로그인이 필요합니다.", HttpStatus.UNAUTHORIZED);
        }

        OrderResponseDto response = orderService.createOrder(userId, request);
        return ApiResponse.ok("주문이 정상적으로 생성되었습니다.",response );
    }
}
