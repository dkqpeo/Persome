package com.c3l2.persome.review.dto;

import lombok.*;

@Getter
@Builder
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@AllArgsConstructor(access = AccessLevel.PROTECTED)
public class ReviewStatusDto {
    
    private Long orderItemId;
    private boolean hasReview;
    private Long reviewId; // 리뷰가 있는 경우 리뷰 ID
}