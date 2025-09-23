package com.c3l2.persome.cs.repository;

import com.c3l2.persome.cs.entity.Notice;
import com.c3l2.persome.cs.entity.constant.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface NoticeRepository extends JpaRepository<Notice, Long> {

    List<Notice> findAllByIsActiveTrueOrderByCreatedAtDesc();

    List<Notice> findAllByCategoryOrderByCreatedAtDesc(Category category);
}
