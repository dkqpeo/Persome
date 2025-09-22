package com.c3l2.persome.coupon.entity;

import com.c3l2.persome.coupon.entity.constant.UserCouponStatus;
import com.c3l2.persome.user.entity.User;
import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;

@Entity
@Table(name = "user_coupon")
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UserCoupon {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "used_at")
    private LocalDateTime usedAt;

    @Enumerated(EnumType.STRING)
    @Column(name = "status", nullable = false)
    private UserCouponStatus status;

    @Column(name = "created_at", nullable = false)
    private LocalDateTime createdAt;

    @Column(name = "expired_at", nullable = false)
    private LocalDateTime expiredAt;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name= "coupon_id",  nullable = false)
    private Coupon coupon;

    @PrePersist
    public void prePersist(){
        this.createdAt = LocalDateTime.now();
    }
}
