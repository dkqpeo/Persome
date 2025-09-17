package com.c3l2.persome.product.repository;

import com.c3l2.persome.entity.product.Category;
import com.c3l2.persome.entity.product.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {

    // 1|2차 카테고리이거나 2차 카테고리를 부모로 하는 3차 카테고리의 상품들
    @Query("SELECT p FROM Product p WHERE " +
            "p.category = :category OR " +
            "p.category.parent = :category OR " +
            "p.category.parent.parent = :category")
    Page<Product> findByCategoryOrParentCategory(@Param("category") Category category, Pageable pageable);

    // N+1 문제 해결을 위한 fetch join 쿼리 (페이징 없이 Product ID들을 위한)
    @Query("SELECT DISTINCT p FROM Product p " +
            "LEFT JOIN FETCH p.brand " +
            "LEFT JOIN FETCH p.category c " +
            "LEFT JOIN FETCH c.parent cp " +
            "LEFT JOIN FETCH cp.parent cpp " +
            "WHERE p.id IN :productIds")
    List<Product> findByIdsWithFetch(@Param("productIds") List<Long> productIds);

    // ProductPrice를 별도로 batch fetch
    @Query("SELECT p FROM Product p " +
            "LEFT JOIN FETCH p.productPrices " +
            "WHERE p.id IN :productIds")
    List<Product> findByIdsWithPrices(@Param("productIds") List<Long> productIds);

}