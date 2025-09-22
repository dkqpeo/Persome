package com.c3l2.persome.product.service;

import com.c3l2.persome.product.entity.Category;
import com.c3l2.persome.product.entity.Product;
import com.c3l2.persome.product.dto.OrderSearchDto;
import com.c3l2.persome.product.dto.PageProductAllResponse;
import com.c3l2.persome.product.dto.ProductAllResponse;
import com.c3l2.persome.product.dto.ProductDetailResponse;
import com.c3l2.persome.product.repository.ProductRepository;
import com.c3l2.persome.product.repository.InventoryRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
@RequiredArgsConstructor
@Slf4j
public class ProductService {

    private final ProductRepository productRepository;
    private final InventoryRepository inventoryRepository;

    public ProductDetailResponse getProductDetail(Long id) {

        Product product = productRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("상품을 찾을 수 없습니다. id=" + id));
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
                .build();
    }

    public PageProductAllResponse getAllProducts(OrderSearchDto searchDto) {

        Pageable pageRequest = PageRequest.of(searchDto.getPage(), searchDto.getSize());
        Page<Product> products = productRepository.findAll(pageRequest);

        return PageProductAllResponse.from(products);
    }

    /**
     * 카테고리에 해당하는 상품 리스트를 반환 (N+1 문제 해결)
     *
     * @param requestCategory
     * @param searchDto
     * @return
     */
    public PageProductAllResponse getProductsbyCategory(Category requestCategory, OrderSearchDto searchDto) {

        Pageable pageRequest = PageRequest.of(searchDto.getPage(), searchDto.getSize());

        // 1. 페이징된 Product ID들만 먼저 조회
        Page<Product> productPage = productRepository.findByCategoryOrParentCategory(requestCategory, pageRequest);
        
        if (productPage.isEmpty()) {
            return PageProductAllResponse.from(productPage);
        }

        // 2. Product ID 목록 추출
        List<Long> productIds = productPage.getContent().stream()
                .map(Product::getId)
                .toList();

        // 3. Fetch join을 사용하여 연관 엔티티들을 한 번에 로드
        List<Product> productsWithBasicFetch = productRepository.findByIdsWithFetch(productIds);
        
        // 4. ProductPrice를 별도로 batch fetch (OneToMany 관계로 인한 cartesian product 방지)
        productRepository.findByIdsWithPrices(productIds);

        // 5. 페이징 정보는 유지하면서 fetch join된 Product들로 새로운 Page 생성
        return createPageProductAllResponse(productsWithBasicFetch, productPage);
    }

    /**
     * Fetch join된 Product 리스트로 PageProductAllResponse 생성
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

    /**
     * 입력받은 키워드를 포함하는 상품 목록을 페이지 단위로 반환
     *
     * @param searchKeyword
     * @param searchDto
     * @return
     */
    public PageProductAllResponse findKeyword(String searchKeyword, OrderSearchDto searchDto) {

        Pageable pageRequest = PageRequest.of(searchDto.getPage(), searchDto.getSize());

        // 1. 페이징된 Product ID들만 먼저 조회
        Page<Product> productPage = productRepository.findByName(searchKeyword, pageRequest);

        if (productPage.isEmpty()) {
            return PageProductAllResponse.from(productPage);
        }

        // 2. Product ID 목록 추출
        List<Long> productIds = productPage.getContent().stream()
                .map(Product::getId)
                .toList();

        // 3. Fetch join을 사용하여 연관 엔티티들을 한 번에 로드
        List<Product> productsWithBasicFetch = productRepository.findByIdsWithFetch(productIds);

        // 4. ProductPrice를 별도로 batch fetch (OneToMany 관계로 인한 cartesian product 방지)
        productRepository.findByIdsWithPrices(productIds);

        // 5. 페이징 정보는 유지하면서 fetch join된 Product들로 새로운 Page 생성
        return createPageProductAllResponse(productsWithBasicFetch, productPage);

    }
}