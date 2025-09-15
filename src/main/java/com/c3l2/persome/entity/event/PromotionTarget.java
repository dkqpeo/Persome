package com.c3l2.persome.entity.event;

import com.c3l2.persome.entity.event.constant.TargetId;
import com.c3l2.persome.entity.event.constant.TargetType;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "promotion_target")
@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class PromotionTarget {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Enumerated(EnumType.STRING)
    @Column(name = "target_type",nullable = false)
    private TargetType target_type;

    @Enumerated(EnumType.STRING)
    @Column(name = "target_id", nullable = false)
    private TargetId target_id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "promotion_id", nullable = false)
    private Promotion promotion;

}
