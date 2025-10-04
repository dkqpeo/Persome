package com.c3l2.persome.admin.controller;

import com.c3l2.persome.admin.dto.AdminProductOptionUpdateRequest;
import com.c3l2.persome.admin.dto.AdminProductStatusUpdateRequest;
import com.c3l2.persome.admin.dto.AdminProductUpdateRequest;
import com.c3l2.persome.admin.service.AdminProductService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/admin/products")
public class AdminProductController {

    private final AdminProductService adminProductService;

    @PatchMapping("/{id}")
    public ResponseEntity<Void> updateProduct(@PathVariable Long id,
                                              @Valid @RequestBody AdminProductUpdateRequest request) {
        adminProductService.updateProduct(id, request);
        return ResponseEntity.noContent().build();
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteProduct(@PathVariable Long id) {
        adminProductService.deleteProduct(id);
        return ResponseEntity.noContent().build();
    }

    @PatchMapping("/{id}/status")
    public ResponseEntity<Void> updateProductStatus(@PathVariable Long id,
                                                    @Valid @RequestBody AdminProductStatusUpdateRequest request) {
        adminProductService.updateStatus(id, request);
        return ResponseEntity.noContent().build();
    }

    @PatchMapping("/{id}/options")
    public ResponseEntity<Void> updateProductOptions(@PathVariable Long id,
                                                     @Valid @RequestBody AdminProductOptionUpdateRequest request) {
        adminProductService.updateOptions(id, request);
        return ResponseEntity.noContent().build();
    }
}
