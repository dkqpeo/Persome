package com.c3l2.persome.event.controller;

import com.c3l2.persome.common.ApiResponse;
import com.c3l2.persome.event.dto.EventAdminRequestDto;
import com.c3l2.persome.event.dto.EventDetailAdminResponseDto;
import com.c3l2.persome.event.dto.EventDetailResponseDto;
import com.c3l2.persome.event.dto.EventResponseDto;
import com.c3l2.persome.event.service.EventService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import jakarta.validation.Valid;
import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("api/events")
public class EventController {
    private final EventService eventService;

    @PostMapping("/admin")
    public ResponseEntity<ApiResponse<EventDetailAdminResponseDto>> createAdminEvent(@Valid @RequestBody EventAdminRequestDto request) {
        EventDetailAdminResponseDto createdEvent = eventService.createAdminEvent(request);
        return ResponseEntity.status(HttpStatus.CREATED).body(ApiResponse.<EventDetailAdminResponseDto>builder()
                .message("관리자 이벤트 등록 성공!")
                .data(createdEvent)
                .build());
    }

    @PutMapping("/admin/{id}")
    public ResponseEntity<ApiResponse<EventDetailAdminResponseDto>> updateAdminEvent(@PathVariable Long id,
                                                                                @Valid @RequestBody EventAdminRequestDto request) {
        EventDetailAdminResponseDto updatedEvent = eventService.updateAdminEvent(id, request);
        return ApiResponse.ok("관리자 이벤트 수정 성공!", updatedEvent);
    }
    @DeleteMapping("/admin/{eventId}")
    public ResponseEntity<ApiResponse<String>> deleteAdminEvent(@PathVariable Long eventId) {
        eventService.deleteAdminEvent(eventId);
        return ApiResponse.ok("관리자 이벤트 삭제 성공!","");
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
    public ResponseEntity<ApiResponse<EventDetailAdminResponseDto>> getAdminEventDetail(@PathVariable Long id) {
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
