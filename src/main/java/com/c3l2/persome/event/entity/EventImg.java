package com.c3l2.persome.event.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "event_img")
@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class EventImg {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "img_url", nullable = false)
    private String imgUrl;

    @Column(name = "img_order", nullable = false)
    private Integer imgOrder;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "event_id",  nullable = false)
    private Event event;

}
