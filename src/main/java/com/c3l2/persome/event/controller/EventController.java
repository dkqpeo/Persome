package com.c3l2.persome.event.controller;

import com.c3l2.persome.common.ApiResponse;
import com.c3l2.persome.event.dto.EventAdminRequestDto;
import com.c3l2.persome.event.dto.EventDetailResponseDto;
import com.c3l2.persome.event.dto.EventResponseDto;
import com.c3l2.persome.event.service.EventService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import jakarta.validation.Valid;
import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("api/events")
public class EventController {
    private final EventService eventService;

    @PostMapping("/admin")
    public ResponseEntity<ApiResponse<EventDetailResponseDto>> createAdminEvent(@Valid @RequestBody EventAdminRequestDto request) {
        EventDetailResponseDto createdEvent = eventService.createAdminEvent(request);
        return ResponseEntity.status(HttpStatus.CREATED).body(ApiResponse.<EventDetailResponseDto>builder()
                .message("관리자 이벤트 등록 성공!")
                .data(createdEvent)
                .build());
    }

    @PutMapping("/admin/{id}")
    public ResponseEntity<ApiResponse<EventDetailResponseDto>> updateAdminEvent(@PathVariable Long id,
                                                                                @Valid @RequestBody EventAdminRequestDto request) {
        EventDetailResponseDto updatedEvent = eventService.updateAdminEvent(id, request);
        return ApiResponse.ok("관리자 이벤트 수정 성공!", updatedEvent);
    }

    // ✅ 관리자용 API
    @GetMapping("/admin")
    public ResponseEntity<ApiResponse<List<EventResponseDto>>> getAdminEvents() {
        return ApiResponse.ok("관리자 이벤트 조회 성공!", eventService.getAdminEvents());
    }

    @GetMapping("/admin/{id}")
    public ResponseEntity<ApiResponse<EventResponseDto>> getAdminEvent(@PathVariable Long id) {
        return ApiResponse.ok("관리자 이벤트 조회 성공!", eventService.getAdminEvent(id));
    }

    @GetMapping("/admin/{id}/details")
    public ResponseEntity<ApiResponse<EventDetailResponseDto>> getAdminEventDetail(@PathVariable Long id) {
        return ApiResponse.ok("관리자 이벤트 상세 조회 성공!", eventService.getAdminEventDetail(id));
    }

    // 이벤트 전체 조회
    @GetMapping
    public ResponseEntity<ApiResponse<List<EventResponseDto>>> getAllEvents() {
        return ApiResponse.ok("이벤트 전체 조회 성공!", eventService.getUserEvents());
    }

    // 이벤트 단건 조회
    @GetMapping("/{id}")
    public ResponseEntity<ApiResponse<EventResponseDto>> getEvent(@PathVariable Long id) {
        return ApiResponse.ok("이벤트 조회 성공!", eventService.getUserEvent(id));
    }

    // 이벤트 상세 조회
    @GetMapping("/{id}/details")
    public ResponseEntity<ApiResponse<EventDetailResponseDto>> getEventDetail(@PathVariable Long id) {
        return ApiResponse.ok("이벤트 상세 조회 성공!", eventService.getUserEventDetail(id));
    }
}
