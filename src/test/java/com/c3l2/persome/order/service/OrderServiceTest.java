package com.c3l2.persome.order.service;

import com.c3l2.persome.coupon.repository.UserCouponRepository;
import com.c3l2.persome.order.entity.Order;
import com.c3l2.persome.order.entity.ReceiveType;
import com.c3l2.persome.product.entity.Product;
import com.c3l2.persome.product.entity.ProductOption;
import com.c3l2.persome.user.entity.User;
import com.c3l2.persome.order.dto.PriceCalculationResult;
import com.c3l2.persome.order.dto.request.OrderRequestDto;
import com.c3l2.persome.order.dto.response.OrderResponseDto;
import com.c3l2.persome.order.repository.OrderRepository;
import com.c3l2.persome.user.repository.UserRepository;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;

import static org.assertj.core.api.Assertions.assertThat;

import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyInt;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
class OrderServiceTest {
    @InjectMocks
    private OrderService orderService;

    @Mock
    private UserRepository userRepository;
    @Mock
    private ProductOptionRepository productOptionRepository;
    @Mock
    private UserCouponRepository userCouponRepository;
    @Mock
    private OrderRepository orderRepository;
    @Mock
    private PricingService pricingService;

    @Test
    void 주문생성_성공() {
        // given
        Long userId = 1L;
        User user = User.builder().id(userId).build();

        Product product = Product.builder().id(100L).build();
        ProductOption option = ProductOption.builder()
                .id(10L)
                .additionalAmount(2000)
                .product(product)
                .build();

        OrderRequestDto.OrderProductDto productDto =
                new OrderRequestDto.OrderProductDto(option.getId(), 2);

        OrderRequestDto request = OrderRequestDto.builder()
                .products(List.of(productDto))
                .receiveType(ReceiveType.DELIVERY)
                .build();

        PriceCalculationResult priceResult = new PriceCalculationResult(
                BigDecimal.valueOf(10000),  // unitPrice
                BigDecimal.valueOf(20000),  // totalPrice
                BigDecimal.ZERO,            // promoDiscount
                BigDecimal.valueOf(20000)   // finalPrice
        );

        when(userRepository.findById(userId)).thenReturn(Optional.of(user));
        when(productOptionRepository.findById(option.getId())).thenReturn(Optional.of(option));
        when(pricingService.calculateFinalPrice(any(), any(), any(), anyInt())).thenReturn(priceResult);
        when(orderRepository.save(any(Order.class))).thenAnswer(invocation -> invocation.getArgument(0));

        // when
        OrderResponseDto response = orderService.createOrder(userId, request);

        // then
        assertThat(response).isNotNull();
        assertThat(response.getUserId()).isEqualTo(userId);
        assertThat(response.getItems()).hasSize(1);
    }

    @Test
    void 주문생성_실패_유저없음() {
        // given
        Long userId = 999L;
        OrderRequestDto request = OrderRequestDto.builder()
                .products(List.of())
                .receiveType(ReceiveType.DELIVERY)
                .build();

        when(userRepository.findById(userId)).thenReturn(Optional.empty());

        // when & then
        assertThrows(IllegalArgumentException.class, () -> orderService.createOrder(userId, request));
    }

    @Test
    void 주문생성_실패_상품옵션없음() {
        // given
        Long userId = 1L;
        User user = User.builder().id(userId).build();

        Long optionId = 999L;
        OrderRequestDto.OrderProductDto productDto = new OrderRequestDto.OrderProductDto(optionId, 1);

        OrderRequestDto request = OrderRequestDto.builder()
                .products(List.of(productDto))
                .receiveType(ReceiveType.DELIVERY)
                .build();

        when(userRepository.findById(userId)).thenReturn(Optional.of(user));
        when(productOptionRepository.findById(optionId)).thenReturn(Optional.empty());

        // when & then
        assertThrows(IllegalArgumentException.class, () -> orderService.createOrder(userId, request));
    }

}