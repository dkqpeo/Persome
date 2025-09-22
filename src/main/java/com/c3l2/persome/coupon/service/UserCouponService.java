package com.c3l2.persome.coupon.service;

import com.c3l2.persome.config.error.ErrorCode;
import com.c3l2.persome.config.error.exceprion.BusinessException;
import com.c3l2.persome.coupon.dto.UserCouponResponseDto;
import com.c3l2.persome.coupon.entity.Coupon;
import com.c3l2.persome.coupon.entity.UserCoupon;
import com.c3l2.persome.coupon.entity.constant.CouponStatus;
import com.c3l2.persome.coupon.entity.constant.DiscountType;
import com.c3l2.persome.coupon.entity.constant.UserCouponStatus;
import com.c3l2.persome.coupon.repository.CouponRepository;
import com.c3l2.persome.coupon.repository.UserCouponRepository;
import com.c3l2.persome.user.entity.User;
import com.c3l2.persome.user.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

@Service
@RequiredArgsConstructor
public class UserCouponService {
    private final UserRepository userRepository;
    private final CouponRepository couponRepository;
    private final UserCouponRepository userCouponRepository;

    //사용자 쿠폰 전체 조회
    public List<UserCouponResponseDto> getUserCoupons(Long userId) {
        return userCouponRepository.findByUserId(userId).stream()
                .map(UserCouponResponseDto::fromEntity)
                .toList();
    }

    //사용 가능한 사용자 쿠폰 조회
    public List<UserCouponResponseDto> getAvailableUserCoupons(Long userId) {
        LocalDateTime now = LocalDateTime.now();
        return userCouponRepository.findByUserIdAndStatus(userId, UserCouponStatus.ISSUED).stream()
                .filter(coupon -> coupon.getExpiredAt().isAfter(now))
                .map(UserCouponResponseDto::fromEntity)
                .toList();
    }

    //쿠폰 발급
    @Transactional
    public UserCouponResponseDto issueUserCoupon(Long userId, Long couponId) {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new BusinessException(ErrorCode.USER_NOT_EXISTS));

        Coupon coupon = couponRepository.findById(couponId)
                .orElseThrow(() -> new BusinessException(ErrorCode.COUPON_NOT_FOUND));

        //쿠폰 상태/기간 체크
        LocalDateTime now = LocalDateTime.now();
        if (coupon.getStatus() != CouponStatus.ACTIVE
                || coupon.getStartDate().isAfter(now)
                || coupon.getEndDate().isBefore(now)) {
            throw new BusinessException(ErrorCode.COUPON_NOT_ACTIVE);
        }

        //발급 제한 체크
        if (coupon.getIssueCount() >= coupon.getLimitIssueCount()) {
            throw new BusinessException(ErrorCode.COUPON_ISSUE_LIMIT_EXCEEDED);
        }

        //중복 발급 체크
        boolean alreadyIssued = userCouponRepository.existsByUserIdAndCouponId(userId, couponId);
        if (alreadyIssued) {
            throw new BusinessException(ErrorCode.COUPON_ALREADY_ISSUED);
        }

        //발급
        UserCoupon userCoupon = UserCoupon.builder()
                .user(user)
                .coupon(coupon)
                .status(UserCouponStatus.ISSUED)
                .createdAt(now)
                .expiredAt(coupon.getEndDate())
                .build();

        userCouponRepository.save(userCoupon);

        //발급 카운트 증가
        coupon.increaseIssueCount();
        couponRepository.save(coupon);

        return UserCouponResponseDto.fromEntity(userCoupon);
    }

    //쿠폰 할인 적용
    public BigDecimal applyCoupon(Long userCouponId, BigDecimal orderPrice) {

        if (userCouponId == null) {
            return orderPrice;
        }

        UserCoupon userCoupon = userCouponRepository.findById(userCouponId)
                .orElseThrow(() -> new BusinessException(ErrorCode.USER_COUPON_NOT_FOUND));

        if (userCoupon.getStatus() != UserCouponStatus.ISSUED) {
            return orderPrice;
        }

        Coupon coupon = userCoupon.getCoupon();
        LocalDateTime now = LocalDateTime.now();

        if (coupon.getStartDate() != null && coupon.getStartDate().isAfter(now)) {
            return orderPrice;
        }
        if (coupon.getEndDate() != null && coupon.getEndDate().isBefore(now)) {
            return orderPrice;
        }

        if (coupon.getMinOrderPrice() != null && orderPrice.compareTo(coupon.getMinOrderPrice()) < 0) {
            return orderPrice;
        }

        BigDecimal discount = BigDecimal.ZERO;
        if (coupon.getDiscountType() == DiscountType.FIXED) {
            discount = coupon.getDiscountValue();
        } else if (coupon.getDiscountType() == DiscountType.RATE) {
            BigDecimal rate = coupon.getDiscountValue().divide(BigDecimal.valueOf(100));
            discount = orderPrice.multiply(rate);
        }

        if (coupon.getMaxDiscountPrice() != null) {
            discount = discount.min(coupon.getMaxDiscountPrice());
        }

        BigDecimal discountedPrice = orderPrice.subtract(discount).max(BigDecimal.ZERO);

        userCoupon.setStatus(UserCouponStatus.USED);
        userCoupon.setUsedAt(now);

        return discountedPrice;
    }

    //쿠폰 복구
    @Transactional
    public void restoreCoupon(UserCoupon userCoupon) {
        if (userCoupon == null) return;

        if (userCoupon.getStatus() == UserCouponStatus.USED) {
            userCoupon.setStatus(UserCouponStatus.ISSUED);
            userCoupon.setUsedAt(null);
            userCouponRepository.save(userCoupon);
        }
    }


}
