package com.c3l2.persome.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyPageController {

    @GetMapping({"/mypage", "/mypage/"})
    public String myPage() {
        return "redirect:/mypage/index.html";
    }

    @GetMapping("/mypage/info")
    public String myInfoPage() {
        return "redirect:/mypage/info.html";
    }

    @GetMapping({"/mypage/addresses", "/mypage/addresses/"})
    public String myAddressesPage() {
        return "redirect:/mypage/addresses.html";
    }

    @GetMapping({"/mypage/coupons", "/mypage/coupons/"})
    public String myCouponsPage() {
        return "redirect:/mypage/coupons.html";
    }
}
