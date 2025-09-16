package com.c3l2.persome.category.repository;

import com.c3l2.persome.entity.cart.Cart;
import com.c3l2.persome.entity.product.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Long> {

    // 1차 카테고리만 조회하는 JPQL
    @Query("SELECT c FROM Category c WHERE c.name = :firstCategory AND c.parent IS NULL") // 1차 카테고리(부모가 없는 카테고리)만 조회
    Optional<Category> findByParentCategory(String firstCategory);

    // 1차 카테고리 + 2차 카테고리 조회하는 JPQL
    @Query("SELECT c FROM Category c WHERE c.name = :secondCategory AND c.parent = :parentCategory") // 1차 카테고리(부모가 없는 카테고리)만 조회
    Optional<Category> findByChildCategory(String secondCategory, Category parentCategory);
    
    // 이름으로 카테고리 찾기
    Optional<Category> findByName(String name);
}
