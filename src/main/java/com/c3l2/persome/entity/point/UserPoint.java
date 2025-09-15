package com.c3l2.persome.entity.point;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "user_point")
@Getter @Setter
public class UserPoint {

    @Id
    @Column(name = "user_id")
    private Long userId;

    @Column(name = "balance")
    private Integer balance;

    @Column(name = "updated_at")
    private LocalDateTime updatedAt;

    // 1:N
    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<PointTransaction> transactions = new ArrayList<>();

    @PrePersist
    protected void onCreate() {
        LocalDateTime now = LocalDateTime.now();
        this.updatedAt = now;
        if (this.balance == null) {
            this.balance = 0; // 기본값
        }
    }

    @PreUpdate
    protected void onUpdate() {
        this.updatedAt = LocalDateTime.now();
    }

    // 편의 메서드
    public void addTransaction(PointTransaction tx) {
        transactions.add(tx);
        tx.setUser(this);
        this.balance += tx.getAmount();
    }
}