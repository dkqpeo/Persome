package com.c3l2.persome.product.dto;

import com.c3l2.persome.product.entity.Product;
import lombok.Builder;
import lombok.Getter;
import org.springframework.data.domain.Page;

import java.util.List;

@Getter
@Builder
public class PageProductAllResponse {

    private List<ProductAllResponse> products;
    private int currentPage;
    private int totalPages;
    private Long totalElements;
    private int pageSize;
    private boolean hasNext;
    private boolean hasPrevious;

    public static PageProductAllResponse from(Page<Product> products) {
        List<ProductAllResponse> responseProducts = products.getContent()
                .stream()
                .map(ProductAllResponse::from)
                .toList();

        return PageProductAllResponse.builder()
                .products(responseProducts)
                .currentPage(products.getNumber())
                .totalPages(products.getTotalPages())
                .totalElements(products.getTotalElements())
                .pageSize(products.getSize())
                .hasNext(products.hasNext())
                .hasPrevious(products.hasPrevious())
                .build();
    }
}
