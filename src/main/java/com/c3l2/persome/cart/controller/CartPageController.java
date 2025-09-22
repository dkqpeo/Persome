package com.c3l2.persome.cart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CartPageController {

    @GetMapping({"/cart", "/cart/"})
    public String cartPage() {
        return "redirect:/cart/index.html";
    }
}
