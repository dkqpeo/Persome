package com.c3l2.persome.admin.dto;

import com.c3l2.persome.user.entity.Status;
import com.c3l2.persome.user.entity.User;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class AdminUserResponse {
    private Long id;
    private String loginId;
    private String name;
    private String email;
    private String phone;
    private String membershipLevel;
    private Status status;
    private boolean admin;
    private LocalDateTime lastLoginAt;
    private LocalDateTime createdAt;

    public static AdminUserResponse from(User user) {
        return AdminUserResponse.builder()
                .id(user.getId())
                .loginId(user.getLoginId())
                .name(user.getName())
                .email(user.getEmail())
                .phone(user.getPhone())
                .membershipLevel(user.getMembershipLevel().getName().name())
                .status(user.getStatus())
                .admin(user.isAdmin())
                .lastLoginAt(user.getLastLoginAt())
                .createdAt(user.getCreatedAt())
                .build();
    }
}
