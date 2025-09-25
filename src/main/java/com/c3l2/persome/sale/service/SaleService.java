package com.c3l2.persome.sale.service;

import com.c3l2.persome.product.dto.ProductAllResponse;
import com.c3l2.persome.product.repository.ProductRepository;
import com.c3l2.persome.product.service.ProductService;
import com.c3l2.persome.sale.constant.SaleSortType;
import com.c3l2.persome.sale.dto.SaleResponseDto;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.LinkedHashSet;
import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class SaleService {

    private static final int DEFAULT_LIMIT = 80;
    private static final int MAX_LIMIT = 80;

    private final ProductRepository productRepository;
    private final ProductService productService;

    public SaleResponseDto getSaleProducts(Integer size, SaleSortType sortType) {
        int limit = normalizeSize(size);
        SaleSortType effectiveSort = sortType == null ? SaleSortType.POPULAR : sortType;

        List<Long> productIds = switch (effectiveSort) {
            case PRICE_HIGH -> productRepository.findSaleProductIdsOrderByPriceDesc(limit);
            case PRICE_LOW -> productRepository.findSaleProductIdsOrderByPriceAsc(limit);
            case POPULAR -> productRepository.findRandomSaleProductIds(limit);
        };

        List<Long> uniqueIds = deduplicate(productIds, limit);
        List<ProductAllResponse> products = productService.getProductsByIdsPreservingOrder(uniqueIds);

        return SaleResponseDto.builder()
                .displayName("세일")
                .sort(effectiveSort)
                .size(products.size())
                .products(products)
                .build();
    }

    private int normalizeSize(Integer size) {
        if (size == null || size <= 0) {
            return DEFAULT_LIMIT;
        }
        return Math.min(size, MAX_LIMIT);
    }

    private List<Long> deduplicate(List<Long> ids, int limit) {
        if (ids == null || ids.isEmpty()) {
            return List.of();
        }
        return ids.stream()
                .filter(id -> id != null)
                .collect(Collectors.toCollection(LinkedHashSet::new))
                .stream()
                .limit(limit)
                .toList();
    }
}
