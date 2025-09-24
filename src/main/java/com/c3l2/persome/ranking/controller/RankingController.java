package com.c3l2.persome.ranking.controller;

import com.c3l2.persome.category.dto.CategoryResponseDto;
import com.c3l2.persome.category.service.CategoryService;
import com.c3l2.persome.ranking.dto.RankingResponseDto;
import com.c3l2.persome.ranking.service.RankingService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/ranking")
public class RankingController {

    private final RankingService rankingService;
    private final CategoryService categoryService;

    /**
     * 실시간으로 카테고리/사이즈에 맞춘 상품 랭킹을 내려준다.
     */
    @GetMapping("/products")
    public RankingResponseDto getRankingProducts(@RequestParam(required = false) String firstCategory,
                                                 @RequestParam(required = false) String secondCategory,
                                                 @RequestParam(required = false) String thirdCategory,
                                                 @RequestParam(required = false) Integer size) {
        return rankingService.getRankingProducts(firstCategory, secondCategory, thirdCategory, size);
    }

    /**
     * 프론트에서 필터를 구성할 때 사용할 카테고리 계층을 제공한다.
     */
    @GetMapping("/categories")
    public List<CategoryResponseDto> getRankingCategories() {
        return categoryService.getList();
    }
}
