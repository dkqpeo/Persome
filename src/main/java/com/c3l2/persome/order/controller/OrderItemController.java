package com.c3l2.persome.order.controller;

import com.c3l2.persome.common.ApiResponse;
import com.c3l2.persome.order.dto.response.OrderItemDto;
import com.c3l2.persome.order.service.OrderItemService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/orders/item")
@RequiredArgsConstructor
public class OrderItemController {

    private final OrderItemService orderItemService;

    @GetMapping
    public ResponseEntity<ApiResponse<OrderItemDto>> getDetail(@RequestParam Long orderItemId) {

        OrderItemDto orderItem = orderItemService.getDetailOrderItem(orderItemId);

        return ApiResponse.ok("orderItem 조회 성공", orderItem);
    }
}
