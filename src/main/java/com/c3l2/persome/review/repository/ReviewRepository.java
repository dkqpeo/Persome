package com.c3l2.persome.review.repository;

import com.c3l2.persome.product.entity.ProductOption;
import com.c3l2.persome.review.entity.Review;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ReviewRepository extends JpaRepository<Review, Long> {

    List<Review> findAllByProductOption(ProductOption productOption);
    
    List<Review> findByProductOptionIdIn(List<Long> productOptionIds);
}
