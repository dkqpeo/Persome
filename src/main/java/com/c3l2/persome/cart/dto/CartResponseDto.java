package com.c3l2.persome.cart.dto;

import com.c3l2.persome.cart.entity.Cart;
import com.c3l2.persome.order.service.PricingService;
import lombok.Builder;
import lombok.Getter;

import java.util.List;

@Getter
@Builder
public class CartResponseDto {
    private Long cartId;
    private List<CartItemResponseDto> items;

    // 합계
    private int totalBasePrice; // 총액 (할인 전)
    private int totalDiscount;  // 총 할인금액
    private int finalAmount;    // 최종 결제금액 (배송비는 Order 단계에서 처리)

    public static CartResponseDto fromEntity(Cart cart, PricingService pricingService) {
        List<CartItemResponseDto> itemList = cart.getCartItems().stream()
                .map(item -> CartItemResponseDto.fromEntity(item, pricingService))
                .toList();

        int totalBasePrice = itemList.stream().mapToInt(CartItemResponseDto::getTotalPrice).sum();
        int totalDiscount = itemList.stream().mapToInt(CartItemResponseDto::getDiscount).sum();
        int finalAmount = itemList.stream().mapToInt(CartItemResponseDto::getFinalPrice).sum();

        return CartResponseDto.builder()
                .cartId(cart.getId())
                .items(itemList)
                .totalBasePrice(totalBasePrice)
                .totalDiscount(totalDiscount)
                .finalAmount(finalAmount)
                .build();
    }
}
