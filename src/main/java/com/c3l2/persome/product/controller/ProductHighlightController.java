package com.c3l2.persome.product.controller;

import com.c3l2.persome.product.dto.ProductAllResponse;
import com.c3l2.persome.product.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/products")
@RequiredArgsConstructor
public class ProductHighlightController {

    // 홈 메인 섹션에서 사용할 인기/신규 상품 노출 전용 API

    private final ProductService productService;

    @GetMapping("/popular")
    public ResponseEntity<List<ProductAllResponse>> popularProducts(@RequestParam(defaultValue = "10") int size) {
        List<ProductAllResponse> products = productService.getPopularProducts(size);
        return ResponseEntity.ok(products);
    }

    @GetMapping("/new")
    public ResponseEntity<List<ProductAllResponse>> newProducts(@RequestParam(defaultValue = "10") int size) {
        List<ProductAllResponse> products = productService.getNewProducts(size);
        return ResponseEntity.ok(products);
    }
}
