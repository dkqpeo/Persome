package com.c3l2.persome.review.service;

import com.c3l2.persome.common.util.FileStorageUtil;
import com.c3l2.persome.config.error.ErrorCode;
import com.c3l2.persome.config.error.exceprion.BusinessException;
import com.c3l2.persome.order.entity.OrderItem;
import com.c3l2.persome.order.repository.OrderItemRepository;
import com.c3l2.persome.product.entity.Product;
import com.c3l2.persome.product.entity.ProductOption;
import com.c3l2.persome.product.repository.ProductOptionRepository;
import com.c3l2.persome.product.repository.ProductRepository;
import com.c3l2.persome.review.dto.ProductReviewResponseDto;
import com.c3l2.persome.review.dto.ReviewRegisterRequestDto;
import com.c3l2.persome.review.dto.ReviewUpdateRequestDto;
import com.c3l2.persome.review.entity.Review;
import com.c3l2.persome.review.entity.ReviewMedia;
import com.c3l2.persome.review.entity.constant.MediaType;
import com.c3l2.persome.review.repository.ReviewRepository;
import com.c3l2.persome.user.entity.User;
import com.c3l2.persome.user.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.core.io.Resource;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Slf4j
@Service
@Transactional
@RequiredArgsConstructor
public class ReviewService {

    private final ReviewRepository reviewRepository;
    private final ProductRepository productRepository;
    private final ProductOptionRepository productOptionRepository;
    private final OrderItemRepository orderItemRepository;
    private final UserRepository userRepository;
    private final FileStorageUtil fileStorageUtil;

    /**
     * 입력받은 상품 id로 해당 상품의 옵션 id 리스트로 리뷰 조회
     *
     * @param productId 상품 ID
     * @return 해당 상품의 모든 리뷰 리스트
     */
    @Transactional(readOnly = true)
    public List<ProductReviewResponseDto> getProductReviews(Long productId) {
        
        Product product = productRepository.findById(productId)
                .orElseThrow(() -> new IllegalArgumentException("해당 상품이 존재하지 않습니다."));

        // ProductOptionRepository를 사용하여 해당 상품의 옵션들을 조회
        List<ProductOption> productOptions = productOptionRepository.findAll().stream()
                .filter(option -> option.getProduct().getId().equals(productId))
                .toList();

        List<Long> productOptionIds = productOptions.stream()
                .map(ProductOption::getId)
                .toList();

        List<Review> productReviews = reviewRepository.findByProductOptionIdIn(productOptionIds);

        List<ProductReviewResponseDto> resultData = productReviews.stream()
                .map(ProductReviewResponseDto::from)
                .toList();

        return resultData;
    }

    /**
     * 리뷰 등록
     * @param orderItemId 주문 상세 ID
     * @param requestDto 리뷰 등록 요청 데이터
     * @param images 업로드할 이미지 파일들
     */
    public void registerReview(Long orderItemId, ReviewRegisterRequestDto requestDto, List<MultipartFile> images) {

        User user = getCurrentUser();

        // 주문 상품 조회
        OrderItem orderItem = orderItemRepository.findById(orderItemId)
                .orElseThrow(() -> new BusinessException(ErrorCode.ORDER_ITEM_NOT_FOUND));

        // 상품 옵션 조회
        ProductOption productOption = productOptionRepository.findById(requestDto.getProductOptionId())
                .orElseThrow(() -> new BusinessException(ErrorCode.PRODUCT_OPTION_NOT_FOUND));

        // 리뷰 엔티티 생성
        Review review = Review.builder()
                .rating(requestDto.getRating())
                .content(requestDto.getContent())
                .user(user)
                .orderItem(orderItem)
                .productOption(productOption)
                .build();

        Review savedReview = reviewRepository.save(review);

        // 이미지 처리
        if(images != null) {
            processReviewImages(images, savedReview);
        }
    }

    /**
     * 리뷰 수정
     * @param reviewId 리뷰 ID
     * @param requestDto 리뷰 수정 요청 데이터
     * @param images 새로 업로드할 이미지 파일들 (선택적)
     */
    public void updateReview(Long reviewId, ReviewUpdateRequestDto requestDto, List<MultipartFile> images) {

        User user = getCurrentUser();
        Review review = validateReviewOwnership(reviewId, user);

        // 리뷰 내용 수정
        if (requestDto.getRating() != null) {
            review.updateRating(requestDto.getRating());
        }
        if (requestDto.getContent() != null && !requestDto.getContent().trim().isEmpty()) {
            review.updateContent(requestDto.getContent());
        }

        // 새로운 이미지가 있는 경우 기존 이미지 삭제 후 새 이미지 추가
        if (images != null && !images.isEmpty()) {
            // 기존 이미지 삭제
            review.getReviewMedias().clear();
            // 새 이미지 추가
            processReviewImages(images, review);
        }

        reviewRepository.save(review);
    }

    /**
     * 리뷰 삭제
     * @param reviewId 삭제할 리뷰 기본키
     */
    public void deleteReview(Long reviewId) {

        User user = getCurrentUser();
        Review review = validateReviewOwnership(reviewId, user);

        reviewRepository.delete(review);
    }

    /**
     * 이미지 파일을 Resource로 로드
     * @param filename 이미지 파일명
     * @return Resource 객체
     */
    public Resource loadImageAsResource(String filename) {
        return fileStorageUtil.loadImageAsResource(filename);
    }

    /**
     * 현재 로그인한 사용자 조회
     * @return 현재 사용자
     */
    private User getCurrentUser() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String loginId = authentication.getName();
        return userRepository.findByLoginId(loginId)
                .orElseThrow(() -> new BusinessException(ErrorCode.USER_NOT_EXISTS));
    }

    /**
     * 리뷰 조회 및 소유권 검증
     * @param reviewId 리뷰 ID
     * @param user 현재 사용자
     * @return 검증된 리뷰
     */
    private Review validateReviewOwnership(Long reviewId, User user) {
        Review review = reviewRepository.findById(reviewId)
                .orElseThrow(() -> new BusinessException(ErrorCode.REVIEW_NOT_FOUND));

        // 리뷰 작성자와 현재 사용자가 같은지 확인
        if (!review.getUser().getId().equals(user.getId())) {
            throw new BusinessException(ErrorCode.REVIEW_MODIFY_FORBIDDEN);
        }

        return review;
    }

    /**
     * 리뷰 이미지 처리
     * @param images 업로드할 이미지 파일들
     * @param review 리뷰 엔티티
     */
    private void processReviewImages(List<MultipartFile> images, Review review) {
        if (images != null && !images.isEmpty()) {
            List<ReviewMedia> reviewMedias = new ArrayList<>();

            for (MultipartFile image : images) {
                try {
                    String savedPath = fileStorageUtil.saveReviewImage(image);

                    ReviewMedia reviewMedia = ReviewMedia.builder()
                            .mediaType(MediaType.IMAGE)
                            .mediaUrl(savedPath)
                            .review(review)
                            .build();

                    reviewMedias.add(reviewMedia);
                } catch (IOException e) {
                    throw new RuntimeException("이미지 저장 중 오류가 발생했습니다.", e);
                }
            }

            review.getReviewMedias().addAll(reviewMedias);
        }
    }

}
