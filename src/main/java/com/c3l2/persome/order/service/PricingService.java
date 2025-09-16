package com.c3l2.persome.order.service;

import com.c3l2.persome.entity.coupon.UserCoupon;
import com.c3l2.persome.entity.coupon.constant.UserCouponStatus;
import com.c3l2.persome.entity.event.Promotion;
import com.c3l2.persome.entity.event.constant.PromotionStatus;
import com.c3l2.persome.entity.product.Product;
import com.c3l2.persome.entity.product.ProductOption;
import com.c3l2.persome.entity.user.User;
import com.c3l2.persome.order.dto.PriceCalculationResult;
import com.c3l2.persome.promotion.repository.PromotionRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import com.c3l2.persome.entity.event.constant.DiscountType;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.time.LocalDateTime;
import java.util.List;

@Service
@RequiredArgsConstructor
public class PricingService {

    // private final EventRepository eventRepository;
     private final PromotionRepository promotionRepository;
    // private final CouponRepository couponRepository;


    //최종 가격 계산
    public PriceCalculationResult calculateFinalPrice(Product product, ProductOption option, User user, int qty) {
        BigDecimal unitPrice = getBasePrice(product)
                .add(BigDecimal.valueOf(option.getAdditionalAmount())); //단가(기본가격or세일가격 + 옵션 추가금)

        BigDecimal totalPrice = unitPrice.multiply(BigDecimal.valueOf(qty)); //단가*수량

        BigDecimal couponDiscount = BigDecimal.ZERO; //쿠폰 할인액
        BigDecimal pointDiscount = BigDecimal.ZERO; //포인트 사용액
        BigDecimal price = totalPrice;

        //프로모션 할인
        BigDecimal promoAppliedPrice = applyPromotion(product, qty, totalPrice);
        BigDecimal promoDiscount = totalPrice.subtract(promoAppliedPrice);
        totalPrice = promoAppliedPrice;

        // 포인트 차감
        BigDecimal pointAppliedPrice = applyPointUsage(user, price);
        if (pointAppliedPrice.compareTo(price) < 0) {
            pointDiscount = price.subtract(pointAppliedPrice);
            price = pointAppliedPrice;
        }

        return new PriceCalculationResult(unitPrice, totalPrice, couponDiscount, pointDiscount, promoDiscount, price);
    }


    //기본가격/세일가격 조회
    public BigDecimal getBasePrice(Product product) {
        LocalDateTime now = LocalDateTime.now();

        return product.getProductPrices().stream()
                .filter(price -> price.getType().name().equalsIgnoreCase("SALE"))
                .filter(price -> (price.getStartDate() == null || !price.getStartDate().isAfter(now)))
                .filter(price -> (price.getEndDate() == null || !price.getEndDate().isBefore(now)))
                .map(price -> BigDecimal.valueOf(price.getPrice()))
                .findFirst()
                .orElseGet(() -> product.getProductPrices().stream()
                        .filter(price -> price.getType().name().equalsIgnoreCase("ORIGINAL"))
                        .map(price -> BigDecimal.valueOf(price.getPrice()))
                        .findFirst()
                        .orElseThrow(() -> new IllegalStateException("상품 가격을 찾을 수 없습니다.")));
    }

    //프로모션 적용
    private BigDecimal applyPromotion(Product product, int qty, BigDecimal price) {
        LocalDateTime now = LocalDateTime.now();
        List<Promotion> promotions = promotionRepository.findActivePromotionsWithTargets(PromotionStatus.ACTIVE, now);

        for (Promotion promotion : promotions) {
            boolean applicable = promotion.getPromotionTarget().stream().anyMatch(target ->
                    switch (target.getTargetType()) {
                        case PRODUCT -> target.getTargetId().equals(product.getId());
                        case CATEGORY -> target.getTargetId().equals(product.getCategory().getId());
                        case BRAND ->  target.getTargetId().equals(product.getBrand().getId());
                        default -> false;
                    }
            );

            //할인율 or 할인금액 적용
            if (applicable) {
                if (promotion.getDiscountType() == DiscountType.RATE) {
                    return price.multiply(
                            BigDecimal.ONE.subtract(
                                    promotion.getDiscountValue().divide(BigDecimal.valueOf(100))
                            )
                    ).setScale(0, RoundingMode.DOWN);
                } else if (promotion.getDiscountType() == DiscountType.FIXED) {
                    return price.subtract(promotion.getDiscountValue())
                            .max(BigDecimal.ZERO)
                            .setScale(0, RoundingMode.DOWN);
                }
            }
        }
        return price;
    }

    //쿠폰 할인 적용
    private BigDecimal applyCoupon(UserCoupon userCoupon, Product product, BigDecimal price) {
        //보유 쿠폰 조회
        if (userCoupon == null || !UserCouponStatus.ISSUED.equals(userCoupon.getStatus())) {
            return price; // 발급되지 않았거나 이미 사용된/만료된 경우
        }
        // price = price.subtract(discountAmount);
        return price;
    }

    //포인트 사용 적용
    private BigDecimal applyPointUsage(User user, BigDecimal price) {
        // user의 보유 포인트 확인 후 차감
        // price = price.subtract(BigDecimal.valueOf(usedPoint));
        return price;
    }
}