package com.c3l2.persome.event.service;

import com.c3l2.persome.config.error.ErrorCode;
import com.c3l2.persome.config.error.exceprion.BusinessException;
import com.c3l2.persome.coupon.dto.CouponDto;
import com.c3l2.persome.coupon.entity.Coupon;
import com.c3l2.persome.coupon.repository.CouponRepository;
import com.c3l2.persome.coupon.service.CouponService;
import com.c3l2.persome.coupon.service.UserCouponService;
import com.c3l2.persome.event.dto.*;
import com.c3l2.persome.event.entity.Event;
import com.c3l2.persome.event.entity.constant.EventStatus;
import com.c3l2.persome.event.entity.EventImg;
import com.c3l2.persome.event.repository.EventRepository;
import com.c3l2.persome.event.repository.EventImgRepository;
import com.c3l2.persome.promotion.dto.PromotionDto;
import com.c3l2.persome.promotion.service.PromotionService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class EventService {
    private final EventRepository eventRepository;
    private final EventImgRepository eventImgRepository;
    private final PromotionService promotionService;
    private final CouponService couponService;
    private final CouponRepository couponRepository;
    private final UserCouponService userCouponService;

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
    public EventDetailAdminResponseDto getAdminEventDetail(Long eventId) {
        Event event = eventRepository.findByIdWithImages(eventId)
                .orElseThrow(() -> new BusinessException(ErrorCode.EVENT_NOT_FOUND));

        List<PromotionDto> promotions;
        try {
            promotions = promotionService.getPromotionsByEvent(eventId);
        } catch (BusinessException e) {
            promotions = List.of();
        }
        List<CouponDto> coupons = couponService.getCouponsByEvent(eventId);

        return EventDetailAdminResponseDto.fromEntity(
                event,
                resolveStatus(event),
                promotions,
                coupons
        );
    }
    // 이벤트 상세 조회 (사용자)
    public EventDetailResponseDto getUserEventDetail(Long eventId) {
        Event event = eventRepository.findByIdWithImages(eventId)
                .orElseThrow(() -> new BusinessException(ErrorCode.EVENT_NOT_FOUND));

        List<PromotionDto> promotions;
        try {
            promotions = promotionService.getPromotionsByEvent(eventId);
        } catch (BusinessException e) {
            promotions = List.of();
        }

        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        final Long userId = (principal instanceof com.c3l2.persome.user.security.CustomUserDetails userDetails)
                ? userDetails.getId()
                : null;

        List<Coupon> coupons = couponRepository.findByEventId(eventId);
        List<EventCouponResponseDto> couponDtos = coupons.stream()
                .map(c -> EventCouponResponseDto.fromCoupon(
                        c,
                        (userId != null && userCouponService.isAlreadyIssued(userId, c.getId()))
                ))
                .toList();

        return EventDetailResponseDto.fromEntity(
                event,
                resolveUserStatus(resolveStatus(event)),
                promotions,
                couponDtos
        );
    }

    @Transactional
    public EventDetailAdminResponseDto createAdminEvent(EventAdminRequestDto request) {
        EventStatus status = parseStatus(request.getStatus());

        Event event = Event.builder()
                .name(request.getName())
                .thumbnailUrl(request.getThumbnailUrl())
                .description(request.getDescription())
                .startDate(request.getStartDate())
                .endDate(request.getEndDate())
                .createdAt(LocalDateTime.now())
                .status(status)
                .eventImgs(new ArrayList<>())
                .build();

        if (request.getImages() != null) {
            request.getImages().forEach(image -> event.getEventImgs().add(EventImg.builder()
                    .imgUrl(image.getUrl())
                    .imgOrder(image.getOrder())
                    .event(event)
                    .build()));
        }

        Event savedEvent = eventRepository.save(event);

        return EventDetailAdminResponseDto.fromEntity(
                savedEvent,
                resolveStatus(savedEvent),
                List.of(),
                List.of()
        );
    }

    @Transactional
    public EventDetailAdminResponseDto updateAdminEvent(Long eventId, EventAdminRequestDto request) {
        Event event = eventRepository.findById(eventId)
                .orElseThrow(() -> new BusinessException(ErrorCode.EVENT_NOT_FOUND));

        EventStatus status = parseStatus(request.getStatus());

        int updated = eventRepository.updateEvent(
                eventId,
                request.getName(),
                request.getThumbnailUrl(),
                request.getDescription(),
                request.getStartDate(),
                request.getEndDate(),
                status
        );

        if (updated == 0) {
            throw new BusinessException(ErrorCode.EVENT_UPDATE_FAILED);
        }

        if (request.getImages() != null) {
            eventImgRepository.deleteByEventId(eventId);
            List<EventImg> newImages = request.getImages().stream()
                    .map(image -> EventImg.builder()
                            .imgUrl(image.getUrl())
                            .imgOrder(image.getOrder())
                            .event(event)
                            .build())
                    .toList();
            eventImgRepository.saveAll(newImages);
        }

        Event updatedEvent = eventRepository.findByIdWithImages(eventId)
                .orElseThrow(() -> new BusinessException(ErrorCode.EVENT_NOT_FOUND));

        return EventDetailAdminResponseDto.fromEntity(
                updatedEvent,
                resolveStatus(updatedEvent),
                List.of(),
                List.of()
        );
    }

    @Transactional
    public void deleteAdminEvent(Long eventId) {
        Event event = eventRepository.findById(eventId)
                .orElseThrow(() -> new BusinessException(ErrorCode.EVENT_NOT_FOUND));

        // 이벤트 이미지 같이 삭제
        eventImgRepository.deleteByEventId(eventId);

        //프로모션, 쿠폰 같이 삭제

        // 이벤트 삭제
        eventRepository.delete(event);
    }


    private EventStatus parseStatus(String status) {
        try {
            return EventStatus.of(status.trim().toUpperCase());
        } catch (IllegalArgumentException | NullPointerException ex) {
            throw new BusinessException(ErrorCode.EVENT_STATUS_INVALID);
        }
    }
}
