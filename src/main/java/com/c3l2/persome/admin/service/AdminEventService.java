package com.c3l2.persome.admin.service;

import com.c3l2.persome.admin.dto.AdminEventRequest;
import com.c3l2.persome.config.error.ErrorCode;
import com.c3l2.persome.config.error.exceprion.BusinessException;
import com.c3l2.persome.event.entity.Event;
import com.c3l2.persome.event.entity.EventImg;
import com.c3l2.persome.event.entity.constant.EventStatus;
import com.c3l2.persome.admin.dto.AdminEventImgRepository;
import com.c3l2.persome.event.repository.EventRepository;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class AdminEventService {

    private final EventRepository eventRepository;
    private final AdminEventImgRepository eventImgRepository;

    @Transactional
    public Long createEvent(AdminEventRequest request) {
        EventStatus status = parseStatus(request.status());

        Event event = Event.builder()
                .name(request.name())
                .thumbnailUrl(request.thumbnailUrl())
                .description(request.description())
                .startDate(request.startDate())
                .endDate(request.endDate())
                .createdAt(LocalDateTime.now())
                .status(status)
                .eventImgs(new ArrayList<>())
                .build();

        if (request.images() != null) {
            request.images().forEach(image ->
                    event.getEventImgs().add(EventImg.builder()
                            .imgUrl(image.url())
                            .imgOrder(image.order())
                            .event(event)
                            .build())
            );
        }

        return eventRepository.save(event).getId();
    }

    @Transactional
    public void updateEvent(Long eventId, AdminEventRequest request) {
        Event event = eventRepository.findById(eventId)
                .orElseThrow(() -> new BusinessException(ErrorCode.EVENT_NOT_FOUND));

        EventStatus status = parseStatus(request.status());

        int updated = eventRepository.updateEvent(
                event.getId(),
                request.name(),
                request.thumbnailUrl(),
                request.description(),
                request.startDate(),
                request.endDate(),
                status
        );

        if (updated == 0) {
            throw new BusinessException(ErrorCode.EVENT_UPDATE_FAILED);
        }

        if (request.images() != null) {
            eventImgRepository.deleteByEventId(eventId);
            List<EventImg> newImages = request.images().stream()
                    .map(image -> EventImg.builder()
                            .imgUrl(image.url())
                            .imgOrder(image.order())
                            .event(event)
                            .build())
                    .toList();
            eventImgRepository.saveAll(newImages);
        }
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
}
