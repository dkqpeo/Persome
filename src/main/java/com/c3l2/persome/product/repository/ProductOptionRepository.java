package com.c3l2.persome.product.repository;

import com.c3l2.persome.product.entity.ProductOption;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductOptionRepository extends JpaRepository<ProductOption, Long> {

    @Modifying(clearAutomatically = true, flushAutomatically = true)
    @Query("update ProductOption o set o.name = :name, o.additionalAmount = :additionalAmount where o.id = :optionId and o.product.id = :productId")
    int updateOption(@Param("productId") Long productId,
                     @Param("optionId") Long optionId,
                     @Param("name") String name,
                     @Param("additionalAmount") Integer additionalAmount);
}
