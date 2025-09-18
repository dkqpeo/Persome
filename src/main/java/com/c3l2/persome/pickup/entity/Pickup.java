package com.c3l2.persome.pickup.entity;

import com.c3l2.persome.order.entity.Order;
import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "pickup")
@Entity
public class Pickup {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "order_id", nullable = false, unique = true)
    private Order order;

    @Enumerated(EnumType.STRING)
    private PickupStatus pickupStatus; //픽업 상태

    @Column(name = "expire_at")
    private LocalDateTime expireAt; //픽업 만료 시간

    @Column(name = "picked_at")
    private LocalDateTime pickedAt; //수령 완료 시간

    @Column(name = "created_at", nullable = false, updatable = false)
    private LocalDateTime createdAt; //생성일

    @PrePersist
    public void onCreate() {
        this.createdAt = LocalDateTime.now();
    }

}
