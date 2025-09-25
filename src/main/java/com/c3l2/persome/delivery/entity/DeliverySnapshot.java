package com.c3l2.persome.delivery.entity;

import jakarta.persistence.*;
import lombok.*;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@Table(name = "delivery_snapshot")
public class DeliverySnapshot {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "receiver_name", nullable = false, length = 100)
    private String receiverName; //받는 사람

    @Column(name = "receiver_phone", nullable = false, length = 20)
    private String receiverPhone; //연락처

    @Column(name = "zip_code", nullable = false, length = 10)
    private String zipCode; //우편번호

    @Column(name = "road_addr", length = 50)
    private String roadAddr; //도로명 주소

    @Column(name = "jibun_addr", length = 50)
    private String jibunAddr;  //지번 주소

    @Column(name = "addr_detail", length = 200)
    private String addressDetail; //상세 주소

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "shipping_id", nullable = false, unique = true)
    private Delivery delivery;

    public void linkToDelivery(Delivery delivery) {
        this.delivery = delivery;
    }
}
