package com.c3l2.persome.promotion.repository;

import com.c3l2.persome.entity.event.Promotion;
import com.c3l2.persome.entity.event.constant.PromotionStatus;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
import java.util.List;

@Repository
public interface PromotionRepository extends JpaRepository<Promotion, Long> {
    //프로모션 + 타깃 조회 (상태 + 기간 체크)
    @Query("SELECT DISTINCT p FROM Promotion p " +
            "LEFT JOIN FETCH p.promotionTarget t " +
            "WHERE p.status = :status " +
            "AND p.startDate <= :now " +
            "AND p.endDate >= :now")
    List<Promotion> findActivePromotionsWithTargets(PromotionStatus status, LocalDateTime now);

}
