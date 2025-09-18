package com.c3l2.persome.delivery.repository;

import com.c3l2.persome.delivery.entity.DeliverySnapshot;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DeliverySnapshotRepository extends JpaRepository<DeliverySnapshot, Long> {
}
