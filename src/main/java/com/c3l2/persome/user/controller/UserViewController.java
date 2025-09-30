package com.c3l2.persome.user.controller;

import com.c3l2.persome.user.security.CustomUserDetails;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
@RequestMapping("/users")
@RequiredArgsConstructor
public class UserViewController {

    // 로그인 페이지
    @GetMapping("/login")
    public String login(@AuthenticationPrincipal CustomUserDetails userDetails,
                        @RequestParam(value = "redirect", required = false) String redirect,
                        Model model) {
        if (userDetails != null) {
            // 이미 로그인 상태면 redirect 파라미터가 있으면 거기로 보내고, 없으면 홈으로
            return "redirect:" + (redirect != null ? redirect : "/");
        }
        model.addAttribute("redirect", redirect);
        return "users/login"; // 로그인 페이지로
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

    // 소셜 회원가입
    // 회원가입 페이지(폼)
    @GetMapping("/oauth2/register")
    public String oauth2RegisterForm(HttpSession session, Model model) {
        Map<String,Object> attrs = (Map<String,Object>) session.getAttribute("OAUTH2_ATTRS");
        if (attrs == null) {
            return "redirect:/users/login"; // 세션 만료 등 대비
        }

        // 카카오 기본 정보
        Map<String,Object> kakaoAccount = (Map<String,Object>) attrs.get("kakao_account");
        Map<String,Object> profile = kakaoAccount != null ? (Map<String,Object>) kakaoAccount.get("profile") : null;

        String loginId = String.valueOf(attrs.get("id"));
        String email = kakaoAccount != null ? (String) kakaoAccount.get("email") : "";
        String nickname = profile != null ? (String) profile.get("nickname") : "";

        model.addAttribute("loginId", loginId);
        model.addAttribute("email", email);
        model.addAttribute("nickname", nickname);

        // ⚡ 기존 register.html 사용
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
