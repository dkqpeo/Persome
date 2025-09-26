package com.c3l2.persome.product.repository;

import com.c3l2.persome.product.entity.ProductOption;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface ProductOptionRepository extends JpaRepository<ProductOption, Long> {

    @Override
    @Query("SELECT p FROM ProductOption p  LEFT JOIN FETCH p.product WHERE p.id = :id")
    Optional<ProductOption> findById(Long id);
}
