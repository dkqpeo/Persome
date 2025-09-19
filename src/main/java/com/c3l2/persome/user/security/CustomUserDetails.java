package com.c3l2.persome.user.security;

import com.c3l2.persome.user.entity.Status;
import com.c3l2.persome.user.entity.User;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.List;

@Getter
@RequiredArgsConstructor
public class CustomUserDetails implements UserDetails {

    private final Long id;
    private final String loginId;
    private final String password;
    private final String name;
    private final String membershipLevelName;
    private final boolean isAdmin;
    private final Status status;

    // ✅ User 엔티티에서 필요한 값만 뽑아와 세션과 무관하게 안전하게 저장
    public CustomUserDetails(User user) {
        this.id = user.getId();
        this.loginId = user.getLoginId();
        this.password = user.getPassword();
        this.name = user.getName();
        this.isAdmin = user.isAdmin();
        this.status = user.getStatus();
        this.membershipLevelName = user.getMembershipLevel().getName().name();
    }

    // ROLE 권한
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        String role = isAdmin ? "ROLE_ADMIN" : "ROLE_USER";
        return List.of(new SimpleGrantedAuthority(role));
    }

    // 화면에서 보여줄 이름 (등급 + 이름)
    public String getDisplayName() {
        return membershipLevelName + " PERSOME " + name + "님";
    }

    @Override
    public String getUsername() {
        return loginId;
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
        return status == Status.ACTIVE;
    }
}
