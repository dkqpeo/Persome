package com.c3l2.persome.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mypage")
public class MyPageController {

    @GetMapping
    public String myPage() {
        return "/mypage/index";
    }

    @GetMapping("/info")
    public String myInfoPage() {
        return "mypage/info";
    }

    @GetMapping("/addresses")
    public String myAddressesPage() {
        return "mypage/addresses";
    }

    @GetMapping("/coupons")
    public String myCouponsPage() {
        return "/mypage/coupons";
    }

    @GetMapping("/orders")
    String myOrderPage(){ return "orders/order-list"; }
}
