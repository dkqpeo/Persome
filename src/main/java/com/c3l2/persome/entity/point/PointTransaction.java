package com.c3l2.persome.entity.point;

import com.c3l2.persome.entity.user.User;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Entity
@Table(name = "point_transaction")
@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class PointTransaction {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "amount")
    private Integer amount;

    @Enumerated(EnumType.STRING)
    @Column(name = "type")
    private TransactionType type;

    @Column(name = "occurred_at")
    private LocalDateTime occurredAt;

    @Column(name = "expired_at")
    private LocalDateTime expiredAt;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @Column(name = "order_id")
    private Long orderId;

    @PrePersist
    protected void onCreate() {
        if (this.occurredAt == null) {
            this.occurredAt = LocalDateTime.now();
        }
    }

    // ✅ 팩토리 메서드 (주문 거래)
    public static PointTransaction createOrderTransaction(User user, Long orderId, int amount, TransactionType type) {
        if (user == null) throw new IllegalArgumentException("유저는 필수입니다.");
        if (orderId == null) throw new IllegalArgumentException("주문 기반 거래는 orderId가 필요합니다.");
        if (amount == 0) throw new IllegalArgumentException("거래 금액은 0일 수 없습니다.");
        if (type == TransactionType.EXPIRE) throw new IllegalArgumentException("EXPIRE는 주문 거래일 수 없습니다.");

        return new PointTransaction(null, amount, type, null, null, user, orderId);
    }

    // ✅ 팩토리 메서드 (비주문 거래)
    public static PointTransaction createNonOrderTransaction(User user, int amount, TransactionType type) {
        if (user == null) throw new IllegalArgumentException("유저는 필수입니다.");
        if (amount == 0) throw new IllegalArgumentException("거래 금액은 0일 수 없습니다.");
        if (type == TransactionType.EARN || type == TransactionType.USE) {
            throw new IllegalArgumentException("EARN/USE는 주문 거래여야 합니다.");
        }

        return new PointTransaction(null, amount, type, null, null, user, null);
    }
}