package com.c3l2.persome.category.service;

import com.c3l2.persome.category.dto.CategoryResponseDto;
import com.c3l2.persome.category.repository.CategoryRepository;
import com.c3l2.persome.entity.product.Category;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
@Transactional
@RequiredArgsConstructor
public class CategoryService {

    private final CategoryRepository categoryRepository;

    /**
     * 전체 카테고리 목록 조회
     * @return
     */
    public List<CategoryResponseDto> getList() {

        List<Category> categories = categoryRepository.findAll();

        if(categories.isEmpty())
            throw new RuntimeException("카테고리 조회에 실패했습니다.");

        List<CategoryResponseDto> resultData = categories.stream()
                .map(CategoryResponseDto::from)
                .toList();

        return resultData;

    }

    /**
     * 카테고리 이름으로 카테고리 엔티티 조회(단일)
     * @param firstCategory
     * @param secondCategory
     * @return
     */
    public Category getCategory(String firstCategory, String secondCategory) {

        Category parentCategory = categoryRepository.findByParentCategory(firstCategory)
                .orElseThrow(() -> new RuntimeException("존재하지 않는 카테고리입니다."));

        if(!secondCategory.equals("none")){
            Category childCategory = categoryRepository.findByChildCategory(secondCategory, parentCategory)
                            .orElseThrow(() -> new RuntimeException("존재하지 않는 카테고리입니다."));

            return childCategory;
        }

        return parentCategory;
    }

}
