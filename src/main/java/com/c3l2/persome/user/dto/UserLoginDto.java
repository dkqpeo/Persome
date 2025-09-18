package com.c3l2.persome.user.dto;

import com.c3l2.persome.user.entity.User;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UserLoginDto {
    private String loginId;
    private String password;

    public static UserLoginDto fromEntity(User user) {
        return UserLoginDto.builder()
                .loginId(user.getLoginId())
                .password(user.getPassword()) // 보통은 응답으로 비번 안 줌
                .build();
    }
}
