package com.c3l2.persome.order.repository;

import com.c3l2.persome.order.entity.OrderItem;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface OrderItemRepository extends JpaRepository<OrderItem, Long> {

    @Query("SELECT o " +
            "FROM OrderItem o " +
            "LEFT JOIN FETCH o.productOption po " +
            "LEFT JOIN FETCH po.product p " +
            "LEFT JOIN FETCH p.brand " +
            "WHERE o.order.id = :orderId")
    List<OrderItem> findByOrderId(Long orderId);

    @Override
    @Query("SELECT o " +
            "FROM OrderItem o " +
            "LEFT JOIN FETCH o.order " +
            "LEFT JOIN FETCH o.productOption po " +
            "LEFT JOIN FETCH po.product p " +
            "LEFT JOIN FETCH p.brand " +
            "WHERE o.id = :id")
    Optional<OrderItem> findById(Long id);
}
