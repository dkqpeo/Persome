package com.c3l2.persome.cart.repository;

import com.c3l2.persome.entity.cart.Cart;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CartRepository extends JpaRepository<Cart, Long> {

    // R - SINGLE
    Cart findByUser_Id(Long userId);
}
