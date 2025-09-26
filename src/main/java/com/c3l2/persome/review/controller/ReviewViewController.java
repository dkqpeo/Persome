package com.c3l2.persome.review.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/reviews")
public class ReviewViewController {
    
    /**
     * 리뷰 작성 모달 페이지 반환
     * @param orderItemId 주문 상품 ID
     * @return 리뷰 작성 모달 페이지
     */
    @GetMapping("/modal")
    public String reviewModal(@RequestParam Long orderItemId) {
        return "reviews/review-modal";
    }

    /**
     * 리뷰 보기 모달 페이지 반환
     * @param reviewId 리뷰 ID
     * @return 리뷰 보기 모달 페이지
     */
    @GetMapping("/view-modal")
    public String reviewViewModal(@RequestParam Long reviewId) {
        return "reviews/review-view-modal";
    }

    /**
     * 리뷰 수정 모달 페이지 반환
     * @param reviewId 리뷰 ID
     * @return 리뷰 수정 모달 페이지
     */
    @GetMapping("/edit-modal")
    public String reviewEditModal(@RequestParam Long reviewId) {
        return "reviews/review-edit-modal";
    }
}
