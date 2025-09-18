package com.c3l2.persome.coupon.repository;

import com.c3l2.persome.coupon.entity.Coupon;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CouponRepository extends JpaRepository<Coupon, Long> {
    List<Coupon> findByEventId(Long eventId); //이벤트 아이디로 쿠폰 찾기
}
