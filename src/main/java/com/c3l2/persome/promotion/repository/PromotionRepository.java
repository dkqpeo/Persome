package com.c3l2.persome.promotion.repository;

import com.c3l2.persome.event.entity.Event;
import com.c3l2.persome.promotion.entity.DiscountType;
import com.c3l2.persome.promotion.entity.Promotion;
import com.c3l2.persome.promotion.entity.PromotionStatus;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface PromotionRepository extends JpaRepository<Promotion, Long> {
    //프로모션 + 타깃 조회 (상태 + 기간 체크)
    @Query("SELECT DISTINCT p FROM Promotion p " +
            "LEFT JOIN FETCH p.promotionTarget t " +
            "WHERE p.status = :status " +
            "AND p.startDate <= :now " +
            "AND p.endDate >= :now")
    List<Promotion> findActivePromotionsWithTargets(PromotionStatus status, LocalDateTime now);

    List<Promotion> findByEventId(Long eventId); //이벤트 아이디로 프로모션 찾기

    @Modifying(clearAutomatically = true, flushAutomatically = true)
    @Query("update Promotion p set p.status = :status, p.discountType = :discountType, p.discountValue = :discountValue, p.startDate = :startDate, p.endDate = :endDate, p.event = :event where p.id = :id")
    int updatePromotion(@Param("id") Long id,
                        @Param("status") PromotionStatus status,
                        @Param("discountType") DiscountType discountType,
                        @Param("discountValue") BigDecimal discountValue,
                        @Param("startDate") LocalDateTime startDate,
                        @Param("endDate") LocalDateTime endDate,
                        @Param("event") Event event);
}
