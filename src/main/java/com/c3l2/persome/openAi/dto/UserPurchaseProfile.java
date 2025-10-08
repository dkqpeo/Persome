package com.c3l2.persome.openAi.dto;

import lombok.Builder;
import lombok.Getter;

import java.util.List;

@Getter
@Builder
public class UserPurchaseProfile {
    private List<String> preferredCategories;
    private List<String> preferredBrands;
    private Integer averagePriceRange;
    private Integer totalOrders;
    private String primarySkinType;
    private List<String> recentPurchases;
    private List<Long> purchasedProductIds;  // 구매한 상품 ID 목록 (중복 추천 방지용)
}