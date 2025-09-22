package com.c3l2.persome.user.controller;

import com.c3l2.persome.user.security.CustomUserDetails;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/users")
@RequiredArgsConstructor
public class UserViewController {

    // 로그인 페이지
    @GetMapping("/login")
    public String login(@AuthenticationPrincipal CustomUserDetails userDetails) {
        if (userDetails != null) {
            // 이미 로그인 상태면 홈이나 마이페이지로 리다이렉트
            return "redirect:/";
            // 또는 "redirect:/users/me" 로 바로 마이페이지로 보내도 됨
        }
        return "users/login";
    }

    // 회원가입 페이지
    @GetMapping("/register")
    public String showRegisterPage(HttpSession session) {
        Boolean agreed = (Boolean) session.getAttribute("termsAgreed");
        if (agreed == null || !agreed) {
            // 약관 동의 안 했으면 /users/terms로 돌려보냄
            return "redirect:/users/terms";
        }
        return "users/register";
    }

    // 아이디 찾기 페이지
    @GetMapping("/find-id")
    public String findId() {
        return "users/find-id";
    }

    // 비밀번호 찾기 페이지
    @GetMapping("/find-password")
    public String findPassword() {
        return "users/find-password";
    }

    // 약관 동의 페이지
    @GetMapping("/terms")
    public String showTermsPage() {
        return "users/terms";
    }
}
