package com.c3l2.persome.promotion.service;

import com.c3l2.persome.brand.entity.Brand;
import com.c3l2.persome.brand.repository.BrandRepository;
import com.c3l2.persome.category.repository.CategoryRepository;
import com.c3l2.persome.config.error.ErrorCode;
import com.c3l2.persome.config.error.exceprion.BusinessException;
import com.c3l2.persome.product.entity.Category;
import com.c3l2.persome.product.entity.Product;
import com.c3l2.persome.product.repository.ProductRepository;
import com.c3l2.persome.promotion.dto.PromotionDto;
import com.c3l2.persome.promotion.dto.PromotionTargetDto;
import com.c3l2.persome.promotion.entity.Promotion;
import com.c3l2.persome.promotion.entity.PromotionStatus;
import com.c3l2.persome.promotion.entity.PromotionTarget;
import com.c3l2.persome.promotion.repository.PromotionRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;



@Service
@RequiredArgsConstructor
public class PromotionService {
    private final PromotionRepository promotionRepository;
    private final BrandRepository brandRepository;
    private final CategoryRepository categoryRepository;
    private final ProductRepository productRepository;

    //현재 진행 중인 프로모션 조회
    public List<PromotionDto> getAvailablePromotions(LocalDateTime now) {
        List<Promotion> promotions = promotionRepository.findActivePromotionsWithTargets(PromotionStatus.ACTIVE, now);
        if (promotions.isEmpty()) {
            throw new BusinessException(ErrorCode.PROMOTION_NOT_ACTIVE);
        }
        return promotions.stream()
                .map(this::toDto)
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
                .map(this::toDto)
                .toList();
    }

    public PromotionDto toDto(Promotion promotion) {
        if (promotion.getPromotionTarget().isEmpty()) {
            return PromotionDto.fromEntity(promotion, null);
        }

        List<PromotionTargetDto> targets = promotion.getPromotionTarget().stream()
                .map(target -> {
                    switch (target.getTargetType()) {
                        case BRAND -> {
                            Brand brand = brandRepository.findById(target.getTargetId())
                                    .orElseThrow(() -> new BusinessException(ErrorCode.BRAND_NOT_FOUND));
                            return PromotionTargetDto.fromBrand(brand);
                        }
                        case CATEGORY -> {
                            Category category = categoryRepository.findById(target.getTargetId())
                                    .orElseThrow(() -> new BusinessException(ErrorCode.CATEGORY_NOT_FOUND));
                            return PromotionTargetDto.fromCategory(category);
                        }
                        case PRODUCT -> {
                            Product product = productRepository.findById(target.getTargetId())
                                    .orElseThrow(() -> new BusinessException(ErrorCode.PRODUCT_NOT_FOUND));
                            return PromotionTargetDto.fromProduct(product);
                        }
                        default -> throw new BusinessException(ErrorCode.PROMOTION_TARGET_NOT_FOUND);
                    }
                })
                .toList();

        return PromotionDto.fromEntity(promotion, targets);
    }
}
