package com.c3l2.persome.user.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "user_notification")
@Entity
public class UserNotification {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @Column(name = "email_enabled")
    private boolean emailEnabled;

    @Column(name = "sms_enabled")
    private boolean smsEnabled;

    @Column(name = "push_enabled")
    private boolean pushEnabled;

    @Column(name = "updated_at")
    private LocalDateTime updatedAt; //수정일

    @PrePersist
    protected void onCreate() {
        LocalDateTime now = LocalDateTime.now();
        this.updatedAt = now;
    }

    @PreUpdate
    protected void onUpdate() {
        this.updatedAt = LocalDateTime.now();
    }

    public void updateEmail(boolean enabled) {
        this.emailEnabled = enabled;
    }

    public void updateSms(boolean enabled) {
        this.smsEnabled = enabled;
    }

    public void updatePush(boolean enabled) {
        this.pushEnabled = enabled;
    }
}
