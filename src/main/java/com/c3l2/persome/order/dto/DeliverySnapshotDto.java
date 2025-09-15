package com.c3l2.persome.order.dto;

import com.c3l2.persome.entity.delivery.DeliverySnapshot;
import lombok.*;
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class DeliverySnapshotDto {
    private String receiverName;
    private String receiverPhone;
    private String address;
    private String addressDetail;

    public static DeliverySnapshotDto fromEntity(DeliverySnapshot snapshot) {
        return DeliverySnapshotDto.builder()
                .receiverName(snapshot.getReceiverName())
                .receiverPhone(snapshot.getReceiverPhone())
                .address(snapshot.getAddress())
                .addressDetail(snapshot.getAddressDetail())
                .build();
    }
}
