package com.c3l2.persome.coupon.service;

import com.c3l2.persome.coupon.entity.Coupon;
import com.c3l2.persome.coupon.repository.CouponRepository;
import com.c3l2.persome.coupon.dto.CouponDto;
import com.c3l2.persome.coupon.repository.UserCouponRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class CouponService {
    private final CouponRepository couponRepository;
    private final UserCouponRepository userCouponRepository;

    //이벤트 쿠폰 목록
    public List<CouponDto> getCouponsByEvent(Long eventId) {
        return couponRepository.findByEventId(eventId).stream()
                .map(CouponDto::fromEntity)
                .toList();
    }

    //등급별 쿠폰 조회
    public List<CouponDto> getMembershipCoupons(Long userId, String level) {
        List<Coupon> coupons = couponRepository.findByNameContaining(level);

        return coupons.stream()
                .map(c -> {
                    boolean issued = userCouponRepository.existsByUserIdAndCouponId(userId, c.getId());
                    return CouponDto.fromEntityWithIssued(c, issued);
                })
                .toList();
    }
}
