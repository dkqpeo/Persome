package com.c3l2.persome.cart.service;

import com.c3l2.persome.cart.dto.CartItemRequest;
import com.c3l2.persome.cart.dto.CartItemUpdateQuantity;
import com.c3l2.persome.cart.dto.CartResponseDto;
import com.c3l2.persome.cart.repository.CartItemRepository;
import com.c3l2.persome.cart.repository.CartRepository;
import com.c3l2.persome.cart.entity.Cart;
import com.c3l2.persome.cart.entity.CartItem;
import com.c3l2.persome.product.entity.ProductOption;
import com.c3l2.persome.user.entity.User;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class CartService {

    private final CartRepository cartRepository;
    private final CartItemRepository cartItemRepository;

    @PersistenceContext
    private EntityManager entityManager;

    // C: 장바구니 담기
    public CartResponseDto addToCart(Long user_id, CartItemRequest cartItemRequest) {
        Long userId = user_id;

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

        // 4. CartItem 생성 및 카트에 추가 (양방향 일관성 유지)
        CartItem cartItem = CartItem.builder()
                .cart(cart)
                .productOption(productOption)
                .quantity(cartItemRequest.getQuantity())
                .build();

        cart.getCartItems().add(cartItem);

        // 5. 저장
        Cart insrtAfterData = cartRepository.save(cart);  // CartItem도 함께 저장됨


        return CartResponseDto.from(insrtAfterData);
    }

    // R: 장바구니 조회
    public CartResponseDto getCartItems(Long userId) {
        Cart cart = cartRepository.findByUser_Id(userId);
        if (cart == null) {
            // 카트가 아직 생성되지 않은 사용자: 빈 장바구니 응답
            return CartResponseDto.builder()
                    .cartId(null)
                    .cartItems(java.util.Collections.emptyList())
                    .build();
        }
        return CartResponseDto.from(cart);
    }

    // U: 장바구니 수량 변경
    public CartItem updateQuantity(Long user_id, CartItemUpdateQuantity updateQuantity) {

        // findById는 Optional을 반환하므로, Optional로 처리 후 orElseThrow로 예외 처리
        CartItem cartItem = cartItemRepository.findById(updateQuantity.getCartItemId())
                .orElseThrow(() -> new RuntimeException("Item not found"));

        //cartItem.getCart().getUser();

        // 빌더 패턴을 사용하여 새 객체로 수량을 변경
        CartItem updatedCartItem = CartItem.builder()
                .cart(cartItem.getCart()) // 기존 카트 정보를 유지
                .productOption(cartItem.getProductOption()) // 기존 제품 옵션 유지
                .quantity(updateQuantity.getUpdateQuantity()) // 새로 변경된 수량
                .build();

        // 변경된 CartItem 저장
        return cartItemRepository.save(updatedCartItem);

    }

    // D: 개별 장바구니 항목 삭제
    public void removeItem(Long user_id, Long cartItemId) {
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

    // C: 장바구니 생성 및 상품 추가
    public Cart create(CartItemRequest req) {
        Long userId = 1L; // TODO: 인증 연동 시 실제 사용자 ID로 대체

        if (req == null) {
            throw new NullPointerException("Request cannot be null");
        }

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
        ProductOption productOption = entityManager.getReference(ProductOption.class, req.getProductOptionId());

        // 4. CartItem 생성 및 카트에 추가 (양방향 일관성 유지)
        CartItem cartItem = CartItem.builder()
                .cart(cart)
                .productOption(productOption)
                .quantity(req.getQuantity())
                .build();

        // 5. Cart에 CartItem 추가
        cart.getCartItems().add(cartItem);

        // 6. 저장
        return cartRepository.save(cart);  // CartItem도 함께 저장됨

    }
}
