package com.c3l2.persome.order.scheduler;

import com.c3l2.persome.order.entity.Order;
import com.c3l2.persome.order.entity.OrderStatus;
import com.c3l2.persome.order.repository.OrderRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.List;

@Component
@RequiredArgsConstructor
public class OrderScheduler {

    private final OrderRepository orderRepository;

    //30분 마다
    @Scheduled(cron = "0 0/30 * * * *")
    @Transactional
    public void updateOrders() {
        LocalDateTime now = LocalDateTime.now();

        //1시간 지난 PENDING 주문 조회
        List<Order> orders = orderRepository.findByOrderStatusAndScheduledStatusChangeAtBefore(
                OrderStatus.PAID, now
        );

        for (Order order : orders) {
            order.completed(); //주문 완료 처리
        }

        if (!orders.isEmpty()) {
            orderRepository.saveAll(orders);
        }
    }
}