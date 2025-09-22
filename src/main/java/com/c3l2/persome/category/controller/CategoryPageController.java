package com.c3l2.persome.category.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CategoryPageController {

    @GetMapping({"/category", "/category/", "/category/skin"})
    public String categoryHome() {
        return "redirect:/category/index.html";
    }
}
