package com.c3l2.persome.entity.event;

import com.c3l2.persome.entity.coupon.Coupon;
import com.c3l2.persome.entity.event.constant.EventStatus;
import com.c3l2.persome.entity.event.constant.EventType;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "event")
@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Event {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "thumbnail_url")
    private String thumbnailurl;

    @Enumerated(EnumType.STRING)
    @Column(name = "type" , nullable = false)
    private EventType type; //이벤트 유형(PROMOTION,BANNER.SALE.COUPON)

    @Column(name ="description", columnDefinition = "TEXT" , nullable = false)
    private String description;

    @Column(name = "start_date")
    private LocalDateTime startDate;

    @Column(name = "end_date")
    private LocalDateTime endDate;

    @Column(name = " created_at" , nullable = false)
    private LocalDateTime createdAt;

    @Enumerated(EnumType.STRING)
    @Column(name = "status" , nullable = false)
    private EventStatus status; // 이벤트 유형(DRAFT/SCHEDULED/ACTIVE/ENDED?INACTIVE)

    @OneToMany(mappedBy = "event", cascade = CascadeType.ALL)
    private List<EventImg> eventImgs = new ArrayList<>();

    @OneToMany(mappedBy = "event",  cascade = CascadeType.ALL)
    private List<Promotion> promotion = new ArrayList<>();

    @OneToMany(mappedBy = "event", cascade = CascadeType.ALL)
    private List<Coupon> coupons = new ArrayList<>();
}
