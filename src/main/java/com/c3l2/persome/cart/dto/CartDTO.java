package com.c3l2.persome.cart.dto;

import com.c3l2.persome.cart.entity.Cart;
import lombok.*;
import java.util.List;
import java.util.ArrayList;

@Getter
@NoArgsConstructor
public class CartDTO {

    private Long id;

    // CartDTO의 리스트로 변경
    private List<CartDTO> cartDTOList = new ArrayList<>();  // CartDTO의 리스트로 초기화

    // Cart 객체의 리스트를 받아 CartDTO로 변환하는 메서드
    public void setCartDTOList(List<Cart> cartEntityList) {
        this.cartDTOList = new ArrayList<>();
        // Cart 객체를 CartDTO로 변환
        for (Cart cartEntity : cartEntityList) {
            this.cartDTOList.add(new CartDTO(cartEntity));  // CartDTO 생성자 사용
        }
    }

    // CartDTO 생성자 추가 (Cart 객체에서 데이터를 가져오는 생성자)
    public CartDTO(Cart cart) {
        this.id = cart.getId();
        // 필요한 필드에서 데이터를 추출하여 설정
    }
}