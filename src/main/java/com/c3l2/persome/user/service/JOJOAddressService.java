package com.c3l2.persome.user.service;

import com.c3l2.persome.user.dto.JOJOAddressRequest;
import com.c3l2.persome.user.dto.JOJOAddressResponse; // 응답 DTO 추가
import com.c3l2.persome.user.entity.User;
import com.c3l2.persome.user.entity.UserAddress;
import com.c3l2.persome.user.repository.JOJOUserAddressRepository;
import com.c3l2.persome.user.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class JOJOAddressService {

    private final JOJOUserAddressRepository jojoUserAddressRepository;
    private final UserRepository userRepository;

    // 주소 조회
    public JOJOAddressResponse getAddress(Long userId) {
        UserAddress address = jojoUserAddressRepository.findByUserId(userId);
        if (address == null) {
            throw new IllegalArgumentException("Address not found for userId: " + userId);
        }

        // UserAddress를 JOJOAddressResponse로 변환하여 반환
        return JOJOAddressResponse.from(address);
    }

    // 주소 추가
    public JOJOAddressResponse addToAddress(Long userId, JOJOAddressRequest request) {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new IllegalArgumentException("User not found with userId: " + userId));

        // 최소 필드만 매핑하여 저장 (요청 DTO에 address 문자열만 존재)
        UserAddress userAddress = UserAddress.builder()
                .user(user)
                .roadAddr(request.getAddress())
                .defaultShipping(false)
                .build();

        jojoUserAddressRepository.save(userAddress);

        // 주소가 추가된 후, JOJOAddressResponse로 변환하여 반환
        return JOJOAddressResponse.from(userAddress);
    }
}