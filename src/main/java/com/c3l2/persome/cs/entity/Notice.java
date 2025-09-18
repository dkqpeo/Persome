package com.c3l2.persome.cs.entity;

import com.c3l2.persome.cs.entity.constant.Category;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Entity
@Table(name = "notice")
@Getter
@Builder
@NoArgsConstructor//기본생성자
@AllArgsConstructor//매개값 다들어있는 생성자
public class Notice {

        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        private Long id;

        @Column(name = "title", length = 200, nullable = false)
        private String title;

        @Column(name = "content", columnDefinition = "TEXT", nullable = false)
        private String content;

        @Column(name = "is_important", nullable = false)
        private boolean isImportant;

        @Column(name = "view_count", nullable = false)
        private int viewCount;

        @Column(name = "is_active", nullable = false)
        private boolean isActive;

        @Column(name = "created_at", columnDefinition = "DATETIME(0)", nullable = false)
        private LocalDateTime createdAt;

        @Column(name = "updated_at", columnDefinition = "DATETIME(0)", nullable = false)
        private LocalDateTime updatedAt;

        @Column(name = "category", nullable = false)
        @Enumerated(EnumType.STRING)
        private Category category;

        @PrePersist
        private void prePersist() {
                this.createdAt = LocalDateTime.now();
                this.updatedAt = LocalDateTime.now();
                this.viewCount = 0;
        }

        @PreUpdate
        private void preUpdate() {
                this.updatedAt = LocalDateTime.now();
        }
}
