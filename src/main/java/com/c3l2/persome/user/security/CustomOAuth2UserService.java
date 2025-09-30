package com.c3l2.persome.user.security;

import com.c3l2.persome.user.entity.User;
import com.c3l2.persome.user.repository.UserRepository;
import com.c3l2.persome.user.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserService;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.Map;

@Service
@RequiredArgsConstructor
public class CustomOAuth2UserService implements OAuth2UserService<OAuth2UserRequest, OAuth2User> {

    private final UserRepository userRepository;
    private final UserService userService;

    @Override
    public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
        return new DefaultOAuth2UserService().loadUser(userRequest);
    }

//    @Override
//    public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
//        OAuth2User oAuth2User = new DefaultOAuth2UserService().loadUser(userRequest);
//
//        Map<String, Object> attributes = oAuth2User.getAttributes();
//        Map<String, Object> kakaoAccount = (Map<String, Object>) attributes.get("kakao_account");
//        Map<String, Object> profile = (Map<String, Object>) kakaoAccount.get("profile");
//
//        String kakaoId = attributes.get("id").toString();
//        String email = kakaoAccount != null ? (String) kakaoAccount.get("email") : null;
//        String nickname = profile != null ? (String) profile.get("nickname") : "카카오사용자";
//
//        // DB 조회 or 신규 생성
//        User user = userRepository.findByLoginId(kakaoId)
//                .orElseGet(() -> userService.registerSocialUser(kakaoId, email, nickname));
//
//        // ✅ 여기서 우리 CustomUserDetails로 반환해야 세션에 들어감
//        return new CustomUserDetails(
//                user,
//                Collections.singleton(new SimpleGrantedAuthority("ROLE_USER")),
//                attributes
//        );
//    }
}
