package com.c3l2.persome.coupon.repository;

import com.c3l2.persome.entity.coupon.UserCoupon;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserCouponRepository extends JpaRepository<UserCoupon, Long> {
}
