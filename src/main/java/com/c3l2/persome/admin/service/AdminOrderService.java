package com.c3l2.persome.admin.service;

import com.c3l2.persome.admin.dto.AdminOrderPageResponse;
import com.c3l2.persome.admin.dto.AdminOrderResponse;
import com.c3l2.persome.order.dto.response.OrderResponseDto;
import com.c3l2.persome.order.entity.Order;
import com.c3l2.persome.order.repository.OrderRepository;
import com.c3l2.persome.order.service.OrderService;
import jakarta.persistence.criteria.Join;
import jakarta.persistence.criteria.JoinType;
import jakarta.persistence.criteria.Predicate;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class AdminOrderService {

    private final OrderRepository orderRepository;
    private final OrderService orderService;

    public AdminOrderPageResponse getOrders(
            int page,
            int size,
            LocalDate startDate,
            LocalDate endDate,
            String keyword,
            String memberKeyword
    ) {
        Pageable pageable = PageRequest.of(Math.max(page, 0), Math.max(size, 1), Sort.by(Sort.Direction.DESC, "orderDate"));
        Specification<Order> specification = buildSpecification(startDate, endDate, keyword, memberKeyword);
        Page<AdminOrderResponse> orderPage = orderRepository.findAll(specification, pageable)
                .map(AdminOrderResponse::from);

        return AdminOrderPageResponse.builder()
                .orders(orderPage.getContent())
                .page(orderPage.getNumber())
                .size(orderPage.getSize())
                .totalElements(orderPage.getTotalElements())
                .totalPages(orderPage.getTotalPages())
                .hasNext(orderPage.hasNext())
                .hasPrevious(orderPage.hasPrevious())
                .build();
    }

    private Specification<Order> buildSpecification(
            LocalDate startDate,
            LocalDate endDate,
            String keyword,
            String memberKeyword
    ) {
        List<Specification<Order>> specifications = new ArrayList<>();

        if (startDate != null) {
            LocalDateTime startDateTime = startDate.atStartOfDay();
            specifications.add((root, query, criteriaBuilder) ->
                    criteriaBuilder.greaterThanOrEqualTo(root.get("orderDate"), startDateTime));
        }

        if (endDate != null) {
            LocalDateTime endExclusive = endDate.plusDays(1).atStartOfDay();
            specifications.add((root, query, criteriaBuilder) ->
                    criteriaBuilder.lessThan(root.get("orderDate"), endExclusive));
        }

        if (StringUtils.hasText(keyword)) {
            String trimmedKeyword = keyword.trim();
            String likeKeyword = "%" + trimmedKeyword.toLowerCase(Locale.ROOT) + "%";
            specifications.add((root, query, criteriaBuilder) -> {
                List<Predicate> predicates = new ArrayList<>();
                predicates.add(criteriaBuilder.like(
                        criteriaBuilder.lower(root.get("orderStatus").as(String.class)),
                        likeKeyword
                ));
                predicates.add(criteriaBuilder.like(
                        criteriaBuilder.lower(root.get("receiveType").as(String.class)),
                        likeKeyword
                ));
                predicates.add(criteriaBuilder.like(
                        criteriaBuilder.lower(root.get("requestMessage")),
                        likeKeyword
                ));
                try {
                    Long orderId = Long.parseLong(trimmedKeyword);
                    predicates.add(criteriaBuilder.equal(root.get("id"), orderId));
                } catch (NumberFormatException ignored) {
                }
                return criteriaBuilder.or(predicates.toArray(Predicate[]::new));
            });
        }

        if (StringUtils.hasText(memberKeyword)) {
            String trimmedMember = memberKeyword.trim();
            String likeMember = "%" + trimmedMember.toLowerCase(Locale.ROOT) + "%";
            specifications.add((root, query, criteriaBuilder) -> {
                query.distinct(true);
                Join<Order, ?> userJoin = root.join("user", JoinType.LEFT);
                List<Predicate> predicates = new ArrayList<>();
                predicates.add(criteriaBuilder.like(
                        criteriaBuilder.lower(userJoin.get("name")),
                        likeMember
                ));
                predicates.add(criteriaBuilder.like(
                        criteriaBuilder.lower(userJoin.get("loginId")),
                        likeMember
                ));
                try {
                    Long memberId = Long.parseLong(trimmedMember);
                    predicates.add(criteriaBuilder.equal(userJoin.get("id"), memberId));
                } catch (NumberFormatException ignored) {
                }
                return criteriaBuilder.or(predicates.toArray(Predicate[]::new));
            });
        }

        return specifications.stream()
                .reduce(Specification::and)
                .orElse(null);
    }

    public OrderResponseDto getOrderDetail(Long orderId) {
        return orderService.getOrderDetail(orderId);
    }
}
