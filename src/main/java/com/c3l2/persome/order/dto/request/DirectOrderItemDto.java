package com.c3l2.persome.order.dto.request;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class DirectOrderItemDto {
    
    private Long productOptionId;
    private Integer quantity;
}