package com.c3l2.persome.ranking.service;

import com.c3l2.persome.category.service.CategoryService;
import com.c3l2.persome.product.dto.ProductAllResponse;
import com.c3l2.persome.product.entity.Category;
import com.c3l2.persome.product.repository.ProductRepository;
import com.c3l2.persome.product.service.ProductService;
import com.c3l2.persome.ranking.dto.RankingResponseDto;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class RankingService {

    private static final int DEFAULT_RANKING_SIZE = 80;

    private final CategoryService categoryService;
    private final ProductRepository productRepository;
    private final ProductService productService;

    /**
     * 선택한 카테고리 레벨에 맞춰 무작위 상품 목록을 생성한다.
     */
    public RankingResponseDto getRankingProducts(String firstCategory,
                                                 String secondCategory,
                                                 String thirdCategory,
                                                 Integer size) {

        int limit = normalizeSize(size);
        String normalizedFirst = normalizeFirst(firstCategory);

        if ("전체".equals(normalizedFirst)) {
            List<Long> randomIds = productRepository.findRandomProductIds(PageRequest.of(0, limit));
            List<ProductAllResponse> products = productService.getProductsByIdsPreservingOrder(randomIds);
            return RankingResponseDto.builder()
                    .displayCategory("전체")
                    .products(products)
                    .build();
        }

        String normalizedSecond = normalizeOptional(secondCategory);
        String normalizedThird = normalizeOptional(thirdCategory);

        Category targetCategory = categoryService.getCategory(normalizedFirst, normalizedSecond, normalizedThird);

        Long firstId = null;
        Long secondId = null;
        Long thirdId = null;

        if (!"none".equals(normalizedThird)) {
            thirdId = targetCategory.getId();
        } else if (!"none".equals(normalizedSecond)) {
            secondId = targetCategory.getId();
        } else {
            firstId = targetCategory.getId();
        }

        // 동일한 랜덤 시드를 유지하기 위해 ID만 조회 후 순서를 보존해 DTO로 변환한다.
        List<Long> randomIds = productRepository.findRandomProductIdsByHierarchy(firstId, secondId, thirdId, PageRequest.of(0, limit));
        List<ProductAllResponse> products = productService.getProductsByIdsPreservingOrder(randomIds);

        return RankingResponseDto.builder()
                .displayCategory(resolveDisplayCategory(targetCategory, normalizedFirst, normalizedSecond, normalizedThird))
                .firstCategoryName(resolveFirstCategoryName(targetCategory, normalizedFirst, normalizedSecond, normalizedThird))
                .secondCategoryName(resolveSecondCategoryName(targetCategory, normalizedSecond, normalizedThird))
                .thirdCategoryName(resolveThirdCategoryName(targetCategory, normalizedThird))
                .products(products)
                .build();
    }

    private int normalizeSize(Integer size) {
        if (size == null || size <= 0) {
            return DEFAULT_RANKING_SIZE;
        }
        return Math.min(size, DEFAULT_RANKING_SIZE);
    }

    private String normalizeFirst(String value) {
        if (value == null || value.isBlank()) {
            return "전체";
        }
        if ("all".equalsIgnoreCase(value.trim())) {
            return "전체";
        }
        return value.trim();
    }

    private String normalizeOptional(String value) {
        if (value == null || value.isBlank()) {
            return "none";
        }
        if ("none".equalsIgnoreCase(value.trim())) {
            return "none";
        }
        return value.trim();
    }

    private String resolveDisplayCategory(Category targetCategory,
                                          String first,
                                          String second,
                                          String third) {
        if (!"none".equals(third)) {
            return targetCategory.getName();
        }
        if (!"none".equals(second)) {
            return targetCategory.getName();
        }
        return first;
    }

    private String resolveFirstCategoryName(Category targetCategory, String first, String second, String third) {
        if (!"none".equals(third)) {
            return targetCategory.getParent() != null && targetCategory.getParent().getParent() != null
                    ? targetCategory.getParent().getParent().getName()
                    : first;
        }
        if (!"none".equals(second)) {
            return targetCategory.getParent() != null ? targetCategory.getParent().getName() : first;
        }
        return first;
    }

    private String resolveSecondCategoryName(Category targetCategory, String second, String third) {
        if (!"none".equals(third)) {
            return targetCategory.getParent() != null ? targetCategory.getParent().getName() : null;
        }
        if (!"none".equals(second)) {
            return targetCategory.getName();
        }
        return null;
    }

    private String resolveThirdCategoryName(Category targetCategory, String third) {
        if (!"none".equals(third)) {
            return targetCategory.getName();
        }
        return null;
    }
}
