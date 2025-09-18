package com.c3l2.persome.category.dto;

import com.c3l2.persome.entity.product.Category;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.util.List;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CategoryResponseDto {

    private Long firstCategoryId;
    private String firstCategoryName;
    private Long secondCategoryId;
    private String secondCategoryName;
    private List<ThirdCategory> thirdCategories;

    @Getter
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    static public class ThirdCategory {
        private Long thirdCategoryId;
        private String thirdCategoryName;
    }


    public static CategoryResponseDto from(Category secondCategory, List<Category> thirdCategoryList) {

        Category firstCategory = secondCategory.getParent();
        
        List<ThirdCategory> thirdCategories = thirdCategoryList.stream()
                .map(thirdCat -> ThirdCategory.builder()
                        .thirdCategoryId(thirdCat.getId())
                        .thirdCategoryName(thirdCat.getName())
                        .build())
                .toList();

        return CategoryResponseDto.builder()
                .firstCategoryId(firstCategory != null ? firstCategory.getId() : null)
                .firstCategoryName(firstCategory != null ? firstCategory.getName() : null)
                .secondCategoryId(secondCategory.getId())
                .secondCategoryName(secondCategory.getName())
                .thirdCategories(thirdCategories)
                .build();
    }
}
