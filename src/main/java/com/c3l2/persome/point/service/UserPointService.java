package com.c3l2.persome.point.service;

import com.c3l2.persome.point.entity.PointTransaction;
import com.c3l2.persome.point.entity.TransactionType;
import com.c3l2.persome.point.entity.UserPoint;
import com.c3l2.persome.user.entity.User;
import com.c3l2.persome.point.dto.PointChangeRequestDto;
import com.c3l2.persome.point.dto.PointChangeResponseDto;
import com.c3l2.persome.point.dto.UserPointResponseDto;
import com.c3l2.persome.point.repository.PointTransactionRepository;
import com.c3l2.persome.user.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class UserPointService {
    private final UserRepository userRepository;
    private final PointTransactionRepository pointTransactionRepository;

    // 포인트 조회
    @Transactional(readOnly = true)
    public UserPointResponseDto getMyPoint(Long userId) {
        User user = userRepository.findById(userId).orElseThrow(() -> new IllegalArgumentException("존재하지 않는 회원입니다"));

        return UserPointResponseDto.fromEntity(user, user.getUserPoint());
    }

    // 포인트 변경 (사용/적립/복구)
    @Transactional
    public PointChangeResponseDto changePoints(Long userId, PointChangeRequestDto requestDto) {
        User user = userRepository.findById(userId).orElseThrow(() -> new IllegalArgumentException("존재하지 않는 회원입니다"));

        UserPoint userPoint = user.getUserPoint();

        // 포인트 부족 체크
        if (requestDto.getType() == TransactionType.USE &&
                userPoint.getBalance() < requestDto.getAmount()) {
            throw new IllegalArgumentException("포인트가 부족합니다.");
        }

        // 포인트 변화 (USE는 음수, EARN/RESTORE는 양수)
        int changeAmount = (requestDto.getType() == TransactionType.USE)
                ? -requestDto.getAmount()
                : requestDto.getAmount();

        userPoint.addPoints(changeAmount);

        // 거래 기록 저장
        PointTransaction pointTransaction;
        if (requestDto.getOrderId() != null) {
            pointTransaction = PointTransaction.createOrderTransaction(
                    user,
                    requestDto.getOrderId(),
                    changeAmount,
                    requestDto.getType()
            );
        } else {
            pointTransaction = PointTransaction.createNonOrderTransaction(
                    user,
                    changeAmount,
                    requestDto.getType()
            );
        }

        pointTransactionRepository.save(pointTransaction);

        return PointChangeResponseDto.builder()
                .success(true)
                .type(requestDto.getType())
                .changedPoints(changeAmount)
                .remainingBalance(userPoint.getBalance())
                .build();
    }

}
