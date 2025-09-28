package com.c3l2.persome.product.service;

import com.c3l2.persome.brand.entity.Brand;
import com.c3l2.persome.brand.repository.BrandRepository;
import com.c3l2.persome.config.error.ErrorCode;
import com.c3l2.persome.config.error.exceprion.BusinessException;
import com.c3l2.persome.event.entity.constant.TargetType;
import com.c3l2.persome.order.service.PricingService;
import com.c3l2.persome.product.dto.*;
import com.c3l2.persome.product.entity.Category;
import com.c3l2.persome.product.entity.Product;
import com.c3l2.persome.product.repository.ProductRepository;
import com.c3l2.persome.product.repository.InventoryRepository;
import com.c3l2.persome.promotion.entity.DiscountType;
import com.c3l2.persome.promotion.entity.Promotion;
import com.c3l2.persome.promotion.entity.PromotionTarget;
import com.c3l2.persome.promotion.service.PromotionService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.time.LocalDateTime;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Service
@RequiredArgsConstructor
@Slf4j
public class ProductService {

    private final ProductRepository productRepository;
    private final InventoryRepository inventoryRepository;
    private final BrandRepository brandRepository;
    private final PricingService pricingService;
    private final PromotionService promotionService;

    public ProductDetailResponse getProductDetail(Long id) {

        Product product = productRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("상품을 찾을 수 없습니다. id=" + id));
        PromotionPriceResult promotionPrice = calculatePromotionPrice(product);

        //DTO
        return ProductDetailResponse.builder()
                .product_id(product.getId())
                .name(product.getName())
                .description(product.getDescription())
                .ratingAvg(product.getRatingAvg())
                .status(product.getStatus().name())
                .brandName(product.getBrand().getName())
                .firstCategory(product.getCategory().getParent() != null && product.getCategory().getParent().getParent() != null
                        ? product.getCategory().getParent().getParent().getName()
                        : null)
                .secondCategory(product.getCategory().getParent() != null ? product.getCategory().getParent().getName() : null)
                .thirdCategory(product.getCategory().getName())
                .images(product.getProductImgs().stream()
                        .map(img -> ProductDetailResponse.ImgResponse.builder()
                                .imgUrl(img.getImgUrl())
                                .imgOrder(img.getImgOrder())
                                .build())
                        .toList())
                .options(product.getProductOptions().stream()
                        .map(opt -> ProductDetailResponse.OptionResponse.builder()
                                .option_id(opt.getId())
                                .name(opt.getName())
                                .additionalAmount(opt.getAdditionalAmount())
                                .inventories(
                                        inventoryRepository.findByProductOptionId(opt.getId()).stream()
                                                .map(inv -> ProductDetailResponse.InventoryResponse.builder()
                                                        .inventory_id(inv.getId())
                                                        .stockStatus(inv.getStockStatus().name())
                                                        .quantity(inv.getQuantity())
                                                        .build())
                                                .toList()
                                )
                                .build())
                        .toList())
                .prices(product.getProductPrices().stream()
                        .map(price -> ProductDetailResponse.PriceResponse.builder()
                                .price_id(price.getId())
                                .type(price.getType().name())
                                .price(price.getPrice())
                                .startDate(price.getStartDate())
                                .endDate(price.getEndDate())
                                .build())
                        .toList())
                .basePrice(promotionPrice.basePrice())
                .discountedPrice(promotionPrice.discountedPrice())
                .discountRate(promotionPrice.discountRate())
                .promotionApplied(promotionPrice.promotionApplied())
                .build();
    }

    public PageProductAllResponse getAllProducts(OrderSearchDto searchDto) {

        Pageable pageRequest = PageRequest.of(searchDto.getPage(), searchDto.getSize());
        Page<Product> products = productRepository.findAll(pageRequest);

        return PageProductAllResponse.from(products);
    }

    /**
     * 카테고리에 해당하는 상품 리스트를 반환
     * @param requestCategory   대상 카테고리
     * @param searchDto         페이징 정보
     * @return PageProductAllResponse
     */
    public PageProductAllResponse getProductsByCategory(Category requestCategory, OrderSearchDto searchDto) {

        Pageable pageRequest = PageRequest.of(searchDto.getPage(), searchDto.getSize());

        // 1. 페이징된 Product ID 들만 먼저 조회
        Page<Product> productPage = productRepository.findByCategoryOrParentCategory(requestCategory, pageRequest);
        
        if (productPage.isEmpty()) {
            return PageProductAllResponse.from(productPage);
        }

        // 2. Product ID 목록 추출
        List<Long> productIds = productPage.getContent().stream()
                .map(Product::getId)
                .toList();

        // 3. Fetch join 을 사용하여 연관 엔티티들을 한 번에 로드
        List<Product> productsWithBasicFetch = productRepository.findByIdsWithFetch(productIds);
        
        // 4. ProductPrice 와 ProductImg 를 별도로 batch fetch (OneToMany 관계로 인한 cartesian product 방지)
        productRepository.findByIdsWithPrices(productIds);
        productRepository.findByIdsWithImages(productIds);

        // 5. 페이징 정보는 유지하면서 fetch join 된 Product 들로 새로운 Page 생성
        return createPageProductAllResponse(productsWithBasicFetch, productPage);
    }

    /**
     * Fetch join 된 Product 리스트로 PageProductAllResponse 생성
     */
    private PageProductAllResponse createPageProductAllResponse(List<Product> products, Page<Product> originalPage) {
        List<ProductAllResponse> responseProducts = products.stream()
                .map(ProductAllResponse::from)
                .toList();

        return PageProductAllResponse.builder()
                .products(responseProducts)
                .currentPage(originalPage.getNumber())
                .totalPages(originalPage.getTotalPages())
                .totalElements(originalPage.getTotalElements())
                .pageSize(originalPage.getSize())
                .hasNext(originalPage.hasNext())
                .hasPrevious(originalPage.hasPrevious())
                .build();
    }

    private PromotionPriceResult calculatePromotionPrice(Product product) {
        BigDecimal basePrice = pricingService.getBasePrice(product);
        BigDecimal discountedPrice = basePrice;
        Promotion appliedPromotion = null;

        List<Promotion> promotions = promotionService.getAvailablePromotionsForPricing(LocalDateTime.now());
        for (Promotion promotion : promotions) {
            if (isPromotionApplicable(promotion, product)) {
                discountedPrice = applyPromotionDiscount(basePrice, promotion);
                appliedPromotion = promotion;
                break;
            }
        }

        boolean applied = appliedPromotion != null && discountedPrice.compareTo(basePrice) < 0;
        int basePriceValue = toInt(basePrice);
        int discountedPriceValue = toInt(discountedPrice);
        int discountRate = 0;

        if (applied && basePrice.compareTo(BigDecimal.ZERO) > 0) {
            BigDecimal discountAmount = basePrice.subtract(discountedPrice);
            discountRate = discountAmount
                    .multiply(BigDecimal.valueOf(100))
                    .divide(basePrice, 0, RoundingMode.DOWN)
                    .intValue();

            if (discountRate == 0 && appliedPromotion.getDiscountType() == DiscountType.RATE) {
                discountRate = appliedPromotion.getDiscountValue().intValue();
            }
        }

        return new PromotionPriceResult(basePriceValue, discountedPriceValue, discountRate, applied);
    }

    private boolean isPromotionApplicable(Promotion promotion, Product product) {
        List<PromotionTarget> targets = promotion.getPromotionTarget();
        if (targets == null || targets.isEmpty()) {
            return false;
        }

        return targets.stream().anyMatch(target -> switch (target.getTargetType()) {
            case PRODUCT -> target.getTargetId().equals(product.getId());
            case CATEGORY -> target.getTargetId().equals(product.getCategory().getId());
            case BRAND -> target.getTargetId().equals(product.getBrand().getId());
            case ALL -> true;
        });
    }

    private BigDecimal applyPromotionDiscount(BigDecimal basePrice, Promotion promotion) {
        BigDecimal discounted = basePrice;

        if (promotion.getDiscountType() == DiscountType.RATE) {
            BigDecimal rate = promotion.getDiscountValue()
                    .divide(BigDecimal.valueOf(100), 4, RoundingMode.HALF_UP);
            discounted = basePrice.multiply(BigDecimal.ONE.subtract(rate));
        } else if (promotion.getDiscountType() == DiscountType.FIXED) {
            discounted = basePrice.subtract(promotion.getDiscountValue());
        }

        if (discounted.compareTo(BigDecimal.ZERO) < 0) {
            discounted = BigDecimal.ZERO;
        }

        return discounted;
    }

    private int toInt(BigDecimal value) {
        return value.setScale(0, RoundingMode.DOWN).intValue();
    }

    private record PromotionPriceResult(int basePrice, int discountedPrice, int discountRate, boolean promotionApplied) {
    }

    /**
     * 입력받은 키워드를 포함하는 상품 목록을 페이지 단위로 반환
     * @param searchKeyword  검색어
     * @param searchDto      페이징 정보
     * @return 상품 리스트
     */
    public PageProductAllResponse findKeyword(String searchKeyword, OrderSearchDto searchDto) {

        Pageable pageRequest = PageRequest.of(searchDto.getPage(), searchDto.getSize());

        // 1. 페이징된 Product ID 들만 먼저 조회
        Page<Product> productPage = productRepository.findByName(searchKeyword, pageRequest);

        if (productPage.isEmpty()) {
            return PageProductAllResponse.from(productPage);
        }

        // 2. Product ID 목록 추출
        List<Long> productIds = productPage.getContent().stream()
                .map(Product::getId)
                .toList();

        // 3. Fetch join 을 사용하여 연관 엔티티들을 한 번에 로드
        List<Product> productsWithBasicFetch = productRepository.findByIdsWithFetch(productIds);

        // 4. ProductPrice 와 ProductImg 를 별도로 batch fetch (OneToMany 관계로 인한 cartesian product 방지)
        productRepository.findByIdsWithPrices(productIds);
        productRepository.findByIdsWithImages(productIds);

        // 5. 페이징 정보는 유지하면서 fetch join 된 Product 들로 새로운 Page 생성
        return createPageProductAllResponse(productsWithBasicFetch, productPage);

    }

    public List<ProductAllResponse> getPopularProducts(int size) {

        // 홈 인기 섹션: 요청한 수만큼 랜덤 상품을 추출
        int limit = normalizeSize(size);
        List<Long> ids = productRepository.findRandomProductIds(PageRequest.of(0, limit));
        return buildProductResponses(ids);
    }

    public List<ProductAllResponse> getNewProducts(int size) {

        // 홈 신규 섹션: 생성일 최신 순으로 정렬된 상품 반환
        int limit = normalizeSize(size);
        List<Long> ids = productRepository.findLatestProductIds(PageRequest.of(0, limit));
        return buildProductResponses(ids);
    }

    private int normalizeSize(int size) {
        if (size <= 0) {
            return 10;
        }
        return Math.min(size, 20);
    }

    private List<ProductAllResponse> buildProductResponses(List<Long> productIds) {
        if (productIds == null || productIds.isEmpty()) {
            return List.of();
        }

        List<Product> productsWithBasicFetch = productRepository.findByIdsWithFetch(productIds);
        productRepository.findByIdsWithPrices(productIds);
        productRepository.findByIdsWithImages(productIds);

        Map<Long, Integer> order = new HashMap<>();
        for (int i = 0; i < productIds.size(); i++) {
            order.put(productIds.get(i), i);
        }

        // 조회된 상품을 ID 조회 순서대로 정렬해 응답 순서를 보존
        return productsWithBasicFetch.stream()
                .sorted(Comparator.comparingInt(p -> order.getOrDefault(p.getId(), Integer.MAX_VALUE)))
                .map(ProductAllResponse::from)
                .toList();
    }

    public List<ProductAllResponse> getProductsByIdsPreservingOrder(List<Long> productIds) {
        return buildProductResponses(productIds);
    }

    /**
     * 해당 브랜드의 SALE 타입 상품 리스트 조회
     * @param name 브랜드 이름
     * @return ProductListByBrandResponse
     */
    public ProductListByBrandResponse findProductByBrand(String name) {

        Brand brand = brandRepository.findByName(name)
                .orElseThrow(() -> new BusinessException(ErrorCode.BRAND_NOT_FOUND));

        // N+1 문제 해결 + SALE 타입 필터링을 위한 fetch join 사용, 최대 3개 결과 제한
        List<Product> products = productRepository.findTop3ByBrandWithSalePriceAndFetch(brand);
        
        if (products.isEmpty()) {
            return ProductListByBrandResponse.from(brand, List.of());
        }

        // Product ID 목록 추출
        List<Long> productIds = products.stream()
                .map(Product::getId)
                .toList();

        // ProductPrice, ProductImg 를 별도로 batch fetch (OneToMany 관계로 인한 cartesian product 방지)
        productRepository.findByIdsWithPrices(productIds);
        productRepository.findByIdsWithImages(productIds);

        List<ProductAllResponse> productList = products.stream()
                .map(ProductAllResponse::from)
                .toList();

        return ProductListByBrandResponse.from(brand, productList);
    }
}
