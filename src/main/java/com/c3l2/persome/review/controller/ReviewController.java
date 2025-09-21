package com.c3l2.persome.review.controller;

import com.c3l2.persome.common.ApiResponse;
import com.c3l2.persome.review.dto.ProductReviewResponseDto;
import com.c3l2.persome.review.dto.ReviewRegisterRequestDto;
import com.c3l2.persome.review.dto.ReviewUpdateRequestDto;
import com.c3l2.persome.review.service.ReviewService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Slf4j
@RestController
@RequestMapping("/reviews")
@RequiredArgsConstructor
public class ReviewController {

    private final ReviewService reviewService;

    /**
     * 상품 상세 페이지에서, 해당 상품의 옵션 별 리뷰 리스트를 반환.
     * @param productId 상품 id
     * @return
     */
    @GetMapping("/products/{productId}")
    public ResponseEntity<ApiResponse<List<ProductReviewResponseDto>>> getProductReviews(@PathVariable Long productId) {

        List<ProductReviewResponseDto> productReviews = reviewService.getProductReviews(productId);

        return ApiResponse.ok("리뷰 조회 완료.", productReviews);

    }

    /**
     * 리뷰 등록
     * @param orderItemId 주문 상품 ID
     * @param requestDto 리뷰 등록 요청 데이터
     * @param images 업로드할 이미지 파일들
     * @return 등록 결과
     */
    @PostMapping("/products/{orderItemId}")
    public ResponseEntity<ApiResponse<Void>> registerReview(
            @PathVariable Long orderItemId,
            @RequestPart("review") ReviewRegisterRequestDto requestDto,
            @RequestPart(value = "images", required = false) List<MultipartFile> images) {
        
        reviewService.registerReview(orderItemId, requestDto, images);
        
        return ApiResponse.ok("리뷰 등록이 완료되었습니다.", null);
    }

    /**
     * 리뷰 수정
     * @param reviewId 리뷰 ID
     * @param requestDto 리뷰 수정 요청 데이터
     * @param images 새로 업로드할 이미지 파일들 (선택적)
     * @return 수정 결과
     */
    @PatchMapping("/{reviewId}")
    public ResponseEntity<ApiResponse<Void>> updateReview(
            @PathVariable Long reviewId,
            @RequestPart("review") ReviewUpdateRequestDto requestDto,
            @RequestPart(value = "images", required = false) List<MultipartFile> images) {
        
        reviewService.updateReview(reviewId, requestDto, images);
        
        return ApiResponse.ok("리뷰 수정이 완료되었습니다.", null);
    }

    /**
     * 리뷰 이미지 다운로드
     * @param filename 이미지 파일명
     * @return 이미지 파일
     */
    @GetMapping("/images/{filename}")
    public ResponseEntity<Resource> getReviewImage(@PathVariable String filename) {
        try {
            Resource imageResource = reviewService.loadImageAsResource(filename);
            
            if (imageResource == null || !imageResource.exists()) {
                return ResponseEntity.notFound().build();
            }

            // 파일 확장자에 따른 Content-Type 설정
            String contentType = "application/octet-stream";
            if (filename.toLowerCase().endsWith(".jpg") || filename.toLowerCase().endsWith(".jpeg")) {
                contentType = "image/jpeg";
            } else if (filename.toLowerCase().endsWith(".png")) {
                contentType = "image/png";
            } else if (filename.toLowerCase().endsWith(".gif")) {
                contentType = "image/gif";
            }

            return ResponseEntity.ok()
                    .contentType(MediaType.parseMediaType(contentType))
                    .header(HttpHeaders.CONTENT_DISPOSITION, "inline; filename=\"" + filename + "\"")
                    .body(imageResource);
                    
        } catch (Exception e) {
            log.error("이미지 로드 중 오류 발생: {}", filename, e);
            return ResponseEntity.notFound().build();
        }
    }

    @DeleteMapping("/{reviewId}")
    public ResponseEntity<ApiResponse<Void>> deleteReview(@PathVariable Long reviewId) {

        reviewService.deleteReview(reviewId);

        return ApiResponse.ok("해당 리뷰가 삭제되었습니다.", null);
    }
}
