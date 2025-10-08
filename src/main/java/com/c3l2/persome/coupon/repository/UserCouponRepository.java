package com.c3l2.persome.coupon.repository;

import com.c3l2.persome.coupon.entity.UserCoupon;
import com.c3l2.persome.coupon.entity.constant.UserCouponStatus;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.time.LocalDateTime;
import java.util.List;

public interface UserCouponRepository extends JpaRepository<UserCoupon, Long>, JpaSpecificationExecutor<UserCoupon> {
    boolean existsByUserIdAndCouponId(Long userId, Long couponId);
    List<UserCoupon> findByUserId(Long userId);
    List<UserCoupon> findByUserIdAndStatus(Long userId, UserCouponStatus status);
    List<UserCoupon> findByStatusAndExpiredAtBefore(UserCouponStatus status, LocalDateTime now); //쿠폰 스케쥴러
}
