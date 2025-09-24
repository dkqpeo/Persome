package com.c3l2.persome.coupon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/coupons")
public class CouponViewController {

    @GetMapping()
    public String coupon() {
        return "/membership/coupons";
    }
}
