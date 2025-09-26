package com.c3l2.persome.admin.dto;

import jakarta.validation.constraints.NotNull;

public record AdminUserRoleUpdateRequest(@NotNull Boolean admin) {
}
