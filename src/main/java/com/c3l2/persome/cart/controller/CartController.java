package com.c3l2.persome.cart.controller;

import com.c3l2.persome.cart.dto.CartItemRequest;
import com.c3l2.persome.cart.dto.CartItemUpdateQuantity;
import com.c3l2.persome.cart.dto.CartResponseDto;
import com.c3l2.persome.cart.service.CartService;
import com.c3l2.persome.entity.cart.CartItem;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/users/{id}/cart")
@RequiredArgsConstructor
public class CartController {

    private final CartService cartService;

    @GetMapping
    public ResponseEntity<CartResponseDto> getCartItem(@PathVariable Long id){
        CartResponseDto cart = cartService.getCartItems(id);
                return ResponseEntity.ok(cart);
    }
    //장바구니에 상품 추가
    @PostMapping("/items")
    public ResponseEntity<CartResponseDto> addToCart(@PathVariable Long id, @RequestBody CartItemRequest cartItemRequest) {
        CartResponseDto cartItemResponse = cartService.addToCart(id, cartItemRequest);
        return new ResponseEntity<>(cartItemResponse, HttpStatus.OK);
    }

    //개별 제거
    @DeleteMapping("/items/{itemId}")
    public ResponseEntity<Void> removeItem(@PathVariable Long id, @PathVariable Long itemId) {
        cartService.removeItem(id, itemId);
        return new ResponseEntity<>(HttpStatus.OK);
    }

    //전체 제거
    @DeleteMapping("/items")
    public ResponseEntity<Void> removeAllItems(@PathVariable Long id) {
        cartService.clearCart(id);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    // 장바구니 수량 변경
    @PatchMapping("/items/{itemId}")
    public ResponseEntity<CartItem> updateItem(@PathVariable Long id, @RequestBody CartItemUpdateQuantity updateQuantity) {

        CartItem updatedCartItem = cartService.updateQuantity(id, updateQuantity);
        return new ResponseEntity<>(updatedCartItem,HttpStatus.OK);
    }
}