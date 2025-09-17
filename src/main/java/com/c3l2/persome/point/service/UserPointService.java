package com.c3l2.persome.point.service;

import com.c3l2.persome.entity.user.User;
import com.c3l2.persome.point.dto.UserPointResponseDto;
import com.c3l2.persome.user.repository.UserRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserPointService {
    private final UserRepository userRepository;

    public UserPointService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    // 포인트 조회
    @Transactional(readOnly = true)
    public UserPointResponseDto getMyPoint(Long userId) {
        User user = userRepository.findById(userId).orElseThrow(() -> new IllegalArgumentException("존재하지 않는 회원입니다"));

        return UserPointResponseDto.fromEntity(user, user.getUserPoint());
    }
}
