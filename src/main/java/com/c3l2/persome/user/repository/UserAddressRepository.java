package com.c3l2.persome.user.repository;

import com.c3l2.persome.user.entity.UserAddress;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface UserAddressRepository extends JpaRepository<UserAddress, Long> {

    /** 사용자 ID로 주소 단건 조회 (여러 개일 경우 기본배송지 우선, 없으면 최신 수정순) */
    Optional<UserAddress> findTop1ByUser_IdOrderByDefaultShippingDescUpdatedAtDesc(Long userId);

    /** 사용자 ID로 주소 모두 조회 */
    List<UserAddress> findAllByUser_IdOrderByDefaultShippingDescUpdatedAtDesc(Long userId);

    Optional<UserAddress> findByIdAndUser_Id(Long id, Long userId);
    /**사용자 ID로 주소 제거*/
    long deleteByIdAndUser_Id(Long id, Long userId);

    @org.springframework.data.jpa.repository.Modifying
    @org.springframework.data.jpa.repository.Query("update UserAddress ua set ua.defaultShipping = false where ua.user.id = :userId and (:excludeId is null or ua.id <> :excludeId)")
    void clearDefaultForUser(@org.springframework.data.repository.query.Param("userId") Long userId,
                             @org.springframework.data.repository.query.Param("excludeId") Long excludeId);
}
