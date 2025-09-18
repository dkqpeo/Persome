package com.c3l2.persome.user.repository;

import com.c3l2.persome.user.entity.UserAddress;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserAddressRepository extends JpaRepository<UserAddress, Long> {

    Optional<UserAddress> findByIdAndUser_Id(Long id, Long userId);

    long deleteByIdAndUser_Id(Long id, Long userId);
}