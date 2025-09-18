package com.c3l2.persome.membership.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "membership_level")
@Entity
public class MembershipLevel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Enumerated(EnumType.STRING)
    @Column(name = "name",  nullable = false)
    private Name name;

    @Column(name = "min_amount",  nullable = false)
    private Integer minAmount;

    @Column(name = "max_amount")
    private Integer maxAmount;
}
