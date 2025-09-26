package com.c3l2.persome.admin.controller;

import com.c3l2.persome.admin.dto.AdminUserGradeUpdateRequest;
import com.c3l2.persome.admin.dto.AdminUserResponse;
import com.c3l2.persome.admin.dto.AdminUserRoleUpdateRequest;
import com.c3l2.persome.admin.service.AdminUserService;
import com.c3l2.persome.config.error.ErrorCode;
import com.c3l2.persome.config.error.exceprion.BusinessException;
import com.c3l2.persome.user.entity.Status;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Locale;

@RestController
@RequiredArgsConstructor
@RequestMapping("/admin/users")
public class AdminUserController {

    private final AdminUserService adminUserService;

    @GetMapping
    public List<AdminUserResponse> getUsers(@RequestParam(value = "status", required = false) String status) {
        if (status == null || status.isBlank()) {
            return adminUserService.getAllUsers();
        }

        Status userStatus = parseStatus(status);
        return adminUserService.getUsersByStatus(userStatus);
    }

    @PatchMapping("/{id}/grade")
    public ResponseEntity<Void> updateUserGrade(@PathVariable Long id,
                                                @Valid @RequestBody AdminUserGradeUpdateRequest request) {
        adminUserService.updateUserGrade(id, request.membershipLevel());
        return ResponseEntity.noContent().build();
    }

    @PatchMapping("/{id}/role")
    public ResponseEntity<Void> updateUserRole(@PathVariable Long id,
                                               @Valid @RequestBody AdminUserRoleUpdateRequest request) {
        adminUserService.updateUserRole(id, request.admin());
        return ResponseEntity.noContent().build();
    }

    private Status parseStatus(String status) {
        try {
            return Status.valueOf(status.trim().toUpperCase(Locale.ROOT));
        } catch (IllegalArgumentException | NullPointerException ex) {
            throw new BusinessException(ErrorCode.INVALID_USER_STATUS);
        }
    }
}
