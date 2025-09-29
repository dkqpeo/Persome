package com.c3l2.persome.admin.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@RequiredArgsConstructor
public class AdminViewController {

    @PreAuthorize("hasRole('ADMIN')")
    @GetMapping("/admin")
    public String adminHome() {
        return "redirect:/admin/index.html";
    }
}
