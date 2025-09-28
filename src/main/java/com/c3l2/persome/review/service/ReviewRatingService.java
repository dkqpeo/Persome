package com.c3l2.persome.review.service;

import com.c3l2.persome.product.entity.Product;
import com.c3l2.persome.product.repository.ProductRepository;
import com.c3l2.persome.review.repository.ReviewRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.math.RoundingMode;

/**
 * 리뷰 평점 집계 서비스
 * 상품의 평균 평점을 계산하고 업데이트하는 서비스
 */
@Slf4j
@Service
@RequiredArgsConstructor
public class ReviewRatingService {

    private final ReviewRepository reviewRepository;
    private final ProductRepository productRepository;

    /**
     * 특정 상품의 평균 평점을 계산하고 업데이트
     * @param productId 상품 ID
     */
    @Transactional
    public void updateProductRating(Long productId) {
        try {
            Product product = productRepository.findById(productId)
                    .orElseThrow(() -> new IllegalArgumentException("상품을 찾을 수 없습니다: " + productId));

            // 해당 상품의 모든 옵션에 대한 리뷰들의 평균 평점 계산
            BigDecimal averageRating = calculateAverageRatingByProduct(productId);
            
            // 상품 평점 업데이트
            product.updateRatingAvg(averageRating);
            productRepository.save(product);
            
            log.info("상품 평점 업데이트 완료. ProductId: {}, NewRating: {}", productId, averageRating);
            
        } catch (Exception e) {
            log.error("상품 평점 업데이트 실패. ProductId: {}", productId, e);
            throw e;
        }
    }

    /**
     * 특정 상품의 평균 평점 계산
     * @param productId 상품 ID
     * @return 평균 평점 (리뷰가 없으면 null)
     */
    @Transactional(readOnly = true)
    public BigDecimal calculateAverageRatingByProduct(Long productId) {
        // 네이티브 쿼리를 사용하여 해당 상품의 모든 옵션에 대한 리뷰들의 평균 계산
        Double avgRating = reviewRepository.findAverageRatingByProductId(productId);
        
        if (avgRating == null || avgRating == 0.0) {
            return null; // 리뷰가 없으면 null 반환
        }
        
        // 소수점 첫째 자리까지 반올림
        return BigDecimal.valueOf(avgRating).setScale(1, RoundingMode.HALF_UP);
    }

    /**
     * 특정 상품의 리뷰 개수 조회
     * @param productId 상품 ID
     * @return 리뷰 개수
     */
    @Transactional(readOnly = true)
    public long getReviewCountByProduct(Long productId) {
        return reviewRepository.countReviewsByProductId(productId);
    }
}