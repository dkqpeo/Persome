package com.c3l2.persome.order.dto.response;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public class OrderCountDto {
    private String status;
    private long count;
}
