package com.c3l2.persome.entity.delivery;

import com.c3l2.persome.entity.order.Order;
import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "delivery")
@Entity
public class Delivery {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "order_id", nullable = false, unique = true)
    private Order order;

    @Enumerated(EnumType.STRING)
    @Column(name = "delivery_status", nullable = false, length = 20)
    private DeliveryStatus deliveryStatus;

    @Column(name = "tracking_no", length = 64)
    private String trackingNo; //운송장 번호

    @Column(name = "carrier", length = 50)
    private String carrier; //택배사

    @Column(name = "shipped_at")
    private LocalDateTime shippedAt; //배송일

    @Column(name = "delivered_at")
    private LocalDateTime deliveredAt; //도착일

    @Column(name = "created_at", nullable = false, updatable = false)
    private LocalDateTime createdAt; //생성일

    @PrePersist
    public void onCreate() {
        this.createdAt = LocalDateTime.now();
    }
}
