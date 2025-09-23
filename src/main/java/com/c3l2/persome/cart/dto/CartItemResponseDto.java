package com.c3l2.persome.cart.dto;

import com.c3l2.persome.cart.entity.CartItem;
import com.c3l2.persome.order.dto.PriceCalculationResult;
import com.c3l2.persome.order.service.PricingService;
import com.c3l2.persome.product.entity.Product;
import com.c3l2.persome.product.entity.ProductImg;
import com.c3l2.persome.product.entity.ProductOption;
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
    private int quantity;
    private int unitPrice;    // 단가
    private int totalPrice;   // 총액 (단가*수량)
    private int discount;     // 할인금액
    private int finalPrice;   // 최종 결제 금액
    private int shippingFee;  // ✅ 개별 배송비
    private String imageUrl;

    public static CartItemResponseDto fromEntity(CartItem cartItem, PricingService pricingService) {
        ProductOption option = cartItem.getProductOption();
        Product product = option.getProduct();

        PriceCalculationResult result =
                pricingService.calculateFinalPrice(product, option, cartItem.getQuantity());

        int finalPrice = result.getFinalPrice().intValue();
        int shippingFee = (finalPrice >= 30000) ? 0 : 2500; // ✅ 장바구니 규칙 반영

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
                .quantity(cartItem.getQuantity())
                .unitPrice(result.getUnitPrice().intValue())
                .totalPrice(result.getTotalPrice().intValue())
                .discount(result.getPromoDiscount().intValue())
                .finalPrice(finalPrice)
                .shippingFee(shippingFee)
                .imageUrl(imageUrl)
                .build();
    }
}
