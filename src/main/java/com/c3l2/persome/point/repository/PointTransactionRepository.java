package com.c3l2.persome.point.repository;

import com.c3l2.persome.point.entity.PointTransaction;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.time.LocalDateTime;

public interface PointTransactionRepository extends JpaRepository<PointTransaction, Long> {
    Page<PointTransaction> findByUserIdAndOccurredAtBetween(
            Long userId,
            LocalDateTime startDate,
            LocalDateTime endDate,
            Pageable pageable
    );

    @Query("SELECT COALESCE(SUM(pt.amount), 0) FROM PointTransaction pt " +
            "WHERE pt.user.id = :userId " +
            "AND pt.type = 'EARN' " +
            "AND pt.expiredAt IS NOT NULL " +
            "AND pt.expiredAt BETWEEN :startOfMonth AND :endOfMonth")
    int getExpiringPointsThisMonth(@Param("userId") Long userId,
                                   @Param("startOfMonth") LocalDateTime startOfMonth,
                                   @Param("endOfMonth") LocalDateTime endOfMonth);

}
