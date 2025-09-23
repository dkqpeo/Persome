package com.c3l2.persome.cart.service;

import com.c3l2.persome.cart.dto.CartItemRequestDto;
import com.c3l2.persome.cart.dto.CartItemUpdateQuantity;
import com.c3l2.persome.cart.dto.CartResponseDto;
import com.c3l2.persome.cart.repository.CartItemRepository;
import com.c3l2.persome.cart.repository.CartRepository;
import com.c3l2.persome.cart.entity.Cart;
import com.c3l2.persome.cart.entity.CartItem;
import com.c3l2.persome.order.service.PricingService;
import com.c3l2.persome.product.entity.ProductOption;
import com.c3l2.persome.user.entity.User;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class CartService {

    private final CartRepository cartRepository;
    private final CartItemRepository cartItemRepository;
    private final PricingService pricingService;

    @PersistenceContext
    private EntityManager entityManager;

    // C: 장바구니 담기
    public CartResponseDto addToCart(Long userId, CartItemRequestDto cartItemRequest) {
        // 1. 사용자의 장바구니 찾기
        Cart cart = cartRepository.findByUser_Id(userId);

        // 2. 없으면 새로 생성 (user 반드시 설정)
        if (cart == null) {
            User user = entityManager.getReference(User.class, userId);
            cart = Cart.builder()
                    .user(user)
                    .build();
            cart = cartRepository.save(cart);
        }

        // 3. ProductOption 조회
        ProductOption productOption = entityManager.getReference(ProductOption.class, cartItemRequest.getProductOptionId());

        // 4. 같은 옵션 상품이 이미 장바구니에 있으면 수량만 증가
        CartItem existingItem = cart.getCartItems().stream()
                .filter(item -> item.getProductOption().getId().equals(productOption.getId()))
                .findFirst()
                .orElse(null);

        if (existingItem != null) {
            existingItem.setQuantity(existingItem.getQuantity() + cartItemRequest.getQuantity());
        } else {
            CartItem cartItem = CartItem.builder()
                    .cart(cart)
                    .productOption(productOption)
                    .quantity(cartItemRequest.getQuantity())
                    .build();
            cart.getCartItems().add(cartItem);
        }

        // 5. 저장 후 응답 변환
        Cart savedCart = cartRepository.save(cart);
        return CartResponseDto.fromEntity(savedCart, pricingService);
    }

    // R: 장바구니 조회
    @Transactional(readOnly = true)
    public CartResponseDto getCartItems(Long userId) {
        Cart cart = cartRepository.findByUser_Id(userId);
        if (cart == null) {
            // 카트가 아직 생성되지 않은 사용자: 빈 장바구니 응답
            return CartResponseDto.builder()
                    .cartId(null)
                    .items(java.util.Collections.emptyList())
                    .totalBasePrice(0)
                    .totalDiscount(0)
                    .finalAmount(0)
                    .build();
        }
        return CartResponseDto.fromEntity(cart, pricingService);
    }

    // U: 장바구니 수량 변경
    public CartResponseDto updateQuantity(Long userId, CartItemUpdateQuantity updateQuantity) {
        // findById는 Optional을 반환하므로, Optional로 처리 후 orElseThrow로 예외 처리
        CartItem cartItem = cartItemRepository.findById(updateQuantity.getCartItemId())
                .orElseThrow(() -> new RuntimeException("Item not found"));

        // 소유자 검증
        if (!cartItem.getCart().getUser().getId().equals(userId)) {
            throw new RuntimeException("Permission denied");
        }

        cartItem.setQuantity(updateQuantity.getUpdateQuantity());
        cartItemRepository.save(cartItem);

        return CartResponseDto.fromEntity(cartItem.getCart(), pricingService);
    }

    // D: 개별 장바구니 항목 삭제
    public void removeItem(Long userId, Long cartItemId) {
        // findById는 Optional을 반환하므로, Optional로 처리 후 orElseThrow로 예외 처리
        CartItem cartItem = cartItemRepository.findById(cartItemId)
                .orElseThrow(() -> new RuntimeException("Item not found"));

        // 소유자 검증
        if (!cartItem.getCart().getUser().getId().equals(userId)) {
            throw new RuntimeException("Permission denied");
        }

        cartItemRepository.deleteById(cartItemId);
    }

    // D: 장바구니 전체 삭제
    public void clearCart(Long userId) {
        Cart cart = cartRepository.findByUser_Id(userId);
        if (cart != null) {
            cart.getCartItems().clear();  // CartItems를 모두 제거
            cartRepository.save(cart);  // 변경된 카트 저장
        }
    }

    public int getCartItemCount(Long userId) {
        return cartItemRepository.countByCart_User_Id(userId);
    }
}
