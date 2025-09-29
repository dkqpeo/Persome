package com.c3l2.persome.order.service;

import com.c3l2.persome.cart.entity.CartItem;
import com.c3l2.persome.cart.repository.CartItemRepository;
import com.c3l2.persome.config.error.ErrorCode;
import com.c3l2.persome.config.error.exceprion.BusinessException;
import com.c3l2.persome.coupon.service.UserCouponService;
import com.c3l2.persome.delivery.entity.Delivery;
import com.c3l2.persome.delivery.entity.DeliverySnapshot;
import com.c3l2.persome.delivery.entity.DeliveryStatus;
import com.c3l2.persome.order.dto.response.*;
import com.c3l2.persome.order.entity.Order;
import com.c3l2.persome.order.entity.OrderItem;
import com.c3l2.persome.order.entity.ReceiveType;
import com.c3l2.persome.payment.dto.KakaoPayRequest;
import com.c3l2.persome.payment.dto.KakaoPayReadyResponse;
import com.c3l2.persome.payment.dto.PaymentResponseDto;
import com.c3l2.persome.payment.entity.Payment;
import com.c3l2.persome.payment.entity.PaymentMethod;
import com.c3l2.persome.payment.entity.PaymentStatus;
import com.c3l2.persome.payment.repository.PaymentRepository;
import com.c3l2.persome.payment.service.KakaoPaymentService;
import com.c3l2.persome.payment.service.PaymentService;
import com.c3l2.persome.point.dto.PointChangeRequestDto;
import com.c3l2.persome.point.dto.PointChangeResponseDto;
import com.c3l2.persome.point.entity.TransactionType;
import com.c3l2.persome.point.repository.PointTransactionRepository;
import com.c3l2.persome.point.service.UserPointService;
import com.c3l2.persome.product.entity.Product;
import com.c3l2.persome.product.entity.ProductOption;
import com.c3l2.persome.product.repository.ProductOptionRepository;
import com.c3l2.persome.user.entity.User;
import com.c3l2.persome.order.dto.*;
import com.c3l2.persome.order.dto.request.DirectOrderItemDto;
import com.c3l2.persome.order.dto.request.OrderRequestDto;
import com.c3l2.persome.order.repository.OrderRepository;
import com.c3l2.persome.user.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.c3l2.persome.order.entity.OrderStatus;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import jakarta.servlet.http.HttpServletRequest;

@RequiredArgsConstructor
@Service
public class OrderService {
    private final OrderRepository orderRepository;
    private final UserPointService userPointService;
    private final UserCouponService userCouponService;
    private final PaymentService paymentService;
    private final PointTransactionRepository pointTransactionRepository;

    // 신규 주문
    @Transactional
    public Order save(Order order) {
        return orderRepository.save(order);
    }

    // 주문 내역 조회 PK
    public Order findById(Long id) {
        return orderRepository.findById(id).orElseThrow(() -> new BusinessException(ErrorCode.ORDER_NOT_FOUND));
    }

    //주문 목록 조회
    @Transactional(readOnly = true)
    public Page<OrderSummaryDto> getUserOrders(Long userId, int page, int size, LocalDate fromDate) {

        Pageable pageable = PageRequest.of(page, size, Sort.by("orderDate").descending());
        Page<Order> result;

        if (fromDate != null) {
            //fromDate 이후만 조회
            LocalDateTime from = fromDate.atStartOfDay();
            result = orderRepository.findByUserIdAndOrderDateAfter(userId, from, pageable);

        } else {
            //전체 조회
            result = orderRepository.findByUserId(userId, pageable);
        }

        return result.map(order -> new OrderSummaryDto(
                order.getId(),
                order.getOrderDate(),
                order.getOrderTotalAmount(),
                order.getOrderStatus().getLabel()
        ));
    }

    //기간별 주문 조회
    @Transactional(readOnly = true)
    public List<OrderCountDto> getUserOrderStatusCounts(Long userId, LocalDate fromDate, LocalDate toDate) {
        LocalDateTime from = fromDate.atStartOfDay();
        LocalDateTime to = (toDate != null ? toDate.plusDays(1).atStartOfDay() : LocalDateTime.now());

        List<Order> orders = orderRepository.findByUserIdAndOrderDateBetween(userId, from, to);

        Map<String, Long> grouped = orders.stream()
                .collect(Collectors.groupingBy(o -> o.getOrderStatus().getLabel(), Collectors.counting()));

        return grouped.entrySet().stream()
                .map(e -> new OrderCountDto(e.getKey(), e.getValue()))
                .toList();
    }

    //주문 상세 조회
    @Transactional(readOnly = true)
    public OrderResponseDto getOrderDetail(Long orderId) {
        Order order = orderRepository.findById(orderId)
                .orElseThrow(() -> new BusinessException(ErrorCode.ORDER_NOT_FOUND));
        PaymentResponseDto payment = paymentService.getPaymentByOrderId(orderId);
        return OrderResponseDto.fromEntity(order, payment);
    }

    //주문 취소
    @Transactional
    public void cancelOrder(Long orderId, Long userId) {
        Order order = orderRepository.findById(orderId)
                .orElseThrow(() -> new BusinessException(ErrorCode.ORDER_NOT_FOUND));

        //주문자가 맞는지 확인
        if (!order.getUser().getId().equals(userId)) {
            throw new BusinessException(ErrorCode.ORDER_USER_MISMATCH);
        }

        //취소 가능 상태만 허용
        if (!(order.getOrderStatus() == OrderStatus.PENDING
                || order.getOrderStatus() == OrderStatus.PAID
                || order.getOrderStatus() == OrderStatus.PROCESSING)) {
            throw new BusinessException(ErrorCode.ORDER_CANNOT_CANCEL);
        }

        //1. 쿠폰 복구
        userCouponService.restoreCoupon(order.getUserCoupon());

        //2. 포인트 복구
        if (order.getPointUsedAmount() != null && order.getPointUsedAmount().compareTo(BigDecimal.ZERO) > 0) {
            int refundPoints = order.getPointUsedAmount().intValue();
            PointChangeRequestDto restoreDto = PointChangeRequestDto.builder()
                    .orderId(order.getId())
                    .amount(refundPoints)
                    .type(TransactionType.RESTORE)
                    .build();
            userPointService.changePoints(userId, restoreDto);
        }

        // 3. 적립 포인트 회수 (PointTransaction 조회)
        pointTransactionRepository.findByUser_IdAndOrderIdAndType(userId, orderId, TransactionType.EARN)
                .ifPresent(earnTx -> {
                    if (earnTx.getAmount() > 0) {
                        PointChangeRequestDto revokeDto = PointChangeRequestDto.builder()
                                .orderId(order.getId())
                                .amount(earnTx.getAmount())
                                .type(TransactionType.USE) // 회수 → 차감
                                .build();
                        userPointService.changePoints(userId, revokeDto);
                    }
                });

        // 4. 상태 변경
        order.cancel();
        orderRepository.save(order);
    }

}
