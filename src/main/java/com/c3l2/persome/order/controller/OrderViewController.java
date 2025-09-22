package com.c3l2.persome.order.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping ("/orders")
public class OrderViewController {
    @GetMapping
    String orderPage(){
        return "orders/order-form";
    }

    @GetMapping("/complete")
    String completeOrderPage(){ return "orders/order-complete"; }

    @GetMapping("/detail")
    String orderDetailPage(){ return "orders/order-detail"; }
}
