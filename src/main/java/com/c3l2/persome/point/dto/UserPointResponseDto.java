package com.c3l2.persome.point.dto;

import com.c3l2.persome.point.entity.UserPoint;
import com.c3l2.persome.user.entity.User;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class UserPointResponseDto {
    private Long userId;
    private Integer balance;

    public static UserPointResponseDto fromEntity(User user, UserPoint userPoint) {
        return UserPointResponseDto.builder()
                .userId(user.getId())
                .balance(userPoint != null ? userPoint.getBalance() : 0)
                .build();
    }
}
