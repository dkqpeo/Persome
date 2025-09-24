package com.c3l2.persome.wishlist.controller;

import com.c3l2.persome.user.security.CustomUserDetails;
import com.c3l2.persome.wishlist.dto.WishlistAddRequestDto;
import com.c3l2.persome.wishlist.dto.WishlistResponseDto;
import com.c3l2.persome.wishlist.service.WishlistService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@RestController
@RequestMapping("/api/users/me/wishlist")
@RequiredArgsConstructor
public class WishController {

    private final WishlistService wishlistService;

    // 위시리스트 조회
    @GetMapping
    public ResponseEntity<List<WishlistResponseDto>> getWishlist(@AuthenticationPrincipal CustomUserDetails userDetails) {
        List<WishlistResponseDto> wishlistResponseDto = wishlistService.getWishlists(userDetails.getId());

        return ResponseEntity.ok(wishlistResponseDto);
    }

    // 위시리스트 상품 갯수 조회
    @GetMapping("/count")
    public ResponseEntity<Long> getCartCount(@AuthenticationPrincipal CustomUserDetails userDetails) {
        long count = wishlistService.getWishlistCount(userDetails.getId());
        return ResponseEntity.ok(count);
    }

    // 위시리스트 상품 추가
    @PostMapping
    public ResponseEntity<WishlistResponseDto> addWishlist(
            @AuthenticationPrincipal CustomUserDetails userDetails,
            @RequestBody WishlistAddRequestDto wishlistAddRequestDto
    ) {
        WishlistResponseDto wishlistResponseDto = wishlistService.addWishlist(userDetails.getId(), wishlistAddRequestDto);

        return ResponseEntity.ok(wishlistResponseDto);
    }

    // 위시리스트 상품 삭제
    @DeleteMapping("/{productId}")
    public ResponseEntity<WishlistResponseDto> deleteWishlist(@AuthenticationPrincipal CustomUserDetails userDetails, @PathVariable Long productId) {
        wishlistService.removeWishList(userDetails.getId(), productId);

        return ResponseEntity.noContent().build();
    }

    // 위시리스트 상품 전체 삭제
    @DeleteMapping
    public ResponseEntity<WishlistResponseDto> clearWishlist(@AuthenticationPrincipal CustomUserDetails userDetails) {
        wishlistService.clearWishlist(userDetails.getId());
        return ResponseEntity.noContent().build();
    }
}
