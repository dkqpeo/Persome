package com.c3l2.persome.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyPageController {

    @GetMapping({"/mypage", "/mypage/"})
    public String myPage() {
        return "/mypage/index";
    }

    @GetMapping("/mypage/info")
    public String myInfoPage() {
        return "mypage/info";
    }

    @GetMapping({"/mypage/addresses", "/mypage/addresses/"})
    public String myAddressesPage() {
        return "mypage/addresses";
    }

    @GetMapping({"/mypage/coupons", "/mypage/coupons/"})
    public String myCouponsPage() {
        return "/mypage/coupons";
    }
}
