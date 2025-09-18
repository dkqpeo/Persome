package com.c3l2.persome.user.entity;

import com.c3l2.persome.cart.entity.Cart;
import com.c3l2.persome.coupon.entity.UserCoupon;
import com.c3l2.persome.membership.entity.MembershipHistory;
import com.c3l2.persome.membership.entity.MembershipLevel;
import com.c3l2.persome.order.entity.Order;
import com.c3l2.persome.point.entity.PointTransaction;
import com.c3l2.persome.point.entity.UserPoint;
import com.c3l2.persome.review.entity.Review;
import com.c3l2.persome.user.dto.UserUpdateDto;
import com.c3l2.persome.wishlist.entity.Wishlist;
import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "user")
@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "membership_id", nullable = false)
    private MembershipLevel membershipLevel;

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL, orphanRemoval = true)
    @Builder.Default
    private List<MembershipHistory> membershipHistories = new ArrayList<>();

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL, orphanRemoval = true)
    @Builder.Default
    private List<UserAddress> userAddresses = new ArrayList<>();

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL, orphanRemoval = true)
    @Builder.Default
    private List<UserConsent> userConsents = new ArrayList<>();

    @OneToOne(mappedBy = "user", cascade = CascadeType.ALL, orphanRemoval = true)
    private UserNotification userNotification;

    @OneToOne(mappedBy = "user",  cascade = CascadeType.ALL, orphanRemoval = true)
    private Cart cart;

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL, orphanRemoval = true)
    @Builder.Default
    private List<Wishlist> wishlists = new ArrayList<>();

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL, orphanRemoval = true)
    @Builder.Default
    private List<UserCoupon> userCoupons = new ArrayList<>();

    @OneToOne(mappedBy = "user", cascade = CascadeType.ALL, orphanRemoval = true)
    private UserPoint userPoint;

    @OneToMany(mappedBy = "user",  cascade = CascadeType.ALL, orphanRemoval = true)
    @Builder.Default
    private List<PointTransaction> pointTransactions = new ArrayList<>();

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL, orphanRemoval = true)
    @Builder.Default
    private List<Order> orders = new ArrayList<>();

    @OneToMany(mappedBy = "user",  cascade = CascadeType.ALL, orphanRemoval = true)
    @Builder.Default
    private List<Review> reviews = new ArrayList<>();

    @Column(name = "login_id", unique = true, nullable = false, length = 50)
    private String loginId;

    @Column(name = "password", nullable = false, length = 100)
    private String password;

    @Column(name = "name", length = 50)
    private String name;

    @Column(name = "phone", length = 20)
    private String phone;

    @Column(name = "birth_date")
    private LocalDate birthDate;

    @Column(name = "email", length = 100)
    private String email;

    @Enumerated(EnumType.STRING)
    @Column(name = "gender")
    private Gender gender;

    @Enumerated(EnumType.STRING)
    @Column(name = "status")
    private Status status;

    @Column(name = "is_admin", nullable = false)
    private boolean isAdmin = false;

    @Column(name = "last_login_at")
    private LocalDateTime lastLoginAt;

    @Column(name = "created_at", nullable = false, updatable = false)
    private LocalDateTime createdAt; //생성일

    @Column(name = "updated_at")
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

    public void updateLastLoginAt() {
        this.lastLoginAt = LocalDateTime.now();
    }

    public void changeStatus(Status newStatus) {
        this.status = newStatus;
    }

    public void addUserNotification(UserNotification notification) {
        this.userNotification = notification;
    }

    public void updateFromDto(UserUpdateDto dto) {
        if (dto.getName() != null) this.name = dto.getName();
        if (dto.getBirthDate() != null) this.birthDate = dto.getBirthDate();
        if (dto.getEmail() != null) this.email = dto.getEmail();
        if (dto.getPhone() != null) this.phone = dto.getPhone();
        if (dto.getGender() != null) this.gender = Gender.valueOf(dto.getGender());

        if (dto.getEmailEnabled() != null) this.userNotification.updateEmail(dto.getEmailEnabled());
        if (dto.getSmsEnabled() != null) this.userNotification.updateSms(dto.getSmsEnabled());
        if (dto.getPushEnabled() != null) this.userNotification.updatePush(dto.getPushEnabled());
    }

    public void changePassword(String encodedPassword) {
        this.password = encodedPassword;
    }

    public void initUserPoint(UserPoint userPoint) {
        this.userPoint = userPoint;
    }
}
