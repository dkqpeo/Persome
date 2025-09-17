package com.c3l2.persome.point.service;

import com.c3l2.persome.point.dto.PointTransactionResponseDto;
import com.c3l2.persome.point.repository.PointTransactionRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.temporal.TemporalAdjusters;

@Service
@RequiredArgsConstructor
public class PointTransactionService {
    private final PointTransactionRepository pointTransactionRepository;

    // 포인트 거래 이력
    @Transactional(readOnly = true)
    public Page<PointTransactionResponseDto> getMyPointTransactions(Long userId,
                                                                    LocalDate startDate,
                                                                    LocalDate endDate,
                                                                    Pageable pageable) {
        LocalDateTime start = startDate.atStartOfDay();
        LocalDateTime end = endDate.atTime(LocalTime.MAX);

        return pointTransactionRepository.findByUserIdAndOccurredAtBetween(userId, start, end, pageable)
                .map(PointTransactionResponseDto::fromEntity);
    }

    // 당월 소멸 예정 포인트
    @Transactional(readOnly = true)
    public int getExpiringPointsThisMonth(Long userId) {
        LocalDate now = LocalDate.now();
        LocalDateTime start = now.withDayOfMonth(1).atStartOfDay();
        LocalDateTime end = now.with(TemporalAdjusters.lastDayOfMonth()).atTime(LocalTime.MAX);

        return pointTransactionRepository.getExpiringPointsThisMonth(userId, start, end);
    }
}
