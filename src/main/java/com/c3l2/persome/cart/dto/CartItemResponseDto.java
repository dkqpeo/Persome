package com.c3l2.persome.cart.dto;

import com.c3l2.persome.cart.entity.CartItem;
import com.c3l2.persome.order.dto.PriceCalculationResult;
import com.c3l2.persome.order.service.PricingService;
import com.c3l2.persome.product.entity.Product;
import com.c3l2.persome.product.entity.ProductImg;
import com.c3l2.persome.product.entity.ProductOption;
import com.c3l2.persome.product.entity.ProductPrice;
import com.c3l2.persome.product.entity.constant.ProductType;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CartItemResponseDto {
    private Long id;
    private Long productId;
    private String productName;
    private String optionName;
    private String imageUrl;
    private String brandName;

    private int originalPrice; // 원가
    private int salePrice;     // 할인가
    private int discount;
    private int quantity;
    private int totalPrice;    // 할인 전 총액 (originalPrice * quantity)
    private int finalPrice;    // 총액 (salePrice * quantity)
    private int shippingFee;

    public static CartItemResponseDto fromEntity(CartItem cartItem, PricingService pricingService) {
        ProductOption option = cartItem.getProductOption();
        Product product = option.getProduct();

        PriceCalculationResult result =
                pricingService.calculateFinalPrice(product, option, cartItem.getQuantity());

        int salePrice = result.getUnitPrice().intValue();
        int finalPrice = result.getFinalPrice().intValue();
        int shippingFee = (finalPrice >= 30000) ? 0 : 2500;

        // ✅ ProductPrice에서 정가 가져오기
        int originalPrice = product.getProductPrices().stream()
                .filter(p -> p.getType() == ProductType.ORIGINAL)
                .findFirst()
                .map(ProductPrice::getPrice)
                .orElse(salePrice); // 없으면 할인가 그대로 사용

        // ✅ 할인 금액
        int discount = Math.max(originalPrice - salePrice, 0);
        int totalPrice = originalPrice * cartItem.getQuantity();

        // ✅ ProductImg 리스트에서 imgOrder가 가장 작은(=대표 이미지) 선택
        String imageUrl = product.getProductImgs().stream()
                .sorted((a, b) -> {
                    if (a.getImgOrder() == null) return 1;
                    if (b.getImgOrder() == null) return -1;
                    return a.getImgOrder() - b.getImgOrder();
                })
                .map(ProductImg::getImgUrl)
                .findFirst()
                .orElse(null);

        return CartItemResponseDto.builder()
                .id(cartItem.getId())
                .productId(product.getId())
                .productName(product.getName())
                .optionName(option.getName())
                .brandName(product.getBrand().getName())
                .quantity(cartItem.getQuantity())
                .originalPrice(originalPrice)
                .salePrice(salePrice)
                .discount(discount)
                .totalPrice(totalPrice)
                .finalPrice(finalPrice)
                .shippingFee(shippingFee)
                .imageUrl(imageUrl)
                .build();
    }
}
