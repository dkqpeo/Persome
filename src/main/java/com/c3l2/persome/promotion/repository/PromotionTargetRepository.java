package com.c3l2.persome.promotion.repository;

import com.c3l2.persome.event.entity.constant.TargetType;
import com.c3l2.persome.promotion.entity.PromotionTarget;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PromotionTargetRepository extends JpaRepository<PromotionTarget, Long> {

    void deleteByPromotionId(Long promotionId);

    void deleteByPromotionIdAndTargetType(Long promotionId, TargetType targetType);
}
