package com.c3l2.persome.order.dto.response;

import lombok.*;

import java.util.List;

@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class OrderPrepareResponseDto {
    private List<OrderItemDto> items;
    private OrderPrepareDto summary;
}
