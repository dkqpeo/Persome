package com.c3l2.persome.product.repository;

import com.c3l2.persome.product.entity.Inventory;
import com.c3l2.persome.product.entity.ProductOption;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;
import java.util.Optional;

public interface InventoryRepository extends JpaRepository<Inventory, Long>, JpaSpecificationExecutor<Inventory> {

    List<Inventory> findByProductOptionId(Long productOptionId);

    Optional<Inventory> findByProductOption(ProductOption productOption);
}
