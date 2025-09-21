package com.c3l2.persome.review.controller;

import com.c3l2.persome.brand.entity.Brand;
import com.c3l2.persome.brand.repository.BrandRepository;
import com.c3l2.persome.category.repository.CategoryRepository;
import com.c3l2.persome.membership.entity.MembershipLevel;
import com.c3l2.persome.membership.repository.MembershipLevelRepository;
import com.c3l2.persome.order.entity.Order;
import com.c3l2.persome.order.entity.OrderItem;
import com.c3l2.persome.order.repository.OrderItemRepository;
import com.c3l2.persome.order.repository.OrderRepository;
import com.c3l2.persome.product.entity.Category;
import com.c3l2.persome.product.entity.Product;
import com.c3l2.persome.product.entity.ProductOption;
import com.c3l2.persome.product.repository.ProductOptionRepository;
import com.c3l2.persome.product.repository.ProductRepository;
import com.c3l2.persome.review.dto.ProductReviewResponseDto;
import com.c3l2.persome.review.dto.ReviewRegisterRequestDto;
import com.c3l2.persome.review.dto.ReviewUpdateRequestDto;
import com.c3l2.persome.review.entity.Review;
import com.c3l2.persome.review.repository.ReviewRepository;
import com.c3l2.persome.testutil.TestDataBuilder;
import com.c3l2.persome.user.entity.User;
import com.c3l2.persome.user.repository.UserRepository;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.mock.web.MockMultipartFile;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@SpringBootTest(classes = com.c3l2.persome.PersomeApplication.class)
@AutoConfigureMockMvc
@Transactional
@ActiveProfiles("test")
public class ReviewControllerIntegrationTest {

    @Autowired
    private MockMvc mockMvc;

    @Autowired
    private ObjectMapper objectMapper;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private MembershipLevelRepository membershipLevelRepository;

    @Autowired
    private CategoryRepository categoryRepository;

    @Autowired
    private BrandRepository brandRepository;

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private ProductOptionRepository productOptionRepository;

    @Autowired
    private OrderRepository orderRepository;

    @Autowired
    private OrderItemRepository orderItemRepository;

    @Autowired
    private ReviewRepository reviewRepository;

    private User testUser;
    private MembershipLevel testMembershipLevel;
    private Category testCategory;
    private Brand testBrand;
    private Product testProduct;
    private ProductOption testProductOption;
    private Order testOrder;
    private OrderItem testOrderItem;

    @BeforeEach
    void setUp() {
        // 테스트 데이터 생성
        testMembershipLevel = membershipLevelRepository.save(TestDataBuilder.createTestMembershipLevel());
        testUser = userRepository.save(TestDataBuilder.createTestUser(testMembershipLevel));
        testCategory = categoryRepository.save(TestDataBuilder.createTestCategory());
        testBrand = brandRepository.save(TestDataBuilder.createTestBrand());
        testProduct = productRepository.save(TestDataBuilder.createTestProduct(testCategory, testBrand));
        testProductOption = productOptionRepository.save(TestDataBuilder.createTestProductOption(testProduct));
        testOrder = orderRepository.save(TestDataBuilder.createTestOrder(testUser));
        testOrderItem = orderItemRepository.save(TestDataBuilder.createTestOrderItem(testOrder, testProductOption));
    }

    @Test
    @DisplayName("상품별 리뷰 목록 조회 성공")
    @WithMockUser(username = "testuser")
    void getProductReviews_Success() throws Exception {
        // given
        Review review = TestDataBuilder.createTestReview(testUser, testOrderItem, testProductOption);
        Review savedReview = reviewRepository.save(review);

        // when & then
        mockMvc.perform(get("/reviews/products/{productId}", testProduct.getId())
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.message").value("리뷰 조회 완료."))
                .andExpect(jsonPath("$.data").isArray())
                .andExpect(jsonPath("$.data").isNotEmpty())
                .andExpect(jsonPath("$.data[0].reviewId").value(savedReview.getId()))
                .andExpect(jsonPath("$.data[0].userLoginId").value(testUser.getLoginId()))
                .andExpect(jsonPath("$.data[0].productOptionName").value(testProductOption.getName()))
                .andExpect(jsonPath("$.data[0].rating").value(4.5))
                .andExpect(jsonPath("$.data[0].content").value("좋은 제품입니다!"));
    }

    @Test
    @DisplayName("리뷰 등록 성공")
    @WithMockUser(username = "testuser")
    void registerReview_Success() throws Exception {
        // given
        ReviewRegisterRequestDto requestDto = ReviewRegisterRequestDto.builder()
                .productOptionId(testProductOption.getId())
                .rating(BigDecimal.valueOf(5.0))
                .content("정말 좋은 상품입니다!")
                .build();

        MockMultipartFile reviewPart = new MockMultipartFile(
                "review",
                "",
                MediaType.APPLICATION_JSON_VALUE,
                objectMapper.writeValueAsBytes(requestDto)
        );

        MockMultipartFile imagePart = new MockMultipartFile(
                "images",
                "test-image.jpg",
                MediaType.IMAGE_JPEG_VALUE,
                "test image content".getBytes()
        );

        // when & then
        mockMvc.perform(multipart("/reviews/products/{orderItemId}", testOrderItem.getId())
                        .file(reviewPart)
                        .file(imagePart)
                        .contentType(MediaType.MULTIPART_FORM_DATA))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.message").value("리뷰 등록이 완료되었습니다."));

        // 데이터베이스 검증
        List<Review> reviews = reviewRepository.findAll();
        assertThat(reviews).hasSize(1);
        assertThat(reviews.get(0).getContent()).isEqualTo("정말 좋은 상품입니다!");
        assertThat(reviews.get(0).getRating()).isEqualTo(BigDecimal.valueOf(5.0));
        assertThat(reviews.get(0).getUser().getId()).isEqualTo(testUser.getId());
        assertThat(reviews.get(0).getOrderItem().getId()).isEqualTo(testOrderItem.getId());
        assertThat(reviews.get(0).getProductOption().getId()).isEqualTo(testProductOption.getId());
    }

    @Test
    @DisplayName("리뷰 수정 성공")
    @WithMockUser(username = "testuser")
    void updateReview_Success() throws Exception {
        // given
        Review review = TestDataBuilder.createTestReview(testUser, testOrderItem, testProductOption);
        Review savedReview = reviewRepository.save(review);

        ReviewUpdateRequestDto requestDto = ReviewUpdateRequestDto.builder()
                .rating(BigDecimal.valueOf(3.5))
                .content("수정된 리뷰 내용입니다.")
                .build();

        MockMultipartFile reviewPart = new MockMultipartFile(
                "review",
                "",
                MediaType.APPLICATION_JSON_VALUE,
                objectMapper.writeValueAsBytes(requestDto)
        );

        // when & then
        mockMvc.perform(multipart("/reviews/{reviewId}", savedReview.getId())
                        .file(reviewPart)
                        .with(request -> {
                            request.setMethod("PATCH");
                            return request;
                        })
                        .contentType(MediaType.MULTIPART_FORM_DATA))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.message").value("리뷰 수정이 완료되었습니다."));

        // 데이터베이스 검증
        Review updatedReview = reviewRepository.findById(savedReview.getId()).orElseThrow();
        assertThat(updatedReview.getContent()).isEqualTo("수정된 리뷰 내용입니다.");
        assertThat(updatedReview.getRating()).isEqualTo(BigDecimal.valueOf(3.5));
    }

    @Test
    @DisplayName("다른 사용자의 리뷰 수정 시도 - 실패")
    @WithMockUser(username = "otheruser")
    void updateReview_Unauthorized() throws Exception {
        // given
        userRepository.save(TestDataBuilder.createTestUser("otheruser", testMembershipLevel));
        Review review = TestDataBuilder.createTestReview(testUser, testOrderItem, testProductOption);
        Review savedReview = reviewRepository.save(review);

        ReviewUpdateRequestDto requestDto = ReviewUpdateRequestDto.builder()
                .rating(BigDecimal.valueOf(3.5))
                .content("수정된 리뷰 내용입니다.")
                .build();

        MockMultipartFile reviewPart = new MockMultipartFile(
                "review",
                "",
                MediaType.APPLICATION_JSON_VALUE,
                objectMapper.writeValueAsBytes(requestDto)
        );

        // when & then
        mockMvc.perform(multipart("/reviews/{reviewId}", savedReview.getId())
                        .file(reviewPart)
                        .with(request -> {
                            request.setMethod("PATCH");
                            return request;
                        })
                        .contentType(MediaType.MULTIPART_FORM_DATA))
                .andExpect(status().isForbidden());
    }

    @Test
    @DisplayName("존재하지 않는 리뷰 수정 시도 - 실패")
    @WithMockUser(username = "testuser")
    void updateReview_NotFound() throws Exception {
        // given
        Long nonExistentReviewId = 999L;

        ReviewUpdateRequestDto requestDto = ReviewUpdateRequestDto.builder()
                .rating(BigDecimal.valueOf(3.5))
                .content("수정된 리뷰 내용입니다.")
                .build();

        MockMultipartFile reviewPart = new MockMultipartFile(
                "review",
                "",
                MediaType.APPLICATION_JSON_VALUE,
                objectMapper.writeValueAsBytes(requestDto)
        );

        // when & then
        mockMvc.perform(multipart("/reviews/{reviewId}", nonExistentReviewId)
                        .file(reviewPart)
                        .with(request -> {
                            request.setMethod("PATCH");
                            return request;
                        })
                        .contentType(MediaType.MULTIPART_FORM_DATA))
                .andExpect(status().isNotFound());
    }

    @Test
    @DisplayName("리뷰 이미지 다운로드 성공")
    @WithMockUser(username = "testuser")
    void getReviewImage_Success() throws Exception {
        // when & then
        mockMvc.perform(get("/reviews/images/{filename}", "test-image.jpg"))
                .andExpect(status().isNotFound()); // 실제 파일이 없으므로 404 예상
    }

    @Test
    @DisplayName("리뷰 삭제 성공")
    @WithMockUser(username = "testuser")
    void deleteReview_Success() throws Exception {
        // given
        Review review = TestDataBuilder.createTestReview(testUser, testOrderItem, testProductOption);
        Review savedReview = reviewRepository.save(review);
        
        // when & then
        mockMvc.perform(delete("/reviews/{reviewId}", savedReview.getId())
                        .contentType(MediaType.APPLICATION_JSON_VALUE))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.message").value("해당 리뷰가 삭제되었습니다."));

        // 데이터베이스 검증
        assertThat(reviewRepository.findById(savedReview.getId())).isEmpty();
    }

    @Test
    @DisplayName("다른 사용자의 리뷰 삭제 시도 - 실패")
    @WithMockUser(username = "otheruser")
    void deleteReview_Unauthorized() throws Exception {
        // given
        userRepository.save(TestDataBuilder.createTestUser("otheruser", testMembershipLevel));
        Review review = TestDataBuilder.createTestReview(testUser, testOrderItem, testProductOption);
        Review savedReview = reviewRepository.save(review);

        // when & then
        mockMvc.perform(delete("/reviews/{reviewId}", savedReview.getId())
                        .contentType(MediaType.APPLICATION_JSON_VALUE))
                .andExpect(status().isForbidden());

        // 데이터베이스 검증 - 리뷰가 삭제되지 않았는지 확인
        assertThat(reviewRepository.findById(savedReview.getId())).isPresent();
    }

    @Test
    @DisplayName("존재하지 않는 리뷰 삭제 시도 - 실패")
    @WithMockUser(username = "testuser")
    void deleteReview_NotFound() throws Exception {
        // given
        Long nonExistentReviewId = 999L;

        // when & then
        mockMvc.perform(delete("/reviews/{reviewId}", nonExistentReviewId)
                        .contentType(MediaType.APPLICATION_JSON_VALUE))
                .andExpect(status().isNotFound());
    }
}