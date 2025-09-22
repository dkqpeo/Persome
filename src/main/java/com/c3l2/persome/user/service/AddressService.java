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
import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class AddressService {
    private final UserAddressRepository userAddressRepository;

    @Transactional
    public AddressResponse updateAddress(Long userId, Long addressId, AddressRequest req) {
        UserAddress old = userAddressRepository.findByIdAndUser_Id(addressId, userId)
                .orElseThrow(() -> new IllegalArgumentException("주소가 없거나 권한이 없습니다."));

        if (Boolean.TRUE.equals(req.getIsdefaultShipping())) {
            userAddressRepository.clearDefaultForUser(userId, old.getId());
        }

        UserAddress updated = patch(old, req);

        return AddressResponse.from(userAddressRepository.save(updated));
    }

    @Transactional
    public void deleteAddress(Long userId, Long addressId) {
        long deleted = userAddressRepository.deleteByIdAndUser_Id(addressId, userId);
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
                .defaultShipping(req.getIsdefaultShipping() != null ? req.getIsdefaultShipping(): old.getDefaultShipping())
                .createdAt(old.getCreatedAt())
                .build();
    }
    private final UserRepository userRepository;

    // 주소 조회
    public AddressResponse getAddress(Long userId) {
        UserAddress address = userAddressRepository
                .findTop1ByUser_IdOrderByDefaultShippingDescUpdatedAtDesc(userId)
                .orElseThrow(() -> new IllegalArgumentException("Address not found for userId: " + userId));

        return AddressResponse.from(address);
    }

    // 다건 조회
    @Transactional(readOnly = true)
    public List<AddressResponse> getAddresses(Long userId) {
        return userAddressRepository.findAllByUser_IdOrderByDefaultShippingDescUpdatedAtDesc(userId)
                .stream().map(AddressResponse::from).collect(Collectors.toList());
    }

    // 주소 추가
    @Transactional
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
                .defaultShipping(request.getIsdefaultShipping())
                .build();

        if (Boolean.TRUE.equals(request.getIsdefaultShipping())) {
            userAddressRepository.clearDefaultForUser(userId, null);
        }

        UserAddress saved = userAddressRepository.save(userAddress);
        return AddressResponse.from(saved);
    }

}
