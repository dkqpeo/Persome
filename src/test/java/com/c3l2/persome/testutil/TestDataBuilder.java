package com.c3l2.persome.testutil;

import com.c3l2.persome.brand.entity.Brand;
import com.c3l2.persome.membership.entity.MembershipLevel;
import com.c3l2.persome.membership.entity.Name;
import com.c3l2.persome.order.entity.Order;
import com.c3l2.persome.order.entity.OrderItem;
import com.c3l2.persome.order.entity.OrderStatus;
import com.c3l2.persome.order.entity.ReceiveType;
import com.c3l2.persome.product.entity.Category;
import com.c3l2.persome.product.entity.Product;
import com.c3l2.persome.product.entity.ProductOption;
import com.c3l2.persome.review.entity.Review;
import com.c3l2.persome.review.entity.ReviewMedia;
import com.c3l2.persome.review.entity.constant.MediaType;
import com.c3l2.persome.user.entity.User;

import java.math.BigDecimal;
import java.time.LocalDateTime;

public class TestDataBuilder {

    public static MembershipLevel createTestMembershipLevel() {
        return MembershipLevel.builder()
                .name(Name.BABY)
                .minAmount(0)
                .maxAmount(100000)
                .build();
    }

    public static User createTestUser(MembershipLevel membershipLevel) {
        return User.builder()
                .loginId("testuser")
                .password("password123")
                .name("테스트사용자")
                .email("test@example.com")
                .phone("010-1234-5678")
                .membershipLevel(membershipLevel)
                .build();
    }

    public static User createTestUser(String loginId, MembershipLevel membershipLevel) {
        return User.builder()
                .loginId(loginId)
                .password("password123")
                .name("테스트사용자")
                .email(loginId + "@example.com")
                .phone("010-1234-5678")
                .membershipLevel(membershipLevel)
                .build();
    }

    public static Category createTestCategory() {
        return Category.builder()
                .name("테스트 카테고리")
                .build();
    }

    public static Brand createTestBrand() {
        return Brand.builder()
                .name("테스트 브랜드")
                .description("테스트용 브랜드입니다")
                .build();
    }

    public static Product createTestProduct(Category category, Brand brand) {
        return Product.builder()
                .name("테스트 상품")
                .description("테스트용 상품입니다")
                .category(category)
                .brand(brand)
                .build();
    }

    public static ProductOption createTestProductOption(Product product) {
        return ProductOption.builder()
                .name("Red-XL")
                .additionalAmount(5000)
                .product(product)
                .build();
    }

    public static Order createTestOrder(User user) {
        return Order.builder()
                .user(user)
                .receiveType(ReceiveType.DELIVERY)
                .orderStatus(OrderStatus.COMPLETED)
                .orderDate(LocalDateTime.now())
                .shippingFee(3000)
                .orderTotalAmount(BigDecimal.valueOf(55000))
                .orderTotalQty(1)
                .originalPrice(BigDecimal.valueOf(55000))
                .couponDiscountAmount(BigDecimal.ZERO)
                .pointUsedAmount(BigDecimal.ZERO)
                .build();
    }

    public static OrderItem createTestOrderItem(Order order, ProductOption productOption) {
        return OrderItem.builder()
                .order(order)
                .productOption(productOption)
                .quantity(1)
                .unitPrice(BigDecimal.valueOf(50000))
                .totalPrice(BigDecimal.valueOf(50000))
                .build();
    }

    public static Review createTestReview(User user, OrderItem orderItem, ProductOption productOption) {
        return Review.builder()
                .rating(BigDecimal.valueOf(4.5))
                .content("좋은 제품입니다!")
                .user(user)
                .orderItem(orderItem)
                .productOption(productOption)
                .build();
    }

    public static ReviewMedia createTestReviewMedia(Review review) {
        return ReviewMedia.builder()
                .mediaType(MediaType.IMAGE)
                .mediaUrl("uploads/review-images/test-image.jpg")
                .review(review)
                .build();
    }
}