package com.c3l2.persome.category.service;

import com.c3l2.persome.category.dto.CategoryResponseDto;
import com.c3l2.persome.entity.product.Category;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.bean.override.mockito.MockitoBean;

import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;


@SpringBootTest
class CategoryServiceTest {

    @MockitoBean
    private CategoryService categoryService;

    @Test
    void getList() {

        List<Category> categories = new ArrayList<>();

        Category category = Category.builder()
                .id(2L)
                .name("로션")
                .parent(Category.builder().id(1L).name("스킨케어").build())
                .build();

        Category category1 = Category.builder()
                .id(2L)
                .name("로션")
                .parent(Category.builder().id(1L).name("스킨케어").build())
                .build();

        categories.add(category);
        categories.add(category1);

        List<CategoryResponseDto> resultData = categories.stream()
                .map(CategoryResponseDto::from)
                .toList();

        Mockito.when(categoryService.getList()).thenReturn(resultData);

        Assertions.assertEquals(resultData, categoryService.getList());
    }

    @Test
    void getCategory() {

        String first = "스킨케어";
        String second = "none";

        Category result = Category.builder()
                .id(2L)
                .name("로션")
                .parent(Category.builder().id(1L).name("스킨케어").build())
                .build();

        Mockito.when(categoryService.getCategory(first, second)).thenReturn(result);

        Assertions.assertEquals(result, categoryService.getCategory(first, second));
    }
}