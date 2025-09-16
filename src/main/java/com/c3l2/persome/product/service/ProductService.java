package com.c3l2.persome.product.service;

import com.c3l2.persome.entity.product.Product;
import com.c3l2.persome.product.dto.ProductDetailResponse;
import com.c3l2.persome.product.repository.ProductRepository;
import com.c3l2.persome.product.repository.InventoryRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;


@Service
@RequiredArgsConstructor
@Slf4j
public class ProductService {

    private final ProductRepository productRepository;
    private final InventoryRepository inventoryRepository;

    public ProductDetailResponse getProductDetail(Long id) {

        Product product = productRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("상품을 찾을 수 없습니다. id=" + id));
        //DTO
        return ProductDetailResponse.builder()
                .product_id(product.getId())
                .name(product.getName())
                .description(product.getDescription())
                .ratingAvg(product.getRatingAvg())
                .status(product.getStatus().name())
                .brandName(product.getBrand().getName())
                .firstCategory(product.getCategory().getName())
                .secondCategory(product.getCategory().getParent() != null ? product.getCategory().getParent().getName() : null)
                .thirdCategory(product.getCategory().getParent() != null && product.getCategory().getParent().getParent() != null
                        ? product.getCategory().getParent().getParent().getName()
                        : null)
                .images(product.getProductImgs().stream()
                        .map(img -> ProductDetailResponse.ImgResponse.builder()
                                .imgUrl(img.getImgUrl())
                                .imgOrder(img.getImgOrder())
                                .build())
                        .toList())
                .options(product.getProductOptions().stream()
                        .map(opt -> ProductDetailResponse.OptionResponse.builder()
                                .option_id(opt.getId())
                                .name(opt.getName())
                                .additionalAmount(opt.getAdditionalAmount())
                                .inventories(
                                        inventoryRepository.findByProductOptionId(opt.getId()).stream()
                                                .map(inv -> ProductDetailResponse.InventoryResponse.builder()
                                                        .inventory_id(inv.getId())
                                                        .stockStatus(inv.getStockStatus().name())
                                                        .quantity(inv.getQuantity())
                                                        .build())
                                                .toList()
                                )
                                .build())
                        .toList())
                .prices(product.getProductPrices().stream()
                        .map(price -> ProductDetailResponse.PriceResponse.builder()
                                .price_id(price.getId())
                                .type(price.getType().name())
                                .price(price.getPrice())
                                .startDate(price.getStartDate())
                                .endDate(price.getEndDate())
                                .build())
                        .toList())
                .build();
    }
}