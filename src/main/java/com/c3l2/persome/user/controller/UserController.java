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
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.context.HttpSessionSecurityContextRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/users")
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;
    private final AuthenticationManager authenticationManager;

    @GetMapping("/login")
    public String login() {
        return "/users/login";
    }

    // 로그인
    @PostMapping("/login")
    @ResponseBody
    public ResponseEntity<String> login(@RequestBody UserLoginDto loginDto,
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

            return ResponseEntity.ok("{\"redirectUrl\":\"/\"}");
        } catch (org.springframework.security.authentication.BadCredentialsException e) {
            return ResponseEntity.badRequest().body("비밀번호가 일치하지 않습니다.");
        } catch (org.springframework.security.authentication.DisabledException e) {
            return ResponseEntity.badRequest().body("비활성화된 계정입니다. 관리자에게 문의하세요.");
        } catch (org.springframework.security.core.userdetails.UsernameNotFoundException e) {
            return ResponseEntity.badRequest().body("존재하지 않는 아이디입니다.");
        } catch (Exception e) {
            return ResponseEntity.badRequest().body("로그인 처리 중 오류가 발생했습니다.");
        }
    }

    // 회원가입 페이지 이동
    @GetMapping("/register")
    public String showRegisterPage(HttpSession session) {
        Boolean agreed = (Boolean) session.getAttribute("termsAgreed");
        if (agreed == null || !agreed) {
            // 약관 동의 안 했으면 /users/terms로 돌려보냄
            return "redirect:/users/terms";
        }
        return "users/register"; // templates/users/register.html
    }

    // 회원가입
    @PostMapping("/register")
    @ResponseBody
    public ResponseEntity<String> register(@RequestBody @Valid UserRegisterDto registerDto) {
        System.out.println("registerDto = " + registerDto.getConfirmPassword());
        userService.register(registerDto);
        return ResponseEntity.ok("회원가입이 완료되었습니다.");
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

    // 약관 동의 페이지
    @GetMapping("/terms")
    public String showTermsPage() {
        return "users/terms"; // templates/users/terms.html
    }

    // 약관 동의 처리
    @PostMapping("/terms/agree")
    @ResponseBody
    public ResponseEntity<String> agreeTerms(HttpSession session) {
        session.setAttribute("termsAgreed", true); // 세션에 동의 여부 저장
        return ResponseEntity.ok("약관 동의 완료");
    }
}
