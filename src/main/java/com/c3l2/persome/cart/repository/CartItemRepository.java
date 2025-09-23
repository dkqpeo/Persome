package com.c3l2.persome.cart.repository;

import com.c3l2.persome.cart.entity.CartItem;
import org.springframework.data.jpa.repository.JpaRepository;


public interface CartItemRepository extends JpaRepository<CartItem, Long> {

    int countByCart_User_Id(Long userId);
}