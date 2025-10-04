package com.c3l2.persome.admin.dto;

import com.c3l2.persome.product.entity.Inventory;
import com.c3l2.persome.product.entity.Product;
import com.c3l2.persome.product.entity.ProductOption;
import com.c3l2.persome.store.entity.Store;
import java.time.LocalDateTime;
import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class AdminInventoryResponse {

    private final Long id;
    private final Long productId;
    private final String productName;
    private final Long optionId;
    private final String optionName;
    private final Long storeId;
    private final String storeName;
    private final Integer quantity;
    private final String stockStatus;
    private final LocalDateTime updatedAt;

    public static AdminInventoryResponse from(Inventory inventory) {
        ProductOption option = inventory.getProductOption();
        Product product = option != null ? option.getProduct() : null;
        Store store = inventory.getStore();

        return AdminInventoryResponse.builder()
                .id(inventory.getId())
                .productId(product != null ? product.getId() : null)
                .productName(product != null ? product.getName() : null)
                .optionId(option != null ? option.getId() : null)
                .optionName(option != null ? option.getName() : null)
                .storeId(store != null ? store.getId() : null)
                .storeName(store != null ? store.getStoreName() : null)
                .quantity(inventory.getQuantity())
                .stockStatus(inventory.getStockStatus() != null ? inventory.getStockStatus().name() : null)
                .updatedAt(inventory.getUpdatedAt())
                .build();
    }
}
