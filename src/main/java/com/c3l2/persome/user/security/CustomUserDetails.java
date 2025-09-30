package com.c3l2.persome.user.security;

import com.c3l2.persome.user.entity.Status;
import com.c3l2.persome.user.entity.User;
import lombok.Getter;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.oauth2.core.user.OAuth2User;

import java.util.Collection;
import java.util.Collections;
import java.util.Map;

@Getter
public class CustomUserDetails implements UserDetails, OAuth2User {

    private final User user;
    private final Collection<GrantedAuthority> authorities; // ✅ 와일드카드 제거
    private final Map<String, Object> attributes; // 소셜 로그인 전용

    // ✅ User 엔티티에서 필요한 값만 뽑아와 세션과 무관하게 안전하게 저장
    public CustomUserDetails(User user) {
        this.user = user;
        this.authorities = Collections.singleton(new SimpleGrantedAuthority(user.isAdmin() ? "ROLE_ADMIN" : "ROLE_USER"));
        this.attributes = null;
    }

    // 소셜 로그인
    public CustomUserDetails(User user,
                             Collection<GrantedAuthority> authorities,
                             Map<String, Object> attributes) {
        this.user = user;
        this.authorities = authorities;
        this.attributes = attributes;
    }

    // OAuth2User 구현
    @Override
    public Map<String, Object> getAttributes() {
        return attributes;
    }

    // ROLE 권한
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return authorities;
    }

    @Override
    public String getPassword() {
        return user.getPassword();
    }

    public Long getId() {
        return user.getId();
    }

    // 화면에서 보여줄 이름 (등급 + 이름)
    public String getDisplayName() {
        return user.getMembershipLevel().getName().name() + " PERSOME " + user.getName() + "님";
    }

    @Override
    public String getUsername() {
        return user.getLoginId();
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return user.getStatus() == Status.ACTIVE;
    }

    @Override
    public String getName() {
        return user.getLoginId();
    }
}
