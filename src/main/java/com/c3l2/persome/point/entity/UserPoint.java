package com.c3l2.persome.point.entity;

import com.c3l2.persome.user.entity.User;
import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;


@Entity
@Table(name = "user_point")
@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UserPoint {
    @Id
    @Column(name = "user_id")
    private Long id; //User의 PK를 그대로 PK로 사용

    @OneToOne(fetch = FetchType.LAZY)
    @MapsId //User.id를 그대로 가져옴
    @JoinColumn(name = "user_id")
    private User user;

    @Column(name = "balance")
    private Integer balance;

    @Column(name = "updated_at")
    private LocalDateTime updatedAt;


    @PrePersist
    protected void onCreate() {
        this.updatedAt = LocalDateTime.now();
        if (this.balance == null) {
            this.balance = 0; // 기본값
        }
    }

    @PreUpdate
    protected void onUpdate() {
        this.updatedAt = LocalDateTime.now();
    }

    public void usePoints(int amount) {
        if (amount <= 0) throw new IllegalArgumentException("포인트 사용량은 0보다 커야 합니다.");
        if (balance < amount) throw new IllegalStateException("포인트 부족");
        this.balance -= amount;
    }

    public void addPoints(int amount) {
        if (amount <= 0) throw new IllegalArgumentException("포인트 충전량은 0보다 커야 합니다.");
        this.balance += amount;
    }

}