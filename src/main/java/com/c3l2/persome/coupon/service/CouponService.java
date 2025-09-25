package com.c3l2.persome.coupon.service;

import com.c3l2.persome.coupon.repository.CouponRepository;
import com.c3l2.persome.coupon.dto.CouponDto;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class CouponService {
    private final CouponRepository couponRepository;

    //이벤트 쿠폰 목록
    public List<CouponDto> getCouponsByEvent(Long eventId) {
        return couponRepository.findByEventId(eventId).stream()
                .map(CouponDto::fromEntity)
                .toList();
    }

    //등급별 쿠폰 조회
    public List<CouponDto> getMembershipCoupons(String level) {
        return couponRepository.findByNameContaining(level).stream()
                .map(CouponDto::fromEntity)
                .toList();
    }
}
