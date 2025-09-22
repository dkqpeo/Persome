package com.c3l2.persome.order.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class OrdersPageController {

    @GetMapping({"/orders", "/orders/"})
    public String list() {
        return "redirect:/orders/index.html";
    }

    @GetMapping("/orders/view/{orderId}")
    public String detail(@PathVariable Long orderId) {
        // forward to static detail, JS reads id from pathname
        return "forward:/orders/detail.html";
    }
}
