package com.c3l2.persome.user.entity;

import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "user_address")
@Entity
public class UserAddress {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @Column(name = "label", length = 30)
    private String label;

    @Column(name = "zip", length = 6)
    private String zip;

    @Column(name = "road_addr", length = 50)
    private String roadAddr;

    @Column(name = "jibun_addr", length = 50)
    private String jibunAddr;

    @Column(name = "addr_detail", length = 50)
    private String addrDetail;

    @Column(name = "is_default_shipping")
    private Boolean defaultShipping;

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
}
