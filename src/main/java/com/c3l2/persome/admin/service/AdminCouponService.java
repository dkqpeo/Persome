package com.c3l2.persome.admin.service;

import com.c3l2.persome.admin.dto.AdminCouponIssueRequest;
import com.c3l2.persome.admin.dto.AdminCouponPageResponse;
import com.c3l2.persome.admin.dto.AdminCouponRequest;
import com.c3l2.persome.admin.dto.AdminCouponResponse;
import com.c3l2.persome.admin.dto.AdminIssuedCouponPageResponse;
import com.c3l2.persome.admin.dto.AdminIssuedCouponResponse;
import com.c3l2.persome.config.error.ErrorCode;
import com.c3l2.persome.config.error.exceprion.BusinessException;
import com.c3l2.persome.coupon.dto.CouponDto;
import com.c3l2.persome.coupon.entity.Coupon;
import com.c3l2.persome.coupon.entity.constant.CouponStatus;
import com.c3l2.persome.coupon.entity.constant.DiscountType;
import com.c3l2.persome.coupon.entity.constant.UserCouponStatus;
import com.c3l2.persome.coupon.repository.CouponRepository;
import com.c3l2.persome.coupon.repository.UserCouponRepository;
import com.c3l2.persome.coupon.service.UserCouponService;
import com.c3l2.persome.coupon.dto.UserCouponResponseDto;
import com.c3l2.persome.coupon.entity.UserCoupon;
import com.c3l2.persome.event.entity.Event;
import com.c3l2.persome.event.repository.EventRepository;
import com.c3l2.persome.user.entity.User;
import com.c3l2.persome.user.repository.UserRepository;
import jakarta.persistence.criteria.Join;
import jakarta.persistence.criteria.JoinType;
import jakarta.persistence.criteria.Predicate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class AdminCouponService {

    private final CouponRepository couponRepository;
    private final EventRepository eventRepository;
    private final UserRepository userRepository;
    private final UserCouponService userCouponService;
    private final UserCouponRepository userCouponRepository;

    public AdminCouponPageResponse getCoupons(
            int page,
            int size,
            String keyword,
            String status
    ) {
        Pageable pageable = PageRequest.of(Math.max(page, 0), Math.max(size, 1), Sort.by(Sort.Direction.DESC, "createdAt"));
        Specification<Coupon> specification = buildCouponSpecification(keyword, status);
        Page<AdminCouponResponse> couponPage = couponRepository.findAll(specification, pageable)
                .map(AdminCouponResponse::from);

        return AdminCouponPageResponse.builder()
                .coupons(couponPage.getContent())
                .page(couponPage.getNumber())
                .size(couponPage.getSize())
                .totalElements(couponPage.getTotalElements())
                .totalPages(couponPage.getTotalPages())
                .hasNext(couponPage.hasNext())
                .hasPrevious(couponPage.hasPrevious())
                .build();
    }

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

    @Transactional
    public AdminIssuedCouponResponse issueCoupon(AdminCouponIssueRequest request) {
        String loginId = request.loginId().trim();
        User user = userRepository.findByLoginId(loginId)
                .orElseThrow(() -> new BusinessException(ErrorCode.USER_NOT_EXISTS));

        UserCouponResponseDto issued = userCouponService.issueUserCoupon(user.getId(), request.couponId());
        UserCoupon userCoupon = userCouponRepository.findById(issued.getUserCouponId())
                .orElseThrow(() -> new BusinessException(ErrorCode.USER_COUPON_NOT_FOUND));

        return AdminIssuedCouponResponse.from(userCoupon);
    }

    public AdminIssuedCouponPageResponse getIssuedCoupons(
            int page,
            int size,
            String loginId,
            String couponKeyword,
            String status
    ) {
        Pageable pageable = PageRequest.of(Math.max(page, 0), Math.max(size, 1), Sort.by(Sort.Direction.DESC, "createdAt"));
        Specification<UserCoupon> specification = buildIssuedCouponSpecification(loginId, couponKeyword, status);
        Page<AdminIssuedCouponResponse> issuedPage = userCouponRepository.findAll(specification, pageable)
                .map(AdminIssuedCouponResponse::from);

        return AdminIssuedCouponPageResponse.builder()
                .issuedCoupons(issuedPage.getContent())
                .page(issuedPage.getNumber())
                .size(issuedPage.getSize())
                .totalElements(issuedPage.getTotalElements())
                .totalPages(issuedPage.getTotalPages())
                .hasNext(issuedPage.hasNext())
                .hasPrevious(issuedPage.hasPrevious())
                .build();
    }

    private Specification<Coupon> buildCouponSpecification(String keyword, String status) {
        List<Specification<Coupon>> specifications = new ArrayList<>();

        if (StringUtils.hasText(keyword)) {
            String trimmed = keyword.trim();
            String likeKeyword = "%" + trimmed.toLowerCase() + "%";
            specifications.add((root, query, criteriaBuilder) -> {
                query.distinct(true);
                List<Predicate> predicates = new ArrayList<>();
                predicates.add(criteriaBuilder.like(criteriaBuilder.lower(root.get("name")), likeKeyword));
                predicates.add(criteriaBuilder.like(criteriaBuilder.lower(root.get("code")), likeKeyword));
                Join<Coupon, Event> eventJoin = root.join("event", JoinType.LEFT);
                predicates.add(criteriaBuilder.like(criteriaBuilder.lower(eventJoin.get("name")), likeKeyword));
                try {
                    Long couponId = Long.parseLong(trimmed);
                    predicates.add(criteriaBuilder.equal(root.get("id"), couponId));
                } catch (NumberFormatException ignored) {
                }
                return criteriaBuilder.or(predicates.toArray(Predicate[]::new));
            });
        }

        if (StringUtils.hasText(status)) {
            CouponStatus couponStatus = parseFilterStatus(status);
            specifications.add((root, query, criteriaBuilder) ->
                    criteriaBuilder.equal(root.get("status"), couponStatus));
        }

        return specifications.stream()
                .reduce(Specification::and)
                .orElse(null);
    }

    private Specification<UserCoupon> buildIssuedCouponSpecification(
            String loginId,
            String couponKeyword,
            String status
    ) {
        List<Specification<UserCoupon>> specifications = new ArrayList<>();

        if (StringUtils.hasText(loginId)) {
            String trimmed = loginId.trim();
            String likeKeyword = "%" + trimmed.toLowerCase() + "%";
            specifications.add((root, query, criteriaBuilder) -> {
                query.distinct(true);
                Join<UserCoupon, User> userJoin = root.join("user", JoinType.LEFT);
                List<Predicate> predicates = new ArrayList<>();
                predicates.add(criteriaBuilder.like(criteriaBuilder.lower(userJoin.get("loginId")), likeKeyword));
                predicates.add(criteriaBuilder.like(criteriaBuilder.lower(userJoin.get("name")), likeKeyword));
                try {
                    Long userId = Long.parseLong(trimmed);
                    predicates.add(criteriaBuilder.equal(userJoin.get("id"), userId));
                } catch (NumberFormatException ignored) {
                }
                return criteriaBuilder.or(predicates.toArray(Predicate[]::new));
            });
        }

        if (StringUtils.hasText(couponKeyword)) {
            String trimmed = couponKeyword.trim();
            String likeKeyword = "%" + trimmed.toLowerCase() + "%";
            specifications.add((root, query, criteriaBuilder) -> {
                query.distinct(true);
                Join<UserCoupon, Coupon> couponJoin = root.join("coupon", JoinType.LEFT);
                List<Predicate> predicates = new ArrayList<>();
                predicates.add(criteriaBuilder.like(criteriaBuilder.lower(couponJoin.get("name")), likeKeyword));
                predicates.add(criteriaBuilder.like(criteriaBuilder.lower(couponJoin.get("code")), likeKeyword));
                try {
                    Long couponId = Long.parseLong(trimmed);
                    predicates.add(criteriaBuilder.equal(couponJoin.get("id"), couponId));
                } catch (NumberFormatException ignored) {
                }
                return criteriaBuilder.or(predicates.toArray(Predicate[]::new));
            });
        }

        if (StringUtils.hasText(status)) {
            UserCouponStatus parsed = parseUserCouponStatus(status);
            specifications.add((root, query, criteriaBuilder) ->
                    criteriaBuilder.equal(root.get("status"), parsed));
        }

        return specifications.stream()
                .reduce(Specification::and)
                .orElse(null);
    }

    private CouponStatus parseFilterStatus(String status) {
        try {
            return CouponStatus.of(status.trim().toUpperCase());
        } catch (IllegalArgumentException | NullPointerException ex) {
            throw new BusinessException(ErrorCode.COUPON_STATUS_INVALID);
        }
    }

    private UserCouponStatus parseUserCouponStatus(String status) {
        try {
            return UserCouponStatus.valueOf(status.trim().toUpperCase());
        } catch (IllegalArgumentException | NullPointerException ex) {
            throw new BusinessException(ErrorCode.USER_COUPON_STATUS_INVALID);
        }
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
