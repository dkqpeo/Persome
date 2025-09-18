package com.c3l2.persome.wishlist.service;

import com.c3l2.persome.product.entity.Product;
import com.c3l2.persome.product.entity.ProductImg;
import com.c3l2.persome.product.entity.ProductPrice;
import com.c3l2.persome.product.entity.constant.ProductType;
import com.c3l2.persome.product.repository.ProductRepository;
import com.c3l2.persome.user.entity.User;
import com.c3l2.persome.user.repository.UserRepository;
import com.c3l2.persome.wishlist.dto.WishlistAddRequestDto;
import com.c3l2.persome.wishlist.dto.WishlistResponseDto;
import com.c3l2.persome.wishlist.entity.Wishlist;
import com.c3l2.persome.wishlist.repository.WishlistRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
public class WishlistService {

    private final WishlistRepository wishlistRepository;
    private final UserRepository userRepository;
    private final ProductRepository productRepository;

    // 조회
    public List<WishlistResponseDto> getWishlists(Long userId) {
        return wishlistRepository.findByUserId(userId).stream()
                .map(this::toDto)
                .toList();
    }

    // 추가
    @Transactional
    public WishlistResponseDto addWishlist(Long userId, WishlistAddRequestDto wishlistAddRequestDto) {
        User user = userRepository.findById(userId).orElseThrow(() -> new IllegalArgumentException("존재하지 않는 회원입니다."));

        Product product = productRepository.findById(wishlistAddRequestDto.getProductId()).orElseThrow(() -> new IllegalArgumentException("존재하지 않는 상품입니다."));

        if (wishlistRepository.findByUserIdAndProductId(userId, product.getId()).isPresent())
            throw new IllegalArgumentException("이미 위시리스트에 존재하는 상품입니다.");

        Wishlist wishlist = Wishlist.builder()
                .user(user)
                .product(product)
                .build();

        wishlistRepository.save(wishlist);

        return toDto(wishlist);
    }

    // 삭제
    @Transactional
    public void removeWishList(Long userId, Long productId) {
        Wishlist wishlist = wishlistRepository.findByUserIdAndProductId(userId, productId)
                .orElseThrow(() -> new IllegalArgumentException("위시리스트에 존재하지 않습니다."));

        wishlistRepository.delete(wishlist);
    }

    // 전체 삭제
    @Transactional
    public void clearWishlist(Long userId) {
        List<Wishlist> wishlist = wishlistRepository.findByUserId(userId);
        if (wishlist.isEmpty())
            throw new IllegalArgumentException("위시리스트가 비어있습니다.");

        wishlistRepository.deleteAll(wishlist);
    }

    private WishlistResponseDto toDto(Wishlist wishlist) {
        Product product = wishlist.getProduct();

        String imageUrl = product.getProductImgs().stream()
                .findFirst()
                .map(ProductImg::getImgUrl)
                .orElse(null);

        int originalPrice = product.getProductPrices().stream()
                .filter(p -> p.getType() == ProductType.ORIGINAL)
                .findFirst()
                .map(ProductPrice::getPrice)
                .orElse(0);

        int salePrice = product.getProductPrices().stream()
                .filter(p -> p.getType() == ProductType.SALE)
                .findFirst()
                .map(ProductPrice::getPrice)
                .orElse(originalPrice);

        return WishlistResponseDto.builder()
                .productId(product.getId())
                .productName(product.getName())
                .productImageUrl(imageUrl)
                .originalPrice(originalPrice)
                .salePrice(salePrice)
                .build();
    }
}
