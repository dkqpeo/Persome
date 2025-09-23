package com.c3l2.persome.cart.controller;

import com.c3l2.persome.cart.dto.CartItemRequestDto;
import com.c3l2.persome.cart.dto.CartItemUpdateQuantity;
import com.c3l2.persome.cart.dto.CartResponseDto;
import com.c3l2.persome.cart.service.CartService;
import com.c3l2.persome.user.security.CustomUserDetails;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/users/me/cart")
@RequiredArgsConstructor
public class CartController {

    private final CartService cartService;

    // 장바구니 조회
    @GetMapping
    public ResponseEntity<CartResponseDto> getCartItem(@AuthenticationPrincipal CustomUserDetails userDetails) {
        CartResponseDto cart = cartService.getCartItems(userDetails.getId());
        return ResponseEntity.ok(cart);
    }

    // 장바구니 상품 갯수 조회
    @GetMapping("/count")
    public ResponseEntity<Integer> getCartCount(@AuthenticationPrincipal CustomUserDetails userDetails) {
        int count = cartService.getCartItemCount(userDetails.getId());
        return ResponseEntity.ok(count);
    }

    //장바구니에 상품 추가
    @PostMapping("/items")
    public ResponseEntity<CartResponseDto> addToCart(
            @AuthenticationPrincipal CustomUserDetails userDetails,
            @RequestBody CartItemRequestDto cartItemRequest) {
        CartResponseDto cartItemResponse = cartService.addToCart(userDetails.getId(), cartItemRequest);
        return ResponseEntity.ok(cartItemResponse);
    }

    @DeleteMapping("/items/{itemId}")
    public ResponseEntity<Void> removeItem(
            @AuthenticationPrincipal CustomUserDetails userDetails,
            @PathVariable Long itemId) {
        cartService.removeItem(userDetails.getId(), itemId);
        return ResponseEntity.ok().build();
    }

    @DeleteMapping("/items")
    public ResponseEntity<Void> removeAllItems(@AuthenticationPrincipal CustomUserDetails userDetails) {
        cartService.clearCart(userDetails.getId());
        return ResponseEntity.noContent().build();
    }

    // 장바구니 수량 변경
    @PatchMapping("/items/{itemId}")
    public ResponseEntity<CartResponseDto> updateItem(
            @AuthenticationPrincipal CustomUserDetails userDetails,
            @PathVariable Long itemId,
            @RequestBody CartItemUpdateQuantity updateQuantity) {

        CartResponseDto cart = cartService.updateQuantity(userDetails.getId(), updateQuantity);
        return ResponseEntity.ok(cart);
    }
}