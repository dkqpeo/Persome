package com.c3l2.persome.user.controller;

import com.c3l2.persome.user.dto.*;
import com.c3l2.persome.user.security.CustomUserDetails;
import com.c3l2.persome.user.service.UserService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/users")
@RequiredArgsConstructor
public class UserController {
    private UserService userService;

    // 회원가입
    @PostMapping("/register")
    public ResponseEntity<String> register(@RequestBody UserRegisterDto registerDto) {
        userService.register(registerDto);
        return ResponseEntity.ok("회원가입 성공");
    }

    // 아이디 중복 확인
    @GetMapping("/check-id")
    public ResponseEntity<String> checkId(@RequestParam String loginId) {
        if (userService.checkLoginId(loginId)) {
            return ResponseEntity.badRequest().body("이미 존재하는 아이디입니다.");
        }
        return ResponseEntity.ok("사용 가능한 아이디입니다.");
    }

    // 알람 설정
    @PatchMapping("/me/notifications")
    public ResponseEntity<UserNotificationDto> updateNotifications(
            @AuthenticationPrincipal CustomUserDetails userDetails,
            @RequestBody UserNotificationDto notificationDto) {
        UserNotificationDto updated = userService.updateUserNotifications(userDetails.getId(), notificationDto);
        return ResponseEntity.ok(updated);
    }

    // 회원 정보 조회
    @GetMapping("/me")
    public ResponseEntity<UserResponseDto> getMyUser(@AuthenticationPrincipal CustomUserDetails userDetails) {

        return ResponseEntity.ok(userService.getUser(userDetails.getId()));
    }

    // 회원 정보 수정
    @PatchMapping("/me")
    public ResponseEntity<UserResponseDto> updateMyUser(@AuthenticationPrincipal CustomUserDetails userDetails,
                                                        @RequestBody UserUpdateDto updateDto) {
        UserResponseDto updated = userService.updateUser(userDetails.getId(), updateDto);
        return ResponseEntity.ok(updated);
    }

    // 비밀번호 수정
    @PatchMapping("/me/password")
    public ResponseEntity<String> updatePassword(@AuthenticationPrincipal CustomUserDetails userDetails,
                                                 @Valid @RequestBody UserPasswordUpdateDto passwordUpdateDto) {
        userService.updatePassword(userDetails.getId(), passwordUpdateDto);

        return ResponseEntity.ok("비밀번호가 성공적으로 변경되었습니다.");
    }

    // 회원 탈퇴
    @DeleteMapping("/me")
    public ResponseEntity<String> deleteUser(@AuthenticationPrincipal CustomUserDetails userDetails) {
        userService.deleteUser(userDetails.getId());

        return ResponseEntity.ok("회원 탈퇴가 완료되었습니다.");
    }
}
