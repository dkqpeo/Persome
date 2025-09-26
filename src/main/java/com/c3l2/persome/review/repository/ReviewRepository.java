package com.c3l2.persome.review.repository;

import com.c3l2.persome.order.entity.OrderItem;
import com.c3l2.persome.product.entity.ProductOption;
import com.c3l2.persome.review.entity.Review;
import com.c3l2.persome.user.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ReviewRepository extends JpaRepository<Review, Long> {

    List<Review> findAllByProductOption(ProductOption productOption);
    
    List<Review> findByProductOptionIdIn(List<Long> productOptionIds);
    
    /**
     * 특정 주문 아이템에 대한 리뷰 존재 여부 확인
     */
    boolean existsByOrderItem(OrderItem orderItem);
    
    /**
     * 특정 사용자가 특정 상품 옵션에 대한 리뷰 존재 여부 확인
     */
    boolean existsByUserAndProductOption(User user, ProductOption productOption);
    
    /**
     * 특정 주문 아이템의 리뷰 조회
     */
    Review findByOrderItem(OrderItem orderItem);
    
    /**
     * 특정 상품의 평균 평점 계산
     * @param productId 상품 ID
     * @return 평균 평점 (리뷰가 없으면 null)
     */
    @Query("SELECT AVG(r.rating) FROM Review r " +
           "WHERE r.productOption.product.id = :productId")
    Double findAverageRatingByProductId(@Param("productId") Long productId);
    
    /**
     * 특정 상품의 리뷰 개수 조회
     * @param productId 상품 ID
     * @return 리뷰 개수
     */
    @Query("SELECT COUNT(r) FROM Review r " +
           "WHERE r.productOption.product.id = :productId")
    long countReviewsByProductId(@Param("productId") Long productId);
}
