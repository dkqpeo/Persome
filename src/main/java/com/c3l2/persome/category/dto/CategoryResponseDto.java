package com.c3l2.persome.category.dto;

import com.c3l2.persome.entity.product.Category;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CategoryResponseDto {

    private Long parentId;
    private String parentName;
    private Long categoryId;
    private String categoryName;

    public static CategoryResponseDto from(Category category) {
        return CategoryResponseDto.builder()
                .parentId(category.getParent() != null ? category.getParent().getId() : null)
                .parentName(category.getParent() != null ? category.getParent().getName() : null)
                .categoryId(category.getId())
                .categoryName(category.getName())
                .build();
    }
}
