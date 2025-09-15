package com.c3l2.persome.order.service;

import com.c3l2.persome.entity.product.Product;
import com.c3l2.persome.entity.product.ProductOption;
import com.c3l2.persome.entity.user.User;
import com.c3l2.persome.order.dto.PriceCalculationResult;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Service
@RequiredArgsConstructor
public class PricingService {

    // private final EventRepository eventRepository;
    // private final PromotionRepository promotionRepository;
    // private final CouponRepository couponRepository;


    //최종 가격 계산
    public PriceCalculationResult calculateFinalPrice(Product product, ProductOption option, User user, int qty) {
        BigDecimal unitPrice = getBasePrice(product)
                .add(BigDecimal.valueOf(option.getAdditionalAmount()));

        BigDecimal totalPrice = unitPrice.multiply(BigDecimal.valueOf(qty));

        BigDecimal couponDiscount = BigDecimal.ZERO;
        BigDecimal pointDiscount = BigDecimal.ZERO;
        BigDecimal price = totalPrice;

        // 쿠폰 할인
        BigDecimal couponAppliedPrice = applyCoupon(user, product, price);
        if (couponAppliedPrice.compareTo(price) < 0) {
            couponDiscount = price.subtract(couponAppliedPrice);
            price = couponAppliedPrice;
        }

        // 포인트 차감
        BigDecimal pointAppliedPrice = applyPointUsage(user, price);
        if (pointAppliedPrice.compareTo(price) < 0) {
            pointDiscount = price.subtract(pointAppliedPrice);
            price = pointAppliedPrice;
        }

        return new PriceCalculationResult(unitPrice, totalPrice, couponDiscount, pointDiscount, price);
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
        //추가
        return price;
    }

    //쿠폰 할인 적용
    private BigDecimal applyCoupon(User user, Product product, BigDecimal price) {
        // user의 보유 쿠폰 조회 후 적용 가능 여부 체크
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