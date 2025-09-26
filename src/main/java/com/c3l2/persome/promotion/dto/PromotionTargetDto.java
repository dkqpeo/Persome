package com.c3l2.persome.promotion.dto;

import com.c3l2.persome.brand.entity.Brand;
import com.c3l2.persome.product.entity.Category;
import com.c3l2.persome.product.entity.Product;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class PromotionTargetDto {
    private String targetType;
    private Long targetId;
    private String targetName;

    // ✅ 카테고리일 경우에만 세팅
    private String firstCategory;
    private String secondCategory;
    private String thirdCategory;

    public static PromotionTargetDto fromCategory(Category category) {
        String first = null, second = null, third = null;

        if (category.getParent() == null) {
            // 1차 카테고리
            first = category.getName();
        } else if (category.getParent().getParent() == null) {
            // 2차 카테고리
            first = category.getParent().getName();
            second = category.getName();
        } else {
            // 3차 카테고리
            first = category.getParent().getParent().getName();
            second = category.getParent().getName();
            third = category.getName();
        }

        return PromotionTargetDto.builder()
                .targetType("CATEGORY")
                .targetId(category.getId())
                .targetName(category.getName())
                .firstCategory(first)
                .secondCategory(second)
                .thirdCategory(third)
                .build();
    }

    public static PromotionTargetDto fromBrand(Brand brand) {
        return PromotionTargetDto.builder()
                .targetType("BRAND")
                .targetId(brand.getId())
                .targetName(brand.getName())
                .build();
    }

    public static PromotionTargetDto fromProduct(Product product) {
        return PromotionTargetDto.builder()
                .targetType("PRODUCT")
                .targetId(product.getId())
                .targetName(product.getName())
                .build();
    }
}
