package com.c3l2.persome.admin.service;

import com.c3l2.persome.admin.dto.AdminEventForm;
import com.c3l2.persome.admin.dto.AdminPromotionRequest;
import com.c3l2.persome.config.error.ErrorCode;
import com.c3l2.persome.config.error.exceprion.BusinessException;
import com.c3l2.persome.common.util.FileStorageUtil;
import com.c3l2.persome.event.entity.Event;
import com.c3l2.persome.event.entity.EventImg;
import com.c3l2.persome.event.entity.constant.EventStatus;
import com.c3l2.persome.event.repository.EventImgRepository;
import com.c3l2.persome.event.repository.EventRepository;
import com.c3l2.persome.promotion.entity.Promotion;
import com.c3l2.persome.promotion.repository.PromotionRepository;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class AdminEventService {

    private final EventRepository eventRepository;
    private final EventImgRepository eventImgRepository;
    private final FileStorageUtil fileStorageUtil;
    private final AdminPromotionService adminPromotionService;
    private final PromotionRepository promotionRepository;

    @Transactional
    public Long createEvent(AdminEventForm form) {
        EventStatus status = parseStatus(form.getStatus());

        String thumbnailUrl = null;
        MultipartFile thumbnailFile = form.getThumbnail();
        if (thumbnailFile != null && !thumbnailFile.isEmpty()) {
            thumbnailUrl = storeEventImage(thumbnailFile);
        }

        Event event = Event.builder()
                .name(form.getName())
                .thumbnailUrl(thumbnailUrl)
                .description(form.getDescription())
                .startDate(form.getStartDate())
                .endDate(form.getEndDate())
                .createdAt(LocalDateTime.now())
                .status(status)
                .eventImgs(new ArrayList<>())
                .build();

        List<MultipartFile> imageFiles = form.getNonEmptyImages();
        if (!imageFiles.isEmpty()) {
            AtomicInteger order = new AtomicInteger(0);
            imageFiles.forEach(file -> event.getEventImgs().add(EventImg.builder()
                    .imgUrl(storeEventImage(file))
                    .imgOrder(order.getAndIncrement())
                    .event(event)
                    .build()));
        }

        Event saved = eventRepository.save(event);
        syncEventPromotion(saved.getId(), form);
        return saved.getId();
    }

    @Transactional
    public void updateEvent(Long eventId, AdminEventForm form) {
        Event event = eventRepository.findById(eventId)
                .orElseThrow(() -> new BusinessException(ErrorCode.EVENT_NOT_FOUND));

        EventStatus status = parseStatus(form.getStatus());

        String thumbnailUrl = event.getThumbnailUrl();
        MultipartFile thumbnailFile = form.getThumbnail();
        if (thumbnailFile != null && !thumbnailFile.isEmpty()) {
            thumbnailUrl = storeEventImage(thumbnailFile);
        }

        int updated = eventRepository.updateEvent(
                event.getId(),
                form.getName(),
                thumbnailUrl,
                form.getDescription(),
                form.getStartDate(),
                form.getEndDate(),
                status
        );

        if (updated == 0) {
            throw new BusinessException(ErrorCode.EVENT_UPDATE_FAILED);
        }

        List<MultipartFile> imageFiles = form.getNonEmptyImages();
        if (!imageFiles.isEmpty()) {
            eventImgRepository.deleteByEventId(eventId);
            AtomicInteger order = new AtomicInteger(0);
            List<EventImg> newImages = imageFiles.stream()
                    .map(file -> EventImg.builder()
                            .imgUrl(storeEventImage(file))
                            .imgOrder(order.getAndIncrement())
                            .event(event)
                            .build())
                    .toList();
            eventImgRepository.saveAll(newImages);
        }

        syncEventPromotion(eventId, form);
    }

    @Transactional
    public void deleteEvent(Long eventId) {
        Event event = eventRepository.findById(eventId)
                .orElseThrow(() -> new BusinessException(ErrorCode.EVENT_NOT_FOUND));
        eventRepository.delete(event);
    }

    private EventStatus parseStatus(String status) {
        try {
            return EventStatus.of(status.trim().toUpperCase());
        } catch (IllegalArgumentException | NullPointerException ex) {
            throw new BusinessException(ErrorCode.EVENT_STATUS_INVALID);
        }
    }

    private String storeEventImage(MultipartFile file) {
        try {
            return fileStorageUtil.saveEventImage(file);
        } catch (Exception ex) {
            throw new BusinessException(ErrorCode.FILE_UPLOAD_FAILED);
        }
    }

    private void syncEventPromotion(Long eventId, AdminEventForm form) {
        if (!form.hasPromotionSettings()) {
            return;
        }

        AdminPromotionRequest promotionRequest = buildPromotionRequest(eventId, form);
        List<Promotion> promotions = promotionRepository.findByEventId(eventId);
        if (promotions.isEmpty()) {
            adminPromotionService.createPromotion(promotionRequest);
        } else {
            Promotion promotion = promotions.get(0);
            adminPromotionService.updatePromotion(promotion.getId(), promotionRequest);
        }
    }

    private AdminPromotionRequest buildPromotionRequest(Long eventId, AdminEventForm form) {
        var status = sanitize(form.getPromotionStatus());
        var discountType = sanitize(form.getPromotionDiscountType());
        var discountValue = form.getPromotionDiscountValue();
        if (status == null || discountType == null || discountValue == null) {
            throw new BusinessException(ErrorCode.PROMOTION_STATUS_INVALID);
        }

        LocalDateTime startDate = form.resolvePromotionStartDate();
        LocalDateTime endDate = form.resolvePromotionEndDate();

        List<AdminPromotionRequest.TargetRequest> targets = buildTargetRequests(form);

        return new AdminPromotionRequest(
                status,
                discountType,
                discountValue,
                startDate,
                endDate,
                eventId,
                targets
        );
    }

    private List<AdminPromotionRequest.TargetRequest> buildTargetRequests(AdminEventForm form) {
        String type = sanitize(form.getPromotionTargetType());
        List<Long> ids = List.of();
        try {
            ids = form.getPromotionTargetIdList();
        } catch (NumberFormatException ex) {
            throw new BusinessException(ErrorCode.PROMOTION_TARGET_TYPE_INVALID);
        }

        if (type == null || type.isBlank()) {
            type = "ALL";
        }

        if (type.equalsIgnoreCase("ALL")) {
            return List.of(new AdminPromotionRequest.TargetRequest("ALL", 0L));
        }

        if (ids.isEmpty()) {
            throw new BusinessException(ErrorCode.PROMOTION_TARGET_TYPE_INVALID);
        }

        String finalType = type.toUpperCase();
        return ids.stream()
                .map(id -> new AdminPromotionRequest.TargetRequest(finalType, id))
                .toList();
    }

    private String sanitize(String value) {
        return value == null ? null : value.trim().toUpperCase();
    }
}
