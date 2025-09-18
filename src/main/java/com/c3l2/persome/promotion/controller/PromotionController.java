package com.c3l2.persome.promotion.controller;

import com.c3l2.persome.common.ApiResponse;
import com.c3l2.persome.promotion.dto.PromotionDto;
import com.c3l2.persome.promotion.entity.Promotion;
import com.c3l2.persome.promotion.service.PromotionService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;
import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/promotions")
public class PromotionController {
    private final PromotionService promotionService;

    //프로모션 조회
    @GetMapping("/available")
    public ResponseEntity<ApiResponse<List<PromotionDto>>> getAvailablePromotionsForPricing(@RequestParam LocalDateTime now) {
        return ApiResponse.ok("프로모션 조회 성공!", promotionService.getAvailablePromotions(now));
    }
}
