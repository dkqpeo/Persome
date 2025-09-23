package com.c3l2.persome.cs.entity;

import com.c3l2.persome.cs.entity.constant.FaqCategory;
import jakarta.persistence.*;
import lombok.*;

import java.util.Objects;

import java.time.LocalDateTime;

@Entity
@Table(name = "faq")
@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Faq {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "category", nullable = false)
    @Enumerated(EnumType.STRING)
    private FaqCategory category;

    @Column(name = "question", columnDefinition = "TEXT")
    private String question;

    @Column(name = "answer", columnDefinition = "TEXT")
    private String answer;

    @Column(name = "sort_order", nullable = false)
    private Integer sortOrder;

    @Column(name = "view_count", nullable = false)
    private Integer viewCount;

    @Column(name = "is_active", nullable = false)
    private boolean isActive;

    @Column(name = "created_at", columnDefinition = "DATETIME(0)", nullable = false)
    private LocalDateTime createdAt;

    @Column(name = "updated_at", columnDefinition = "DATETIME(0)", nullable = false)
    private LocalDateTime updatedAt;

    public void update(FaqCategory category, String question, String answer, Integer sortOrder, Boolean isActive) {
        if (category != null) {
            this.category = category;
        }
        if (question != null) {
            this.question = question;
        }
        if (answer != null) {
            this.answer = answer;
        }
        if (Objects.nonNull(sortOrder)) {
            this.sortOrder = sortOrder;
        }
        if (Objects.nonNull(isActive)) {
            this.isActive = isActive;
        }
    }

    public void increaseViewCount() {
        this.viewCount += 1;
    }

    @PrePersist
    public void prePersist() {
        this.createdAt = LocalDateTime.now();
        this.updatedAt = LocalDateTime.now();
        this.viewCount = 0;
    }

    @PreUpdate
    public void preUpdate() {
        this.updatedAt = LocalDateTime.now();
    }
}
