package com.c3l2.persome.entity.refund;

import com.c3l2.persome.entity.refund.enums.RefundCategory;
import com.c3l2.persome.entity.refund.enums.RefundCode;
import jakarta.persistence.*;
import lombok.*;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "refund_reason_code")
@Entity
public class RefundReasonCode {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Enumerated(EnumType.STRING)
    @Column(name = "category", nullable = false)
    private RefundCategory category;

    @Enumerated(EnumType.STRING)
    @Column(name = "code", nullable = false)
    private RefundCode code;

    @Column(name = "buyer_shipping_fee")
    private Boolean buyerShippingFee;
}