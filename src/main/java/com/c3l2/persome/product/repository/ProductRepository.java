package com.c3l2.persome.product.repository;

import com.c3l2.persome.product.entity.Category;
import com.c3l2.persome.product.entity.Product;
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

    // 상품 이름에 name이 포함되는 컬럼을 반환
    @Query("SELECT p FROM Product p WHERE " +
            "p.name LIKE %:name% ")
    Page<Product> findByName(String name, Pageable pageable);

    @Query("SELECT p.id FROM Product p ORDER BY function('RAND')")
    List<Long> findRandomProductIds(Pageable pageable); // 홈 인기 섹션: 랜덤 추출

    @Query("SELECT p.id FROM Product p ORDER BY p.createdAt DESC")
    List<Long> findLatestProductIds(Pageable pageable); // 홈 신규 섹션: 생성일 최신순

    /**
     * 전달받은 카테고리 계층에 맞춰 랜덤한 상품 ID 목록을 가져온다.
     */
    @Query("""
            SELECT DISTINCT p.id FROM Product p
            WHERE (:thirdId IS NOT NULL AND p.category.id = :thirdId)
               OR (:thirdId IS NULL AND :secondId IS NOT NULL AND (
                       p.category.id = :secondId
                       OR (p.category.parent IS NOT NULL AND p.category.parent.id = :secondId)
               ))
               OR (:thirdId IS NULL AND :secondId IS NULL AND :firstId IS NOT NULL AND (
                       p.category.id = :firstId
                       OR (p.category.parent IS NOT NULL AND p.category.parent.id = :firstId)
                       OR (p.category.parent.parent IS NOT NULL AND p.category.parent.parent.id = :firstId)
               ))
            ORDER BY function('RAND')
            """)
    List<Long> findRandomProductIdsByHierarchy(@Param("firstId") Long firstId,
                                               @Param("secondId") Long secondId,
                                               @Param("thirdId") Long thirdId,
                                               Pageable pageable);

}
