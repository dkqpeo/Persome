package com.c3l2.persome.user.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UserUpdateDto {
    private String name;
    private LocalDate birthDate;
    private String email;
    private String phone;
    private String gender;

    private Boolean emailEnabled;
    private Boolean smsEnabled;
    private Boolean pushEnabled;
}
