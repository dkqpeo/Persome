package com.c3l2.persome.admin.repository;

import com.c3l2.persome.user.entity.Status;
import com.c3l2.persome.user.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AdminUserRepository extends JpaRepository<User, Long> {

    List<User> findByStatus(Status status);
}
