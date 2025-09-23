package com.c3l2.persome.cs.controller;

import com.c3l2.persome.common.ApiResponse;
import com.c3l2.persome.cs.dto.FAQRequestDto;
import com.c3l2.persome.cs.dto.FAQResponse;
import com.c3l2.persome.cs.entity.constant.FaqCategory;
import com.c3l2.persome.cs.service.FAQService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/cs/faqs")
@RequiredArgsConstructor
public class FAQController {

    private final FAQService faqService;

    @GetMapping
    public ResponseEntity<ApiResponse<List<FAQResponse>>> getFAQs(
            @RequestParam(value = "category", required = false) FaqCategory category
    ) {
        List<FAQResponse> faqs = faqService.getFAQs(category);
        return ApiResponse.ok("FAQ 목록 조회 성공", faqs);
    }

    @GetMapping("/{faqId}")
    public ResponseEntity<ApiResponse<FAQResponse>> getFAQ(@PathVariable Long faqId) {
        FAQResponse faqResponse = faqService.getFAQ(faqId);
        return ApiResponse.ok("FAQ 조회 성공", faqResponse);
    }

    @PostMapping
    public ResponseEntity<ApiResponse<FAQResponse>> createFAQ(@RequestBody FAQRequestDto faqRequestDto) {
        FAQResponse savedFAQ = faqService.createFAQ(faqRequestDto);
        return ResponseEntity.status(HttpStatus.CREATED)
                .body(ApiResponse.<FAQResponse>builder()
                        .message("FAQ 등록 성공")
                        .data(savedFAQ)
                        .build());
    }

    @PatchMapping("/{faqId}")
    public ResponseEntity<ApiResponse<FAQResponse>> updateFAQ(
            @PathVariable Long faqId,
            @RequestBody FAQRequestDto faqRequestDto
    ) {
        FAQResponse updated = faqService.updateFAQ(faqId, faqRequestDto);
        return ApiResponse.ok("FAQ 수정 성공", updated);
    }

    @DeleteMapping("/{faqId}")
    public ResponseEntity<ApiResponse<Void>> deleteFAQ(@PathVariable Long faqId) {
        faqService.deleteFAQ(faqId);
        return ApiResponse.ok("FAQ 삭제 성공", null);
    }
}
