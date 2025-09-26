package com.c3l2.persome.review.service;

import com.c3l2.persome.common.util.FileStorageUtil;
import com.c3l2.persome.config.error.ErrorCode;
import com.c3l2.persome.config.error.exceprion.BusinessException;
import com.c3l2.persome.order.entity.Order;
import com.c3l2.persome.order.entity.OrderItem;
import com.c3l2.persome.order.repository.OrderItemRepository;
import com.c3l2.persome.product.entity.Product;
import com.c3l2.persome.product.entity.ProductOption;
import com.c3l2.persome.product.repository.ProductOptionRepository;
import com.c3l2.persome.review.dto.ReviewRegisterRequestDto;
import com.c3l2.persome.review.entity.Review;
import com.c3l2.persome.review.repository.ReviewRepository;
import com.c3l2.persome.user.entity.User;
import com.c3l2.persome.user.repository.UserRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.mock.web.MockMultipartFile;
import org.springframework.security.authentication.TestingAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.multipart.MultipartFile;

import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;

import static org.assertj.core.api.Assertions.*;
import static org.mockito.ArgumentMatchers.*;
import static org.mockito.BDDMockito.*;

@ExtendWith(MockitoExtension.class)
class ReviewServiceTest {

    @InjectMocks
    private ReviewService reviewService;

    @Mock
    private ReviewRepository reviewRepository;

    @Mock
    private OrderItemRepository orderItemRepository;

    @Mock
    private ProductOptionRepository productOptionRepository;

    @Mock
    private UserRepository userRepository;

    @Mock
    private FileStorageUtil fileStorageUtil;

    private User testUser;
    private OrderItem testOrderItem;
    private ProductOption testProductOption;
    private ReviewRegisterRequestDto reviewRequest;

    @BeforeEach
    void setUp() {
        // 테스트 사용자 설정
        testUser = User.builder()
                .id(1L)
                .loginId("testuser")
                .name("테스트유저")
                .build();

        // 테스트 상품 옵션 설정
        Product testProduct = Product.builder()
                .id(1L)
                .name("테스트 상품")
                .build();

        testProductOption = ProductOption.builder()
                .id(1L)
                .name("기본 옵션")
                .product(testProduct)
                .build();

        // 테스트 주문 아이템 설정
        Order testOrder = Order.builder()
                .id(1L)
                .user(testUser)
                .build();

        testOrderItem = OrderItem.builder()
                .id(1L)
                .order(testOrder)
                .productOption(testProductOption)
                .quantity(1)
                .unitPrice(BigDecimal.valueOf(10000))
                .totalPrice(BigDecimal.valueOf(10000))
                .build();

        // 리뷰 등록 요청 DTO 설정
        reviewRequest = ReviewRegisterRequestDto.builder()
                .productOptionId(1L)
                .rating(BigDecimal.valueOf(4.5))
                .content("정말 좋은 상품입니다!")
                .build();

        // Security Context 설정
        SecurityContextHolder.getContext().setAuthentication(
                new TestingAuthenticationToken("testuser", "password", "ROLE_USER"));
    }

    @Test
    @DisplayName("리뷰 작성 성공 - 이미지 없이")
    void registerReview_Success_WithoutImages() {
        // Given
        given(userRepository.findByLoginId("testuser")).willReturn(Optional.of(testUser));
        given(orderItemRepository.findById(1L)).willReturn(Optional.of(testOrderItem));
        given(productOptionRepository.findById(1L)).willReturn(Optional.of(testProductOption));
        given(reviewRepository.save(any(Review.class))).willAnswer(invocation -> {
            Review review = invocation.getArgument(0);
            return Review.builder()
                    .id(1L)
                    .rating(review.getRating())
                    .content(review.getContent())
                    .user(review.getUser())
                    .orderItem(review.getOrderItem())
                    .productOption(review.getProductOption())
                    .build();
        });

        // When & Then
        assertThatCode(() -> reviewService.registerReview(1L, reviewRequest, null))
                .doesNotThrowAnyException();

        // Verify
        verify(reviewRepository).save(any(Review.class));
        verify(orderItemRepository).findById(1L);
        verify(productOptionRepository).findById(1L);
        verify(userRepository).findByLoginId("testuser");
    }

    @Test
    @DisplayName("리뷰 작성 성공 - 이미지 포함")
    void registerReview_Success_WithImages() throws Exception {
        // Given
        MockMultipartFile image1 = new MockMultipartFile(
                "images", "test1.jpg", "image/jpeg", "test image 1".getBytes());
        MockMultipartFile image2 = new MockMultipartFile(
                "images", "test2.jpg", "image/jpeg", "test image 2".getBytes());
        List<MultipartFile> images = List.of(image1, image2);

        given(userRepository.findByLoginId("testuser")).willReturn(Optional.of(testUser));
        given(orderItemRepository.findById(1L)).willReturn(Optional.of(testOrderItem));
        given(productOptionRepository.findById(1L)).willReturn(Optional.of(testProductOption));
        given(fileStorageUtil.saveReviewImage(any(MultipartFile.class)))
                .willReturn("/uploads/reviews/test.jpg");
        given(reviewRepository.save(any(Review.class))).willAnswer(invocation -> {
            Review review = invocation.getArgument(0);
            return Review.builder()
                    .id(1L)
                    .rating(review.getRating())
                    .content(review.getContent())
                    .user(review.getUser())
                    .orderItem(review.getOrderItem())
                    .productOption(review.getProductOption())
                    .build();
        });

        // When & Then
        assertThatCode(() -> reviewService.registerReview(1L, reviewRequest, images))
                .doesNotThrowAnyException();

        // Verify
        verify(reviewRepository).save(any(Review.class));
        verify(fileStorageUtil, times(2)).saveReviewImage(any(MultipartFile.class));
    }

    @Test
    @DisplayName("리뷰 작성 실패 - 존재하지 않는 주문 아이템")
    void registerReview_Fail_OrderItemNotFound() {
        // Given
        given(userRepository.findByLoginId("testuser")).willReturn(Optional.of(testUser));
        given(orderItemRepository.findById(999L)).willReturn(Optional.empty());

        // When & Then
        assertThatThrownBy(() -> reviewService.registerReview(999L, reviewRequest, null))
                .isInstanceOf(BusinessException.class)
                .hasMessage(ErrorCode.ORDER_ITEM_NOT_FOUND.getMessage());

        verify(reviewRepository, never()).save(any(Review.class));
    }

    @Test
    @DisplayName("리뷰 작성 실패 - 존재하지 않는 상품 옵션")
    void registerReview_Fail_ProductOptionNotFound() {
        // Given
        ReviewRegisterRequestDto invalidRequest = ReviewRegisterRequestDto.builder()
                .productOptionId(999L)
                .rating(BigDecimal.valueOf(4.5))
                .content("좋은 상품입니다!")
                .build();

        given(userRepository.findByLoginId("testuser")).willReturn(Optional.of(testUser));
        given(orderItemRepository.findById(1L)).willReturn(Optional.of(testOrderItem));
        given(productOptionRepository.findById(999L)).willReturn(Optional.empty());

        // When & Then
        assertThatThrownBy(() -> reviewService.registerReview(1L, invalidRequest, null))
                .isInstanceOf(BusinessException.class)
                .hasMessage(ErrorCode.PRODUCT_OPTION_NOT_FOUND.getMessage());

        verify(reviewRepository, never()).save(any(Review.class));
    }

    @Test
    @DisplayName("리뷰 작성 실패 - 사용자 인증 실패")
    void registerReview_Fail_UserNotFound() {
        // Given
        given(userRepository.findByLoginId("testuser")).willReturn(Optional.empty());

        // When & Then
        assertThatThrownBy(() -> reviewService.registerReview(1L, reviewRequest, null))
                .isInstanceOf(BusinessException.class)
                .hasMessage(ErrorCode.USER_NOT_EXISTS.getMessage());

        verify(reviewRepository, never()).save(any(Review.class));
    }

    @Test
    @DisplayName("리뷰 작성 성공 - 필수 필드 검증")
    void registerReview_Success_ValidateRequiredFields() {
        // Given
        given(userRepository.findByLoginId("testuser")).willReturn(Optional.of(testUser));
        given(orderItemRepository.findById(1L)).willReturn(Optional.of(testOrderItem));
        given(productOptionRepository.findById(1L)).willReturn(Optional.of(testProductOption));
        given(reviewRepository.save(any(Review.class))).willAnswer(invocation -> {
            Review review = invocation.getArgument(0);
            
            // 저장되는 리뷰의 필수 필드들 검증
            assertThat(review.getRating()).isEqualTo(BigDecimal.valueOf(4.5));
            assertThat(review.getContent()).isEqualTo("정말 좋은 상품입니다!");
            assertThat(review.getUser()).isEqualTo(testUser);
            assertThat(review.getOrderItem()).isEqualTo(testOrderItem);
            assertThat(review.getProductOption()).isEqualTo(testProductOption);
            
            return review;
        });

        // When & Then
        assertThatCode(() -> reviewService.registerReview(1L, reviewRequest, null))
                .doesNotThrowAnyException();
    }
}
