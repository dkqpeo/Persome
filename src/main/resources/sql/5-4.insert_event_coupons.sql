-- =========================
-- PERSOME 이벤트 쿠폰 더미데이터
-- =========================

-- 한가위 이벤트 (종료 → INACTIVE)
INSERT INTO coupon
(name, code, discount_type, discount_value, min_order_price, max_discount_price,
 limit_issue_count, issue_count, used_count, start_date, end_date, created_at, updated_at, status, event_id)
VALUES
('한가위 5천원 할인', 'CHUSEOK5000', 'FIXED', 5000, 20000, 5000,
 500, 0, 0, '2025-09-01 00:00:00', '2025-09-16 23:59:59', NOW(), NOW(), 'INACTIVE', 1),

('한가위 10% 할인', 'CHUSEOK10P', 'RATE', 0.10, 30000, 10000,
 300, 0, 0, '2025-09-01 00:00:00', '2025-09-16 23:59:59', NOW(), NOW(), 'INACTIVE', 1);


-- 신학기 이벤트 (진행 중 → ACTIVE)
INSERT INTO coupon
(name, code, discount_type, discount_value, min_order_price, max_discount_price,
 limit_issue_count, issue_count, used_count, start_date, end_date, created_at, updated_at, status, event_id)
VALUES
('신학기 3천원 할인', 'SCHOOL3000', 'FIXED', 3000, 15000, 3000,
 1000, 0, 0, '2025-09-01 00:00:00', '2025-10-16 23:59:59', NOW(), NOW(), 'ACTIVE', 2),

('신학기 15% 할인', 'SCHOOL15P', 'RATE', 0.15, 20000, 15000,
 500, 0, 0, '2025-09-01 00:00:00', '2025-10-16 23:59:59', NOW(), NOW(), 'ACTIVE', 2),

('교재 할인 2천원', 'BOOK2000', 'FIXED', 2000, 10000, 2000,
 800, 0, 0, '2025-09-01 00:00:00', '2025-10-16 23:59:59', NOW(), NOW(), 'ACTIVE', 2);


-- 크리스마스 이벤트 (예정 → INACTIVE)
INSERT INTO coupon
(name, code, discount_type, discount_value, min_order_price, max_discount_price,
 limit_issue_count, issue_count, used_count, start_date, end_date, created_at, updated_at, status, event_id)
VALUES
('크리스마스 전상품 20% 할인', 'XMAS20P', 'RATE', 0.20, 10000, 20000,
 1000, 0, 0, '2025-12-01 00:00:00', '2025-12-26 23:59:59', NOW(), NOW(), 'INACTIVE', 3);
