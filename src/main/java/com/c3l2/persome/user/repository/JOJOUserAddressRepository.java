package com.c3l2.persome.user.repository;

import com.c3l2.persome.user.entity.UserAddress;
import org.springframework.data.jpa.repository.JpaRepository;

public interface JOJOUserAddressRepository extends JpaRepository<UserAddress, Long> {

    // 사용자 ID로 주소 조회
    UserAddress findByUserId(Long userId);
}