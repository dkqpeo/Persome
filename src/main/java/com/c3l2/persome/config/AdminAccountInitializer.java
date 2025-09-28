package com.c3l2.persome.config;

import com.c3l2.persome.membership.entity.MembershipLevel;
import com.c3l2.persome.membership.entity.Name;
import com.c3l2.persome.membership.repository.MembershipLevelRepository;
import com.c3l2.persome.point.entity.UserPoint;
import com.c3l2.persome.user.entity.Status;
import com.c3l2.persome.user.entity.User;
import com.c3l2.persome.user.entity.UserNotification;
import com.c3l2.persome.user.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.event.EventListener;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Slf4j
@Component
@RequiredArgsConstructor
public class AdminAccountInitializer {

    private static final String DEFAULT_ADMIN_LOGIN_ID = "admin";
    private static final String DEFAULT_ADMIN_PASSWORD = "admin";

    private final UserRepository userRepository;
    private final MembershipLevelRepository membershipLevelRepository;
    private final PasswordEncoder passwordEncoder;

    @Transactional
    @EventListener(ApplicationReadyEvent.class)
    public void ensureDefaultAdminAccount() {
        MembershipLevel membershipLevel = resolveDefaultMembershipLevel();

        User admin = userRepository.findByLoginId(DEFAULT_ADMIN_LOGIN_ID)
                .orElseGet(() -> createAdminAccount(membershipLevel));

        admin.updateAdminFlag(true);
        admin.changeStatus(Status.ACTIVE);

        if (admin.getMembershipLevel() == null || !admin.getMembershipLevel().equals(membershipLevel)) {
            admin.updateMembershipLevel(membershipLevel);
        }

        admin.changePassword(passwordEncoder.encode(DEFAULT_ADMIN_PASSWORD));

        if (admin.getUserNotification() == null) {
            admin.addUserNotification(UserNotification.builder()
                    .user(admin)
                    .emailEnabled(true)
                    .smsEnabled(true)
                    .pushEnabled(true)
                    .build());
        }

        if (admin.getUserPoint() == null) {
            admin.initUserPoint(UserPoint.builder()
                    .user(admin)
                    .balance(0)
                    .build());
        }

        userRepository.save(admin);
        log.info("Default admin account [{}] ready.", DEFAULT_ADMIN_LOGIN_ID);
    }

    private MembershipLevel resolveDefaultMembershipLevel() {
        return membershipLevelRepository.findByName(Name.BABY)
                .orElseGet(() -> membershipLevelRepository.findAll().stream().findFirst()
                        .orElseThrow(() -> new IllegalStateException("No membership level configured for admin account.")));
    }

    private User createAdminAccount(MembershipLevel membershipLevel) {

        User admin = User.builder()
                .membershipLevel(membershipLevel)
                .loginId(DEFAULT_ADMIN_LOGIN_ID)
                .password(passwordEncoder.encode(DEFAULT_ADMIN_PASSWORD))
                .name("관리자")
                .email("admin@persome.com")
                .status(Status.ACTIVE)
                .isAdmin(true)
                .build();

        UserNotification notification = UserNotification.builder()
                .user(admin)
                .emailEnabled(true)
                .smsEnabled(true)
                .pushEnabled(true)
                .build();
        admin.addUserNotification(notification);

        UserPoint userPoint = UserPoint.builder()
                .user(admin)
                .balance(0)
                .build();
        admin.initUserPoint(userPoint);

        userRepository.save(admin);
        log.info("Default admin account [{}] created.", DEFAULT_ADMIN_LOGIN_ID);
        return admin;
    }
}
