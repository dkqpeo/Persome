package com.c3l2.persome.user.repository;

import com.c3l2.persome.user.entity.UserAddress;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UserAddressRepository extends JpaRepository<UserAddress, Long> {

    /** 사용자 ID로 주소 조회*/
    UserAddress findByUserId(Long userId);
    Optional<UserAddress> findByIdAndUserId(Long id, Long userId);
    /**사용자 ID로 주소 제거*/
    long deleteByIdAndUserId(Long id, Long userId);
}