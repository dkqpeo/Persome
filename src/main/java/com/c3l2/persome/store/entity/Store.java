package com.c3l2.persome.store.entity;

import com.c3l2.persome.product.entity.Inventory;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "store")
@Entity
public class Store {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "store_name", length = 50)
    private String storeName;

    @Column(name = "address", length = 255)
    private String address;

    @Column(name = "phone", length = 30)
    private String phone;

    @Column(name = "opening_hours", length = 100)
    private String openingHours;

    @Column(name = "status")
    @Enumerated(EnumType.STRING)
    private StoreStatus status;

    @OneToMany(mappedBy = "store", cascade = CascadeType.ALL, orphanRemoval = true)
    @Builder.Default
    private List<Inventory> inventories = new ArrayList<>();

}
