package com.c3l2.persome.cs.controller;

import com.c3l2.persome.common.ApiResponse;
import com.c3l2.persome.cs.dto.NoticeRequestDto;
import com.c3l2.persome.cs.dto.NoticeResponseDto;
import com.c3l2.persome.cs.entity.constant.Category;
import com.c3l2.persome.cs.service.NoticeService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/cs/notices")
@RequiredArgsConstructor
public class NoticeController {

    private final NoticeService noticeService;

    @GetMapping
    public ResponseEntity<ApiResponse<List<NoticeResponseDto>>> getNotices(
            @RequestParam(value = "category", required = false) Category category
    ) {
        List<NoticeResponseDto> notices = noticeService.getNotices(category);
        return ApiResponse.ok("공지사항 목록 조회 성공", notices);
    }

    @GetMapping("/{noticeId}")
    public ResponseEntity<ApiResponse<NoticeResponseDto>> getNotice(@PathVariable Long noticeId) {
        NoticeResponseDto notice = noticeService.getNotice(noticeId);
        return ApiResponse.ok("공지사항 조회 성공", notice);
    }

    @PostMapping
    public ResponseEntity<ApiResponse<NoticeResponseDto>> createNotice(@RequestBody NoticeRequestDto requestDto) {
        NoticeResponseDto saved = noticeService.createNotice(requestDto);
        return ResponseEntity.status(HttpStatus.CREATED)
                .body(ApiResponse.<NoticeResponseDto>builder()
                        .message("공지사항 등록 성공")
                        .data(saved)
                        .build());
    }

    @PatchMapping("/{noticeId}")
    public ResponseEntity<ApiResponse<NoticeResponseDto>> updateNotice(
            @PathVariable Long noticeId,
            @RequestBody NoticeRequestDto requestDto
    ) {
        NoticeResponseDto updated = noticeService.updateNotice(noticeId, requestDto);
        return ApiResponse.ok("공지사항 수정 성공", updated);
    }

    @DeleteMapping("/{noticeId}")
    public ResponseEntity<ApiResponse<Void>> deleteNotice(@PathVariable Long noticeId) {
        noticeService.deleteNotice(noticeId);
        return ApiResponse.ok("공지사항 삭제 성공", null);
    }
}
