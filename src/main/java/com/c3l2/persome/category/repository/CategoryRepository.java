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
    
    // 2차 카테고리들 조회 (1차 카테고리를 부모로 하는 카테고리들)
    @Query("SELECT c FROM Category c WHERE c.parent.parent IS NULL AND c.parent IS NOT NULL")
    List<Category> findSecondCategories();

    // 2차 카테고리 조회 (1차 카테고리를 부모로 하는 카테고리들)
    @Query("SELECT c FROM Category c WHERE c.name = :name AND c.parent.parent IS NULL AND c.parent IS NOT NULL")
    Optional<Category> findSecondCategoryByName(String name);
    
    // 특정 2차 카테고리의 3차 카테고리들 조회
    @Query("SELECT c FROM Category c WHERE c.parent = :secondCategory")
    List<Category> findThirdCategoriesBySecondCategory(Category secondCategory);

    // N+1 문제 해결을 위한 최적화된 조회: 2차 카테고리와 1차 카테고리를 join fetch로 한번에 조회
    @Query("SELECT DISTINCT c FROM Category c LEFT JOIN FETCH c.parent WHERE c.parent.parent IS NULL AND c.parent IS NOT NULL")
    List<Category> findSecondCategoriesWithParent();

    // 모든 3차 카테고리를 2차 카테고리와 함께 조회 (N+1 방지)
    @Query("SELECT c FROM Category c JOIN FETCH c.parent p WHERE p.parent.parent IS NULL AND p.parent IS NOT NULL")
    List<Category> findAllThirdCategoriesWithParent();

    // 카테고리 이름들로 한 번에 계층 구조 조회 (getCategory 최적화)
    @Query("SELECT c FROM Category c " +
            "LEFT JOIN FETCH c.parent p " +
            "LEFT JOIN FETCH p.parent pp " +
            "WHERE (c.name = :thirdCategory AND p.name = :secondCategory AND pp.name = :firstCategory) " +
            "OR (c.name = :secondCategory AND p.name = :firstCategory AND :thirdCategory = 'none') " +
            "OR (c.name = :firstCategory AND c.parent IS NULL AND :secondCategory = 'none')")
    Optional<Category> findCategoryWithHierarchy(String firstCategory, String secondCategory, String thirdCategory);
}
