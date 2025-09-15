package com.c3l2.persome.product.service;

import com.c3l2.persome.product.repository.ProductRepository;
import jakarta.persistence.Table;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Slf4j
@Service
@Table
@RequiredArgsConstructor
public class ProductService {

    private final ProductRepository productRepository;

}
