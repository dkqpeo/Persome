package com.c3l2.persome.payment.entity;

import com.c3l2.persome.order.entity.Order;
import jakarta.persistence.*;
import lombok.*;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "payment")
@Entity
public class Payment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "order_id", nullable = false)
    private Order order;

    @Enumerated(EnumType.STRING)
    @Column(name = "method", nullable = false, length = 30)
    private PaymentMethod method; //결제 수단

    @Enumerated(EnumType.STRING)
    @Column(name = "status", nullable = false, length = 20)
    private PaymentStatus status; //결제 상태

    @Column(name = "amount", precision = 15, scale = 2, nullable = false)
    private BigDecimal amount; //결제 금액

    @Column(name = "paid_at")
    private LocalDateTime paidAt; // 결제 완료일

    @Column(name = "created_at", nullable = false, updatable = false)
    private LocalDateTime createdAt; //생성일

    @Column(name = "updated_at")
    private LocalDateTime updatedAt; //수정일
    
    @Column(name = "transaction_id", length = 100)
    private String transactionId; // 외부 결제 시스템 거래 ID (카카오페이 tid 등)

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
    
    // 결제 상태 업데이트 메서드
    public void updateStatus(PaymentStatus status) {
        this.status = status;
        if (status == PaymentStatus.PAID) {
            this.paidAt = LocalDateTime.now();
        }
    }
}
