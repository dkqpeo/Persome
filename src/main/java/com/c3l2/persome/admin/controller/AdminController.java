package com.c3l2.persome.admin.controller;

import com.c3l2.persome.admin.dto.AdminUserGradeUpdateRequest;
import com.c3l2.persome.admin.dto.AdminUserResponse;
import com.c3l2.persome.admin.dto.AdminUserRoleUpdateRequest;
import com.c3l2.persome.admin.service.AdminUserService;
import com.c3l2.persome.common.ApiResponse;
import jakarta.validation.Valid;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("/admin")
public class AdminController {

    private final AdminUserService adminUserService;

    @PreAuthorize("hasRole('ADMIN')")
    @GetMapping
    public ResponseEntity<ApiResponse<List<AdminUserResponse>>> getUsers() {
        return ApiResponse.ok("회원 목록 조회 성공", adminUserService.getAllUsers());
    }

    @PreAuthorize("hasRole('ADMIN')")
    @GetMapping("/dormant")
    public ResponseEntity<ApiResponse<List<AdminUserResponse>>> getDormantUsers() {
        return ApiResponse.ok("휴면 회원 목록 조회 성공", adminUserService.getDormantUsers());
    }

    @PreAuthorize("hasRole('ADMIN')")
    @PatchMapping("/{id}/grade")
    public ResponseEntity<Void> changeUserGrade(@PathVariable Long id,
                                               @Valid @RequestBody AdminUserGradeUpdateRequest request) {
        adminUserService.updateUserGrade(id, request.membershipLevel());
        return ResponseEntity.noContent().build();
    }

    @PreAuthorize("hasRole('ADMIN')")
    @PatchMapping("/{id}/role")
    public ResponseEntity<Void> changeUserRole(@PathVariable Long id,
                                              @Valid @RequestBody AdminUserRoleUpdateRequest request) {
        adminUserService.updateUserRole(id, request.admin());
        return ResponseEntity.noContent().build();
    }
}
