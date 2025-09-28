package com.c3l2.persome.review.entity;

import com.c3l2.persome.order.entity.OrderItem;
import com.c3l2.persome.product.entity.ProductOption;
import com.c3l2.persome.user.entity.User;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "review", 
       uniqueConstraints = @UniqueConstraint(columnNames = {"user_id", "product_option_id"}))
@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Review {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "rating", columnDefinition = "DECIMAL(2,1)", nullable = false)
    private BigDecimal rating;

    @Column(name = "content", columnDefinition = "TEXT", nullable = false)
    private String content;

    @Column(name = "created_at", nullable = false)
    private LocalDate createdAt;

    // TODO : user, Order Entity 연결
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "order_item_id", nullable = false)
    private OrderItem orderItem;

    @ManyToOne
    @JoinColumn(name = "product_option_id")
    private ProductOption productOption;

    @OneToMany(mappedBy = "review", cascade = CascadeType.ALL, orphanRemoval = true)
    @Builder.Default
    private List<ReviewMedia> reviewMedias = new ArrayList<>();

    @PrePersist
    protected void onCreate() {
        this.createdAt = LocalDate.now();
    }

    /**
     * 리뷰 평점 수정
     */
    public void updateRating(BigDecimal rating) {
        this.rating = rating;
    }

    /**
     * 리뷰 내용 수정
     */
    public void updateContent(String content) {
        this.content = content;
    }

}

