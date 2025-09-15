package com.c3l2.persome.order;

import com.c3l2.persome.common.ApiResponse;
import com.c3l2.persome.order.dto.OrderRequestDto;
import com.c3l2.persome.order.dto.OrderResponseDto;
import com.c3l2.persome.order.dto.OrderSummaryDto;
import com.c3l2.persome.order.service.OrderService;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class OrderController {
    private final OrderService orderService;

    //주문 생성
    @PostMapping("/orders")
    public ResponseEntity<ApiResponse<OrderResponseDto>> createOrder(@RequestBody OrderRequestDto request, HttpSession session) {
        // 세션에서 userId 가져오기
        Long userId = getUserIdOrThrow(session);

        OrderResponseDto response = orderService.createOrder(userId, request);
        return ApiResponse.ok("주문이 정상적으로 생성되었습니다.",response );
    }

    //주문 목록 조회
    @PostMapping("users/{id}/orders")
    public ResponseEntity<ApiResponse<List<OrderSummaryDto>>> getOders(HttpSession session){
        Long userId = getUserIdOrThrow(session);
        List<OrderSummaryDto> orders = orderService.getUserOrders(userId);
        return ApiResponse.ok("주문 내역 조회 성공.",orders);
    }

    //세션에서 Id 가져오기
    private Long getUserIdOrThrow(HttpSession session) {
        Long userId = (Long) session.getAttribute("userId");
        if (userId == null) {
            throw new IllegalStateException("로그인이 필요합니다.");
            // → 글로벌 예외 핸들러(@ControllerAdvice)에서 잡아서 401 응답 내려주면 깔끔
        }
        return userId;
    }
}
