package com.c3l2.persome.product.controller;

import com.c3l2.persome.product.dto.ProductDetailResponse;
import com.c3l2.persome.product.service.ProductService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/products")
@RequiredArgsConstructor
@Slf4j
public class ProductController {

    private final ProductService productService;

    @GetMapping("/{id}")
    public ResponseEntity<ProductDetailResponse> getProductDetail(@PathVariable Long id) {
        log.info("상품 상세 조회 API 호출 id = {}", id);
        return ResponseEntity.ok(productService.getProductDetail(id));
    }

}
