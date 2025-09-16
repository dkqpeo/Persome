package com.c3l2.persome.product.dto;

import lombok.Builder;
import lombok.Getter;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

@Getter
@Builder
public class ProductDetailResponse {

    private Long product_id;
    private String name;
    private String description;
    private BigDecimal ratingAvg;
    private String status;

    private String brandName;
    private String firstCategory;  //카테고리 총 3개
    private String secondCategory;
    private String thirdCategory;

    private List<ImgResponse> images;   // 상품 이미지 URL 목록
    private List<OptionResponse> options; // 옵션 + 재고정보까지
    private List<PriceResponse> prices;   // 가격 정보 목록

    @Getter
    @Builder
    public static class ImgResponse {
        private String imgUrl;             // 이미지 파일경로
        private Integer imgOrder;          // 이미지 순서
    }

        @Getter
    @Builder
    public static class OptionResponse {
        private Long option_id;
        private String name;                      // 옵션명
        private Integer additionalAmount;         // 추가금
        private List<InventoryResponse> inventories;
    }

    @Getter
    @Builder
    public static class PriceResponse {
        private Long price_id;
        private String type;              // 기본가격? 할인가격
        private Integer price;            // 금액
        private LocalDateTime startDate;  // 시작일
        private LocalDateTime endDate;    // 종료일
    }

    @Getter
    @Builder
    public static class InventoryResponse {
        private Long inventory_id;    // 인벤토리 아이디
        private String stockStatus;   // 판매중, 품절 등등
        private Integer quantity;     // 재고 수량
    }

}