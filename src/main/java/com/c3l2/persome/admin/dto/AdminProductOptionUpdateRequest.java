package com.c3l2.persome.admin.dto;

import jakarta.validation.Valid;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import java.util.List;

public record AdminProductOptionUpdateRequest(@NotEmpty @Valid List<OptionUpdate> options) {

    public record OptionUpdate(
            @NotNull Long id,
            @NotBlank String name,
            @NotNull Integer additionalAmount
    ) {
    }
}
