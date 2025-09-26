package com.c3l2.persome.review.controller;

import com.c3l2.persome.common.ApiResponse;
import com.c3l2.persome.config.error.ErrorCode;
import com.c3l2.persome.review.dto.ProductReviewResponseDto;
import com.c3l2.persome.review.dto.ReviewRegisterRequestDto;
import com.c3l2.persome.review.dto.ReviewStatusDto;
import com.c3l2.persome.review.dto.ReviewUpdateRequestDto;
import com.c3l2.persome.review.entity.Review;
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
        
        try {
            reviewService.registerReview(orderItemId, requestDto, images);
            return ApiResponse.ok("리뷰 등록이 완료되었습니다.", null);
            
        } catch (Exception e) {
            // 서버 로그에는 상세한 오류 정보 기록
            log.error("리뷰 등록 실패. OrderItemId: {}, Error: {}", orderItemId, e.getMessage(), e);
            
            // 사용자에게는 간단한 메시지만 전달
            if (e.getMessage() != null && e.getMessage().contains("이미 해당 상품에 대한 리뷰를 작성하셨습니다")) {
                return ApiResponse.fail("이미 해당 상품에 대한 리뷰를 작성하셨습니다.", ErrorCode.REVIEW_ALREADY_EXISTS);
            } else {
                return ApiResponse.fail("리뷰 등록에 실패했습니다. 잠시 후 다시 시도해주세요.", ErrorCode.SERVER_ERROR);
            }
        }
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

    /**
     * 특정 주문 아이템에 대한 리뷰 존재 여부 확인
     * @param orderItemId 주문 아이템 ID
     * @return 리뷰 존재 여부와 리뷰 ID (있는 경우)
     */
    @GetMapping("/order-item/{orderItemId}/status")
    public ResponseEntity<ApiResponse<ReviewStatusDto>> checkReviewStatus(@PathVariable Long orderItemId) {
        
        try {
            boolean hasReview = reviewService.hasReviewForOrderItem(orderItemId);
            Long reviewId = null;
            
            if (hasReview) {
                Review review = reviewService.getReviewByOrderItem(orderItemId);
                reviewId = review != null ? review.getId() : null;
            }
            
            ReviewStatusDto statusDto = ReviewStatusDto.builder()
                    .orderItemId(orderItemId)
                    .hasReview(hasReview)
                    .reviewId(reviewId)
                    .build();
            
            return ApiResponse.ok("리뷰 상태 조회 완료", statusDto);
            
        } catch (Exception e) {
            log.error("리뷰 상태 조회 실패. OrderItemId: {}", orderItemId, e);
            return ApiResponse.fail("리뷰 상태 조회에 실패했습니다.");
        }
    }

    /**
     * 리뷰 상세 조회
     * @param reviewId 리뷰 ID
     * @return 리뷰 상세 정보
     */
    @GetMapping("/{reviewId}")
    public ResponseEntity<ApiResponse<ProductReviewResponseDto>> getReviewDetail(@PathVariable Long reviewId) {
        try {
            log.info("리뷰 상세 조회 요청. ReviewId: {}", reviewId);
            ProductReviewResponseDto reviewDetail = reviewService.getReviewDetail(reviewId);
            log.info("리뷰 조회 성공. ReviewId: {}, Content: {}", reviewId, reviewDetail.getContent());
            return ApiResponse.ok("리뷰 조회 완료", reviewDetail);
        } catch (Exception e) {
            log.error("리뷰 조회 실패. ReviewId: {}", reviewId, e);
            return ApiResponse.fail("리뷰 조회에 실패했습니다.");
        }
    }

    @DeleteMapping("/{reviewId}")
    public ResponseEntity<ApiResponse<Void>> deleteReview(@PathVariable Long reviewId) {

        reviewService.deleteReview(reviewId);

        return ApiResponse.ok("해당 리뷰가 삭제되었습니다.", null);
    }
}
