package com.c3l2.persome.admin.dto;

import com.c3l2.persome.event.entity.constant.TargetType;
import com.c3l2.persome.promotion.entity.PromotionTarget;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public interface AdminPromotionTargetRepository extends JpaRepository<PromotionTarget, Long> {

    void deleteByPromotionId(Long promotionId);

    void deleteByPromotionIdAndTargetType(Long promotionId, TargetType targetType);
}
