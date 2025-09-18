package com.c3l2.persome.point.repository;

import com.c3l2.persome.point.entity.UserPoint;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserPointRepository extends JpaRepository<UserPoint, Long> {

}
