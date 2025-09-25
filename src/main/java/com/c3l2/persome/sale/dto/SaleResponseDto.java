package com.c3l2.persome.sale.dto;

import com.c3l2.persome.product.dto.ProductAllResponse;
import com.c3l2.persome.sale.constant.SaleSortType;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.util.List;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class SaleResponseDto {

    private String displayName;
    private SaleSortType sort;
    private int size;
    private List<ProductAllResponse> products;
}
