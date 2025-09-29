package com.c3l2.persome.order.service;

import com.c3l2.persome.cart.entity.CartItem;
import com.c3l2.persome.cart.repository.CartItemRepository;
import com.c3l2.persome.config.error.ErrorCode;
import com.c3l2.persome.config.error.exceprion.BusinessException;
import com.c3l2.persome.order.dto.PriceCalculationResult;
import com.c3l2.persome.order.dto.request.DirectOrderItemDto;
import com.c3l2.persome.order.dto.response.*;
import com.c3l2.persome.order.entity.ReceiveType;
import com.c3l2.persome.product.entity.Product;
import com.c3l2.persome.product.entity.ProductOption;
import com.c3l2.persome.product.repository.ProductOptionRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@RequiredArgsConstructor
@Service
public class OrderPrepareService {

    private final ProductOptionRepository productOptionRepository;
    private final CartItemRepository cartItemRepository;
    private final PricingService pricingService;

    //장바구니 기반 주문 준비
    public OrderPrepareResponseDto prepareOrder(List<Long> cartItemIds) {
        List<CartItem> cartItems = getCartItemsById(cartItemIds);
        List<OrderItemDto> orderItems = buildOrderItems(cartItems);
        OrderPrepareDto summary = calculateSummaryFromItems(orderItems);
        
        return OrderPrepareResponseDto.builder()
                .items(orderItems)
                .summary(summary)
                .build();
    }

    //상품 직접 주문 준비
    public OrderPrepareResponseDto prepareDirectOrder(DirectOrderItemDto directOrderItems) {

        OrderItemDto orderItemDto = createOrderItemFromDirect(directOrderItems);
        OrderPrepareDto summary = calculateSummaryFromSingleItem(orderItemDto);
        
        return OrderPrepareResponseDto.builder()
                .items(List.of(orderItemDto))
                .summary(summary)
                .build();
    }

    /**
     * 장바구니 pk로 장바구니에 저장된 상품 목록 조회
     * @param cartItemIds  장바구니 기본키 리스트
     * @return List<CartItem>
     */
    private List<CartItem> getCartItemsById(List<Long> cartItemIds) {
        List<CartItem> cartItems = cartItemRepository.findAllById(cartItemIds);
        if (cartItems.isEmpty()) {
            throw new BusinessException(ErrorCode.CART_ITEM_NOT_FOUND);
        }
        return cartItems;
    }

    /**
     * 장바구니 아이템들을 주문 아이템 DTO로 변환
     * @param cartItems 장바구니 아이템 리스트
     * @return 주문 아이템 DTO 리스트
     */
    private List<OrderItemDto> buildOrderItems(List<CartItem> cartItems) {
        return cartItems.stream()
                .map(this::createOrderItemDto)
                .collect(Collectors.toList());
    }


    /**
     * 직접 주문 아이템으로부터 주문 아이템 DTO 생성
     * @param directOrderItem 직접 주문 아이템
     * @return 가격이 계산된 주문 아이템 DTO
     */
    private OrderItemDto createOrderItemFromDirect(DirectOrderItemDto directOrderItem) {
        ProductOption productOption = productOptionRepository.findById(directOrderItem.getProductOptionId())
                .orElseThrow(() -> new BusinessException(ErrorCode.PRODUCT_OPTION_NOT_FOUND));
        
        return createOrderItemDto(productOption, directOrderItem.getQuantity());
    }

    /**
     * 장바구니 아이템을 주문 아이템 DTO로 변환 (가격 계산 포함)
     * @param cartItem 장바구니 아이템 엔티티
     * @return 가격이 계산된 주문 아이템 DTO
     */
    private OrderItemDto createOrderItemDto(CartItem cartItem) {
        return createOrderItemDto(cartItem.getProductOption(), cartItem.getQuantity());
    }

    /**
     * 상품 옵션과 수량으로 주문 아이템 DTO 생성 (가격 계산 포함)
     * @param productOption 상품 옵션 엔티티
     * @param quantity 주문 수량
     * @return 가격이 계산된 주문 아이템 DTO
     */
    private OrderItemDto createOrderItemDto(ProductOption productOption, int quantity) {
        Product product = productOption.getProduct();

        PriceCalculationResult calc = pricingService.calculateFinalPrice(product, productOption, quantity);

        return OrderItemDto.builder()
                .orderItemId(null)
                .productOptionId(productOption.getId())
                .productName(product.getName() + " - " + productOption.getName())
                .quantity(quantity)
                .unitPrice(calc.getUnitPrice())
                .totalPrice(calc.getFinalPrice())
                .status("PREPARE")
                .imageUrl(getProductImageUrl(product))
                .build();
    }

    private String getProductImageUrl(Product product) {
        return product.getProductImgs().isEmpty() ? null 
                : String.valueOf(product.getProductImgs().getFirst().getImgUrl());
    }

    /**
     * 주문 아이템들로부터 가격 합계 계산 (원가, 할인가, 최종가)
     * @param orderItems 주문 아이템 DTO 리스트
     * @return 가격 합계가 계산된 주문 요약 DTO
     */
    private OrderPrepareDto calculateSummaryFromItems(List<OrderItemDto> orderItems) {
        int productPriceSum = 0;
        int discountSum = 0;
        int finalPriceSum = 0;

        for (OrderItemDto item : orderItems) {
            // 원가 = 단가 * 수량 (할인 전)
            int originalPrice = item.getUnitPrice().intValue() * item.getQuantity();
            int finalPrice = item.getTotalPrice().intValue();
            
            productPriceSum += originalPrice;
            discountSum += (originalPrice - finalPrice);
            finalPriceSum += finalPrice;
        }

        int shippingFee = calculateShippingFee(finalPriceSum, ReceiveType.DELIVERY);

        return OrderPrepareDto.builder()
                .productPrice(productPriceSum)
                .discountPrice(discountSum)
                .shippingFee(shippingFee)
                .finalPrice(finalPriceSum + shippingFee)
                .build();
    }

    /**
     * 단일 주문 아이템으로부터 가격 합계 계산 (원가, 할인가, 최종가)
     * @param item 주문 아이템 DTO
     * @return 가격 합계가 계산된 주문 요약 DTO
     */
    private OrderPrepareDto calculateSummaryFromSingleItem(OrderItemDto item) {
        // 원가 = 단가 * 수량 (할인 전)
        int originalPrice = item.getUnitPrice().intValue() * item.getQuantity();
        int finalPrice = item.getTotalPrice().intValue();

        int shippingFee = calculateShippingFee(finalPrice, ReceiveType.DELIVERY);

        return OrderPrepareDto.builder()
                .productPrice(originalPrice)
                .discountPrice(originalPrice - finalPrice)
                .shippingFee(shippingFee)
                .finalPrice(finalPrice + shippingFee)
                .build();
    }

    //배송비
    private int calculateShippingFee(int itemsTotal, ReceiveType receiveType) {
        if (receiveType == ReceiveType.PICKUP) {
            return 0;
        }
        int baseFee = 3000;
        int freeThreshold = 30000;

        return itemsTotal >= freeThreshold ? 0 : baseFee;
    }
}
