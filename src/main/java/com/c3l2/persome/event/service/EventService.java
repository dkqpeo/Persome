package com.c3l2.persome.event.service;

import com.c3l2.persome.coupon.dto.CouponDto;
import com.c3l2.persome.coupon.service.CouponService;
import com.c3l2.persome.event.dto.EventDetailResponseDto;
import com.c3l2.persome.event.dto.EventResponseDto;
import com.c3l2.persome.event.entity.Event;
import com.c3l2.persome.event.repository.EventRepository;
import com.c3l2.persome.promotion.dto.PromotionDto;
import com.c3l2.persome.promotion.service.PromotionService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class EventService {
    private final EventRepository eventRepository;
    private final PromotionService promotionService;
    private final CouponService couponService;

    //이벤트 전체 조회
    public List<EventResponseDto> getEvents() {
        return eventRepository.findAll().stream()
                .map(EventResponseDto::fromEntity)
                .toList();
    }

    //이벤트 단건 조회
    public EventResponseDto getEvent(Long eventId) {
        Event event = eventRepository.findById(eventId)
                .orElseThrow(() -> new RuntimeException("Event not found"));
        return EventResponseDto.fromEntity(event);
    }

    //이벤트 상세 조회 - 프로모션, 쿠폰 포함
    public EventDetailResponseDto getEventDetail(Long eventId) {
        Event event = eventRepository.findById(eventId)
                .orElseThrow(() -> new RuntimeException("Event not found"));

        List<PromotionDto> promotions = promotionService.getPromotionsByEvent(eventId);
        List<CouponDto> coupons = couponService.getCouponsByEvent(eventId);

        return EventDetailResponseDto.fromEntity(event, promotions, coupons);
    }
}
