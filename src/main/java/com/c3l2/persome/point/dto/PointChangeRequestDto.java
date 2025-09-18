package com.c3l2.persome.point.dto;

import com.c3l2.persome.point.entity.TransactionType;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class PointChangeRequestDto {
    private Long orderId;  // 어떤 주문에서 사용했는지 추적용
    private Integer amount;  // 양수: 적립/복구, 음수: 사용
    private TransactionType type;  // USE, EARN, RESTORE
}
