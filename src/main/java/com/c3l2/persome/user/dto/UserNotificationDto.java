package com.c3l2.persome.user.dto;

import jakarta.persistence.Column;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UserNotificationDto {
    private Boolean emailEnabled;
    private Boolean smsEnabled;
    private Boolean pushEnabled;
}
