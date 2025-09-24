package com.c3l2.persome.ranking.dto;

import com.c3l2.persome.product.dto.ProductAllResponse;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.util.List;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class RankingResponseDto {

    private String displayCategory;
    private String firstCategoryName;
    private String secondCategoryName;
    private String thirdCategoryName;
    private List<ProductAllResponse> products;
}

