package com.c3l2.persome.category.controller;

import com.c3l2.persome.category.dto.CategoryResponseDto;
import com.c3l2.persome.category.service.CategoryService;
import com.c3l2.persome.entity.product.Category;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Slf4j
@RestController
@RequestMapping("/categories")
@RequiredArgsConstructor
public class CategoryController {

    private final CategoryService categoryService;

    /**
     * 전체 카테고리 리스트를 반환
     * @return List<CategoryResponseDto>
     */
    @GetMapping
    private ResponseEntity<List<CategoryResponseDto>> getAllCategories() {

        List<CategoryResponseDto> responseDtos = categoryService.getList();

        return new ResponseEntity<> (responseDtos,HttpStatus.OK);
    }

    /**
     * 2차 카테고리의 하위 카테고리 조회
     * @param secondCategory
     * @return
     */
    @GetMapping("/getThirdCategory")
    public ResponseEntity<CategoryResponseDto> getCategoryList(@RequestParam String secondCategory) {

        CategoryResponseDto thirdCategory = categoryService.getThirdCategory(secondCategory);

        return new ResponseEntity<>(thirdCategory, HttpStatus.OK);
    }

    /**
     * @param firstCategory
     * 1차 카테고리 + 하위 카테고리의 상품 리스트를 조회.
     * @param secondCategory
     * 2차 카테고리 + 하위 카테고리의 상품 리스트를 조회.
     */
    @GetMapping("/products")
    public void getProductForCategory(@RequestParam String firstCategory,
                                      @RequestParam(defaultValue = "none") String secondCategory) {

        System.out.println("firstCategory: " + firstCategory);
        System.out.println("secondCategory: " + secondCategory);

        // 쿼리스트링으로 입력받은 카테고리의 엔티티 조회
        Category requestCategiry = categoryService.getCategory(firstCategory, secondCategory);

        // TODO : product service에서 카테고리에 해당하는 상품 리스트 조회


    }

}
