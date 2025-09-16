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
@Setter
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

}