package com.c3l2.persome.point.dto;

import com.c3l2.persome.point.entity.TransactionType;
import jakarta.validation.constraints.Min;
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
    @Min(1)
    private Integer amount;  // 무조건 양수로만 받음. 서비스에서 사용이면 음수로 변환해줌
    private TransactionType type;  // USE, EARN, RESTORE
}
