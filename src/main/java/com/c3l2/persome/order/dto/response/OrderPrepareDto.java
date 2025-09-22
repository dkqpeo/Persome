package com.c3l2.persome.order.dto.response;

import lombok.*;

@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class OrderPrepareDto {
    private int productPrice;    // 총 상품 금액
    private int discountPrice;  // 할인 금액
    private int shippingFee;     // 배송비
    private int finalPrice;      // 최종 결제 금액
}
