package com.c3l2.persome.order.service;

import com.c3l2.persome.entity.delivery.Delivery;
import com.c3l2.persome.entity.delivery.DeliverySnapshot;
import com.c3l2.persome.entity.delivery.DeliveryStatus;
import com.c3l2.persome.entity.order.Order;
import com.c3l2.persome.entity.order.OrderItem;
import com.c3l2.persome.entity.order.ReceiveType;
import com.c3l2.persome.entity.product.Product;
import com.c3l2.persome.entity.product.ProductOption;
import com.c3l2.persome.entity.user.User;
import com.c3l2.persome.order.dto.*;
import com.c3l2.persome.order.dto.response.OrderResponseDto;
import com.c3l2.persome.order.dto.request.OrderRequestDto;
import com.c3l2.persome.order.dto.response.OrderSummaryDto;
import com.c3l2.persome.order.repository.OrderRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.util.List;

@RequiredArgsConstructor
@Service
public class OrderService {
    private final OrderRepository orderRepository;
    private final UserRepository userRepository;
    private final ProductOptionRepository productOptionRepository;
    private final PricingService pricingService;

    //주문 생성
    @Transactional
    public OrderResponseDto createOrder(Long userId, OrderRequestDto request) {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new IllegalArgumentException("회원 정보를 찾을 수 없습니다."));

        //1. 주문 생성
        Order order = request.toEntity(user);

        //2. 주문 상품 생성 + 가격 계산
        BigDecimal originalPrice = BigDecimal.ZERO;
        int totalQty = 0;

        for (OrderRequestDto.OrderProductDto productDto : request.getProducts()) {
            ProductOption option = productOptionRepository.findById(productDto.getProductOptionId())
                    .orElseThrow(() -> new IllegalArgumentException("상품 옵션을 찾을 수 없습니다."));

            Product product = option.getProduct();

            //프로모션, 옵션 추가금 등등 모두 계산한 가격 * 수량
            PriceCalculationResult calc = pricingService.calculateFinalPrice(
                    product,
                    option,
                    user,
                    productDto.getQuantity()
            );
            //주문 아이템 생성
            OrderItem orderItem = OrderItem.builder()
                    .order(order)
                    .productOption(option)
                    .quantity(productDto.getQuantity())
                    .unitPrice(calc.getUnitPrice())
                    .totalPrice(calc.getTotalPrice())
                    .build();

            order.getOrderItems().add(orderItem);

            originalPrice = originalPrice.add(calc.getUnitPrice()
                    .multiply(BigDecimal.valueOf(productDto.getQuantity())));
            totalQty += productDto.getQuantity();

            //할인 내역 누적
            order.setCouponDiscountAmount(order.getCouponDiscountAmount().add(calc.getCouponDiscount()));
            order.setPointUsedAmount(order.getPointUsedAmount().add(calc.getPointDiscount()));
            order.setPromoDiscountAmount(order.getPromoDiscountAmount().add(calc.getPromoDiscount()));
        }

        order.setOriginalPrice(originalPrice);
        order.setOrderTotalQty(totalQty);

        //3. 배송비 + 총 결제 금액
        BigDecimal itemsTotal = order.getOrderItems().stream()
                .map(OrderItem::getTotalPrice)
                .reduce(BigDecimal.ZERO, BigDecimal::add);

        int shippingFee = calculateShippingFee(itemsTotal,request.getReceiveType());
        order.setShippingFee(shippingFee);
        order.setOrderTotalAmount(itemsTotal.add(BigDecimal.valueOf(shippingFee)));

        //4. 배송 스냅샷 저장
        if (request.getReceiveType() == ReceiveType.DELIVERY) {
            DeliverySnapshot snapshot = DeliverySnapshot.builder()
                    .receiverName(request.getReceiverName())
                    .receiverPhone(request.getReceiverPhone())
                    .address(request.getAddress())
                    .addressDetail(request.getAddressDetail())
                    .build();

            Delivery delivery = Delivery.builder()
                    .order(order)
                    .deliveryStatus(DeliveryStatus.READY)
                    .deliverySnapshot(snapshot)
                    .build();

            order.setDelivery(delivery);
        }
        //5. 저장 & 응답
        Order savedOrder = orderRepository.save(order);
        return OrderResponseDto.fromEntity(savedOrder);
    }

    //주문 목록 조회
    @Transactional(readOnly = true)
    public List<OrderSummaryDto> getUserOrders(Long userId) {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new IllegalArgumentException("회원 정보를 찾을 수 없습니다."));

        List<Order> orders = orderRepository.findByUserId(userId);

        return orders.stream()
                .map(OrderSummaryDto::fromEntity)
                .toList();
    }

    //주문 상세 조회
    @Transactional(readOnly = true)
    public OrderResponseDto getOrderDetail(Long orderId) {
        Order order = orderRepository.findById(orderId)
                .orElseThrow(() -> new IllegalArgumentException("주문을 찾을 수 없습니다."));
        return OrderResponseDto.fromEntity(order);
    }

    //배송비 계산
    private int calculateShippingFee(BigDecimal itemsTotal, ReceiveType receiveType) {
        if (receiveType == ReceiveType.PICKUP) {
            return 0;
        }
        int baseFee = 2500;
        BigDecimal freeThreshold = BigDecimal.valueOf(30000);

        return itemsTotal.compareTo(freeThreshold) >= 0 ? 0 : baseFee;
    }
}
