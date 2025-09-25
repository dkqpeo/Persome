package com.c3l2.persome.product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/products")
public class ProductViewController {

    /**
     * 클라이언트 페이지 이동용 메서드.
     * 상품 상세 페이지를 로드.
     * @param id    // 조회할 상품의 기본키
     * @return      // 이동할 페이지 이름
     */
    @GetMapping("{id}")
    public String findById(@PathVariable @ModelAttribute("id") Long id) {

        return "product/productDetail";
    }

    /*/products/search?keyword=xxx*/
    @GetMapping("/search")
    public String search() {

        return "product/productSearchtList";
    }

}
