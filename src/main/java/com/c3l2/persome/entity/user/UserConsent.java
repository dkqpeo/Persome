package com.c3l2.persome.entity.user;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "user_consent")
@Entity
public class UserConsent {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @Enumerated(EnumType.STRING)
    @Column(name = "policy_code")
    private PolicyCode policyCode;

    @Column(name = "is_agreed", nullable = false)
    private boolean isAgreed;

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
