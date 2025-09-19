package com.c3l2.persome.user.service;

import com.c3l2.persome.user.dto.AddressRequest;
import com.c3l2.persome.user.dto.AddressResponse;
import com.c3l2.persome.user.entity.UserAddress;
import com.c3l2.persome.user.repository.UserAddressRepository;
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
}