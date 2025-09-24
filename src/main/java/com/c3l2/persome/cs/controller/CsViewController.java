package com.c3l2.persome.cs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/help")
public class CsViewController {

    @GetMapping
    public String help(){
        return "/cs/help";
    }

}
