package com.c3l2.persome.sale.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/sale")
public class SaleViewController {

    @GetMapping
    public String getSalePage() {
        return "sale/index";
    }
}
