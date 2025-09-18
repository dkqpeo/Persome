package com.c3l2.persome.point.dto;

import com.c3l2.persome.entity.point.PointTransaction;
import com.c3l2.persome.entity.point.TransactionType;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class PointTransactionResponseDto {
    private LocalDate date;
    private String description;
    private String amount;

    public static PointTransactionResponseDto fromEntity(PointTransaction pointTransaction) {
        String desc;

        switch (pointTransaction.getType()) {
            case EARN -> desc = "주문 적립\n주문번호:" + pointTransaction.getOrderId();
            case USE -> desc = "주문 시 사용\n주문번호:" + pointTransaction.getOrderId();
            case EXPIRE -> desc = "포인트 소멸";
            case ADJUST -> {
                if (pointTransaction.getAmount() > 0) {
                    desc = "주문 취소/반품으로 인한 사용 취소"
                            + (pointTransaction.getOrderId() != null ? "\n주문번호:" + pointTransaction.getOrderId() : "");
                } else  {
                    desc = "포인트 조정 차감";
                }
            }
            default -> desc = "알 수 없는 거래";
        }

        String amountStr = (pointTransaction.getAmount() >= 0  ? "+" : "")
                + String.format("%,d", pointTransaction.getAmount()) + " P";

        return PointTransactionResponseDto.builder()
                .date(pointTransaction.getOccurredAt().toLocalDate())
                .description(desc)
                .amount(amountStr)
                .build();
    }
}
