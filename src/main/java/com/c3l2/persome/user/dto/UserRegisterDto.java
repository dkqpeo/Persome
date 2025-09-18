package com.c3l2.persome.user.dto;

import com.c3l2.persome.entity.membership.MembershipLevel;
import com.c3l2.persome.entity.user.*;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;

import java.time.LocalDate;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UserRegisterDto {
    @NotBlank(message = "아이디를 입력해주세요")
    private String loginId;

    @NotBlank(message = "비밀번호를 입력해주세요")
    private String password;

    @NotBlank(message = "비밀번호 확인을 입력해주세요")
    private String confirmPassword;

    @NotBlank(message = "이름을 입력해주세요")
    private String name;

    @NotBlank(message = "전화번호를 입력해주세요")
    private String phone;

    @Email(message = "올바른 이메일 형식이 아닙니다.")
    @NotBlank(message = "이메일을 입력해주세요")
    private String email;

    @NotNull(message = "생일을 입력해주세요")
    private LocalDate birthDate;

    @NotNull(message = "성별을 입력해주세요")
    private Gender gender;

    @NotBlank(message = "우편번호를 입력해주세요")
    private String zip;

    @NotBlank(message = "도로명 주소를 입력해주세요")
    private String roadAddr;

    @NotBlank(message = "상세 주소를 입력해주세요")
    private String addrDetail;

    private Boolean emailEnabled;
    private Boolean smsEnabled;
    private Boolean pushEnabled;

    public User toEntity(PasswordEncoder passwordEncoder, MembershipLevel defaultLevel) {

        return User.builder()
                .loginId(this.loginId)
                .password(passwordEncoder.encode(this.password))
                .name(this.name)
                .phone(this.phone)
                .birthDate(this.birthDate)
                .email(this.email)
                .gender(this.gender)
                .status(Status.ACTIVE)
                .membershipLevel(defaultLevel)
                .build();
    }
}
