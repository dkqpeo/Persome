package com.c3l2.persome.event.entity;

import com.c3l2.persome.event.entity.constant.DiscountType;
import com.c3l2.persome.event.entity.constant.PromotionStatus;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "promotion")
@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Promotion {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Enumerated(EnumType.STRING)
    @Column(name = "status", nullable = false)
    private PromotionStatus status;

    @Enumerated(EnumType.STRING)
    @Column(name = "discount_type", nullable = false)
    private DiscountType discountType;

    @Column(name = "discount_valule",nullable = false)
    private BigDecimal discountValue;

    @Column(name = "start_date", columnDefinition = "DATETIME(0)", nullable = false)
    private LocalDateTime startDate;

    @Column(name= "end_date", columnDefinition = "DATETIME(0)", nullable = false)
    private LocalDateTime endDate;

    @Column(name = "created_at", columnDefinition = "DATETIME(0)", nullable = false)
    private LocalDateTime createdAt;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "event_id")
    private Event event;

    @OneToMany(mappedBy = "promotion", cascade = CascadeType.ALL)
    @Builder.Default
    private List<PromotionTarget> promotionTarget = new ArrayList<>();

    @PrePersist
    public void prePersist(){
        this.createdAt = LocalDateTime.now();
    }

}
