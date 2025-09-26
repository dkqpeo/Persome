package com.c3l2.persome.admin.controller;

import com.c3l2.persome.admin.dto.AdminPromotionProductUpdateRequest;
import com.c3l2.persome.admin.dto.AdminPromotionRequest;
import com.c3l2.persome.admin.service.AdminPromotionService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("/admin/promotions")
public class AdminPromotionController {

    private final AdminPromotionService adminPromotionService;

    @PostMapping
    public ResponseEntity<Void> createPromotion(@Valid @RequestBody AdminPromotionRequest request) {
        adminPromotionService.createPromotion(request);
        return ResponseEntity.status(HttpStatus.CREATED).build();
    }

    @PatchMapping("/{id}")
    public ResponseEntity<Void> updatePromotion(@PathVariable Long id,
                                                @Valid @RequestBody AdminPromotionRequest request) {
        adminPromotionService.updatePromotion(id, request);
        return ResponseEntity.noContent().build();
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deletePromotion(@PathVariable Long id) {
        adminPromotionService.deletePromotion(id);
        return ResponseEntity.noContent().build();
    }

    @PatchMapping("/{id}/products")
    public ResponseEntity<Void> updatePromotionProducts(@PathVariable Long id,
                                                        @Valid @RequestBody AdminPromotionProductUpdateRequest request) {
        adminPromotionService.updatePromotionProducts(id, request);
        return ResponseEntity.noContent().build();
    }
}
