package com.c3l2.persome.order.repository;

import com.c3l2.persome.order.entity.Order;
import com.c3l2.persome.order.entity.OrderStatus;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
import java.util.List;

@Repository
public interface OrderRepository extends JpaRepository<Order, Long> {
    List<Order> findByUserId(Long userId);
    List<Order> findByOrderStatusAndScheduledStatusChangeAtBefore(
            OrderStatus status,
            LocalDateTime time
    ); //1시간 지난 주문 조회
    Page<Order> findByUserId(Long userId, Pageable pageable); //페이지네이션
}
