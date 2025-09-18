package com.c3l2.persome.product.dto;

import com.c3l2.persome.product.entity.Product;
import com.c3l2.persome.product.entity.ProductImg;
import com.c3l2.persome.product.entity.ProductPrice;
import com.c3l2.persome.product.entity.constant.ProductStatus;
import com.c3l2.persome.product.entity.constant.ProductType;
import lombok.Builder;
import lombok.Getter;

import java.time.LocalDateTime;
import java.util.List;

@Getter
@Builder
public class ProductAllResponse {

    private Long product_id;
    private String name;
    private ProductStatus status;

    private String brandName;
    private String firstCategory;  //카테고리 총 3개
    private String secondCategory;
    private String thirdCategory;

    private List<PriceResponse> price;
    private List<ImgResponse> imgs;

    @Getter
    @Builder
    public static class PriceResponse {
        private Long price_id;
        private ProductType type;              // 기본가격? 할인가격
        private Integer price;            // 금액
        private LocalDateTime startDate;  // 시작일
        private LocalDateTime endDate;    // 종료일
        
        public static PriceResponse from(ProductPrice productPrice) {

            return PriceResponse.builder()
                    .price_id(productPrice.getId())
                    .type(productPrice.getType())
                    .price(productPrice.getPrice())
                    .startDate(productPrice.getStartDate())
                    .endDate(productPrice.getEndDate())
                    .build();
        }
    }

    @Getter
    @Builder
    public static class ImgResponse {
        private String imgUrl;             // 이미지 파일경로
        private Integer imgOrder;          // 이미지 순서

        public static ImgResponse from(ProductImg productImg) {

            return ImgResponse.builder()
                    .imgUrl(productImg.getImgUrl())
                    .imgOrder(productImg.getImgOrder())
                    .build();
        }
    }

    public static ProductAllResponse from(Product product) {

        List<PriceResponse> price = product.getProductPrices().stream()
                .map(PriceResponse::from)
                .toList();

        List<ImgResponse> img = product.getProductImgs().stream()
                .map(ImgResponse::from)
                .toList();

        return ProductAllResponse.builder()
                .product_id(product.getId())
                .name(product.getName())
                .status(product.getStatus())
                .brandName(product.getBrand().getName())
                .firstCategory(product.getCategory().getParent().getParent().getName())
                .secondCategory(product.getCategory().getParent().getName())
                .thirdCategory(product.getCategory().getName())
                .price(price)
                .imgs(img)
                .build();
    }

}
