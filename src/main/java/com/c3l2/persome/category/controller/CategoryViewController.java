package com.c3l2.persome.category.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequiredArgsConstructor
@RequestMapping("/categories")
public class CategoryViewController {

    /**
     * 상품목록 페이지 반환 (데이터는 JS가 AJAX로 호출)
     */
    @GetMapping("/products")
    public String getProductForCategory(@RequestParam String firstCategory,
                                        @RequestParam(defaultValue = "none") String secondCategory,
                                        @RequestParam(defaultValue = "none") String thirdCategory,
                                        @RequestParam(defaultValue = "0") int page,
                                        @RequestParam(defaultValue = "24") int size,
                                        Model model) {

        model.addAttribute("firstCategory", firstCategory);
        model.addAttribute("secondCategory", secondCategory);
        model.addAttribute("thirdCategory", thirdCategory);
        model.addAttribute("page", page);
        model.addAttribute("size", (size == 24 || size == 36) ? size : 24);

        return "product/productList"; // templates/product/productList.html
    }
}