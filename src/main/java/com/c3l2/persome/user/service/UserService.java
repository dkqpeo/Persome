package com.c3l2.persome.user.service;

import com.c3l2.persome.config.error.ErrorCode;
import com.c3l2.persome.config.error.exceprion.BusinessException;
import com.c3l2.persome.membership.entity.MembershipLevel;
import com.c3l2.persome.membership.entity.Name;
import com.c3l2.persome.point.entity.UserPoint;
import com.c3l2.persome.user.entity.*;
import com.c3l2.persome.membership.repository.MembershipLevelRepository;
import com.c3l2.persome.user.dto.*;
import com.c3l2.persome.user.repository.UserConsentRepository;
import com.c3l2.persome.user.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class UserService {

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
    private final MembershipLevelRepository membershipLevelRepository;
    private final UserConsentRepository userConsentRepository;
    //private final EmailService emailService;

    // 로그인
    public User login(UserLoginDto loginDto) {
        User user = userRepository.findByLoginId(loginDto.getLoginId())
                .orElseThrow(() -> new BusinessException(ErrorCode.USER_NOT_EXISTS));

        if (!passwordEncoder.matches(loginDto.getPassword(), user.getPassword())) {
            throw new BusinessException(ErrorCode.NOT_EQUAL_PASSWORD);
        }

        // 상태별 분기
        if (user.getStatus() == Status.WITHDRAWN) {
            throw new BusinessException(ErrorCode.WITHDRAWN_USER);
        }

        if (user.getStatus() == Status.DORMANT) {
            // 휴면 상태 → 휴면 해제 페이지로 유도
            throw new BusinessException(ErrorCode.DORMANT_USER);
        }

        // 정상 회원일 경우 로그인 허용
        // null 이거나 1일 이상 차이날 때 update
        if (user.getLastLoginAt() == null || user.getLastLoginAt().isBefore(LocalDateTime.now().minusDays(1))) {
            user.updateLastLoginAt();
        }
        return userRepository.save(user);
    }

    // 회원가입
    @Transactional
    public void register(UserRegisterDto dto) {
        if (checkLoginId(dto.getLoginId())) {
            throw new BusinessException(ErrorCode.ALREADY_REGISTERED_USER);
        }

        if (userRepository.existsByEmail(dto.getEmail())) {
            throw new BusinessException(ErrorCode.ALREADY_EXISTS__EMAIL);
        }

        if (!dto.getPassword().equals(dto.getConfirmPassword())) {
            throw new BusinessException(ErrorCode.NOT_EQUAL_PASSWORD);
        }

        // 기본 MembershipLevel = BABY
        MembershipLevel defaultLevel = membershipLevelRepository.findByName(Name.BABY)
                .orElseThrow(() -> new BusinessException(ErrorCode.DEFAULT_MEMBERSHIP_NOT_FOUND));

        User user = dto.toEntity(passwordEncoder, defaultLevel);

        // 주소
        UserAddress address = UserAddress.builder()
                .user(user)
                .zip(dto.getZip())
                .roadAddr(dto.getRoadAddr())
                .addrDetail(dto.getAddrDetail())
                .defaultShipping(true)
                .build();
        user.getUserAddresses().add(address);

        // 약관 동의
        if (dto.getConsents() != null) {
            for (UserConsentDto userConsentDto : dto.getConsents()) {
                UserConsent consent = UserConsent.builder()
                        .policyCode(PolicyCode.valueOf(userConsentDto.getPolicyCode()))
                        .isAgreed(userConsentDto.isAgreed())
                        .user(user)
                        .build();
                user.getUserConsents().add(consent);
            }
        }

        // 알림 설정
        UserNotification notification = UserNotification.builder()
                .user(user)
                .emailEnabled(Boolean.TRUE.equals(dto.getEmailEnabled()))
                .smsEnabled(Boolean.TRUE.equals(dto.getSmsEnabled()))
                .pushEnabled(Boolean.TRUE.equals(dto.getPushEnabled()))
                .build();
        user.addUserNotification(notification);

        // 포인트 초기화
        UserPoint userPoint = UserPoint.builder()
                .user(user)
                .balance(0) // 가입 시 기본 포인트 0
                .build();
        user.initUserPoint(userPoint);

        // 저장 (cascade 때문에 전부 같이 저장됨)
        userRepository.save(user);
    }

    // 1년이상 로그인 안 할 시 휴면계정으로 전환
    @Transactional
    public void deactivateDormantUsers() {
        LocalDateTime cutoff = LocalDateTime.now().minusMonths(12);
        List<User> users = userRepository.findByStatusAndLastLoginAtBefore(Status.ACTIVE, cutoff);

        for (User user : users) {
            user.changeStatus(Status.DORMANT);
        }
    }

    // 아이디 중복 확인
    public boolean checkLoginId(String loginId) {
        return userRepository.existsByLoginId(loginId);
    }

    // 알람설정
    @Transactional
    public UserNotificationDto updateUserNotifications(Long userId, UserNotificationDto dto) {
        User user = userRepository.findById(userId).orElseThrow(() -> new BusinessException(ErrorCode.USER_NOT_EXISTS));

        UserNotification notification = user.getUserNotification();
        if (notification == null) {
            throw new BusinessException(ErrorCode.USER_NOTIFICATION_NOT_FOUND);
        }

        if (dto.getEmailEnabled() != null) {
            notification.updateEmail(dto.getEmailEnabled());
        }
        if (dto.getSmsEnabled() != null) {
            notification.updateSms(dto.getSmsEnabled());
        }
        if (dto.getPushEnabled() != null) {
            notification.updatePush(dto.getPushEnabled());
        }

        return new UserNotificationDto(
                notification.isEmailEnabled(),
                notification.isSmsEnabled(),
                notification.isPushEnabled()
        );
    }

    // 회원 정보 조회
    public UserResponseDto getUser(Long userId) {
        User user = userRepository.findById(userId).orElseThrow(() -> new BusinessException(ErrorCode.USER_NOT_EXISTS));

        return UserResponseDto.fromEntity(user, user.getUserNotification());
    }

    // 회원 정보 수정
    @Transactional
    public UserResponseDto updateUser(Long userId, UserUpdateDto dto) {
        User user = userRepository.findById(userId).orElseThrow(() -> new BusinessException(ErrorCode.USER_NOT_EXISTS));

        user.updateFromDto(dto);

        return UserResponseDto.fromEntity(user, user.getUserNotification());
    }

    // 비밀번호 변경
    @Transactional
    public void updatePassword(Long userId, UserPasswordUpdateDto dto) {
        User user = userRepository.findById(userId).orElseThrow(() -> new BusinessException(ErrorCode.USER_NOT_EXISTS));

        if (!passwordEncoder.matches(dto.getOldPassword(), user.getPassword())) {
            throw new BusinessException(ErrorCode.NOT_EQUAL_PASSWORD);
        }

        user.changePassword(passwordEncoder.encode(dto.getNewPassword()));
    }

    // 회원 탈퇴
    @Transactional
    public void deleteUser(Long userId) {
        User user = userRepository.findById(userId).orElseThrow(() -> new BusinessException(ErrorCode.USER_NOT_EXISTS));
        user.changeStatus(Status.WITHDRAWN);
    }

    // 시큐리티용 로딩 로직
    @Transactional(readOnly = true)
    public User findByLoginIdOrThrow(String loginId) {
        User user = userRepository.findByLoginId(loginId).orElseThrow(() -> new BusinessException(ErrorCode.USER_NOT_EXISTS));

        if (user.getStatus() == Status.WITHDRAWN)
            throw new BusinessException(ErrorCode.WITHDRAWN_USER);

        if (user.getStatus() == Status.DORMANT)
            throw new BusinessException(ErrorCode.DORMANT_USER);

        return user;
    }

    // 약관동의 저장
    @Transactional
    public void saveUserConsents(Long userId, List<UserConsentDto> consents) {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new BusinessException(ErrorCode.USER_NOT_EXISTS));

        for (UserConsentDto dto : consents) {
            PolicyCode code = PolicyCode.valueOf(dto.getPolicyCode());

            UserConsent consent = UserConsent.builder()
                    .user(user)
                    .policyCode(code)
                    .isAgreed(dto.isAgreed())
                    .build();

            userConsentRepository.save(consent);
        }
    }

    // 아이디 찾기
    public String findIdByNameAndEmail(String name, String email) {
        User user = userRepository.findByNameAndEmail(name, email)
                .orElseThrow(() -> new BusinessException(ErrorCode.NOT_EXISTS_USER));
        return user.getLoginId();
    }

    // 비밀번호 임시 발급
    public String resetPassword(String loginId, String email) {
        User user = userRepository.findByLoginIdAndEmail(loginId, email)
                .orElseThrow(() -> new BusinessException(ErrorCode.USER_NOT_EXISTS));

        // 임시 비밀번호 생성
        String tempPassword = generateTempPassword();

        // 🔥 지금은 주석 처리 (나중에 메일 발송 기능 붙일 때 활성화)
        // user.setPassword(passwordEncoder.encode(tempPassword));
        // userRepository.save(user);
        // emailService.sendPasswordEmail(user.getEmail(), tempPassword);

        // 지금은 단순 안내 문구만 반환
        return "임시 비밀번호를 이메일로 발송했습니다.";
    }

    private String generateTempPassword() {
        return UUID.randomUUID().toString().substring(0, 8);
    }
}
