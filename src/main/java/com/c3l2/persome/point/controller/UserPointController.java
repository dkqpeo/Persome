package com.c3l2.persome.point.controller;

import com.c3l2.persome.point.dto.UserPointResponseDto;
import com.c3l2.persome.point.service.UserPointService;
import com.c3l2.persome.user.security.CustomUserDetails;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/users/me")
@RequiredArgsConstructor
public class UserPointController {
    private final UserPointService userPointService;

    @GetMapping("/points")
    public ResponseEntity<UserPointResponseDto> getMyPoints(@AuthenticationPrincipal CustomUserDetails userDetails) {
        UserPointResponseDto responseDto = userPointService.getMyPoint(userDetails.getId());

        return ResponseEntity.ok(responseDto);
    }
}
