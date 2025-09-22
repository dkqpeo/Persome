package com.c3l2.persome.category.controller;

import com.c3l2.persome.category.dto.CategoryResponseDto;
import com.c3l2.persome.category.service.CategoryService;
import com.c3l2.persome.product.entity.Category;
import com.c3l2.persome.product.dto.OrderSearchDto;
import com.c3l2.persome.product.dto.PageProductAllResponse;
import com.c3l2.persome.product.service.ProductService;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Slf4j
@RestController
@RequestMapping("/api/categories")
@RequiredArgsConstructor
public class CategoryController {

    private final CategoryService categoryService;
    private final ProductService productService;

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
     * 1차 카테고리 + 하위 카테고리의 상품 리스트를 조회.
     * @Param firstCategory
     * @param secondCategory  2차 카테고리 + 하위 카테고리의 상품 리스트를 조회.
     * @param thirdCategory
     * @param page
     * @param size           // 24, 36개 단위
     * @return
     */
    @GetMapping("/products")
    public PageProductAllResponse getProductForCategory(HttpServletRequest req,
                                                        @RequestParam String firstCategory,
                                                        @RequestParam(defaultValue = "none") String secondCategory,
                                                        @RequestParam(defaultValue = "none") String thirdCategory,
                                                        @RequestParam(defaultValue = "0") int page,
                                                        @RequestParam(defaultValue = "24") int size) {

        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        log.info("getProductForCategory {}", auth.getName());
        log.info("req uri {}", req.getRequestURI());

        // 페이지 크기 검증 (30, 50, 100만 허용)
        if(size != 24 && size != 36) {
            size = 24;
        }

        OrderSearchDto searchDto = OrderSearchDto.builder()
                .page(page)
                .size(size)
                .build();

        System.out.println("firstCategory: " + firstCategory);
        System.out.println("secondCategory: " + secondCategory);
        System.out.println("thirdCategory: " + thirdCategory);

        // 1차이거나 2차 카테고리 엔티티 반환.
        Category requestCategory = categoryService.getCategory(firstCategory, secondCategory, thirdCategory);

        return productService.getProductsbyCategory(requestCategory, searchDto);

    }

}
