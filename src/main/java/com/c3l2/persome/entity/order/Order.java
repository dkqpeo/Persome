package com.c3l2.persome.entity.order;

import com.c3l2.persome.entity.coupon.UserCoupon;
import com.c3l2.persome.entity.delivery.Delivery;
import com.c3l2.persome.entity.delivery.DeliverySnapshot;
import com.c3l2.persome.entity.delivery.DeliveryStatus;
import com.c3l2.persome.entity.user.User;
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
@Table(name = "`order`")
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
    @Builder.Default
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
    private BigDecimal couponDiscountAmount; //쿠폰 할인 금액

    @Column(name = "point_used_amount", precision = 15, scale = 2, nullable = false)
    private BigDecimal pointUsedAmount; //포인트 할인 금액

    @Column(name = "promo_discount_amount", precision = 15, scale = 2)
    private BigDecimal promoDiscountAmount; //프로모션 할인 금액

    @Column(name = "request_message", length = 255)
    private String requestMessage; //요청사항

    @Column(name = "created_at", nullable = false, updatable = false, columnDefinition = "DATETIME(0)")
    private LocalDateTime createdAt; //생성일

    @Column(name = "updated_at", columnDefinition = "DATETIME(0)")
    private LocalDateTime updatedAt; //수정일

    @OneToOne(mappedBy = "order", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private Delivery delivery;

    @Column(name = "scheduled_status_change_at", columnDefinition = "DATETIME(0)")
    private LocalDateTime scheduledStatusChangeAt; //상태 자동 변경 예정 시각

    @PrePersist
    protected void onCreate() {
        LocalDateTime now = LocalDateTime.now();
        this.createdAt = now;
        this.updatedAt = now;

        if (this.orderStatus == null) {
            this.orderStatus = OrderStatus.PENDING;
        }
        if (this.scheduledStatusChangeAt == null) {
            this.scheduledStatusChangeAt = now.plusHours(1); //1시간 뒤 상태 변경
        }
    }

    @PreUpdate
    protected void onUpdate() {
        this.updatedAt = LocalDateTime.now();
    }

    //유저쿠폰 추가
    public void assignUserCoupon(UserCoupon userCoupon) {this.userCoupon = userCoupon;}
    //가격 적용
    public void applyPricing(BigDecimal originalPrice, BigDecimal promoDiscount, int totalQty) {
        this.originalPrice = originalPrice;
        this.promoDiscountAmount = promoDiscount;
        this.orderTotalQty = totalQty;
    }
    //쿠폰 할인 적용
    public void applyCouponDiscount(BigDecimal discountAmount) {this.couponDiscountAmount = discountAmount;}
    //포인트 할인 적용
    public void applyPointDiscount(BigDecimal pointAmount) {this.pointUsedAmount = pointAmount;}
    //배송비 설정
    public void applyShippingFee(int shippingFee) {this.shippingFee = shippingFee;}
    //최종 결제 금액
    public void calculateFinalAmount(BigDecimal afterPoint, int shippingFee) {this.orderTotalAmount = afterPoint.add(BigDecimal.valueOf(shippingFee));}
    //배송 스냅샷 등록
    public void registerDelivery(DeliverySnapshot snapshot) {
        this.delivery = Delivery.builder()
                .order(this)
                .deliveryStatus(DeliveryStatus.READY)
                .deliverySnapshot(snapshot)
                .build();
    }
    //주문 취소
    public void cancel() {this.orderStatus = OrderStatus.CANCELED;}
    //주문 완료
    public void paid() {this.orderStatus = OrderStatus.PAID;}
}
