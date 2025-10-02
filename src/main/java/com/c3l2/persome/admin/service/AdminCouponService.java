package com.c3l2.persome.admin.service;

import com.c3l2.persome.admin.dto.AdminCouponRequest;
import com.c3l2.persome.config.error.ErrorCode;
import com.c3l2.persome.config.error.exceprion.BusinessException;
import com.c3l2.persome.coupon.dto.CouponDto;
import com.c3l2.persome.coupon.entity.Coupon;
import com.c3l2.persome.coupon.entity.constant.CouponStatus;
import com.c3l2.persome.coupon.entity.constant.DiscountType;
import com.c3l2.persome.coupon.repository.CouponRepository;
import com.c3l2.persome.event.entity.Event;
import com.c3l2.persome.event.repository.EventRepository;
import java.time.LocalDateTime;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class AdminCouponService {

    private final CouponRepository couponRepository;
    private final EventRepository eventRepository;

    @Transactional
    public CouponDto createCoupon(AdminCouponRequest request) {
        CouponStatus status = parseStatus(request.status());
        DiscountType discountType = parseDiscountType(request.discountType());
        validateIssueLimit(request.limitIssueCount());
        validateSchedule(request.startDate(), request.endDate());

        Event event = resolveEvent(request.eventId());

        Coupon coupon = Coupon.builder()
                .name(request.name().trim())
                .code(request.code().trim())
                .discountType(discountType)
                .discountValue(request.discountValue())
                .minOrderPrice(request.minOrderPrice())
                .maxDiscountPrice(request.maxDiscountPrice())
                .limitIssueCount(request.limitIssueCount())
                .issueCount(0)
                .usedCount(0)
                .startDate(request.startDate())
                .endDate(request.endDate())
                .status(status)
                .event(event)
                .build();

        Coupon saved = couponRepository.save(coupon);
        return CouponDto.fromEntity(saved);
    }

    private Event resolveEvent(Long eventId) {
        if (eventId == null) {
            return null;
        }
        return eventRepository.findById(eventId)
                .orElseThrow(() -> new BusinessException(ErrorCode.EVENT_NOT_FOUND));
    }

    private CouponStatus parseStatus(String status) {
        try {
            return CouponStatus.of(status.trim().toUpperCase());
        } catch (IllegalArgumentException | NullPointerException ex) {
            throw new BusinessException(ErrorCode.COUPON_STATUS_INVALID);
        }
    }

    private DiscountType parseDiscountType(String discountType) {
        try {
            return DiscountType.of(discountType.trim().toUpperCase());
        } catch (IllegalArgumentException | NullPointerException ex) {
            throw new BusinessException(ErrorCode.COUPON_DISCOUNT_TYPE_INVALID);
        }
    }

    private void validateIssueLimit(Integer limitIssueCount) {
        if (limitIssueCount == null || limitIssueCount < 1) {
            throw new BusinessException(ErrorCode.COUPON_LIMIT_INVALID);
        }
    }

    private void validateSchedule(LocalDateTime startDate, LocalDateTime endDate) {
        if (startDate == null || endDate == null) {
            return;
        }
        if (endDate.isBefore(startDate)) {
            throw new BusinessException(ErrorCode.COUPON_PERIOD_INVALID);
        }
    }
}
