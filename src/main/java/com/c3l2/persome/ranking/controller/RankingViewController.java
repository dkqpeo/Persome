package com.c3l2.persome.ranking.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/ranking")
public class RankingViewController {

    /**
     * 랭킹 페이지 템플릿을 반환한다.
     */
    @GetMapping
    public String getRankingPage() {
        return "ranking/index";
    }
}
