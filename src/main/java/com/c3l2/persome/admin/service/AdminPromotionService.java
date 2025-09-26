package com.c3l2.persome.admin.service;

import com.c3l2.persome.admin.dto.AdminPromotionProductUpdateRequest;
import com.c3l2.persome.admin.dto.AdminPromotionRequest;
import com.c3l2.persome.config.error.ErrorCode;
import com.c3l2.persome.config.error.exceprion.BusinessException;
import com.c3l2.persome.event.entity.Event;
import com.c3l2.persome.event.entity.constant.TargetType;
import com.c3l2.persome.event.repository.EventRepository;
import com.c3l2.persome.promotion.entity.DiscountType;
import com.c3l2.persome.promotion.entity.Promotion;
import com.c3l2.persome.promotion.entity.PromotionStatus;
import com.c3l2.persome.promotion.entity.PromotionTarget;
import com.c3l2.persome.promotion.repository.PromotionRepository;
import com.c3l2.persome.admin.dto.AdminPromotionTargetRepository;
import com.c3l2.persome.brand.repository.BrandRepository;
import com.c3l2.persome.category.repository.CategoryRepository;
import com.c3l2.persome.product.repository.ProductRepository;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class AdminPromotionService {

    private final PromotionRepository promotionRepository;
    private final AdminPromotionTargetRepository promotionTargetRepository;
    private final EventRepository eventRepository;
    private final ProductRepository productRepository;
    private final CategoryRepository categoryRepository;
    private final BrandRepository brandRepository;

    @Transactional
    public Long createPromotion(AdminPromotionRequest request) {
        PromotionStatus status = parseStatus(request.status());
        DiscountType discountType = parseDiscountType(request.discountType());
        Event event = resolveEvent(request.eventId());

        Promotion promotion = Promotion.builder()
                .status(status)
                .discountType(discountType)
                .discountValue(request.discountValue())
                .startDate(request.startDate())
                .endDate(request.endDate())
                .event(event)
                .build();

        Promotion saved = promotionRepository.save(promotion);
        saveTargets(saved, request.targets());
        return saved.getId();
    }

    @Transactional
    public void updatePromotion(Long promotionId, AdminPromotionRequest request) {
        Promotion promotion = promotionRepository.findById(promotionId)
                .orElseThrow(() -> new BusinessException(ErrorCode.PROMOTION_NOT_FOUND));

        PromotionStatus status = parseStatus(request.status());
        DiscountType discountType = parseDiscountType(request.discountType());
        Event event = resolveEvent(request.eventId());

        int updated = promotionRepository.updatePromotion(
                promotion.getId(),
                status,
                discountType,
                request.discountValue(),
                request.startDate(),
                request.endDate(),
                event
        );

        if (updated == 0) {
            throw new BusinessException(ErrorCode.PROMOTION_UPDATE_FAILED);
        }

        if (request.targets() != null) {
            promotionTargetRepository.deleteByPromotionId(promotionId);
            saveTargets(promotion, request.targets());
        }
    }

    @Transactional
    public void deletePromotion(Long promotionId) {
        Promotion promotion = promotionRepository.findById(promotionId)
                .orElseThrow(() -> new BusinessException(ErrorCode.PROMOTION_NOT_FOUND));
        promotionRepository.delete(promotion);
    }

    @Transactional
    public void updatePromotionProducts(Long promotionId, AdminPromotionProductUpdateRequest request) {
        Promotion promotion = promotionRepository.findById(promotionId)
                .orElseThrow(() -> new BusinessException(ErrorCode.PROMOTION_NOT_FOUND));

        promotionTargetRepository.deleteByPromotionIdAndTargetType(promotionId, TargetType.PRODUCT);
        request.productIds().forEach(productId -> {
            if (!productRepository.existsById(productId)) {
                throw new BusinessException(ErrorCode.PRODUCT_NOT_FOUND);
            }
            promotionTargetRepository.save(PromotionTarget.builder()
                    .promotion(promotion)
                    .targetType(TargetType.PRODUCT)
                    .targetId(productId)
                    .build());
        });
    }

    private void saveTargets(Promotion promotion, List<AdminPromotionRequest.TargetRequest> targets) {
        if (targets == null || targets.isEmpty()) {
            return;
        }

        List<PromotionTarget> entities = targets.stream()
                .map(target -> {
                    TargetType targetType = parseTargetType(target.targetType());
                    validateTarget(targetType, target.targetId());
                    return PromotionTarget.builder()
                            .promotion(promotion)
                            .targetType(targetType)
                            .targetId(target.targetId())
                            .build();
                })
                .toList();

        promotionTargetRepository.saveAll(entities);
    }

    private Event resolveEvent(Long eventId) {
        if (eventId == null) {
            return null;
        }
        return eventRepository.findById(eventId)
                .orElseThrow(() -> new BusinessException(ErrorCode.EVENT_NOT_FOUND));
    }

    private PromotionStatus parseStatus(String status) {
        try {
            return PromotionStatus.of(status.trim().toUpperCase());
        } catch (IllegalArgumentException | NullPointerException ex) {
            throw new BusinessException(ErrorCode.PROMOTION_STATUS_INVALID);
        }
    }

    private DiscountType parseDiscountType(String type) {
        try {
            return DiscountType.of(type.trim().toUpperCase());
        } catch (IllegalArgumentException | NullPointerException ex) {
            throw new BusinessException(ErrorCode.PROMOTION_DISCOUNT_TYPE_INVALID);
        }
    }

    private TargetType parseTargetType(String type) {
        try {
            return TargetType.of(type.trim().toUpperCase());
        } catch (IllegalArgumentException | NullPointerException ex) {
            throw new BusinessException(ErrorCode.PROMOTION_TARGET_TYPE_INVALID);
        }
    }

    private void validateTarget(TargetType type, Long targetId) {
        if (type == TargetType.ALL) {
            return;
        }

        boolean exists = switch (type) {
            case PRODUCT -> productRepository.existsById(targetId);
            case CATEGORY -> categoryRepository.existsById(targetId);
            case BRAND -> brandRepository.existsById(targetId);
            default -> false;
        };

        if (!exists) {
            throw switch (type) {
                case PRODUCT -> new BusinessException(ErrorCode.PRODUCT_NOT_FOUND);
                case CATEGORY -> new BusinessException(ErrorCode.PRODUCT_CATEGORY_NOT_FOUND);
                case BRAND -> new BusinessException(ErrorCode.BRAND_NOT_FOUND);
                default -> new BusinessException(ErrorCode.PROMOTION_TARGET_TYPE_INVALID);
            };
        }
    }
}
