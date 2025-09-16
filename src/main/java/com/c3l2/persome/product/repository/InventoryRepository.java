package com.c3l2.persome.product.repository;

import com.c3l2.persome.entity.product.Inventory;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface InventoryRepository extends JpaRepository<Inventory, Long> {

    List<Inventory> findByProductOptionId(Long productOptionId);
}