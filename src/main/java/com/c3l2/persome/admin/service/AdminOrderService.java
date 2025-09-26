package com.c3l2.persome.admin.service;

import com.c3l2.persome.admin.dto.AdminOrderPageResponse;
import com.c3l2.persome.admin.dto.AdminOrderResponse;
import com.c3l2.persome.order.repository.OrderRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class AdminOrderService {

    private final OrderRepository orderRepository;

    public AdminOrderPageResponse getOrders(int page, int size) {
        Pageable pageable = PageRequest.of(Math.max(page, 0), Math.max(size, 1));
        Page<AdminOrderResponse> orderPage = orderRepository.findAll(pageable)
                .map(AdminOrderResponse::from);

        return AdminOrderPageResponse.builder()
                .orders(orderPage.getContent())
                .page(orderPage.getNumber())
                .size(orderPage.getSize())
                .totalElements(orderPage.getTotalElements())
                .totalPages(orderPage.getTotalPages())
                .hasNext(orderPage.hasNext())
                .hasPrevious(orderPage.hasPrevious())
                .build();
    }
}
