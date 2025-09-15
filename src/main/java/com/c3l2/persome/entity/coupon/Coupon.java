package com.c3l2.persome.entity.coupon;

import com.c3l2.persome.entity.coupon.constant.CouponStatus;
import com.c3l2.persome.entity.coupon.constant.DiscountType;
import com.c3l2.persome.entity.event.Event;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "coupon")
@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Coupon {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "code", nullable = false)
    private String code;

    @Column(name = "discount_type", nullable = false)
    @Enumerated(EnumType.STRING)
    private DiscountType discountType;

    @Column(name = "discount_value", nullable = false)
    private BigDecimal discountValue;

    @Column(name = "min_order_price", nullable = false)
    private BigDecimal minOrderPrice;

    @Column(name = "max_discount_price", nullable = false)
    private BigDecimal maxDiscountPrice;

    @Column(name = "limit_issue_count", nullable = false)
    private Integer limitIssueCount;

    @Column(name = "issue_count", nullable = false)
    private Integer issueCount;

    @Column(name = "used_count", nullable = false)
    private Integer usedCount;

    @Column(name = "start_date", columnDefinition = "Datetime(0)", nullable = false)
    private LocalDateTime startDate;

    @Column(name = "end_date", columnDefinition = "Datetime(0)", nullable = false)
    private LocalDateTime endDate;

    @Column(name = "created_at", columnDefinition = "Datetime(0)", nullable = false)
    private LocalDateTime createdAt;

    @Column(name = "updated_at", columnDefinition = "Datetime(0)", nullable = false)
    private LocalDateTime updatedAt;

    @Column(name = "status", nullable = false)
    @Enumerated(EnumType.STRING)
    private CouponStatus status;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "event_id")
    private Event event;

    @OneToMany(mappedBy = "coupon", cascade = CascadeType.ALL)
    @Builder.Default
    private List<UserCoupon> userCouponList = new ArrayList<>();

    @PrePersist
    public void prePersist(){
        this.createdAt = LocalDateTime.now();
        this.updatedAt = LocalDateTime.now();
    }

    @PreUpdate
    public void preUpdate(){
        this.updatedAt = LocalDateTime.now();
    }
}
