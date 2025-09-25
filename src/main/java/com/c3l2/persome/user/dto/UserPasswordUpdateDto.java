package com.c3l2.persome.user.dto;

import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UserPasswordUpdateDto {
    private String oldPassword;

    @Size(min = 1, message = "비밀번호는 최소 8자 이상이어야 합니다.")
    private String newPassword;
}
