package com.c3l2.persome.order.dto;

import com.c3l2.persome.entity.order.ReceiveType;
import lombok.*;
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

    @Getter
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder
    public static class OrderProductDto {
        private Long productOptionId;
        private int quantity;
    }
}
