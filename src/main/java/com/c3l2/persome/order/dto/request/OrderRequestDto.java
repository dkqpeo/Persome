package com.c3l2.persome.order.dto.request;

import com.c3l2.persome.entity.order.Order;
import com.c3l2.persome.entity.order.OrderStatus;
import com.c3l2.persome.entity.order.ReceiveType;
import com.c3l2.persome.entity.user.User;
import lombok.*;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class OrderRequestDto {
    private List<OrderProductDto> products;
    private String receiverName;
    private String receiverPhone;
    private String address;
    private String addressDetail;

    private ReceiveType receiveType;
    private Integer shippingFee;

    private String requestMessage;

    private Long userCouponId;
    private BigDecimal usePointAmount;

    public Order toEntity(User user) {
        return Order.builder()
                .user(user)
                .orderDate(LocalDateTime.now())
                .receiveType(receiveType)
                .orderStatus(OrderStatus.PENDING)
                .shippingFee(0)
                .couponDiscountAmount(BigDecimal.ZERO)
                .pointUsedAmount(BigDecimal.ZERO)
                .orderTotalAmount(BigDecimal.ZERO)
                .originalPrice(BigDecimal.ZERO)
                .orderTotalQty(0)
                .requestMessage(requestMessage)
                .build();
    }

    @Getter
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder
    public static class OrderProductDto {
        private Long productOptionId;
        private int quantity;
    }
}
