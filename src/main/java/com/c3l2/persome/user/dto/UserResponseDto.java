package com.c3l2.persome.user.dto;

import com.c3l2.persome.user.entity.User;
import com.c3l2.persome.user.entity.UserNotification;
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
    private Long id;
    private String loginId;
    private String name;
    private LocalDate birthDate;
    private String email;
    private String gender;
    private Boolean emailEnabled;
    private Boolean smsEnabled;
    private Boolean pushEnabled;
    private String membershipLevel;
    private String displayName;

    public static UserResponseDto fromEntity(User user, UserNotification userNotification){
        String membershipLevel = user.getMembershipLevel().getName().name(); // 예: BABY, SILVER
        String displayName = membershipLevel + " PERSOME " + user.getName() + "님";

        return UserResponseDto.builder()
                .id(user.getId())
                .loginId(user.getLoginId())
                .name(user.getName())
                .birthDate(user.getBirthDate())
                .email(user.getEmail())
                .gender(user.getGender() != null ? user.getGender().name() : null)
                .emailEnabled(userNotification.isEmailEnabled())
                .smsEnabled(userNotification.isSmsEnabled())
                .pushEnabled(userNotification.isPushEnabled())
                .membershipLevel(membershipLevel)
                .displayName(displayName)
                .build();
    }
}
