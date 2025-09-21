package com.c3l2.persome.review.dto;

import com.c3l2.persome.review.entity.Review;
import com.c3l2.persome.review.entity.ReviewMedia;
import com.c3l2.persome.review.entity.constant.MediaType;
import lombok.Builder;
import lombok.Getter;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;

@Getter
@Builder
public class ProductReviewResponseDto {

    private Long reviewId;
    private String userLoginId;
    private String productOptionName;
    private BigDecimal rating;
    private String content;
    private LocalDate createdAt;

    private List<ReviewMedias> reviewMediasList;

    @Getter
    @Builder
    public static class ReviewMedias {

        private Long reviewMediaID;
        private MediaType mediaType;
        private String mediaUrl;
        private String downloadUrl; // 이미지 다운로드 URL

        public static ReviewMedias from(ReviewMedia reviewMedia) {
            // 파일명 추출하여 다운로드 URL 생성
            String filename = reviewMedia.getMediaUrl().substring(reviewMedia.getMediaUrl().lastIndexOf("/") + 1);
            String downloadUrl = "/api/reviews/images/" + filename;
            
            return ReviewMedias.builder()
                    .reviewMediaID(reviewMedia.getId())
                    .mediaType(reviewMedia.getMediaType())
                    .mediaUrl(reviewMedia.getMediaUrl())
                    .downloadUrl(downloadUrl)
                    .build();
        }
    }

    public static ProductReviewResponseDto from(Review review) {

        List<ReviewMedias> reviewMedias = review.getReviewMedias().stream()
                .map(ReviewMedias::from)
                .toList();

        return ProductReviewResponseDto.builder()
                .reviewId(review.getId())
                .userLoginId(review.getUser().getLoginId())
                .productOptionName(review.getProductOption().getName())
                .rating(review.getRating())
                .content(review.getContent())
                .createdAt(review.getCreatedAt())
                .reviewMediasList(reviewMedias)
                .build();
    }

}