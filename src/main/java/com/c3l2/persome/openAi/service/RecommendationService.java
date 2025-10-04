package com.c3l2.persome.openAi.service;

import com.c3l2.persome.openAi.dto.ProductRecommendationDto;
import com.c3l2.persome.openAi.dto.UserPurchaseProfile;
import com.c3l2.persome.order.entity.Order;
import com.c3l2.persome.order.entity.OrderItem;
import com.c3l2.persome.order.repository.OrderRepository;
import com.c3l2.persome.product.entity.Product;
import com.c3l2.persome.product.entity.constant.ProductStatus;
import com.c3l2.persome.product.repository.ProductRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.ai.chat.client.ChatClient;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.function.Function;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Slf4j
public class RecommendationService {

    private final OrderRepository orderRepository;
    private final ProductRepository productRepository;
    private final ChatClient chatClient;

    /**
     * 사용자 구매 내역 기반 상품 추천
     * @param userId  회원의 id
     * @param limit   추천할 상품 개수
     */
    public List<ProductRecommendationDto> getPersonalizedRecommendations(Long userId, int limit) {

        // 1. 사용자 구매 내역 분석
        List<Order> userOrders = orderRepository.findByUserIdOrderByOrderDateDesc(userId);
        log.info("사용자 {} 구매 내역: {}개", userId, userOrders.size());
        if (userOrders.isEmpty()) {
            log.info("구매 내역이 없어 빈 리스트 반환");
            return Collections.emptyList();
        }
        
        UserPurchaseProfile profile = analyzePurchasePattern(userOrders);

        // 2. OpenAI API 호출 - AI가 카테고리 추천, Java가 DB 조회
        List<String> recommendedCategories;
        try {
            String aiResponse = chatClient.prompt()
                .system("당신은 화장품 전문가입니다.")
                .user(buildRecommendationPrompt(profile))
                .call()
                .content();
            recommendedCategories = parseAiResponse(aiResponse);
            log.info("AI 추천 카테고리: {}", recommendedCategories);
        } catch (Exception e) {
            log.warn("OpenAI API 호출 실패, 규칙 기반 추천으로 fallback: {}", e.getMessage());
            recommendedCategories = getRuleBasedRecommendations(profile);
            log.info("규칙 기반 추천 카테고리: {}", recommendedCategories);
        }

        // 3. 추천 카테고리에 맞는 실제 상품 조회 (Java가 DB 조회)
        List<ProductRecommendationDto> result = findRecommendedProducts(recommendedCategories, profile, limit);
        log.info("최종 추천 상품 개수: {}", result.size());
        return result;
    }


    /**
     * 인기 상품 추천 (구매 내역이 없는 신규 사용자용)
     */
    public List<ProductRecommendationDto> getPopularProducts(int limit) {
        List<Product> popularProducts = productRepository.findTop20ByStatusOrderByCreatedAtDesc(ProductStatus.판매중);
        
        return popularProducts.stream()
                .limit(limit)
                .map(product -> toRecommendationDto(product, "인기 상품"))
                .collect(Collectors.toList());
    }

    private UserPurchaseProfile analyzePurchasePattern(List<Order> orders) {
        Map<String, Integer> categoryFrequency = new HashMap<>();
        Map<String, Integer> brandFrequency = new HashMap<>();
        List<Integer> priceRanges = new ArrayList<>();
        List<String> recentPurchases = new ArrayList<>();
        List<Long> purchasedProductIds = new ArrayList<>();  // 구매한 상품 ID 수집

        for (Order order : orders) {
            for (OrderItem item : order.getOrderItems()) {
                Product product = item.getProductOption().getProduct();

                // 구매한 상품 ID 저장 (중복 추천 방지용)
                if (!purchasedProductIds.contains(product.getId())) {
                    purchasedProductIds.add(product.getId());
                }

                // 카테고리 빈도 계산
                String category = product.getCategory().getName();
                categoryFrequency.put(category, categoryFrequency.getOrDefault(category, 0) + 1);

                // 브랜드 빈도 계산
                String brand = product.getBrand().getName();
                brandFrequency.put(brand, brandFrequency.getOrDefault(brand, 0) + 1);

                // 가격대 분석
                priceRanges.add(product.getProductPrices().getFirst().getPrice());

                // 최근 구매 상품 (최근 7개만)
                if (recentPurchases.size() < 7) {
                    recentPurchases.add(product.getName());
                }
            }
        }

        return UserPurchaseProfile.builder()
                .preferredCategories(getTopCategories(categoryFrequency, 3))
                .preferredBrands(getTopBrands(brandFrequency, 3))
                .averagePriceRange(calculateAveragePriceRange(priceRanges))
                .totalOrders(orders.size())
                .recentPurchases(recentPurchases)
                .purchasedProductIds(purchasedProductIds)
                .build();
    }

    /**
     * AI 카테고리 추천을 위한 프롬프트 (간단 버전)
     */
    private String buildRecommendationPrompt(UserPurchaseProfile profile) {
        return String.format("""
            당신은 화장품 전문가입니다. 다음 고객의 구매 패턴을 분석하여 추천 상품 카테고리를 제안해주세요.

            고객 구매 패턴:
            - 선호 카테고리: %s
            - 선호 브랜드: %s
            - 평균 구매 가격대: %d원
            - 총 주문 횟수: %d회
            - 최근 구매 상품: %s

            **중요: 아래 카테고리 목록에서만 선택해서 추천해주세요:**
            스킨/토너, 에센스/세럼/앰플, 크림, 아이크림, 로션, 올인원, 미스트/픽서, 페이스오일, 스킨케어세트, 스킨케어 디바이스,
            시트팩, 패드, 페이셜팩, 코팩, 패치,
            클렌징폼/젤, 오일/밤, 워터/밀크, 필링&스크럽, 티슈/패드, 립&아이리무버, 클렌징 디바이스,
            선크림, 선스틱, 선쿠션, 선스프레이/선패치, 태닝/애프터선

            이 고객에게 적합한 화장품 카테고리 3개를 위 목록에서 정확히 선택하여 추천하고, 각각에 대한 이유를 간단히 설명해주세요.
            응답 형식: "카테고리명:이유" 형태로 줄바꿈으로 구분해서 답변해주세요.
            예시:
            스킨/토너:고객의 스킨케어 루틴 보완
            에센스/세럼/앰플:집중 관리를 위한 기능성 제품
            크림:보습 관리 강화
            """,
            String.join(", ", profile.getPreferredCategories()),
            String.join(", ", profile.getPreferredBrands()),
            profile.getAveragePriceRange(),
            profile.getTotalOrders(),
            String.join(", ", profile.getRecentPurchases()));
    }

    /**
     * AI 응답에서 카테고리명만 추출
     */
    private List<String> parseAiResponse(String response) {
        return Arrays.stream(response.split("\n"))
                .map(line -> line.split(":")[0].trim())
                .filter(category -> !category.isEmpty())
                .collect(Collectors.toList());
    }

    /**
     * Function Calling을 위한 프롬프트 (AI가 직접 상품을 검색하도록 유도) - 미사용
     */
    private String buildRecommendationPromptForFunctionCalling(UserPurchaseProfile profile, int limit) {
        return String.format("""
            당신은 화장품 전문가입니다. 다음 고객의 구매 패턴을 분석하여 상품을 추천해주세요.

            고객 구매 패턴:
            - 선호 카테고리: %s
            - 선호 브랜드: %s
            - 평균 구매 가격대: %d원
            - 총 주문 횟수: %d회
            - 최근 구매 상품: %s

            **사용 가능한 카테고리:**
            스킨/토너, 에센스/세럼/앰플, 크림, 아이크림, 로션, 올인원, 미스트/픽서, 페이스오일, 스킨케어세트, 스킨케어 디바이스,
            시트팩, 패드, 페이셜팩, 코팩, 패치,
            클렌징폼/젤, 오일/밤, 워터/밀크, 필링&스크럽, 티슈/패드, 립&아이리무버, 클렌징 디바이스,
            선크림, 선스틱, 선쿠션, 선스프레이/선패치, 태닝/애프터선

            **작업 순서:**
            1. 고객 패턴을 분석하여 적합한 카테고리 3개를 선택하세요
            2. searchProductsFunction을 사용하여 해당 카테고리의 실제 상품을 검색하세요
            3. 검색된 상품 중 최대 %d개를 추천하고, 각 상품에 대한 추천 이유를 설명하세요

            **응답 형식 (JSON):**
            각 추천 상품마다 다음 형식으로 답변해주세요:
            {
              "productId": 상품ID,
              "name": "상품명",
              "brand": "브랜드명",
              "price": 가격,
              "category": "카테고리",
              "recommendationReason": "추천 이유"
            }

            여러 상품은 JSON 배열로 반환해주세요.
            """,
            String.join(", ", profile.getPreferredCategories()),
            String.join(", ", profile.getPreferredBrands()),
            profile.getAveragePriceRange(),
            profile.getTotalOrders(),
            String.join(", ", profile.getRecentPurchases()),
            limit);
    }

    /**
     * AI의 JSON 응답을 파싱하여 ProductRecommendationDto 리스트로 변환
     */
    private List<ProductRecommendationDto> parseAiRecommendationResponse(String response) {
        // JSON 배열 추출 (```json ... ``` 형식 처리)
        String jsonContent = response;
        if (response.contains("```json")) {
            jsonContent = response.substring(
                response.indexOf("["),
                response.lastIndexOf("]") + 1
            );
        } else if (response.contains("[") && response.contains("]")) {
            jsonContent = response.substring(
                response.indexOf("["),
                response.lastIndexOf("]") + 1
            );
        }

        log.info("파싱할 AI 응답: {}", jsonContent);

        // 간단한 JSON 파싱 (실제로는 Jackson ObjectMapper 사용 권장)
        List<ProductRecommendationDto> recommendations = new ArrayList<>();

        try {
            // JSON 배열을 개별 객체로 분리
            String[] jsonObjects = jsonContent
                .replace("[", "")
                .replace("]", "")
                .split("\\},\\s*\\{");

            for (String jsonObj : jsonObjects) {
                jsonObj = jsonObj.replace("{", "").replace("}", "").trim();

                ProductRecommendationDto dto = ProductRecommendationDto.builder()
                    .productId(extractJsonValue(jsonObj, "productId", Long::parseLong))
                    .name(extractJsonValue(jsonObj, "name", String::valueOf))
                    .brand(extractJsonValue(jsonObj, "brand", String::valueOf))
                    .price(extractJsonValue(jsonObj, "price", Integer::parseInt))
                    .category(extractJsonValue(jsonObj, "category", String::valueOf))
                    .recommendationReason(extractJsonValue(jsonObj, "recommendationReason", String::valueOf))
                    .build();

                recommendations.add(dto);
            }
        } catch (Exception e) {
            log.error("AI 응답 파싱 실패: {}", e.getMessage());
            // 파싱 실패 시 빈 리스트 반환 (fallback으로 처리됨)
        }

        return recommendations;
    }

    /**
     * JSON 문자열에서 특정 키의 값을 추출
     */
    private <T> T extractJsonValue(String json, String key, Function<String, T> parser) {
        try {
            String pattern = "\"" + key + "\"\\s*:\\s*\"?([^,\"\\}]+)\"?";
            java.util.regex.Pattern p = java.util.regex.Pattern.compile(pattern);
            java.util.regex.Matcher m = p.matcher(json);
            if (m.find()) {
                return parser.apply(m.group(1).trim());
            }
        } catch (Exception e) {
            log.warn("JSON 값 추출 실패 - key: {}, error: {}", key, e.getMessage());
        }
        return null;
    }

    private List<ProductRecommendationDto> findRecommendedProducts(
            List<String> categories, UserPurchaseProfile profile, int limit) {

        log.info("추천 카테고리로 상품 검색: {}", categories);

        // 이미 구매한 상품 ID 목록 (없으면 빈 리스트)
        List<Long> excludeIds = profile.getPurchasedProductIds() != null
            ? profile.getPurchasedProductIds()
            : Collections.emptyList();

        if (!excludeIds.isEmpty()) {
            log.info("구매 내역 제외: {}개 상품", excludeIds.size());
        }

        // 랜덤 정렬로 상품 조회 (매번 다른 상품 추천 + 구매 내역 제외)
        List<Product> products = productRepository.findByCategoryNameInAndStatusRandomExcluding(
                categories, ProductStatus.판매중, excludeIds);
        log.info("검색된 상품 수: {}", products.size());

        return products.stream()
                .filter(product -> product.getStatus() == ProductStatus.판매중)
                .limit(limit)
                .map(product -> toRecommendationDto(product, "AI 분석 기반 추천"))
                .collect(Collectors.toList());
    }

    private ProductRecommendationDto toRecommendationDto(Product product, String reason) {
        return ProductRecommendationDto.builder()
                .productId(product.getId())
                .name(product.getName())
                .brand(product.getBrand().getName())
                .price(product.getProductPrices().getFirst().getPrice())
                .imageUrl(product.getProductImgs().getFirst().getImgUrl())
                .category(product.getCategory().getName())
                .recommendationReason(reason)
                .build();
    }

    private List<String> getTopCategories(Map<String, Integer> categoryFrequency, int limit) {
        return categoryFrequency.entrySet().stream()
                .sorted(Map.Entry.<String, Integer>comparingByValue().reversed())
                .limit(limit)
                .map(Map.Entry::getKey)
                .collect(Collectors.toList());
    }

    private List<String> getTopBrands(Map<String, Integer> brandFrequency, int limit) {
        return brandFrequency.entrySet().stream()
                .sorted(Map.Entry.<String, Integer>comparingByValue().reversed())
                .limit(limit)
                .map(Map.Entry::getKey)
                .collect(Collectors.toList());
    }

    private Integer calculateAveragePriceRange(List<Integer> prices) {
        if (prices.isEmpty()) {
            return 0;
        }
        return prices.stream()
                .mapToInt(Integer::intValue)
                .sum() / prices.size();
    }

    /**
     * 규칙 기반 추천 (OpenAI API 실패 시 fallback)
     */
    private List<String> getRuleBasedRecommendations(UserPurchaseProfile profile) {
        List<String> recommendations = new ArrayList<>();

        // 기존 선호 카테고리 기반 추천
        if (!profile.getPreferredCategories().isEmpty()) {
            recommendations.addAll(profile.getPreferredCategories());
        }

        // 기본 화장품 카테고리 추천 (실제 DB 카테고리명 사용)
        List<String> defaultCategories = Arrays.asList("스킨/토너", "에센스/세럼/앰플", "크림", "클렌징폼/젤", "선크림");
        for (String category : defaultCategories) {
            if (!recommendations.contains(category) && recommendations.size() < 3) {
                recommendations.add(category);
            }
        }

        return recommendations.isEmpty() ? defaultCategories.subList(0, 3) : recommendations;
    }

}