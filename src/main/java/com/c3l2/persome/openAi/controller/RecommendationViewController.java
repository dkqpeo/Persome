package com.c3l2.persome.openAi.controller;

import com.c3l2.persome.openAi.dto.ProductRecommendationDto;
import com.c3l2.persome.openAi.service.RecommendationService;
import com.c3l2.persome.user.security.CustomUserDetails;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/recommendations")
@RequiredArgsConstructor
@Slf4j
public class RecommendationViewController {

    private final RecommendationService recommendationService;

    /**
     * 추천 메인 페이지
     * 사용자의 개인화 추천과 인기 상품을 함께 보여줍니다.
     */
    @GetMapping
    public String recommendationsPage(
            @AuthenticationPrincipal CustomUserDetails userDetails,
            Model model) {
        
        if (userDetails != null) {
            // 로그인한 사용자 - 개인화 추천
            List<ProductRecommendationDto> personalizedRecommendations = 
                recommendationService.getPersonalizedRecommendations(userDetails.getUser().getId(), 12);
            model.addAttribute("personalizedRecommendations", personalizedRecommendations);
            model.addAttribute("isLoggedIn", true);
            
            log.info("추천 페이지 접속 - 로그인 사용자 ID: {}", userDetails.getUser().getId());
        } else {
            // 비로그인 사용자 - 인기 상품만
            model.addAttribute("isLoggedIn", false);
            log.info("추천 페이지 접속 - 비로그인 사용자");
        }
        
        // 공통 인기 상품
        List<ProductRecommendationDto> popularProducts = 
            recommendationService.getPopularProducts(8);
        model.addAttribute("popularProducts", popularProducts);
        
        return "recommendations/index";
    }


    /**
     * 개인화 추천 전용 페이지
     * "나만의 추천" 페이지
     */
    @GetMapping("/personalized")
    public String personalizedRecommendationsPage(
            @AuthenticationPrincipal CustomUserDetails userDetails,
            @RequestParam(defaultValue = "20") int limit,
            Model model) {
        
        if (userDetails == null) {
            return "redirect:/users/login";
        }
        
        log.info("개인화 추천 페이지 접속 - 사용자 ID: {}", userDetails.getUser().getId());
        
        List<ProductRecommendationDto> recommendations = 
            recommendationService.getPersonalizedRecommendations(userDetails.getUser().getId(), limit);
        
        model.addAttribute("recommendations", recommendations);
        model.addAttribute("userId", userDetails.getUser().getId());
        
        return "recommendations/personalized";
    }

    /**
     * 인기 상품 전용 페이지
     * "지금 인기있는 상품" 페이지
     */
    @GetMapping("/popular")
    public String popularProductsPage(
            @RequestParam(defaultValue = "20") int limit,
            Model model) {
        
        log.info("인기 상품 페이지 접속");
        
        List<ProductRecommendationDto> popularProducts = 
            recommendationService.getPopularProducts(limit);
        
        model.addAttribute("popularProducts", popularProducts);
        
        return "recommendations/popular";
    }
}