package com.c3l2.persome.event.service;

import com.c3l2.persome.config.error.ErrorCode;
import com.c3l2.persome.config.error.exceprion.BusinessException;
import com.c3l2.persome.coupon.dto.CouponDto;
import com.c3l2.persome.coupon.service.CouponService;
import com.c3l2.persome.event.dto.EventDetailResponseDto;
import com.c3l2.persome.event.dto.EventResponseDto;
import com.c3l2.persome.event.entity.Event;
import com.c3l2.persome.event.entity.constant.EventStatus;
import com.c3l2.persome.event.repository.EventRepository;
import com.c3l2.persome.promotion.dto.PromotionDto;
import com.c3l2.persome.promotion.service.PromotionService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;

@Service
@RequiredArgsConstructor
public class EventService {
    private final EventRepository eventRepository;
    private final PromotionService promotionService;
    private final CouponService couponService;

    // 이벤트 상태 계산 (날짜 + 수동 상태 혼합)
    private String resolveStatus(Event event) {
        LocalDateTime now = LocalDateTime.now();

        switch (event.getStatus()) {
            case DRAFT:
            case INACTIVE:
                return event.getStatus().name();
        }

        if (now.isBefore(event.getStartDate())) {
            return EventStatus.SCHEDULED.name();
        } else if (!now.isAfter(event.getEndDate())) {
            return EventStatus.ACTIVE.name();
        } else {
            return EventStatus.ENDED.name();
        }
    }

    // 사용자 전용 상태 변환 (3단계만: 진행중/예정/종료)
    private String resolveUserStatus(String status) {
        return switch (status) {
            case "ACTIVE" -> "ACTIVE";
            case "SCHEDULED" -> "SCHEDULED";
            default -> "ENDED"; // ENDED, DRAFT, INACTIVE 전부 종료 처리
        };
    }

    // 관리자용 이벤트 전체 조회
    public List<EventResponseDto> getAdminEvents() {
        return eventRepository.findAll().stream()
                .map(event -> EventResponseDto.fromEntity(event, resolveStatus(event)))
                .toList();
    }

    // 사용자용 이벤트 전체 조회
    public List<EventResponseDto> getUserEvents() {
        return getAdminEvents().stream()
                .map(e -> e.withStatus(resolveUserStatus(e.getStatus())))
                .toList();
    }

    // 이벤트 단건 조회 (관리자)
    public EventResponseDto getAdminEvent(Long eventId) {
        Event event = eventRepository.findById(eventId)
                .orElseThrow(() -> new BusinessException(ErrorCode.EVENT_NOT_FOUND));
        return EventResponseDto.fromEntity(event, resolveStatus(event));
    }

    // 이벤트 단건 조회 (사용자)
    public EventResponseDto getUserEvent(Long eventId) {
        EventResponseDto adminDto = getAdminEvent(eventId);
        return adminDto.withStatus(resolveUserStatus(adminDto.getStatus()));
    }

    // 이벤트 상세 조회 (관리자)
    public EventDetailResponseDto getAdminEventDetail(Long eventId) {
        Event event = eventRepository.findByIdWithImages(eventId)
                .orElseThrow(() -> new BusinessException(ErrorCode.EVENT_NOT_FOUND));

        List<PromotionDto> promotions = promotionService.getPromotionsByEvent(eventId);
        List<CouponDto> coupons = couponService.getCouponsByEvent(eventId);

        return EventDetailResponseDto.fromEntity(
                event,
                resolveStatus(event),
                promotions,
                coupons
        );
    }

    // 이벤트 상세 조회 (사용자)
    public EventDetailResponseDto getUserEventDetail(Long eventId) {
        EventDetailResponseDto adminDto = getAdminEventDetail(eventId);
        return adminDto.withStatus(resolveUserStatus(adminDto.getStatus()));
    }
}
