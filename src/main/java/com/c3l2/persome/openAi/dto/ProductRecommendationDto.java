package com.c3l2.persome.openAi.dto;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class ProductRecommendationDto {
    private Long productId;
    private String name;
    private String brand;
    private Integer price;
    private String imageUrl;
    private String category;
    private String recommendationReason;
    private Double similarity;
}