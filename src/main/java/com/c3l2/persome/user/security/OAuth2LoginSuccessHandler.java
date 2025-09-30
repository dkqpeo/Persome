package com.c3l2.persome.user.security;

import com.c3l2.persome.user.entity.User;
import com.c3l2.persome.user.repository.UserRepository;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;
import org.springframework.security.web.context.HttpSessionSecurityContextRepository;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.util.Collections;
import java.util.Map;
import java.util.Optional;

@Component
@RequiredArgsConstructor
public class OAuth2LoginSuccessHandler implements AuthenticationSuccessHandler {

    private final UserRepository userRepository;

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request,
                                        HttpServletResponse response,
                                        Authentication authentication) throws IOException, ServletException {

        if (!(authentication.getPrincipal() instanceof org.springframework.security.oauth2.core.user.OAuth2User oAuth2User)) {
            response.sendRedirect("/");
            return;
        }

        Map<String, Object> attrs = oAuth2User.getAttributes();
        String kakaoId = String.valueOf(attrs.get("id"));

        Optional<User> optUser = userRepository.findByLoginId(kakaoId);
        HttpSession session = request.getSession();

        if (optUser.isPresent()) {
            // ✅ 기존 회원 → 세션에 SecurityContext 저장
            User user = optUser.get();
            com.c3l2.persome.user.security.CustomUserDetails cud =
                    new com.c3l2.persome.user.security.CustomUserDetails(
                            user,
                            Collections.singleton(new SimpleGrantedAuthority("ROLE_USER")),
                            attrs
                    );

            UsernamePasswordAuthenticationToken auth =
                    new UsernamePasswordAuthenticationToken(cud, null, cud.getAuthorities());
            SecurityContextHolder.getContext().setAuthentication(auth);
            session.setAttribute(HttpSessionSecurityContextRepository.SPRING_SECURITY_CONTEXT_KEY,
                    SecurityContextHolder.getContext());

            // ✅ 로그인 전에 요청한 URL 확인
            SavedRequest savedRequest = new HttpSessionRequestCache().getRequest(request, response);

            if (savedRequest != null) {
                response.sendRedirect(savedRequest.getRedirectUrl());
            } else {
                response.sendRedirect("/");
            }
        } else {
            // 신규 회원 → OAUTH2_ATTRS 세션에 저장 후 회원가입 페이지로 이동
            session.setAttribute("OAUTH2_ATTRS", attrs);
            response.sendRedirect("/users/terms?social=true");
        }
    }
}
