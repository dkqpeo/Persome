package com.c3l2.persome.product.controller;

import com.c3l2.persome.product.dto.OrderSearchDto;
import com.c3l2.persome.product.dto.PageProductAllResponse;
import com.c3l2.persome.product.dto.ProductDetailResponse;
import com.c3l2.persome.product.service.ProductService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/products")
@RequiredArgsConstructor
@Slf4j
public class ProductController {

    private final ProductService productService;

    @GetMapping("/{id}")
    public ResponseEntity<ProductDetailResponse> getProductDetail(@PathVariable Long id) {
        log.info("상품 상세 조회 API 호출 id = {}", id);
        return ResponseEntity.ok(productService.getProductDetail(id));
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

        // 페이지 크기 검증 (30, 50, 100만 허용)
        if(size != 24 && size != 36) {
            size = 24;
        }

        OrderSearchDto searchDto = OrderSearchDto.builder()
                .page(page)
                .size(size)
                .build();


        PageProductAllResponse allProducts = productService.getAllProducts(searchDto);

        return new ResponseEntity<>(allProducts, HttpStatus.OK);

    }



}
