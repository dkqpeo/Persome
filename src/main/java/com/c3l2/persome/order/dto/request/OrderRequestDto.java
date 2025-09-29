package com.c3l2.persome.order.dto.request;

import com.c3l2.persome.order.entity.Order;
import com.c3l2.persome.order.entity.OrderStatus;
import com.c3l2.persome.order.entity.ReceiveType;
import com.c3l2.persome.payment.entity.PaymentMethod;
import com.c3l2.persome.user.entity.User;
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
    private String roadAddr;
    private String jibunAddr;
    private String addressDetail;
    private String zipCode;

    private ReceiveType receiveType;
    private Integer shippingFee;

    private String requestMessage;

    private Long userCouponId;
    private Integer usePointAmount;

    private PaymentMethod paymentMethod;

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
        private String productName;
        private Long productOptionId;
        private int quantity;
    }
}
