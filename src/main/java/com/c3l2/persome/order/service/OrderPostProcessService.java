package com.c3l2.persome.order.service;

import com.c3l2.persome.cart.service.CartService;
import com.c3l2.persome.order.entity.Order;
import com.c3l2.persome.order.entity.OrderItem;
import com.c3l2.persome.point.dto.PointChangeRequestDto;
import com.c3l2.persome.point.dto.PointChangeResponseDto;
import com.c3l2.persome.point.entity.TransactionType;
import com.c3l2.persome.point.service.UserPointService;
import com.c3l2.persome.product.entity.Inventory;
import com.c3l2.persome.product.service.InventoryService;
import com.c3l2.persome.user.entity.User;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.util.List;

@Slf4j
@Service
@Transactional
@RequiredArgsConstructor
public class OrderPostProcessService {
    
    private final CartService cartService;
    private final InventoryService inventoryService;
    private final UserPointService userPointService;
    
    /**
     * 주문 완료 후 후처리 작업들을 통합하여 처리합니다.
     * - 재고 수량 업데이트
     * - 장바구니 아이템 삭제
     * - 포인트 적립
     */
    public void processOrderCompletion(Order order, List<Long> cartItemIds, User user, BigDecimal finalAmount) {
        // 1. 재고 수량 업데이트
        updateInventoryQuantity(order.getOrderItems());
        
        // 2. 장바구니 아이템 삭제
        if (cartItemIds != null && !cartItemIds.isEmpty()) {
            deleteCartItems(user.getId(), cartItemIds);
        }
        
        // 3. 포인트 적립
        processPointEarning(user, finalAmount, order);
    }
    
    /**
     * 주문 상품들의 재고 수량을 업데이트합니다.
     */
    private void updateInventoryQuantity(List<OrderItem> orderItems) {
        orderItems.forEach(orderItem -> {
            Inventory inventory = inventoryService.findByProductOption(orderItem.getProductOption());
            inventory.updateQuantity(inventory.getQuantity() - orderItem.getQuantity());
        });
    }
    
    /**
     * 구매한 상품이 장바구니에 있을 경우 삭제합니다.
     */
    private void deleteCartItems(Long userId, List<Long> cartItemIds) {
        cartItemIds.forEach(cartItemId -> cartService.removeItem(userId, cartItemId));
    }
    
    /**
     * 포인트 사용 처리를 수행합니다.
     */
    public PointChangeResponseDto usePoints(Long userId, Long orderId, Integer usePointAmount) {
        PointChangeRequestDto useDto = PointChangeRequestDto.builder()
                .orderId(orderId)
                .amount(usePointAmount)
                .type(TransactionType.USE)
                .build();
        
        return userPointService.changePoints(userId, useDto);
    }
    
    /**
     * 포인트 적립을 처리합니다. (0.5% 적립률)
     */
    private void processPointEarning(User user, BigDecimal finalAmount, Order order) {
        int earnAmount = finalAmount.multiply(BigDecimal.valueOf(0.005)) // 0.5% 적립
                .intValue();
        
        if (earnAmount > 0) {
            PointChangeRequestDto earnDto = PointChangeRequestDto.builder()
                    .orderId(order.getId())
                    .amount(earnAmount)
                    .type(TransactionType.EARN)
                    .build();
            
            userPointService.changePoints(user.getId(), earnDto);
        }
    }
}