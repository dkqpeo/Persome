package com.c3l2.persome.category.service;

import com.c3l2.persome.category.dto.CategoryResponseDto;
import com.c3l2.persome.category.repository.CategoryRepository;
import com.c3l2.persome.product.entity.Category;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Slf4j
@Service
@Transactional
@RequiredArgsConstructor
public class CategoryService {

    private final CategoryRepository categoryRepository;

    /**
     * 전체 카테고리 목록 조회 (1,2,3차 카테고리 구조)
     * @return
     */
    public List<CategoryResponseDto> getList() {

        // 1. 2차 카테고리들을 1차 카테고리와 함께 한번에 조회 (N+1 방지)
        List<Category> secondCategories = categoryRepository.findSecondCategoriesWithParent();
        
        if(secondCategories.isEmpty())
            throw new RuntimeException("카테고리 조회에 실패했습니다.");

        // 2. 모든 3차 카테고리들을 2차 카테고리와 함께 한번에 조회 (N+1 방지)
        List<Category> allThirdCategories = categoryRepository.findAllThirdCategoriesWithParent();
        
        // 3. 2차 카테고리별로 3차 카테고리들을 그룹화
        Map<Long, List<Category>> thirdCategoriesMap = allThirdCategories.stream()
                .collect(Collectors.groupingBy(category -> category.getParent().getId()));

        // 4. DTO로 변환
        List<CategoryResponseDto> resultData = secondCategories.stream()
                .map(secondCategory -> {
                    List<Category> thirdCategories = thirdCategoriesMap.getOrDefault(secondCategory.getId(), Collections.emptyList());
                    return CategoryResponseDto.from(secondCategory, thirdCategories);
                })
                .toList();

        return resultData;

    }

    /**
     * 카테고리 이름으로 카테고리 엔티티 조회(단일) - 최적화된 버전
     * @param firstCategory 1차 카테고리명
     * @param secondCategory 2차 카테고리명 (없으면 "none")
     * @param thirdCategory 3차 카테고리명 (없으면 "none")
     * @return 조회된 카테고리 엔티티
     */
    public Category getCategory(String firstCategory, String secondCategory, String thirdCategory) {
        
        // 한 번의 쿼리로 계층 구조를 모두 조회
        return categoryRepository.findCategoryWithHierarchy(firstCategory, secondCategory, thirdCategory)
                .orElseThrow(() -> {
                    if (!thirdCategory.equals("none")) {
                        return new RuntimeException("존재하지 않는 3차 카테고리입니다: " + thirdCategory);
                    } else if (!secondCategory.equals("none")) {
                        return new RuntimeException("존재하지 않는 2차 카테고리입니다: " + secondCategory);
                    } else {
                        return new RuntimeException("존재하지 않는 1차 카테고리입니다: " + firstCategory);
                    }
                });
    }

    /**
     * 2차 카테고리의 이름으로 하위 3차 카테고리 리스트 조회.
     * @param secondCategory
     * @return
     */
    public CategoryResponseDto getThirdCategory(String secondCategory) {

        Category category = categoryRepository.findSecondCategoryByName(secondCategory)
                .orElseThrow(() -> new IllegalArgumentException("해당 카테고리는 존재하지 않습니다."));
        List<Category> thirdCategoriesBySecondCategory = categoryRepository.findThirdCategoriesBySecondCategory(category);

        CategoryResponseDto result = CategoryResponseDto.from(category, thirdCategoriesBySecondCategory);

        return result;
    }
}
