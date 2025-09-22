package com.c3l2.persome.user.repository;

import com.c3l2.persome.user.entity.UserConsent;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserConsentRepository extends JpaRepository<UserConsent, Long> {
}
