package com.c3l2.persome.user.controller;

import com.c3l2.persome.config.error.ErrorCode;
import com.c3l2.persome.config.error.exceprion.BusinessException;
import com.c3l2.persome.user.dto.*;
import com.c3l2.persome.user.security.CustomUserDetails;
import com.c3l2.persome.user.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.context.HttpSessionSecurityContextRepository;
import org.springframework.security.web.savedrequest.SavedRequest;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/api/users")
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;
    private final AuthenticationManager authenticationManager;

    // 로그인
    @PostMapping("/login")
    public ResponseEntity<Map<String, String>> login(@RequestBody UserLoginDto loginDto,
                                        HttpServletRequest request) {
        try {
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

            // 성공 응답 (redirectUrl은 JS에서 처리)
            return ResponseEntity.ok(Map.of("status", "ok"));

        } catch (BadCredentialsException e) {
            // ✅ 아이디/비번 불일치 시
            return ResponseEntity
                    .status(ErrorCode.INVALID_LOGIN_CREDENTIALS.getHttpStatus())
                    .body(Map.of("code", ErrorCode.INVALID_LOGIN_CREDENTIALS.getErrorCode(),
                            "message", ErrorCode.INVALID_LOGIN_CREDENTIALS.getMessage()));
        } catch (BusinessException e) {
            return ResponseEntity
                    .status(e.getErrorCode().getHttpStatus())
                    .body(Map.of("code", e.getErrorCode().getErrorCode(),
                            "message", e.getErrorCode().getMessage()));
        } catch (Exception e) {
            return ResponseEntity
                    .status(ErrorCode.SERVER_ERROR.getHttpStatus())
                    .body(Map.of("code", ErrorCode.SERVER_ERROR.getErrorCode(),
                            "message", ErrorCode.SERVER_ERROR.getMessage()));
        }
    }

    // 회원가입
    @PostMapping("/register")
    public ResponseEntity<?> register(@RequestBody @Valid UserRegisterDto registerDto) {
        try {
            userService.register(registerDto);
            return ResponseEntity.ok("회원가입이 완료되었습니다.");
        } catch (BusinessException e) {
            return ResponseEntity
                    .status(e.getErrorCode().getHttpStatus())
                    .body(Map.of("code", e.getErrorCode().getErrorCode(),
                            "message", e.getErrorCode().getMessage()));
        }
    }

    // 아이디 중복 확인
    @GetMapping("/check-id")
    public ResponseEntity<?> checkId(@RequestParam String loginId) {
        if (userService.checkLoginId(loginId)) {
            return ResponseEntity
                    .badRequest()
                    .body(Map.of("code", ErrorCode.ALREADY_REGISTERED_USER.getErrorCode(),
                            "message", ErrorCode.ALREADY_REGISTERED_USER.getMessage()));
        }
        return ResponseEntity.ok(Map.of("message", "사용 가능한 아이디입니다."));
    }

    // 아이디 찾기
    @PostMapping("/find-id")
    public ResponseEntity<String> findId(@RequestBody Map<String, String> body) {
        String name = body.get("name");
        String email = body.get("email");

        String loginId = userService.findIdByNameAndEmail(name, email);
        return ResponseEntity.ok(loginId);
    }

    // 비밀번호 찾기
    @PostMapping("/find-password")
    public ResponseEntity<?> findPassword(@RequestBody FindPasswordRequestDto dto) {
        try {
            String message = userService.resetPassword(dto.getLoginId(), dto.getEmail());
            return ResponseEntity.ok(Map.of("message", message));
        } catch (BusinessException e) {
            return ResponseEntity
                    .status(e.getErrorCode().getHttpStatus())
                    .body(Map.of("code", e.getErrorCode().getErrorCode(),
                            "message", e.getErrorCode().getMessage()));
        }
    }

    // 알람 설정
    @PatchMapping("/me/notifications")
    public ResponseEntity<?> updateNotifications(
            @AuthenticationPrincipal CustomUserDetails userDetails,
            @RequestBody UserNotificationDto notificationDto) {
        try {
            UserNotificationDto updated = userService.updateUserNotifications(userDetails.getId(), notificationDto);
            return ResponseEntity.ok(updated);
        } catch (BusinessException e) {
            return ResponseEntity
                    .status(e.getErrorCode().getHttpStatus())
                    .body(Map.of("code", e.getErrorCode().getErrorCode(),
                            "message", e.getErrorCode().getMessage()));
        }
    }

    // 회원 정보 조회
    @GetMapping("/me")
    public ResponseEntity<?> getMyUser(@AuthenticationPrincipal CustomUserDetails userDetails) {
        try {
            return ResponseEntity.ok(userService.getUser(userDetails.getId()));
        } catch (BusinessException e) {
            return ResponseEntity
                    .status(e.getErrorCode().getHttpStatus())
                    .body(Map.of("code", e.getErrorCode().getErrorCode(),
                            "message", e.getErrorCode().getMessage()));
        }
    }

    // 회원 정보 수정
    @PatchMapping("/me")
    public ResponseEntity<?> updateMyUser(@AuthenticationPrincipal CustomUserDetails userDetails,
                                          @RequestBody UserUpdateDto updateDto) {
        try {
            UserResponseDto updated = userService.updateUser(userDetails.getId(), updateDto);
            return ResponseEntity.ok(updated);
        } catch (BusinessException e) {
            return ResponseEntity
                    .status(e.getErrorCode().getHttpStatus())
                    .body(Map.of("code", e.getErrorCode().getErrorCode(),
                            "message", e.getErrorCode().getMessage()));
        }
    }

    // 비밀번호 수정
    @PatchMapping("/me/password")
    public ResponseEntity<?> updatePassword(@AuthenticationPrincipal CustomUserDetails userDetails,
                                            @Valid @RequestBody UserPasswordUpdateDto passwordUpdateDto) {
        try {
            userService.updatePassword(userDetails.getId(), passwordUpdateDto);
            return ResponseEntity.ok(Map.of("message", "비밀번호가 성공적으로 변경되었습니다."));
        } catch (BusinessException e) {
            return ResponseEntity
                    .status(e.getErrorCode().getHttpStatus())
                    .body(Map.of("code", e.getErrorCode().getErrorCode(),
                            "message", e.getErrorCode().getMessage()));
        }
    }

    // 회원 탈퇴
    @DeleteMapping("/me")
    public ResponseEntity<?> deleteUser(@AuthenticationPrincipal CustomUserDetails userDetails) {
        try {
            userService.deleteUser(userDetails.getId());
            return ResponseEntity.ok(Map.of("message", "회원 탈퇴가 완료되었습니다."));
        } catch (BusinessException e) {
            return ResponseEntity
                    .status(e.getErrorCode().getHttpStatus())
                    .body(Map.of("code", e.getErrorCode().getErrorCode(),
                            "message", e.getErrorCode().getMessage()));
        }
    }

    // 약관 동의 처리
    @PostMapping("/terms/agree")
    public ResponseEntity<?> agreeTerms(HttpSession session) {
        session.setAttribute("termsAgreed", true);
        return ResponseEntity.ok(Map.of("message", "약관 동의 완료"));
    }
}
