package com.c3l2.persome.promotion.service;

import com.c3l2.persome.config.error.ErrorCode;
import com.c3l2.persome.config.error.exceprion.BusinessException;
import com.c3l2.persome.promotion.dto.PromotionDto;
import com.c3l2.persome.promotion.entity.Promotion;
import com.c3l2.persome.promotion.entity.PromotionStatus;
import com.c3l2.persome.promotion.repository.PromotionRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;

@Service
@RequiredArgsConstructor
public class PromotionService {
    private final PromotionRepository promotionRepository;

    //현재 진행 중인 프로모션 조회
    public List<PromotionDto> getAvailablePromotions(LocalDateTime now) {
        List<Promotion> promotions = promotionRepository.findActivePromotionsWithTargets(PromotionStatus.ACTIVE, now);
        if (promotions.isEmpty()) {
            throw new BusinessException(ErrorCode.PROMOTION_NOT_ACTIVE);
        }
        return promotions.stream()
                .map(PromotionDto::fromEntity)
                .toList();
    }

    //가격 계산용
    public List<Promotion> getAvailablePromotionsForPricing(LocalDateTime now) {
        return promotionRepository.findActivePromotionsWithTargets(PromotionStatus.ACTIVE, now);
    }

    //특정 이벤트의 프로모션 조회
    public List<PromotionDto> getPromotionsByEvent(Long eventId) {
        List<Promotion> promotions = promotionRepository.findByEventId(eventId);

        if (promotions.isEmpty()) {
            throw new BusinessException(ErrorCode.EVENT_PROMOTION_NOT_FOUND);
        }

        return promotions.stream()
                .map(PromotionDto::fromEntity)
                .toList();
    }
}
