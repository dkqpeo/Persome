package com.c3l2.persome.membership.repository;

import com.c3l2.persome.entity.membership.MembershipLevel;
import com.c3l2.persome.entity.membership.Name;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface MembershipLevelRepository extends JpaRepository<MembershipLevel, Long> {
    Optional<MembershipLevel> findByName(Name name);
}
