package com.c3l2.persome.user.dto;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

import java.time.LocalDate;
import java.util.List;

@Getter
@NoArgsConstructor(force = true)   // JPA, Jackson 역직렬화용
@AllArgsConstructor
@Builder
public class Oauth2RegistrationDto {

    private final LocalDate birthDate;
    private final String gender;   // "M" or "F"
    private final String phone;

    private final String zip;
    private final String roadAddr;
    private final String jibunAddr;
    private final String addrDetail;

    private final Boolean emailEnabled;
    private final Boolean smsEnabled;
    private final Boolean pushEnabled;

    private final List<UserConsentDto> consents;
}
