package com.c3l2.persome.entity.point;

import com.c3l2.persome.entity.user.User;
import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;


@Entity
@Table(name = "user_point")
@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UserPoint {

    // 1:1
    @Id
    @OneToOne(fetch = FetchType.EAGER)
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