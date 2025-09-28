package com.c3l2.persome.admin.service;

import com.c3l2.persome.admin.dto.AdminUserResponse;
import com.c3l2.persome.config.error.ErrorCode;
import com.c3l2.persome.config.error.exceprion.BusinessException;
import com.c3l2.persome.membership.entity.MembershipLevel;
import com.c3l2.persome.membership.entity.Name;
import com.c3l2.persome.membership.repository.MembershipLevelRepository;
import com.c3l2.persome.user.entity.Status;
import com.c3l2.persome.user.entity.User;
import com.c3l2.persome.user.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Locale;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class AdminUserService {

    private final UserRepository userRepository;
    private final MembershipLevelRepository membershipLevelRepository;

    public List<AdminUserResponse> getAllUsers() {
        return userRepository.findAll().stream()
                .map(AdminUserResponse::from)
                .toList();
    }

    public List<AdminUserResponse> getUsersByStatus(Status status) {
        return userRepository.findByStatus(status).stream()
                .map(AdminUserResponse::from)
                .toList();
    }

    @Transactional
    public void updateUserGrade(String loginId, String newGrade) {
        User user = userRepository.findByLoginId(loginId)
                .orElseThrow(() -> new BusinessException(ErrorCode.USER_NOT_EXISTS));

        Name membershipName = parseMembershipName(newGrade);
        MembershipLevel membershipLevel = membershipLevelRepository.findByName(membershipName)
                .orElseThrow(() -> new BusinessException(ErrorCode.INVALID_MEMBERSHIP_LEVEL));

        user.updateMembershipLevel(membershipLevel);
    }

    @Transactional
    public void updateUserRole(String loginId, boolean isAdmin) {
        User user = userRepository.findByLoginId(loginId)
                .orElseThrow(() -> new BusinessException(ErrorCode.USER_NOT_EXISTS));

        user.updateAdminFlag(isAdmin);
    }

    @Transactional(readOnly = true)
    public List<AdminUserResponse> getDormantUsers() {
        return getUsersByStatus(Status.DORMANT);
    }

    private Name parseMembershipName(String grade) {
        try {
            return Name.valueOf(grade.trim().toUpperCase(Locale.ROOT));
        } catch (IllegalArgumentException | NullPointerException ex) {
            throw new BusinessException(ErrorCode.INVALID_MEMBERSHIP_LEVEL);
        }
    }
}
