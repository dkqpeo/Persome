package com.c3l2.persome.user.controller;

import com.c3l2.persome.common.ApiResponse;
import com.c3l2.persome.config.error.ErrorCode;
import com.c3l2.persome.config.error.exceprion.BusinessException;
import com.c3l2.persome.user.dto.Oauth2RegistrationDto;
import com.c3l2.persome.user.entity.User;
import com.c3l2.persome.user.security.CustomUserDetails;
import com.c3l2.persome.user.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.context.HttpSessionSecurityContextRepository;
import org.springframework.web.bind.annotation.*;

import java.util.Collections;
import java.util.Map;

@RestController
@RequestMapping("/api/users/oauth2")
@RequiredArgsConstructor
public class OAuth2RegistrationController {

    private final UserService userService;

    /**
     * 소셜 회원가입 시 프리로드 데이터 제공 (loginId, email, nickname 등)
     */
    @GetMapping("/pre-register")
    public ResponseEntity<ApiResponse<Map<String, Object>>> preRegister(HttpSession session) {
        Map<String,Object> attrs = (Map<String,Object>) session.getAttribute("OAUTH2_ATTRS");
        if (attrs == null) {
            throw new BusinessException(ErrorCode.SESSION_EXPIRED);
        }

        Map<String,Object> kakaoAccount = (Map<String,Object>) attrs.get("kakao_account");
        Map<String,Object> profile = kakaoAccount != null ? (Map<String,Object>) kakaoAccount.get("profile") : null;

        return ApiResponse.ok("소셜 회원가입 데이터",
                Map.of(
                        "loginId", String.valueOf(attrs.get("id")),
                        "email", kakaoAccount != null ? kakaoAccount.get("email") : "",
                        "nickname", profile != null ? profile.get("nickname") : ""
                )
        );
    }

    /**
     * 소셜 회원가입 최종 완료
     */
    @PostMapping("/register")
    public ResponseEntity<ApiResponse<String>> completeOauth2Registration(
            @RequestBody Oauth2RegistrationDto dto,
            HttpSession session,
            HttpServletRequest request) {

        Map<String, Object> attrs = (Map<String, Object>) session.getAttribute("OAUTH2_ATTRS");
        if (attrs == null) {
            throw new BusinessException(ErrorCode.SESSION_EXPIRED);
        }

        String kakaoId = String.valueOf(attrs.get("id"));
        Map<String, Object> kakaoAccount = (Map<String, Object>) attrs.get("kakao_account");
        Map<String, Object> profile = kakaoAccount != null ? (Map<String, Object>) kakaoAccount.get("profile") : null;
        String email = kakaoAccount != null ? (String) kakaoAccount.get("email") : null;
        String nickname = profile != null ? (String) profile.get("nickname") : "";

        User user = userService.registerSocialUserWithDetails(kakaoId, email, nickname, dto);

        // ✅ 자동 로그인 처리
        CustomUserDetails cud = new CustomUserDetails(user,
                Collections.singleton(new SimpleGrantedAuthority("ROLE_USER")), attrs);

        UsernamePasswordAuthenticationToken auth =
                new UsernamePasswordAuthenticationToken(cud, null, cud.getAuthorities());
        SecurityContextHolder.getContext().setAuthentication(auth);
        request.getSession().setAttribute(
                HttpSessionSecurityContextRepository.SPRING_SECURITY_CONTEXT_KEY,
                SecurityContextHolder.getContext()
        );

        session.removeAttribute("OAUTH2_ATTRS");

        // ✅ 여기서 타입 맞춤
        return ApiResponse.ok("회원가입 완료", "/"); // data="/" , message="회원가입 완료"
    }
}
