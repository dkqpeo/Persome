package com.c3l2.persome.wishlist.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class WishlistResponseDto {
    private Long productId;          // 상품 ID
    private String brandName;        // 브랜드명
    private String productName;      // 상품명
    private String productImageUrl;  // 상품 이미지 URL

    private int originalPrice;       // 정가
    private int salePrice;           // 할인가
}
