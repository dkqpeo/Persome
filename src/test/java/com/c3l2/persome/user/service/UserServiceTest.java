package com.c3l2.persome.user.service;

import com.c3l2.persome.user.entity.Status;
import com.c3l2.persome.user.entity.User;
import com.c3l2.persome.user.dto.UserLoginDto;
import com.c3l2.persome.user.dto.UserPasswordUpdateDto;
import com.c3l2.persome.user.dto.UserRegisterDto;
import com.c3l2.persome.user.entity.Gender;
import com.c3l2.persome.user.repository.UserRepository;
import jakarta.transaction.Transactional;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.password.PasswordEncoder;

import java.time.LocalDate;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;

@SpringBootTest
@Transactional
class UserServiceTest {

    @Autowired
    private UserService userService;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Test
    void 회원가입_정상_테스트() {
        // given
        UserRegisterDto dto = UserRegisterDto.builder()
                .loginId("testuser")
                .password("password123")
                .name("홍길동")
                .email("test@test.com")
                .phone("01012345678")
                .birthDate(LocalDate.of(2000,1,1))
                .gender(Gender.M)
                .zip("12345")
                .roadAddr("서울시 강남구 테헤란로")
                .addrDetail("101호")
                .emailEnabled(true)
                .smsEnabled(false)
                .pushEnabled(true)
                .build();

        // when
        userService.register(dto);

        // then
        User saved = userRepository.findByLoginId("testuser")
                .orElseThrow(() -> new RuntimeException("저장된 회원 없음"));
        assertThat(saved.getName()).isEqualTo("홍길동");
        assertThat(passwordEncoder.matches("password123", saved.getPassword())).isTrue();
    }

    @Test
    void 로그인_성공_테스트() {
        // given: 회원가입으로 유저 등록
        UserRegisterDto dto = UserRegisterDto.builder()
                .loginId("loginuser")
                .password("12345678")
                .name("로그인맨")
                .email("login@test.com")
                .phone("01098765432")
                .birthDate(LocalDate.of(1995,5,5))
                .gender(Gender.F)
                .zip("54321")
                .roadAddr("서울시 송파구 올림픽로")
                .addrDetail("202호")
                .build();
        userService.register(dto);

        UserLoginDto loginDto = new UserLoginDto("loginuser", "12345678");

        // when
        User result = userService.login(loginDto);

        // then
        assertThat(result.getLoginId()).isEqualTo("loginuser");
    }

    @Test
    void 비밀번호_변경_테스트() {
        // given: 회원가입
        UserRegisterDto dto = UserRegisterDto.builder()
                .loginId("changepw")
                .password("oldpass")
                .name("비번맨")
                .email("pw@test.com")
                .phone("01022223333")
                .birthDate(LocalDate.of(1999,9,9))
                .gender(Gender.M)
                .zip("11111")
                .roadAddr("서울시 마포구 월드컵로")
                .addrDetail("303호")
                .build();
        userService.register(dto);

        User user = userRepository.findByLoginId("changepw").orElseThrow();

        UserPasswordUpdateDto pwdDto = new UserPasswordUpdateDto("oldpass", "newpass123");

        // when
        userService.updatePassword(user.getId(), pwdDto);

        // then
        User updated = userRepository.findById(user.getId()).orElseThrow();
        assertThat(passwordEncoder.matches("newpass123", updated.getPassword())).isTrue();
    }

    @Test
    void 회원탈퇴_테스트() {
        // given: 회원가입
        UserRegisterDto dto = UserRegisterDto.builder()
                .loginId("deleteuser")
                .password("deletepw")
                .name("삭제맨")
                .email("delete@test.com")
                .phone("01044445555")
                .birthDate(LocalDate.of(1990,12,12))
                .gender(Gender.F)
                .zip("22222")
                .roadAddr("서울시 강서구 화곡로")
                .addrDetail("404호")
                .build();
        userService.register(dto);

        User user = userRepository.findByLoginId("deleteuser").orElseThrow();

        // when
        userService.deleteUser(user.getId());

        // then
        User withdrawn = userRepository.findById(user.getId()).orElseThrow();
        assertThat(withdrawn.getStatus()).isEqualTo(Status.WITHDRAWN);
    }
}
