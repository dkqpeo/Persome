package com.c3l2.persome.user.controller;

import com.c3l2.persome.user.dto.*;
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
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.context.HttpSessionSecurityContextRepository;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/users")
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;
    private final AuthenticationManager authenticationManager;

    // 로그인
    @PostMapping("/login")
    public ResponseEntity<String> login(@RequestBody UserLoginDto loginDto,
                                        HttpServletRequest request) {
        try {
            Authentication authentication = authenticationManager.authenticate(
                    new UsernamePasswordAuthenticationToken(
                            loginDto.getLoginId(),
                            loginDto.getPassword()
                    )
            );
            
            // Spring Security가 자동으로 SecurityContext를 관리하도록 설정
            SecurityContextHolder.getContext().setAuthentication(authentication);
            
            // 세션에 SecurityContext 저장
            HttpSession session = request.getSession(true);
            session.setAttribute(
                    HttpSessionSecurityContextRepository.SPRING_SECURITY_CONTEXT_KEY,
                    SecurityContextHolder.getContext()
            );

            return ResponseEntity.ok("로그인 성공");
        } catch (org.springframework.security.authentication.BadCredentialsException e) {
            return ResponseEntity.badRequest().body("비밀번호가 일치하지 않습니다.");
        } catch (org.springframework.security.authentication.DisabledException e) {
            return ResponseEntity.badRequest().body("비활성화된 계정입니다.");
        } catch (org.springframework.security.core.userdetails.UsernameNotFoundException e) {
            return ResponseEntity.badRequest().body("존재하지 않는 사용자입니다.");
        } catch (IllegalArgumentException e) {
            return ResponseEntity.badRequest().body(e.getMessage());
        } catch (Exception e) {
            return ResponseEntity.badRequest().body("로그인 처리 중 오류가 발생했습니다.");
        }
    }

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
