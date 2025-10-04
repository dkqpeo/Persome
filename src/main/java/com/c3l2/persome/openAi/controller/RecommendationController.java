package com.c3l2.persome.openAi.controller;

import com.c3l2.persome.common.ApiResponse;
import com.c3l2.persome.openAi.dto.ProductRecommendationDto;
import com.c3l2.persome.openAi.service.RecommendationService;
import com.c3l2.persome.user.security.CustomUserDetails;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/recommendations")
@RequiredArgsConstructor
@Slf4j
public class RecommendationController {

    private final RecommendationService recommendationService;

    /**
     * 개인화 상품 추천 API
     * 사용자의 구매 내역을 기반으로 맞춤 상품을 추천합니다.
     * @param userDetails 인증된 사용자 정보
     * @param limit 추천할 상품 개수 (기본값: 10)
     * @return 추천 상품 리스트
     */
    @GetMapping("/personalized")
    public ResponseEntity<ApiResponse<List<ProductRecommendationDto>>> getPersonalizedRecommendations(
            @AuthenticationPrincipal CustomUserDetails userDetails,
            @RequestParam(defaultValue = "10") int limit) {
        
        log.info("개인화 추천 요청 - 사용자 ID: {}, 추천 개수: {}", userDetails.getUser().getId(), limit);
        
        List<ProductRecommendationDto> recommendations =
                recommendationService.getPersonalizedRecommendations(userDetails.getUser().getId(), limit);
        
        return ApiResponse.ok("사용자 추천 상품", recommendations);
    }


    /**
     * 인기 상품 추천 API
     * 전체 사용자 대상 인기 상품을 추천합니다.
     * 주로 신규 사용자나 구매 내역이 없는 사용자용입니다.
     * @param limit 추천할 상품 개수 (기본값: 10)
     * @return 인기 상품 리스트
     */
    @GetMapping("/popular")
    public ResponseEntity<ApiResponse<List<ProductRecommendationDto>>> getPopularProducts(
            @RequestParam(defaultValue = "10") int limit) {
        
        log.info("인기 상품 추천 요청 - 추천 개수: {}", limit);
        
        List<ProductRecommendationDto> popularProducts = 
            recommendationService.getPopularProducts(limit);
        
        return ApiResponse.ok("인기 상품 추천", popularProducts);
    }

    /**
     * 특정 사용자의 개인화 추천 API (관리자용)
     * 관리자가 특정 사용자의 추천 상품을 확인할 때 사용합니다.
     * @param userId 대상 사용자 ID
     * @param limit 추천할 상품 개수 (기본값: 10)
     * @return 추천 상품 리스트
     */
    @GetMapping("/user/{userId}")
    public ResponseEntity<ApiResponse<List<ProductRecommendationDto>>> getRecommendationsForUser(
            @PathVariable Long userId,
            @RequestParam(defaultValue = "10") int limit) {
        
        log.info("특정 사용자 추천 요청 - 사용자 ID: {}, 추천 개수: {}", userId, limit);
        
        List<ProductRecommendationDto> recommendations = 
            recommendationService.getPersonalizedRecommendations(userId, limit);
        
        return ApiResponse.ok("특정 사용자 추천", recommendations);
    }
}