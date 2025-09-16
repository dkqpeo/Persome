package com.c3l2.persome.user.dto;

import com.c3l2.persome.entity.user.Gender;
import com.c3l2.persome.entity.user.User;
import com.c3l2.persome.entity.user.UserNotification;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UserResponseDto {
    private String loginId;
    private String name;
    private LocalDate birthDate;
    private String email;
    private String gender;
    private Boolean emailEnabled;
    private Boolean smsEnabled;
    private Boolean pushEnabled;

    public static UserResponseDto fromEntity(User user, UserNotification userNotification){
        return UserResponseDto.builder()
                .loginId(user.getLoginId())
                .name(user.getName())
                .birthDate(user.getBirthDate())
                .email(user.getEmail())
                .gender(user.getGender() != null ? user.getGender().name() : null)
                .emailEnabled(userNotification.isEmailEnabled())
                .smsEnabled(userNotification.isSmsEnabled())
                .pushEnabled(userNotification.isPushEnabled())
                .build();
    }
}
