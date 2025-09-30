package com.c3l2.persome.admin.controller;

import com.c3l2.persome.admin.service.AdminEventService;
import com.c3l2.persome.common.ApiResponse;
import com.c3l2.persome.event.dto.EventAdminRequestDto;
import com.c3l2.persome.event.dto.EventDetailAdminResponseDto;
import com.c3l2.persome.event.dto.EventResponseDto;
import com.c3l2.persome.event.service.EventService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("api/events/admin")
public class AdminEventController {

    private final EventService eventService;

    //이벤트 생성
    @PostMapping
    public ResponseEntity<ApiResponse<EventDetailAdminResponseDto>> createAdminEvent(@Valid @RequestBody EventAdminRequestDto request) {
        EventDetailAdminResponseDto createdEvent = eventService.createAdminEvent(request);
        return ResponseEntity.status(HttpStatus.CREATED).body(ApiResponse.<EventDetailAdminResponseDto>builder()
                .message("관리자 이벤트 등록 성공!")
                .data(createdEvent)
                .build());
    }

    //이벤트 수정
    @PutMapping("/{id}")
    public ResponseEntity<ApiResponse<EventDetailAdminResponseDto>> updateAdminEvent(@PathVariable Long id,
                                                                                     @Valid @RequestBody EventAdminRequestDto request) {
        EventDetailAdminResponseDto updatedEvent = eventService.updateAdminEvent(id, request);
        return ApiResponse.ok("관리자 이벤트 수정 성공!", updatedEvent);
    }

    //이벤트 삭제
    @DeleteMapping("/{eventId}")
    public ResponseEntity<ApiResponse<String>> deleteAdminEvent(@PathVariable Long eventId) {
        eventService.deleteAdminEvent(eventId);
        return ApiResponse.ok("관리자 이벤트 삭제 성공!","");
    }

    //이벤트 목록 조회
    @GetMapping
    public ResponseEntity<ApiResponse<List<EventResponseDto>>> getAdminEvents() {
        return ApiResponse.ok("관리자 이벤트 조회 성공!", eventService.getAdminEvents());
    }

    //이벤트 단건 조회
    @GetMapping("/{id}")
    public ResponseEntity<ApiResponse<EventResponseDto>> getAdminEvent(@PathVariable Long id) {
        return ApiResponse.ok("관리자 이벤트 조회 성공!", eventService.getAdminEvent(id));
    }

    //이벤트 상세 조회
    @GetMapping("/{id}/details")
    public ResponseEntity<ApiResponse<EventDetailAdminResponseDto>> getAdminEventDetail(@PathVariable Long id) {
        return ApiResponse.ok("관리자 이벤트 상세 조회 성공!", eventService.getAdminEventDetail(id));
    }

}
