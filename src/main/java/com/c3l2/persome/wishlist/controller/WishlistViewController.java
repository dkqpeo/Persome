package com.c3l2.persome.wishlist.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mypage/wishlist")
@RequiredArgsConstructor
public class WishlistViewController {

    @GetMapping
    public String wishlistPage() {
        return "mypage/wishlist";
    }
}
