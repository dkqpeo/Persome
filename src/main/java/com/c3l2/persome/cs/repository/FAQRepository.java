package com.c3l2.persome.cs.repository;

import com.c3l2.persome.cs.entity.Faq;
import com.c3l2.persome.cs.entity.constant.FaqCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FAQRepository extends JpaRepository<Faq, Long> {

    List<Faq> findAllByCategoryOrderBySortOrderAsc(FaqCategory category);

    List<Faq> findAllByOrderBySortOrderAsc();
}
