package com.c3l2.persome.admin.service;

import com.c3l2.persome.admin.dto.AdminInventoryPageResponse;
import com.c3l2.persome.admin.dto.AdminInventoryResponse;
import com.c3l2.persome.admin.dto.AdminInventoryUpdateRequest;
import com.c3l2.persome.config.error.ErrorCode;
import com.c3l2.persome.config.error.exceprion.BusinessException;
import com.c3l2.persome.product.entity.Inventory;
import com.c3l2.persome.product.entity.Product;
import com.c3l2.persome.product.entity.ProductOption;
import com.c3l2.persome.product.entity.constant.StockStatus;
import com.c3l2.persome.product.repository.InventoryRepository;
import com.c3l2.persome.store.entity.Store;
import jakarta.persistence.criteria.Join;
import jakarta.persistence.criteria.JoinType;
import jakarta.persistence.criteria.Predicate;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class AdminInventoryService {

    private final InventoryRepository inventoryRepository;

    public AdminInventoryPageResponse getInventories(
            int page,
            int size,
            String productKeyword,
            String optionKeyword,
            Long storeId,
            String stockStatus
    ) {
        Pageable pageable = PageRequest.of(Math.max(page, 0), Math.max(size, 1), Sort.by(Sort.Direction.DESC, "updatedAt"));
        StockStatus parsedStatus = parseStatus(stockStatus);
        Specification<Inventory> specification = buildSpecification(productKeyword, optionKeyword, storeId, parsedStatus);
        Page<AdminInventoryResponse> inventoryPage = inventoryRepository.findAll(specification, pageable)
                .map(AdminInventoryResponse::from);

        return AdminInventoryPageResponse.builder()
                .inventories(inventoryPage.getContent())
                .page(inventoryPage.getNumber())
                .size(inventoryPage.getSize())
                .totalElements(inventoryPage.getTotalElements())
                .totalPages(inventoryPage.getTotalPages())
                .hasNext(inventoryPage.hasNext())
                .hasPrevious(inventoryPage.hasPrevious())
                .build();
    }

    @Transactional
    public void updateInventory(Long inventoryId, AdminInventoryUpdateRequest request) {
        Inventory inventory = inventoryRepository.findById(inventoryId)
                .orElseThrow(() -> new BusinessException(ErrorCode.INVENTORY_NOT_FOUND));

        inventory.updateQuantity(request.quantity());

        if (StringUtils.hasText(request.stockStatus())) {
            StockStatus status = parseStatus(request.stockStatus());
            inventory.updateStockStatus(status);
        }
    }

    private Specification<Inventory> buildSpecification(
            String productKeyword,
            String optionKeyword,
            Long storeId,
            StockStatus stockStatus
    ) {
        List<Specification<Inventory>> specifications = new ArrayList<>();

        if (StringUtils.hasText(productKeyword)) {
            String trimmed = productKeyword.trim();
            String likeKeyword = "%" + trimmed.toLowerCase(Locale.ROOT) + "%";
            specifications.add((root, query, criteriaBuilder) -> {
                query.distinct(true);
                Join<Inventory, ProductOption> optionJoin = root.join("productOption", JoinType.LEFT);
                Join<ProductOption, Product> productJoin = optionJoin.join("product", JoinType.LEFT);
                List<Predicate> predicates = new ArrayList<>();
                predicates.add(criteriaBuilder.like(
                        criteriaBuilder.lower(productJoin.get("name")),
                        likeKeyword
                ));
                try {
                    Long productId = Long.parseLong(trimmed);
                    predicates.add(criteriaBuilder.equal(productJoin.get("id"), productId));
                } catch (NumberFormatException ignored) {
                }
                return criteriaBuilder.or(predicates.toArray(Predicate[]::new));
            });
        }

        if (StringUtils.hasText(optionKeyword)) {
            String trimmed = optionKeyword.trim();
            String likeKeyword = "%" + trimmed.toLowerCase(Locale.ROOT) + "%";
            specifications.add((root, query, criteriaBuilder) -> {
                query.distinct(true);
                Join<Inventory, ProductOption> optionJoin = root.join("productOption", JoinType.LEFT);
                List<Predicate> predicates = new ArrayList<>();
                predicates.add(criteriaBuilder.like(
                        criteriaBuilder.lower(optionJoin.get("name")),
                        likeKeyword
                ));
                try {
                    Long optionId = Long.parseLong(trimmed);
                    predicates.add(criteriaBuilder.equal(optionJoin.get("id"), optionId));
                } catch (NumberFormatException ignored) {
                }
                return criteriaBuilder.or(predicates.toArray(Predicate[]::new));
            });
        }

        if (storeId != null) {
            specifications.add((root, query, criteriaBuilder) -> {
                Join<Inventory, Store> storeJoin = root.join("store", JoinType.LEFT);
                return criteriaBuilder.equal(storeJoin.get("id"), storeId);
            });
        }

        if (stockStatus != null) {
            specifications.add((root, query, criteriaBuilder) ->
                    criteriaBuilder.equal(root.get("stockStatus"), stockStatus));
        }

        return specifications.stream()
                .reduce(Specification::and)
                .orElse(null);
    }

    private StockStatus parseStatus(String status) {
        if (!StringUtils.hasText(status)) {
            return null;
        }
        try {
            return StockStatus.of(status.trim().toUpperCase(Locale.ROOT));
        } catch (IllegalArgumentException ex) {
            throw new BusinessException(ErrorCode.INVENTORY_STATUS_INVALID);
        }
    }
}
