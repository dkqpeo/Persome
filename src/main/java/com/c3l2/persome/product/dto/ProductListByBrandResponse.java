package com.c3l2.persome.product.dto;

import com.c3l2.persome.brand.entity.Brand;
import lombok.Builder;
import lombok.Getter;

import java.util.List;

@Getter
@Builder
public class ProductListByBrandResponse {

    private Long brandId;
    private String brandName;

    private List<ProductAllResponse> products;

    public static ProductListByBrandResponse from(Brand brand, List<ProductAllResponse> products) {

        return ProductListByBrandResponse.builder()
                .brandId(brand.getId())
                .brandName(brand.getName())
                .products(products)
                .build();
    }
}
