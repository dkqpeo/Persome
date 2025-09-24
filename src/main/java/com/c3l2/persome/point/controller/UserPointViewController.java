package com.c3l2.persome.point.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mypage/points")
@RequiredArgsConstructor
public class UserPointViewController {

    @GetMapping
    public String pointsPage() {
        return "mypage/points";
    }
}
