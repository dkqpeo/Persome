package com.c3l2.persome.user.service;

import com.c3l2.persome.user.dto.AddressRequest;
import com.c3l2.persome.user.dto.AddressResponse;
import com.c3l2.persome.user.entity.User;
import com.c3l2.persome.user.entity.UserAddress;
import com.c3l2.persome.user.repository.UserAddressRepository;
import com.c3l2.persome.user.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class AddressService {
    private final UserAddressRepository userAddressRepository;

    @Transactional
    public AddressResponse updateAddress(Long userId, Long addressId, AddressRequest req) {
        UserAddress old = userAddressRepository.findByIdAndUserId(addressId, userId)
                .orElseThrow(() -> new IllegalArgumentException("주소가 없거나 권한이 없습니다."));

        UserAddress updated = patch(old, req);

        return AddressResponse.from(userAddressRepository.save(updated));
    }

    @Transactional
    public void deleteAddress(Long userId, Long addressId) {
        long deleted = userAddressRepository.deleteByIdAndUserId(addressId, userId);
        if (deleted == 0) {
            throw new IllegalArgumentException("주소가 없거나 권한이 없습니다.");
        }
    }

    private UserAddress patch(UserAddress old, AddressRequest req) {
        return UserAddress.builder()
                .id(old.getId())
                .user(old.getUser())
                .label(req.getLabel() != null ? req.getLabel() : old.getLabel())
                .zip(req.getZip() != null ? req.getZip() : old.getZip())
                .roadAddr(req.getRoadAddr() != null ? req.getRoadAddr() : old.getRoadAddr())
                .jibunAddr(req.getJibunAddr() != null ? req.getJibunAddr() : old.getJibunAddr())
                .addrDetail(req.getAddrDetail() != null ? req.getAddrDetail() : old.getAddrDetail())
                .defaultShipping(req.getDefaultShipping() != null ? req.getDefaultShipping() : old.getDefaultShipping())
                .createdAt(old.getCreatedAt())
                .build();
    }
    private final UserAddressRepository UserAddressRepository;
    private final UserRepository userRepository;

    // 주소 조회
    public AddressResponse getAddress(Long userId) {
        UserAddress address = UserAddressRepository.findByUserId(userId);
        if (address == null) {
            throw new IllegalArgumentException("Address not found for userId: " + userId);
        }

        // UserAddress를 JOJOAddressResponse로 변환하여 반환
        return AddressResponse.from(address);
    }

    // 주소 추가
    public AddressResponse addToAddress(Long userId, AddressRequest request) {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new IllegalArgumentException("User not found with userId: " + userId));

        // 최소 필드만 매핑하여 저장 (요청 DTO에 address 문자열만 존재)
        UserAddress userAddress = UserAddress.builder()
                .user(user)
                .label(request.getLabel())
                .zip(request.getZip())
                .roadAddr(request.getRoadAddr())
                .jibunAddr(request.getJibunAddr())
                .addrDetail(request.getAddrDetail())
                .defaultShipping(request.getIsDefaultShipping())
                .build();

        UserAddressRepository.save(userAddress);

        // 주소가 추가된 후, JOJOAddressResponse로 변환하여 반환
        return AddressResponse.from(userAddress);
    }

}