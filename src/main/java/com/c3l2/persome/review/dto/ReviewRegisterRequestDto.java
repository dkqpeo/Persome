package com.c3l2.persome.review.dto;

import lombok.*;

import java.math.BigDecimal;

@Getter
@Builder
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@AllArgsConstructor(access = AccessLevel.PROTECTED)
public class ReviewRegisterRequestDto {

    private Long productOptionId;
    private BigDecimal rating;
    private String content;

}