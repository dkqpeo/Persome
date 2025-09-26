package com.c3l2.persome.product.controller;

import com.c3l2.persome.common.ApiResponse;
import com.c3l2.persome.product.dto.OrderSearchDto;
import com.c3l2.persome.product.dto.PageProductAllResponse;
import com.c3l2.persome.product.dto.ProductDetailResponse;
import com.c3l2.persome.product.dto.ProductListByBrandResponse;
import com.c3l2.persome.product.service.ProductService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/products")
@RequiredArgsConstructor
@Slf4j
public class ProductController {

    private final ProductService productService;

    @GetMapping("/{id}")
    public ResponseEntity<ProductDetailResponse> getProductDetail(@PathVariable("id") Long productId) {
        log.info("상품 상세 조회 API 호출 productId = {}", productId);
        return ResponseEntity.ok(productService.getProductDetail(productId));
    }

    /**
     * 모든 카테고리의 전체 상품의 리스트를 페이지 단위로 반환
     * @param page
     * @param size  // 24, 36개 단위
     * @return
     */
    @GetMapping()
    public ResponseEntity<PageProductAllResponse> getAllProducts(@RequestParam(defaultValue = "0") int page,
                                                                 @RequestParam(defaultValue = "24") int size) {

        OrderSearchDto searchDto = getSearchDto(page, size);


        PageProductAllResponse allProducts = productService.getAllProducts(searchDto);

        return new ResponseEntity<>(allProducts, HttpStatus.OK);

    }

    @GetMapping("/search")
    public ResponseEntity<PageProductAllResponse> searchProducts(@RequestParam String keyword,
                                                                 @RequestParam(defaultValue = "0") int page,
                                                                 @RequestParam(defaultValue = "24") int size) {

        OrderSearchDto searchDto = getSearchDto(page, size);
        PageProductAllResponse allProducts = productService.findKeyword(keyword, searchDto);

        return new ResponseEntity<>(allProducts, HttpStatus.OK);

    }

    @GetMapping("/brand")
    public ResponseEntity<ApiResponse<ProductListByBrandResponse>> searchProductsByBrand(@RequestParam String name) {

        ProductListByBrandResponse productByBrand = productService.findProductByBrand(name);
        
        return ApiResponse.ok("브랜드 상품 리스트", productByBrand);
    }

    private OrderSearchDto getSearchDto(int page, int size) {

        // 페이지 크기 검증 (30, 50, 100만 허용)
        if(size != 24 && size != 36) {
            size = 24;
        }

        return OrderSearchDto.builder()
                .page(page)
                .size(size)
                .build();
    }

}
