package com.c3l2.persome.admin.controller;

import com.c3l2.persome.admin.dto.AdminInventoryPageResponse;
import com.c3l2.persome.admin.dto.AdminInventoryUpdateRequest;
import com.c3l2.persome.admin.service.AdminInventoryService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("/admin/inventories")
public class AdminInventoryController {

    private final AdminInventoryService adminInventoryService;

    @GetMapping
    public ResponseEntity<AdminInventoryPageResponse> getInventories(
            @RequestParam(name = "page", defaultValue = "0") int page,
            @RequestParam(name = "size", defaultValue = "20") int size,
            @RequestParam(name = "product", required = false) String productKeyword,
            @RequestParam(name = "option", required = false) String optionKeyword,
            @RequestParam(name = "storeId", required = false) Long storeId,
            @RequestParam(name = "status", required = false) String stockStatus
    ) {
        return ResponseEntity.ok(
                adminInventoryService.getInventories(page, size, productKeyword, optionKeyword, storeId, stockStatus)
        );
    }

    @PatchMapping("/{inventoryId}")
    public ResponseEntity<Void> updateInventory(
            @PathVariable Long inventoryId,
            @Valid @RequestBody AdminInventoryUpdateRequest request
    ) {
        adminInventoryService.updateInventory(inventoryId, request);
        return ResponseEntity.noContent().build();
    }
}
