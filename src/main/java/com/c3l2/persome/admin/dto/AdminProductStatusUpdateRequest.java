package com.c3l2.persome.admin.dto;

import jakarta.validation.constraints.NotBlank;

public record AdminProductStatusUpdateRequest(@NotBlank String status) {
}
