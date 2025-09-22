package com.c3l2.persome.cart.controller;

import com.c3l2.persome.cart.dto.CartItemRequest;
import com.c3l2.persome.cart.dto.CartResponseDto;
import com.c3l2.persome.cart.service.CartService;
import com.c3l2.persome.product.entity.ProductOption;
import com.c3l2.persome.product.repository.ProductOptionRepository;
import com.c3l2.persome.user.security.CustomUserDetails;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Optional;

@RestController
@RequestMapping("/dev")
@RequiredArgsConstructor
public class DevCartController {

    private final CartService cartService;
    private final ProductOptionRepository productOptionRepository;

    /**
     * 현재 로그인 사용자의 장바구니에 임의의 상품옵션을 1개 담아 테스트용으로 시드합니다.
     */
    @GetMapping("/cart/seed")
    public ResponseEntity<?> seedCart(@AuthenticationPrincipal CustomUserDetails user,
                                      @RequestParam(name = "count", defaultValue = "1") int count) {
        if (user == null) {
            return ResponseEntity.status(401).body("로그인이 필요합니다.");
        }
        Optional<ProductOption> any = productOptionRepository.findAll().stream().findFirst();
        if (any.isEmpty()) {
            return ResponseEntity.badRequest().body("상품 옵션이 없습니다. 상품 데이터를 먼저 등록해주세요.");
        }
        CartItemRequest req = new CartItemRequest();
        try {
            java.lang.reflect.Field f1 = CartItemRequest.class.getDeclaredField("productOptionId");
            f1.setAccessible(true);
            f1.set(req, any.get().getId());
            java.lang.reflect.Field f2 = CartItemRequest.class.getDeclaredField("quantity");
            f2.setAccessible(true);
            f2.set(req, 1);
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body("요청 생성 실패: " + e.getMessage());
        }

        CartResponseDto last = null;
        for (int i = 0; i < Math.max(1, count); i++) {
            last = cartService.addToCart(user.getId(), req);
        }
        return ResponseEntity.ok(last != null ? last : "OK");
    }
}
