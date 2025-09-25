package com.c3l2.persome.user.controller;

import com.c3l2.persome.common.ApiResponse;
import com.c3l2.persome.user.dto.*;
import com.c3l2.persome.user.entity.User;
import com.c3l2.persome.user.security.CustomUserDetails;
import com.c3l2.persome.user.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.context.HttpSessionSecurityContextRepository;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("/api/users")
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;
    private final AuthenticationManager authenticationManager;

    // 로그인
    @PostMapping("/login")
    public ResponseEntity<ApiResponse<String>> login(@RequestBody UserLoginDto loginDto,
                                                     HttpServletRequest request) {
        Authentication authentication = authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(
                        loginDto.getLoginId(),
                        loginDto.getPassword()
                )
        );

        // SecurityContextHolder 설정
        SecurityContextHolder.getContext().setAuthentication(authentication);

        // 세션에 SecurityContext 저장
        HttpSession session = request.getSession(true);
        session.setAttribute(
                HttpSessionSecurityContextRepository.SPRING_SECURITY_CONTEXT_KEY,
                SecurityContextHolder.getContext()
        );

        return ApiResponse.ok("로그인이 완료되었습니다", "로그인 성공");
    }

    // 회원가입
    @PostMapping("/register")
    public ResponseEntity<ApiResponse<String>> register(@RequestBody @Valid UserRegisterDto registerDto) {
        userService.register(registerDto);
        return ApiResponse.ok("회원가입이 완료되었습니다.", "회원가입 성공");
    }

    // 아이디 중복 확인
    @GetMapping("/check-id")
    public ResponseEntity<ApiResponse<Void>> checkId(@RequestParam String loginId) {
        userService.checkLoginId(loginId);
        return ApiResponse.ok("사용 가능한 아이디입니다.", null);
    }

    // 아이디 찾기
    @PostMapping("/find-id")
    public ResponseEntity<ApiResponse<String>> findId(@RequestBody Map<String, String> body) {
        String name = body.get("name");
        String email = body.get("email");

        String loginId = userService.findIdByNameAndEmail(name, email);
        return ApiResponse.ok("아이디 조회 성공", loginId);
    }

    // 비밀번호 찾기
    @PostMapping("/find-password")
    public ResponseEntity<ApiResponse<String>> findPassword(@RequestBody FindPasswordRequestDto dto) {
        String message = userService.resetPassword(dto.getLoginId(), dto.getEmail());
        return ApiResponse.ok("비밀번호 재설정 요청 성공", message);
    }

    // 알림 설정 조회
    @GetMapping("/me/notifications")
    public ResponseEntity<ApiResponse<UserNotificationDto>> getNotifications(
            @AuthenticationPrincipal CustomUserDetails userDetails) {

        UserNotificationDto dto = userService.getUserNotifications(userDetails.getId());
        return ApiResponse.ok("알림 설정 조회 성공", dto);
    }

    // 알림 설정
    @PatchMapping("/me/notifications")
    public ResponseEntity<ApiResponse<UserNotificationDto>> updateNotifications(
            @AuthenticationPrincipal CustomUserDetails userDetails,
            @RequestBody UserNotificationDto notificationDto) {

        UserNotificationDto updated = userService.updateUserNotifications(userDetails.getId(), notificationDto);
        return ApiResponse.ok("알림 설정 수정 성공", updated);
    }

    // 회원 정보 조회
    @GetMapping("/me")
    public ResponseEntity<ApiResponse<UserResponseDto>> getMyUser(@AuthenticationPrincipal CustomUserDetails userDetails) {
        UserResponseDto dto = userService.getUser(userDetails.getId());
        return ApiResponse.ok("회원 정보 조회 성공", dto);
    }

    // 회원 정보 수정
    @PatchMapping("/me")
    public ResponseEntity<ApiResponse<UserResponseDto>> updateMyUser(@AuthenticationPrincipal CustomUserDetails userDetails,
                                          @RequestBody UserUpdateDto updateDto) {
        UserResponseDto updated = userService.updateUser(userDetails.getId(), updateDto);
        return ApiResponse.ok("회원 정보 수정 성공", updated);
    }

    // 비밀번호 수정
    @PatchMapping("/me/password")
    public ResponseEntity<ApiResponse<String>> updatePassword(@AuthenticationPrincipal CustomUserDetails userDetails,
                                            @Valid @RequestBody UserPasswordUpdateDto passwordUpdateDto) {
        userService.updatePassword(userDetails.getId(), passwordUpdateDto);
        return ApiResponse.ok("비밀번호가 성공적으로 변경되었습니다.", "비밀번호 변경 완료");
    }

    // 회원 탈퇴
    @DeleteMapping("/me")
    public ResponseEntity<ApiResponse<String>> deleteUser(@AuthenticationPrincipal CustomUserDetails userDetails) {
        userService.deleteUser(userDetails.getId());
        return ApiResponse.ok("회원 탈퇴가 완료되었습니다.", "회원 탈퇴가 완료");

    }

    // 약관 동의 처리
    @PostMapping("/terms/agree")
    public ResponseEntity<ApiResponse<String>> agreeTerms(HttpSession session) {
        session.setAttribute("termsAgreed", true);
        return ApiResponse.ok("약관 동의 완료", "약관 동의 성공");
    }
}
