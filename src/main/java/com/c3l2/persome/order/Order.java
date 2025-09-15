package com.c3l2.persome.order;

import jakarta.persistence.*;
import lombok.*;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "order")
@Entity
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_coupon_id",unique=true)
    private UserCoupon userCoupon;

    @OneToMany(mappedBy = "order", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<OrderItem> orderItems = new ArrayList<>();

    @Enumerated(EnumType.STRING)
    @Column(name = "receive_type", nullable = false, length = 20)
    private ReceiveType receiveType; //수령 방식

    @Enumerated(EnumType.STRING)
    @Column(name = "order_status", nullable = false, length = 30)
    private OrderStatus orderStatus; //배송 상태

    @Column(name = "order_date", nullable = false, columnDefinition = "DATETIME(0)")
    private LocalDateTime orderDate; //주문 일자

    @Column(name = "shipping_fee", nullable = false)
    private Integer shippingFee; // 배송비

    @Column(name = "order_total_amount", precision = 15, scale = 2, nullable = false)
    private BigDecimal orderTotalAmount; //주문총액

    @Column(name = "order_total_qty", nullable = false)
    private Integer orderTotalQty; // 총 주문 수량

    @Column(name = "original_price", precision = 15, scale = 2, nullable = false)
    private BigDecimal originalPrice; //할인 전 총액

    @Column(name = "coupon_discount_amount", precision = 15, scale = 2, nullable = false)
    private BigDecimal cuponDiscountAmount; //쿠폰 할인 금액

    @Column(name = "point_used_amount", precision = 15, scale = 2, nullable = false)
    private BigDecimal pointUsedAmount; //포인트 할인 금액

    @Column(name = "request_message", length = 255)
    private String requestMessage; //요청사항

    @Column(name = "created_at", nullable = false, updatable = false, columnDefinition = "DATETIME(0)")
    private LocalDateTime createdAt; //생성일

    @Column(name = "updated_at", columnDefinition = "DATETIME(0)")
    private LocalDateTime updatedAt; //수정일

    @PrePersist
    protected void onCreate() {
        LocalDateTime now = LocalDateTime.now();
        this.createdAt = now;
        this.updatedAt = now;
    }

    @PreUpdate
    protected void onUpdate() {
        this.updatedAt = LocalDateTime.now();
    }
}
