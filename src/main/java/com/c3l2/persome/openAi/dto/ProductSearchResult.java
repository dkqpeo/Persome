package com.c3l2.persome.openAi.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * AI에게 반환할 상품 정보 (간소화된 버전)
 */
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ProductSearchResult {
    private Long productId;
    private String name;
    private String brand;
    private Integer price;
    private String category;
    private String status;
}
