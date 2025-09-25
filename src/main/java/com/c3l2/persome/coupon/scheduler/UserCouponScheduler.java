package com.c3l2.persome.coupon.scheduler;

import com.c3l2.persome.coupon.entity.UserCoupon;
import com.c3l2.persome.coupon.entity.constant.UserCouponStatus;
import com.c3l2.persome.coupon.repository.UserCouponRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.List;

@Service
@RequiredArgsConstructor
public class UserCouponScheduler {

    private final UserCouponRepository userCouponRepository;

    // 매일 새벽 3시에 만료된 쿠폰 처리
    @Scheduled(cron = "0 0 3 * * *")
    @Transactional
    public void expireUserCoupons() {
        LocalDateTime now = LocalDateTime.now();

        List<UserCoupon> expiredCoupons =
                userCouponRepository.findByStatusAndExpiredAtBefore(UserCouponStatus.ISSUED, now);

        expiredCoupons.forEach(UserCoupon::markAsExpired);

        userCouponRepository.saveAll(expiredCoupons);
    }
}
