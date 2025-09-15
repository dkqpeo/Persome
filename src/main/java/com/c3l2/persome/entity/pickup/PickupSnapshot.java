package com.c3l2.persome.entity.pickup;

import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "pickup_snapshot")
@Entity
public class PickupSnapshot {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "pickup_id", nullable = false, unique = true)
    private Pickup pickup;

    @Column(name = "store_id")
    private Long storeId; //매장 id

    @Column(name = "store_name", nullable = false, length = 100)
    private String storeName; //매장 이름

    @Column(name = "store_address", nullable = false, length = 255)
    private String storeAddress; //매장 주소

    @Column(name = "store_phone", length = 30)
    private String storePhone; //매장 전화번호

    @Column(name = "created_at", nullable = false, updatable = false)
    private LocalDateTime createdAt; //생성일

    @PrePersist
    protected void onCreate() {
        this.createdAt = LocalDateTime.now();
    }
}
