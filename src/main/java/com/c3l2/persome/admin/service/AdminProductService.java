package com.c3l2.persome.admin.service;

import com.c3l2.persome.admin.dto.AdminProductOptionUpdateRequest;
import com.c3l2.persome.admin.dto.AdminProductStatusUpdateRequest;
import com.c3l2.persome.admin.dto.AdminProductUpdateRequest;
import com.c3l2.persome.brand.entity.Brand;
import com.c3l2.persome.brand.repository.BrandRepository;
import com.c3l2.persome.category.repository.CategoryRepository;
import com.c3l2.persome.config.error.ErrorCode;
import com.c3l2.persome.config.error.exceprion.BusinessException;
import com.c3l2.persome.product.entity.Category;
import com.c3l2.persome.product.entity.Product;
import com.c3l2.persome.product.entity.ProductOption;
import com.c3l2.persome.product.entity.constant.ProductStatus;
import com.c3l2.persome.product.repository.ProductOptionRepository;
import com.c3l2.persome.product.repository.ProductRepository;
import java.time.LocalDateTime;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class AdminProductService {

    private final ProductRepository productRepository;
    private final ProductOptionRepository productOptionRepository;
    private final CategoryRepository categoryRepository;
    private final BrandRepository brandRepository;

    @Transactional
    public void updateProduct(Long productId, AdminProductUpdateRequest request) {
        Product product = productRepository.findById(productId)
                .orElseThrow(() -> new BusinessException(ErrorCode.PRODUCT_NOT_FOUND));

        Category category = categoryRepository.findById(request.categoryId())
                .orElseThrow(() -> new BusinessException(ErrorCode.PRODUCT_CATEGORY_NOT_FOUND));
        Brand brand = brandRepository.findById(request.brandId())
                .orElseThrow(() -> new BusinessException(ErrorCode.BRAND_NOT_FOUND));

        int updated = productRepository.updateProductInfo(product.getId(), request.name(), request.description(), brand, category, LocalDateTime.now());
        if (updated == 0) {
            throw new BusinessException(ErrorCode.PRODUCT_UPDATE_FAILED);
        }
    }

    @Transactional
    public void deleteProduct(Long productId) {
        Product product = productRepository.findById(productId)
                .orElseThrow(() -> new BusinessException(ErrorCode.PRODUCT_NOT_FOUND));

        productRepository.delete(product);
    }

    @Transactional
    public void updateStatus(Long productId, AdminProductStatusUpdateRequest request) {
        Product product = productRepository.findById(productId)
                .orElseThrow(() -> new BusinessException(ErrorCode.PRODUCT_NOT_FOUND));

        ProductStatus status = parseStatus(request.status());
        int updated = productRepository.updateProductStatus(product.getId(), status, LocalDateTime.now());
        if (updated == 0) {
            throw new BusinessException(ErrorCode.PRODUCT_STATUS_INVALID);
        }
    }

    @Transactional
    public void updateOptions(Long productId, AdminProductOptionUpdateRequest request) {
        Product product = productRepository.findById(productId)
                .orElseThrow(() -> new BusinessException(ErrorCode.PRODUCT_NOT_FOUND));

        List<AdminProductOptionUpdateRequest.OptionUpdate> options = request.options();
        for (AdminProductOptionUpdateRequest.OptionUpdate optionRequest : options) {
            ProductOption option = productOptionRepository.findById(optionRequest.id())
                    .orElseThrow(() -> new BusinessException(ErrorCode.PRODUCT_OPTION_NOT_FOUND));

            if (!option.getProduct().getId().equals(product.getId())) {
                throw new BusinessException(ErrorCode.PRODUCT_OPTION_NOT_FOUND);
            }

            int updated = productOptionRepository.updateOption(product.getId(), option.getId(), optionRequest.name(), optionRequest.additionalAmount());
            if (updated == 0) {
                throw new BusinessException(ErrorCode.PRODUCT_OPTION_INVALID);
            }
        }
    }

    private ProductStatus parseStatus(String status) {
        try {
            return ProductStatus.of(status);
        } catch (IllegalArgumentException ex) {
            throw new BusinessException(ErrorCode.PRODUCT_STATUS_INVALID);
        }
    }
}
