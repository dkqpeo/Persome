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

    @Autowired
    private CategoryService categoryService;

    @Test
    void getList() {

        List<CategoryResponseDto> responseDtos = categoryService.getList();
        Assertions.assertNotNull(responseDtos);

    }

    @Test
    void getCategory() {

        Category category = categoryService.getCategory("스킨케어", "스킨/토너", "스킨/토너");
        Assertions.assertNotNull(category);

    }

    void getThirdCategory() {

        CategoryResponseDto thirdCategory = categoryService.getThirdCategory("스킨/토너");
        Assertions.assertNotNull(thirdCategory);

    }

}