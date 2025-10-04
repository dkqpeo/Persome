package com.c3l2.persome.openAi.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyDescription;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * AI가 상품을 검색할 때 사용하는 요청 DTO
 * Spring AI Function Calling에서 사용
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductSearchRequest {

    @JsonProperty(required = true)
    @JsonPropertyDescription("검색할 카테고리 이름 목록 (예: 스킨/토너, 에센스/세럼/앰플)")
    private List<String> categories;

    @JsonPropertyDescription("결과 개수 제한 (기본값: 20)")
    private Integer limit = 20;
}
