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
public class PointChangeResponseDto {
    private boolean success;
    private TransactionType type;
    private int changedPoints;  // 변동된 포인트
    private int remainingBalance; // 사용 후 잔여 포인트
}
