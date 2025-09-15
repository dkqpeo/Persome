package com.c3l2.persome.order.repository.delivery;

import com.c3l2.persome.entity.delivery.DeliverySnapshot;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DeliverySnapshotRepository extends JpaRepository<DeliverySnapshot, Long> {
}
