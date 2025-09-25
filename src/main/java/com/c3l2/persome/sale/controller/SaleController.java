package com.c3l2.persome.sale.controller;

import com.c3l2.persome.sale.constant.SaleSortType;
import com.c3l2.persome.sale.dto.SaleResponseDto;
import com.c3l2.persome.sale.service.SaleService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/sale")
public class SaleController {

    private final SaleService saleService;

    @GetMapping("/products")
    public SaleResponseDto getSaleProducts(@RequestParam(required = false) Integer size,
                                           @RequestParam(defaultValue = "popular") String sort) {
        SaleSortType sortType = SaleSortType.from(sort);
        return saleService.getSaleProducts(size, sortType);
    }
}
