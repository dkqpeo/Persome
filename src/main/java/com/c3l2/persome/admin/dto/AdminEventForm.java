package com.c3l2.persome.admin.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

public class AdminEventForm {

    @NotBlank
    private String name;

    private MultipartFile thumbnail;

    @NotBlank
    private String description;

    @NotNull
    @DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm")
    private LocalDateTime startDate;

    @NotNull
    @DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm")
    private LocalDateTime endDate;

    @NotBlank
    private String status;

    private List<MultipartFile> images = new ArrayList<>();

    private String promotionStatus;
    private String promotionDiscountType;
    private BigDecimal promotionDiscountValue;

    @DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm")
    private LocalDateTime promotionStartDate;

    @DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm")
    private LocalDateTime promotionEndDate;

    private String promotionTargetType;
    private String promotionTargetIds;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public MultipartFile getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(MultipartFile thumbnail) {
        this.thumbnail = thumbnail;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public LocalDateTime getStartDate() {
        return startDate;
    }

    public void setStartDate(LocalDateTime startDate) {
        this.startDate = startDate;
    }

    public LocalDateTime getEndDate() {
        return endDate;
    }

    public void setEndDate(LocalDateTime endDate) {
        this.endDate = endDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public List<MultipartFile> getImages() {
        return images;
    }

    public void setImages(List<MultipartFile> images) {
        this.images = images;
    }

    public List<MultipartFile> getNonEmptyImages() {
        if (images == null) {
            return List.of();
        }
        return images.stream().filter(file -> file != null && !file.isEmpty()).toList();
    }

    public String getPromotionStatus() {
        return promotionStatus;
    }

    public void setPromotionStatus(String promotionStatus) {
        this.promotionStatus = promotionStatus;
    }

    public String getPromotionDiscountType() {
        return promotionDiscountType;
    }

    public void setPromotionDiscountType(String promotionDiscountType) {
        this.promotionDiscountType = promotionDiscountType;
    }

    public BigDecimal getPromotionDiscountValue() {
        return promotionDiscountValue;
    }

    public void setPromotionDiscountValue(BigDecimal promotionDiscountValue) {
        this.promotionDiscountValue = promotionDiscountValue;
    }

    public LocalDateTime getPromotionStartDate() {
        return promotionStartDate;
    }

    public void setPromotionStartDate(LocalDateTime promotionStartDate) {
        this.promotionStartDate = promotionStartDate;
    }

    public LocalDateTime getPromotionEndDate() {
        return promotionEndDate;
    }

    public void setPromotionEndDate(LocalDateTime promotionEndDate) {
        this.promotionEndDate = promotionEndDate;
    }

    public String getPromotionTargetType() {
        return promotionTargetType;
    }

    public void setPromotionTargetType(String promotionTargetType) {
        this.promotionTargetType = promotionTargetType;
    }

    public String getPromotionTargetIds() {
        return promotionTargetIds;
    }

    public void setPromotionTargetIds(String promotionTargetIds) {
        this.promotionTargetIds = promotionTargetIds;
    }

    public boolean hasPromotionSettings() {
        return promotionDiscountValue != null
                && promotionDiscountType != null && !promotionDiscountType.isBlank()
                && promotionStatus != null && !promotionStatus.isBlank();
    }

    public LocalDateTime resolvePromotionStartDate() {
        return promotionStartDate != null ? promotionStartDate : startDate;
    }

    public LocalDateTime resolvePromotionEndDate() {
        return promotionEndDate != null ? promotionEndDate : endDate;
    }

    public List<Long> getPromotionTargetIdList() {
        if (promotionTargetIds == null || promotionTargetIds.isBlank()) {
            return List.of();
        }
        return Arrays.stream(promotionTargetIds.split(","))
                .map(String::trim)
                .filter(s -> !s.isEmpty())
                .map(Long::valueOf)
                .collect(Collectors.toList());
    }
}
