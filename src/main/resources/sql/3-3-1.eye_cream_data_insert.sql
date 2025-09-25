-- 상품: 닥터멜락신 아이팔트 아이백 아이크림 7g + 10g 듀오세트...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('닥터멜락신 아이팔트 아이백 아이크림 7g + 10g 듀오세트',
 '닥터멜락신 아이팔트 아이백 아이크림 7g + 10g 듀오세트',
 4.9,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터멜락신'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '닥터멜락신 아이팔트 아이백 아이크림 7g + 10g 듀오세트'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(40900, 'ORIGINAL', (SELECT id FROM product WHERE name = '닥터멜락신 아이팔트 아이백 아이크림 7g + 10g 듀오세트'), NOW(), NOW()),
(30900, 'SALE', (SELECT id FROM product WHERE name = '닥터멜락신 아이팔트 아이백 아이크림 7g + 10g 듀오세트'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022959302ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '닥터멜락신 아이팔트 아이백 아이크림 7g + 10g 듀오세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022959303ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '닥터멜락신 아이팔트 아이백 아이크림 7g + 10g 듀오세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022959301ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '닥터멜락신 아이팔트 아이백 아이크림 7g + 10g 듀오세트'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '닥터멜락신 아이팔트 아이백 아이크림 7g + 10g 듀오세트';


-- ================================

-- 상품: [판매량 1억개 돌파/대용량] AHC 텐 레볼루션 리얼 아이크림 포 페이스 더블 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[판매량 1억개 돌파/대용량] AHC 텐 레볼루션 리얼 아이크림 포 페이스 더블 기획',
 '[판매량 1억개 돌파/대용량] AHC 텐 레볼루션 리얼 아이크림 포 페이스 더블 기획',
 4.8,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'AHC'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[판매량 1억개 돌파/대용량] AHC 텐 레볼루션 리얼 아이크림 포 페이스 더블 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[판매량 1억개 돌파/대용량] AHC 텐 레볼루션 리얼 아이크림 포 페이스 더블 기획'), NOW(), NOW()),
(25180, 'SALE', (SELECT id FROM product WHERE name = '[판매량 1억개 돌파/대용량] AHC 텐 레볼루션 리얼 아이크림 포 페이스 더블 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019036912ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[판매량 1억개 돌파/대용량] AHC 텐 레볼루션 리얼 아이크림 포 페이스 더블 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019036908ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[판매량 1억개 돌파/대용량] AHC 텐 레볼루션 리얼 아이크림 포 페이스 더블 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019036909ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[판매량 1억개 돌파/대용량] AHC 텐 레볼루션 리얼 아이크림 포 페이스 더블 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019036911ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[판매량 1억개 돌파/대용량] AHC 텐 레볼루션 리얼 아이크림 포 페이스 더블 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[판매량 1억개 돌파/대용량] AHC 텐 레볼루션 리얼 아이크림 포 페이스 더블 기획';


-- ================================

-- 상품: [10년연속1위] 유세린 하이알루론 3X 아이크림 더블기획 (15ml+15ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[10년연속1위] 유세린 하이알루론 3X 아이크림 더블기획 (15ml+15ml)',
 '[10년연속1위] 유세린 하이알루론 3X 아이크림 더블기획 (15ml+15ml)',
 4.7,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유세린'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[10년연속1위] 유세린 하이알루론 3X 아이크림 더블기획 (15ml+15ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(78900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[10년연속1위] 유세린 하이알루론 3X 아이크림 더블기획 (15ml+15ml)'), NOW(), NOW()),
(72100, 'SALE', (SELECT id FROM product WHERE name = '[10년연속1위] 유세린 하이알루론 3X 아이크림 더블기획 (15ml+15ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011880324ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[10년연속1위] 유세린 하이알루론 3X 아이크림 더블기획 (15ml+15ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011880326ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[10년연속1위] 유세린 하이알루론 3X 아이크림 더블기획 (15ml+15ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011880327ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[10년연속1위] 유세린 하이알루론 3X 아이크림 더블기획 (15ml+15ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011880321ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[10년연속1위] 유세린 하이알루론 3X 아이크림 더블기획 (15ml+15ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011880325ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[10년연속1위] 유세린 하이알루론 3X 아이크림 더블기획 (15ml+15ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011880330ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[10년연속1위] 유세린 하이알루론 3X 아이크림 더블기획 (15ml+15ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[10년연속1위] 유세린 하이알루론 3X 아이크림 더블기획 (15ml+15ml)';


-- ================================

-- 상품: 디오디너리 멀티-펩타이드 래쉬 앤 브로우 세럼 5ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('디오디너리 멀티-펩타이드 래쉬 앤 브로우 세럼 5ml',
 '디오디너리 멀티-펩타이드 래쉬 앤 브로우 세럼 5ml',
 4.8,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '디오디너리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '디오디너리 멀티-펩타이드 래쉬 앤 브로우 세럼 5ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(22600, 'ORIGINAL', (SELECT id FROM product WHERE name = '디오디너리 멀티-펩타이드 래쉬 앤 브로우 세럼 5ml'), NOW(), NOW()),
(22600, 'SALE', (SELECT id FROM product WHERE name = '디오디너리 멀티-펩타이드 래쉬 앤 브로우 세럼 5ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017087001ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '디오디너리 멀티-펩타이드 래쉬 앤 브로우 세럼 5ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017087002ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '디오디너리 멀티-펩타이드 래쉬 앤 브로우 세럼 5ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '디오디너리 멀티-펩타이드 래쉬 앤 브로우 세럼 5ml';


-- ================================

-- 상품: [10년연속1위] 유세린 하이알루론 3X 아이크림 15ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[10년연속1위] 유세린 하이알루론 3X 아이크림 15ml',
 '[10년연속1위] 유세린 하이알루론 3X 아이크림 15ml',
 4.7,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유세린'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[10년연속1위] 유세린 하이알루론 3X 아이크림 15ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(53000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[10년연속1위] 유세린 하이알루론 3X 아이크림 15ml'), NOW(), NOW()),
(53000, 'SALE', (SELECT id FROM product WHERE name = '[10년연속1위] 유세린 하이알루론 3X 아이크림 15ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011217337ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[10년연속1위] 유세린 하이알루론 3X 아이크림 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011217338ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[10년연속1위] 유세린 하이알루론 3X 아이크림 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011217336ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[10년연속1위] 유세린 하이알루론 3X 아이크림 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011217335ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[10년연속1위] 유세린 하이알루론 3X 아이크림 15ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[10년연속1위] 유세린 하이알루론 3X 아이크림 15ml';


-- ================================

-- 상품: [단독기획/리프팅]AHC 프로 샷 콜라 쥬비네이션 아이크림 포페이스 30ml 기획 (+세럼...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[단독기획/리프팅]AHC 프로 샷 콜라 쥬비네이션 아이크림 포페이스 30ml 기획 (+세럼10ml)',
 '[단독기획/리프팅]AHC 프로 샷 콜라 쥬비네이션 아이크림 포페이스 30ml 기획 (+세럼10ml)',
 4.9,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'AHC'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[단독기획/리프팅]AHC 프로 샷 콜라 쥬비네이션 아이크림 포페이스 30ml 기획 (+세럼10ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(31000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독기획/리프팅]AHC 프로 샷 콜라 쥬비네이션 아이크림 포페이스 30ml 기획 (+세럼10ml)'), NOW(), NOW()),
(24890, 'SALE', (SELECT id FROM product WHERE name = '[단독기획/리프팅]AHC 프로 샷 콜라 쥬비네이션 아이크림 포페이스 30ml 기획 (+세럼10ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020460022ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[단독기획/리프팅]AHC 프로 샷 콜라 쥬비네이션 아이크림 포페이스 30ml 기획 (+세럼10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020460023ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[단독기획/리프팅]AHC 프로 샷 콜라 쥬비네이션 아이크림 포페이스 30ml 기획 (+세럼10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020460024ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[단독기획/리프팅]AHC 프로 샷 콜라 쥬비네이션 아이크림 포페이스 30ml 기획 (+세럼10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020460004ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[단독기획/리프팅]AHC 프로 샷 콜라 쥬비네이션 아이크림 포페이스 30ml 기획 (+세럼10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020460017ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[단독기획/리프팅]AHC 프로 샷 콜라 쥬비네이션 아이크림 포페이스 30ml 기획 (+세럼10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020460016ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[단독기획/리프팅]AHC 프로 샷 콜라 쥬비네이션 아이크림 포페이스 30ml 기획 (+세럼10ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[단독기획/리프팅]AHC 프로 샷 콜라 쥬비네이션 아이크림 포페이스 30ml 기획 (+세럼10ml)';


-- ================================

-- 상품: [리뉴얼] 구달 청귤 비타C 잡티케어 아이크림 30ml 1+1 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[리뉴얼] 구달 청귤 비타C 잡티케어 아이크림 30ml 1+1 기획',
 '[리뉴얼] 구달 청귤 비타C 잡티케어 아이크림 30ml 1+1 기획',
 4.7,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '구달'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[리뉴얼] 구달 청귤 비타C 잡티케어 아이크림 30ml 1+1 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[리뉴얼] 구달 청귤 비타C 잡티케어 아이크림 30ml 1+1 기획'), NOW(), NOW()),
(24000, 'SALE', (SELECT id FROM product WHERE name = '[리뉴얼] 구달 청귤 비타C 잡티케어 아이크림 30ml 1+1 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022977606ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[리뉴얼] 구달 청귤 비타C 잡티케어 아이크림 30ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022977608ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[리뉴얼] 구달 청귤 비타C 잡티케어 아이크림 30ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022977609ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[리뉴얼] 구달 청귤 비타C 잡티케어 아이크림 30ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022977605ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[리뉴얼] 구달 청귤 비타C 잡티케어 아이크림 30ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022977603ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[리뉴얼] 구달 청귤 비타C 잡티케어 아이크림 30ml 1+1 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[리뉴얼] 구달 청귤 비타C 잡티케어 아이크림 30ml 1+1 기획';


-- ================================

-- 상품: [토탈주름케어] 아비브 콜라겐 아이크림 부활초 튜브 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[토탈주름케어] 아비브 콜라겐 아이크림 부활초 튜브 30ml',
 '[토탈주름케어] 아비브 콜라겐 아이크림 부활초 튜브 30ml',
 4.8,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아비브'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[토탈주름케어] 아비브 콜라겐 아이크림 부활초 튜브 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[토탈주름케어] 아비브 콜라겐 아이크림 부활초 튜브 30ml'), NOW(), NOW()),
(18200, 'SALE', (SELECT id FROM product WHERE name = '[토탈주름케어] 아비브 콜라겐 아이크림 부활초 튜브 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019191209ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[토탈주름케어] 아비브 콜라겐 아이크림 부활초 튜브 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019191207ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[토탈주름케어] 아비브 콜라겐 아이크림 부활초 튜브 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019191208ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[토탈주름케어] 아비브 콜라겐 아이크림 부활초 튜브 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[토탈주름케어] 아비브 콜라겐 아이크림 부활초 튜브 30ml';


-- ================================

-- 상품: [화해1위] 샤이샤이샤이 바나나 컨실 아이크림 15g 더블 기획세트...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[화해1위] 샤이샤이샤이 바나나 컨실 아이크림 15g 더블 기획세트',
 '[화해1위] 샤이샤이샤이 바나나 컨실 아이크림 15g 더블 기획세트',
 4.5,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '샤이샤이샤이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[화해1위] 샤이샤이샤이 바나나 컨실 아이크림 15g 더블 기획세트'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(37000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[화해1위] 샤이샤이샤이 바나나 컨실 아이크림 15g 더블 기획세트'), NOW(), NOW()),
(37000, 'SALE', (SELECT id FROM product WHERE name = '[화해1위] 샤이샤이샤이 바나나 컨실 아이크림 15g 더블 기획세트'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018065931ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[화해1위] 샤이샤이샤이 바나나 컨실 아이크림 15g 더블 기획세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018065930ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[화해1위] 샤이샤이샤이 바나나 컨실 아이크림 15g 더블 기획세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018065929ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[화해1위] 샤이샤이샤이 바나나 컨실 아이크림 15g 더블 기획세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018065928ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[화해1위] 샤이샤이샤이 바나나 컨실 아이크림 15g 더블 기획세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018065927ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[화해1위] 샤이샤이샤이 바나나 컨실 아이크림 15g 더블 기획세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018065926ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[화해1위] 샤이샤이샤이 바나나 컨실 아이크림 15g 더블 기획세트'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[화해1위] 샤이샤이샤이 바나나 컨실 아이크림 15g 더블 기획세트';


-- ================================

-- 상품: [다크서클완화] 아이소이 브라이트닝 민감다크 아이크림 17ml 기획 (+3ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[다크서클완화] 아이소이 브라이트닝 민감다크 아이크림 17ml 기획 (+3ml)',
 '[다크서클완화] 아이소이 브라이트닝 민감다크 아이크림 17ml 기획 (+3ml)',
 4.7,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이소이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[다크서클완화] 아이소이 브라이트닝 민감다크 아이크림 17ml 기획 (+3ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29800, 'ORIGINAL', (SELECT id FROM product WHERE name = '[다크서클완화] 아이소이 브라이트닝 민감다크 아이크림 17ml 기획 (+3ml)'), NOW(), NOW()),
(29800, 'SALE', (SELECT id FROM product WHERE name = '[다크서클완화] 아이소이 브라이트닝 민감다크 아이크림 17ml 기획 (+3ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023047411ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[다크서클완화] 아이소이 브라이트닝 민감다크 아이크림 17ml 기획 (+3ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023047412ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[다크서클완화] 아이소이 브라이트닝 민감다크 아이크림 17ml 기획 (+3ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023047413ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[다크서클완화] 아이소이 브라이트닝 민감다크 아이크림 17ml 기획 (+3ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023047410ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[다크서클완화] 아이소이 브라이트닝 민감다크 아이크림 17ml 기획 (+3ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[다크서클완화] 아이소이 브라이트닝 민감다크 아이크림 17ml 기획 (+3ml)';


-- ================================

-- 상품: [아이백볼륨/주름개선] 성분에디터 실크 펩타이드 인텐시브 리프팅 아이크림 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[아이백볼륨/주름개선] 성분에디터 실크 펩타이드 인텐시브 리프팅 아이크림 30ml',
 '[아이백볼륨/주름개선] 성분에디터 실크 펩타이드 인텐시브 리프팅 아이크림 30ml',
 4.8,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '성분에디터'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[아이백볼륨/주름개선] 성분에디터 실크 펩타이드 인텐시브 리프팅 아이크림 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[아이백볼륨/주름개선] 성분에디터 실크 펩타이드 인텐시브 리프팅 아이크림 30ml'), NOW(), NOW()),
(19900, 'SALE', (SELECT id FROM product WHERE name = '[아이백볼륨/주름개선] 성분에디터 실크 펩타이드 인텐시브 리프팅 아이크림 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022413712ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[아이백볼륨/주름개선] 성분에디터 실크 펩타이드 인텐시브 리프팅 아이크림 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022413711ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[아이백볼륨/주름개선] 성분에디터 실크 펩타이드 인텐시브 리프팅 아이크림 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022413713ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[아이백볼륨/주름개선] 성분에디터 실크 펩타이드 인텐시브 리프팅 아이크림 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[아이백볼륨/주름개선] 성분에디터 실크 펩타이드 인텐시브 리프팅 아이크림 30ml';


-- ================================

-- 상품: AHC 유스래스팅 리얼 아이크림 포 페이스 스페셜 링클케어 세트 (35ml+7ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('AHC 유스래스팅 리얼 아이크림 포 페이스 스페셜 링클케어 세트 (35ml+7ml)',
 'AHC 유스래스팅 리얼 아이크림 포 페이스 스페셜 링클케어 세트 (35ml+7ml)',
 4.8,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'AHC'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = 'AHC 유스래스팅 리얼 아이크림 포 페이스 스페셜 링클케어 세트 (35ml+7ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = 'AHC 유스래스팅 리얼 아이크림 포 페이스 스페셜 링클케어 세트 (35ml+7ml)'), NOW(), NOW()),
(16890, 'SALE', (SELECT id FROM product WHERE name = 'AHC 유스래스팅 리얼 아이크림 포 페이스 스페셜 링클케어 세트 (35ml+7ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017913204ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = 'AHC 유스래스팅 리얼 아이크림 포 페이스 스페셜 링클케어 세트 (35ml+7ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017913203ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = 'AHC 유스래스팅 리얼 아이크림 포 페이스 스페셜 링클케어 세트 (35ml+7ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = 'AHC 유스래스팅 리얼 아이크림 포 페이스 스페셜 링클케어 세트 (35ml+7ml)';


-- ================================

-- 상품: 유세린 볼륨 리프팅 아이크림 15ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('유세린 볼륨 리프팅 아이크림 15ml',
 '유세린 볼륨 리프팅 아이크림 15ml',
 4.7,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유세린'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '유세린 볼륨 리프팅 아이크림 15ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(51000, 'ORIGINAL', (SELECT id FROM product WHERE name = '유세린 볼륨 리프팅 아이크림 15ml'), NOW(), NOW()),
(39200, 'SALE', (SELECT id FROM product WHERE name = '유세린 볼륨 리프팅 아이크림 15ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011613510ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '유세린 볼륨 리프팅 아이크림 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011613511ko.jpeg?l=ko', 2, (SELECT id FROM product WHERE name = '유세린 볼륨 리프팅 아이크림 15ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '유세린 볼륨 리프팅 아이크림 15ml';


-- ================================

-- 상품: 마티나겝하르트 아보카도 아이크림 15ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('마티나겝하르트 아보카도 아이크림 15ml',
 '마티나겝하르트 아보카도 아이크림 15ml',
 4.7,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '마티나겝하르트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '마티나겝하르트 아보카도 아이크림 15ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '마티나겝하르트 아보카도 아이크림 15ml'), NOW(), NOW()),
(26000, 'SALE', (SELECT id FROM product WHERE name = '마티나겝하르트 아보카도 아이크림 15ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012212610ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '마티나겝하르트 아보카도 아이크림 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012212608ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '마티나겝하르트 아보카도 아이크림 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012212605ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '마티나겝하르트 아보카도 아이크림 15ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '마티나겝하르트 아보카도 아이크림 15ml';


-- ================================

-- 상품: [남성아이크림]눅스 맨 포-맨 아이크림 15ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[남성아이크림]눅스 맨 포-맨 아이크림 15ml',
 '[남성아이크림]눅스 맨 포-맨 아이크림 15ml',
 4.7,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '눅스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[남성아이크림]눅스 맨 포-맨 아이크림 15ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[남성아이크림]눅스 맨 포-맨 아이크림 15ml'), NOW(), NOW()),
(29700, 'SALE', (SELECT id FROM product WHERE name = '[남성아이크림]눅스 맨 포-맨 아이크림 15ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012584305ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[남성아이크림]눅스 맨 포-맨 아이크림 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012584306ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[남성아이크림]눅스 맨 포-맨 아이크림 15ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[남성아이크림]눅스 맨 포-맨 아이크림 15ml';


-- ================================

-- 상품: 디오디너리 카페인 솔루션 5% + EGCG 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('디오디너리 카페인 솔루션 5% + EGCG 30ml',
 '디오디너리 카페인 솔루션 5% + EGCG 30ml',
 4.6,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '디오디너리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '디오디너리 카페인 솔루션 5% + EGCG 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(14000, 'ORIGINAL', (SELECT id FROM product WHERE name = '디오디너리 카페인 솔루션 5% + EGCG 30ml'), NOW(), NOW()),
(14000, 'SALE', (SELECT id FROM product WHERE name = '디오디너리 카페인 솔루션 5% + EGCG 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014132102ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '디오디너리 카페인 솔루션 5% + EGCG 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014132103ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '디오디너리 카페인 솔루션 5% + EGCG 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '디오디너리 카페인 솔루션 5% + EGCG 30ml';


-- ================================

-- 상품: [레티날0.025%] 닥터디퍼런트 비타리프트 아이앤넥 20g...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[레티날0.025%] 닥터디퍼런트 비타리프트 아이앤넥 20g',
 '[레티날0.025%] 닥터디퍼런트 비타리프트 아이앤넥 20g',
 4.6,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터디퍼런트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[레티날0.025%] 닥터디퍼런트 비타리프트 아이앤넥 20g'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(40000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[레티날0.025%] 닥터디퍼런트 비타리프트 아이앤넥 20g'), NOW(), NOW()),
(34000, 'SALE', (SELECT id FROM product WHERE name = '[레티날0.025%] 닥터디퍼런트 비타리프트 아이앤넥 20g'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014528715ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[레티날0.025%] 닥터디퍼런트 비타리프트 아이앤넥 20g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014528714ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[레티날0.025%] 닥터디퍼런트 비타리프트 아이앤넥 20g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014528713ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[레티날0.025%] 닥터디퍼런트 비타리프트 아이앤넥 20g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014528712ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[레티날0.025%] 닥터디퍼런트 비타리프트 아이앤넥 20g'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[레티날0.025%] 닥터디퍼런트 비타리프트 아이앤넥 20g';


-- ================================

-- 상품: 스와니코코 펩타이드 아이크림 트리플 기획(20ml+20ml+20ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('스와니코코 펩타이드 아이크림 트리플 기획(20ml+20ml+20ml)',
 '스와니코코 펩타이드 아이크림 트리플 기획(20ml+20ml+20ml)',
 4.7,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '스와니코코'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '스와니코코 펩타이드 아이크림 트리플 기획(20ml+20ml+20ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '스와니코코 펩타이드 아이크림 트리플 기획(20ml+20ml+20ml)'), NOW(), NOW()),
(32000, 'SALE', (SELECT id FROM product WHERE name = '스와니코코 펩타이드 아이크림 트리플 기획(20ml+20ml+20ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014555506ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '스와니코코 펩타이드 아이크림 트리플 기획(20ml+20ml+20ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '스와니코코 펩타이드 아이크림 트리플 기획(20ml+20ml+20ml)';


-- ================================

-- 상품: [코어탄력스팟] 아이소이 인텐시브 리프팅 스팟 25ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[코어탄력스팟] 아이소이 인텐시브 리프팅 스팟 25ml',
 '[코어탄력스팟] 아이소이 인텐시브 리프팅 스팟 25ml',
 4.7,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이소이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[코어탄력스팟] 아이소이 인텐시브 리프팅 스팟 25ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[코어탄력스팟] 아이소이 인텐시브 리프팅 스팟 25ml'), NOW(), NOW()),
(39000, 'SALE', (SELECT id FROM product WHERE name = '[코어탄력스팟] 아이소이 인텐시브 리프팅 스팟 25ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015462708ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[코어탄력스팟] 아이소이 인텐시브 리프팅 스팟 25ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015462709ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[코어탄력스팟] 아이소이 인텐시브 리프팅 스팟 25ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015462707ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[코어탄력스팟] 아이소이 인텐시브 리프팅 스팟 25ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[코어탄력스팟] 아이소이 인텐시브 리프팅 스팟 25ml';


-- ================================

-- 상품: 바비브라운 비타민 인리치드 아이 베이스...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('바비브라운 비타민 인리치드 아이 베이스',
 '바비브라운 비타민 인리치드 아이 베이스',
 4.7,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바비브라운'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '바비브라운 비타민 인리치드 아이 베이스'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(101000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바비브라운 비타민 인리치드 아이 베이스'), NOW(), NOW()),
(101000, 'SALE', (SELECT id FROM product WHERE name = '바비브라운 비타민 인리치드 아이 베이스'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015683701ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바비브라운 비타민 인리치드 아이 베이스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015683703ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '바비브라운 비타민 인리치드 아이 베이스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015683702ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '바비브라운 비타민 인리치드 아이 베이스'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '바비브라운 비타민 인리치드 아이 베이스';


-- ================================

-- 상품: 바비브라운 하이드레이팅 아이 크림...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('바비브라운 하이드레이팅 아이 크림',
 '바비브라운 하이드레이팅 아이 크림',
 4.2,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바비브라운'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '바비브라운 하이드레이팅 아이 크림'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(101000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바비브라운 하이드레이팅 아이 크림'), NOW(), NOW()),
(101000, 'SALE', (SELECT id FROM product WHERE name = '바비브라운 하이드레이팅 아이 크림'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015684302ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바비브라운 하이드레이팅 아이 크림'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '바비브라운 하이드레이팅 아이 크림';


-- ================================

-- 상품: 센텔리안24 링클셀 코어 아이크림 더블 기획 (세럼10ml x 2ea 증정)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('센텔리안24 링클셀 코어 아이크림 더블 기획 (세럼10ml x 2ea 증정)',
 '센텔리안24 링클셀 코어 아이크림 더블 기획 (세럼10ml x 2ea 증정)',
 4.7,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '센텔리안24'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '센텔리안24 링클셀 코어 아이크림 더블 기획 (세럼10ml x 2ea 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(57000, 'ORIGINAL', (SELECT id FROM product WHERE name = '센텔리안24 링클셀 코어 아이크림 더블 기획 (세럼10ml x 2ea 증정)'), NOW(), NOW()),
(29900, 'SALE', (SELECT id FROM product WHERE name = '센텔리안24 링클셀 코어 아이크림 더블 기획 (세럼10ml x 2ea 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015728503ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '센텔리안24 링클셀 코어 아이크림 더블 기획 (세럼10ml x 2ea 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015728505ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '센텔리안24 링클셀 코어 아이크림 더블 기획 (세럼10ml x 2ea 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015728502ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '센텔리안24 링클셀 코어 아이크림 더블 기획 (세럼10ml x 2ea 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015728504ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '센텔리안24 링클셀 코어 아이크림 더블 기획 (세럼10ml x 2ea 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '센텔리안24 링클셀 코어 아이크림 더블 기획 (세럼10ml x 2ea 증정)';


-- ================================

-- 상품: 베리홉 바이오틱스 바이탈 아이 크림 20ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('베리홉 바이오틱스 바이탈 아이 크림 20ml',
 '베리홉 바이오틱스 바이탈 아이 크림 20ml',
 4.5,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '베리홉'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '베리홉 바이오틱스 바이탈 아이 크림 20ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(41900, 'ORIGINAL', (SELECT id FROM product WHERE name = '베리홉 바이오틱스 바이탈 아이 크림 20ml'), NOW(), NOW()),
(38900, 'SALE', (SELECT id FROM product WHERE name = '베리홉 바이오틱스 바이탈 아이 크림 20ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015959502ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '베리홉 바이오틱스 바이탈 아이 크림 20ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015959504ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '베리홉 바이오틱스 바이탈 아이 크림 20ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015959503ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '베리홉 바이오틱스 바이탈 아이 크림 20ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '베리홉 바이오틱스 바이탈 아이 크림 20ml';


-- ================================

-- 상품: 바비브라운 엑스트라 리페어 아이 크림 인텐스 15ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('바비브라운 엑스트라 리페어 아이 크림 인텐스 15ml',
 '바비브라운 엑스트라 리페어 아이 크림 인텐스 15ml',
 4.9,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바비브라운'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '바비브라운 엑스트라 리페어 아이 크림 인텐스 15ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(146000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바비브라운 엑스트라 리페어 아이 크림 인텐스 15ml'), NOW(), NOW()),
(146000, 'SALE', (SELECT id FROM product WHERE name = '바비브라운 엑스트라 리페어 아이 크림 인텐스 15ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015974805ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바비브라운 엑스트라 리페어 아이 크림 인텐스 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015974806ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '바비브라운 엑스트라 리페어 아이 크림 인텐스 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015974804ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '바비브라운 엑스트라 리페어 아이 크림 인텐스 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015974803ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '바비브라운 엑스트라 리페어 아이 크림 인텐스 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015974802ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '바비브라운 엑스트라 리페어 아이 크림 인텐스 15ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '바비브라운 엑스트라 리페어 아이 크림 인텐스 15ml';


-- ================================

-- 상품: [증정기획] 닥터지 로얄 블랙스네일 아이크림 30ml+10ml 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[증정기획] 닥터지 로얄 블랙스네일 아이크림 30ml+10ml 기획',
 '[증정기획] 닥터지 로얄 블랙스네일 아이크림 30ml+10ml 기획',
 4.8,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터지'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[증정기획] 닥터지 로얄 블랙스네일 아이크림 30ml+10ml 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[증정기획] 닥터지 로얄 블랙스네일 아이크림 30ml+10ml 기획'), NOW(), NOW()),
(38000, 'SALE', (SELECT id FROM product WHERE name = '[증정기획] 닥터지 로얄 블랙스네일 아이크림 30ml+10ml 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016344005ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[증정기획] 닥터지 로얄 블랙스네일 아이크림 30ml+10ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016344006ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[증정기획] 닥터지 로얄 블랙스네일 아이크림 30ml+10ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016344007ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[증정기획] 닥터지 로얄 블랙스네일 아이크림 30ml+10ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016344008ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[증정기획] 닥터지 로얄 블랙스네일 아이크림 30ml+10ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016344009ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[증정기획] 닥터지 로얄 블랙스네일 아이크림 30ml+10ml 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[증정기획] 닥터지 로얄 블랙스네일 아이크림 30ml+10ml 기획';


-- ================================

-- 상품: OOTD AM 인텐스 아이세럼 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('OOTD AM 인텐스 아이세럼 30ml',
 'OOTD AM 인텐스 아이세럼 30ml',
 4.9,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'OOTD'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = 'OOTD AM 인텐스 아이세럼 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = 'OOTD AM 인텐스 아이세럼 30ml'), NOW(), NOW()),
(33000, 'SALE', (SELECT id FROM product WHERE name = 'OOTD AM 인텐스 아이세럼 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016725908ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = 'OOTD AM 인텐스 아이세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016725909ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = 'OOTD AM 인텐스 아이세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016725907ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = 'OOTD AM 인텐스 아이세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016725906ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = 'OOTD AM 인텐스 아이세럼 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = 'OOTD AM 인텐스 아이세럼 30ml';


-- ================================

-- 상품: OOTD PM 오버나잇 아이크림 25ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('OOTD PM 오버나잇 아이크림 25ml',
 'OOTD PM 오버나잇 아이크림 25ml',
 4.9,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'OOTD'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = 'OOTD PM 오버나잇 아이크림 25ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = 'OOTD PM 오버나잇 아이크림 25ml'), NOW(), NOW()),
(21000, 'SALE', (SELECT id FROM product WHERE name = 'OOTD PM 오버나잇 아이크림 25ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016726106ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = 'OOTD PM 오버나잇 아이크림 25ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016726107ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = 'OOTD PM 오버나잇 아이크림 25ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016726105ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = 'OOTD PM 오버나잇 아이크림 25ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = 'OOTD PM 오버나잇 아이크림 25ml';


-- ================================

-- 상품: [괄사 아이세럼] 에스테덤 히알루로닉 아이세럼 15ml (주름개선기능성)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[괄사 아이세럼] 에스테덤 히알루로닉 아이세럼 15ml (주름개선기능성)',
 '[괄사 아이세럼] 에스테덤 히알루로닉 아이세럼 15ml (주름개선기능성)',
 4.7,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에스테덤'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[괄사 아이세럼] 에스테덤 히알루로닉 아이세럼 15ml (주름개선기능성)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(61000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[괄사 아이세럼] 에스테덤 히알루로닉 아이세럼 15ml (주름개선기능성)'), NOW(), NOW()),
(41420, 'SALE', (SELECT id FROM product WHERE name = '[괄사 아이세럼] 에스테덤 히알루로닉 아이세럼 15ml (주름개선기능성)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016799338ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[괄사 아이세럼] 에스테덤 히알루로닉 아이세럼 15ml (주름개선기능성)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016799329ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[괄사 아이세럼] 에스테덤 히알루로닉 아이세럼 15ml (주름개선기능성)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016799334ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[괄사 아이세럼] 에스테덤 히알루로닉 아이세럼 15ml (주름개선기능성)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016799336ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[괄사 아이세럼] 에스테덤 히알루로닉 아이세럼 15ml (주름개선기능성)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[괄사 아이세럼] 에스테덤 히알루로닉 아이세럼 15ml (주름개선기능성)';


-- ================================

-- 상품: 유세린 이븐래디언스 다크서클 아이크림 15ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('유세린 이븐래디언스 다크서클 아이크림 15ml',
 '유세린 이븐래디언스 다크서클 아이크림 15ml',
 4.7,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유세린'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '유세린 이븐래디언스 다크서클 아이크림 15ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39000, 'ORIGINAL', (SELECT id FROM product WHERE name = '유세린 이븐래디언스 다크서클 아이크림 15ml'), NOW(), NOW()),
(27300, 'SALE', (SELECT id FROM product WHERE name = '유세린 이븐래디언스 다크서클 아이크림 15ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017069113ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '유세린 이븐래디언스 다크서클 아이크림 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017069109ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '유세린 이븐래디언스 다크서클 아이크림 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017069110ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '유세린 이븐래디언스 다크서클 아이크림 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017069114ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '유세린 이븐래디언스 다크서클 아이크림 15ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '유세린 이븐래디언스 다크서클 아이크림 15ml';


-- ================================

-- 상품: 에스티 로더 갈색병 아이 젤 크림 15ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('에스티 로더 갈색병 아이 젤 크림 15ml',
 '에스티 로더 갈색병 아이 젤 크림 15ml',
 4.7,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에스티로더'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '에스티 로더 갈색병 아이 젤 크림 15ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(130000, 'ORIGINAL', (SELECT id FROM product WHERE name = '에스티 로더 갈색병 아이 젤 크림 15ml'), NOW(), NOW()),
(110500, 'SALE', (SELECT id FROM product WHERE name = '에스티 로더 갈색병 아이 젤 크림 15ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017603203ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '에스티 로더 갈색병 아이 젤 크림 15ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '에스티 로더 갈색병 아이 젤 크림 15ml';


-- ================================

-- 상품: 체이싱래빗 버니 라인 스무더 15ml (괄사아이크림)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('체이싱래빗 버니 라인 스무더 15ml (괄사아이크림)',
 '체이싱래빗 버니 라인 스무더 15ml (괄사아이크림)',
 4.7,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '체이싱래빗'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '체이싱래빗 버니 라인 스무더 15ml (괄사아이크림)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(20000, 'ORIGINAL', (SELECT id FROM product WHERE name = '체이싱래빗 버니 라인 스무더 15ml (괄사아이크림)'), NOW(), NOW()),
(15000, 'SALE', (SELECT id FROM product WHERE name = '체이싱래빗 버니 라인 스무더 15ml (괄사아이크림)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017605017ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '체이싱래빗 버니 라인 스무더 15ml (괄사아이크림)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017605018ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '체이싱래빗 버니 라인 스무더 15ml (괄사아이크림)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017605019ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '체이싱래빗 버니 라인 스무더 15ml (괄사아이크림)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017605020ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '체이싱래빗 버니 라인 스무더 15ml (괄사아이크림)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017605021ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '체이싱래빗 버니 라인 스무더 15ml (괄사아이크림)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '체이싱래빗 버니 라인 스무더 15ml (괄사아이크림)';


-- ================================

-- 상품: [1+1] 차앤박 프로폴리스 에센셜 아이크림 50ml 더블기획 (50ml+50ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[1+1] 차앤박 프로폴리스 에센셜 아이크림 50ml 더블기획 (50ml+50ml)',
 '[1+1] 차앤박 프로폴리스 에센셜 아이크림 50ml 더블기획 (50ml+50ml)',
 4.8,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '차앤박'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[1+1] 차앤박 프로폴리스 에센셜 아이크림 50ml 더블기획 (50ml+50ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(42000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1+1] 차앤박 프로폴리스 에센셜 아이크림 50ml 더블기획 (50ml+50ml)'), NOW(), NOW()),
(32800, 'SALE', (SELECT id FROM product WHERE name = '[1+1] 차앤박 프로폴리스 에센셜 아이크림 50ml 더블기획 (50ml+50ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017695113ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[1+1] 차앤박 프로폴리스 에센셜 아이크림 50ml 더블기획 (50ml+50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017695110ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[1+1] 차앤박 프로폴리스 에센셜 아이크림 50ml 더블기획 (50ml+50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017695103ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[1+1] 차앤박 프로폴리스 에센셜 아이크림 50ml 더블기획 (50ml+50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017695102ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[1+1] 차앤박 프로폴리스 에센셜 아이크림 50ml 더블기획 (50ml+50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017695101ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[1+1] 차앤박 프로폴리스 에센셜 아이크림 50ml 더블기획 (50ml+50ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[1+1] 차앤박 프로폴리스 에센셜 아이크림 50ml 더블기획 (50ml+50ml)';


-- ================================

-- 상품: [판매량 1억개 돌파] AHC 텐 레볼루션 리얼 아이크림 포 페이스 스페셜 퍼밍 세트...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[판매량 1억개 돌파] AHC 텐 레볼루션 리얼 아이크림 포 페이스 스페셜 퍼밍 세트',
 '[판매량 1억개 돌파] AHC 텐 레볼루션 리얼 아이크림 포 페이스 스페셜 퍼밍 세트',
 4.8,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'AHC'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[판매량 1억개 돌파] AHC 텐 레볼루션 리얼 아이크림 포 페이스 스페셜 퍼밍 세트'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[판매량 1억개 돌파] AHC 텐 레볼루션 리얼 아이크림 포 페이스 스페셜 퍼밍 세트'), NOW(), NOW()),
(23000, 'SALE', (SELECT id FROM product WHERE name = '[판매량 1억개 돌파] AHC 텐 레볼루션 리얼 아이크림 포 페이스 스페셜 퍼밍 세트'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017912908ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[판매량 1억개 돌파] AHC 텐 레볼루션 리얼 아이크림 포 페이스 스페셜 퍼밍 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017912909ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[판매량 1억개 돌파] AHC 텐 레볼루션 리얼 아이크림 포 페이스 스페셜 퍼밍 세트'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[판매량 1억개 돌파] AHC 텐 레볼루션 리얼 아이크림 포 페이스 스페셜 퍼밍 세트';


-- ================================

-- 상품: 디오디너리 멀티-펩타이드 아이 세럼 15ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('디오디너리 멀티-펩타이드 아이 세럼 15ml',
 '디오디너리 멀티-펩타이드 아이 세럼 15ml',
 4.6,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '디오디너리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '디오디너리 멀티-펩타이드 아이 세럼 15ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '디오디너리 멀티-펩타이드 아이 세럼 15ml'), NOW(), NOW()),
(38000, 'SALE', (SELECT id FROM product WHERE name = '디오디너리 멀티-펩타이드 아이 세럼 15ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018112104ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '디오디너리 멀티-펩타이드 아이 세럼 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018112103ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '디오디너리 멀티-펩타이드 아이 세럼 15ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '디오디너리 멀티-펩타이드 아이 세럼 15ml';


-- ================================

-- 상품: 시모먼트 아이 리프팅 롤러 세럼 15ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('시모먼트 아이 리프팅 롤러 세럼 15ml',
 '시모먼트 아이 리프팅 롤러 세럼 15ml',
 4.6,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '시모먼트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '시모먼트 아이 리프팅 롤러 세럼 15ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '시모먼트 아이 리프팅 롤러 세럼 15ml'), NOW(), NOW()),
(18700, 'SALE', (SELECT id FROM product WHERE name = '시모먼트 아이 리프팅 롤러 세럼 15ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018491903ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '시모먼트 아이 리프팅 롤러 세럼 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018491905ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '시모먼트 아이 리프팅 롤러 세럼 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018491904ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '시모먼트 아이 리프팅 롤러 세럼 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018491901ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '시모먼트 아이 리프팅 롤러 세럼 15ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '시모먼트 아이 리프팅 롤러 세럼 15ml';


-- ================================

-- 상품: 닥터트웬티프로젝트 리프덤 오토 아이크림20ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('닥터트웬티프로젝트 리프덤 오토 아이크림20ml',
 '닥터트웬티프로젝트 리프덤 오토 아이크림20ml',
 4.9,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터트웬티프로젝트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '닥터트웬티프로젝트 리프덤 오토 아이크림20ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(42000, 'ORIGINAL', (SELECT id FROM product WHERE name = '닥터트웬티프로젝트 리프덤 오토 아이크림20ml'), NOW(), NOW()),
(42000, 'SALE', (SELECT id FROM product WHERE name = '닥터트웬티프로젝트 리프덤 오토 아이크림20ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018580711ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '닥터트웬티프로젝트 리프덤 오토 아이크림20ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018580712ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '닥터트웬티프로젝트 리프덤 오토 아이크림20ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018580701ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '닥터트웬티프로젝트 리프덤 오토 아이크림20ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018580705ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '닥터트웬티프로젝트 리프덤 오토 아이크림20ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018580703ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '닥터트웬티프로젝트 리프덤 오토 아이크림20ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018580710ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '닥터트웬티프로젝트 리프덤 오토 아이크림20ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '닥터트웬티프로젝트 리프덤 오토 아이크림20ml';


-- ================================

-- 상품: [눈가탄력/레티날] 조선미녀 인삼아이크림 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[눈가탄력/레티날] 조선미녀 인삼아이크림 30ml',
 '[눈가탄력/레티날] 조선미녀 인삼아이크림 30ml',
 4.9,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '조선미녀'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[눈가탄력/레티날] 조선미녀 인삼아이크림 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(17000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[눈가탄력/레티날] 조선미녀 인삼아이크림 30ml'), NOW(), NOW()),
(17000, 'SALE', (SELECT id FROM product WHERE name = '[눈가탄력/레티날] 조선미녀 인삼아이크림 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018857025ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[눈가탄력/레티날] 조선미녀 인삼아이크림 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018857024ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[눈가탄력/레티날] 조선미녀 인삼아이크림 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018857023ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[눈가탄력/레티날] 조선미녀 인삼아이크림 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[눈가탄력/레티날] 조선미녀 인삼아이크림 30ml';


-- ================================

-- 상품: [핑크빛생기아이크림]눅스 프로디쥬스 부스트 아이 밤 젤 15ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[핑크빛생기아이크림]눅스 프로디쥬스 부스트 아이 밤 젤 15ml',
 '[핑크빛생기아이크림]눅스 프로디쥬스 부스트 아이 밤 젤 15ml',
 4.8,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '눅스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[핑크빛생기아이크림]눅스 프로디쥬스 부스트 아이 밤 젤 15ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(43000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[핑크빛생기아이크림]눅스 프로디쥬스 부스트 아이 밤 젤 15ml'), NOW(), NOW()),
(38700, 'SALE', (SELECT id FROM product WHERE name = '[핑크빛생기아이크림]눅스 프로디쥬스 부스트 아이 밤 젤 15ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019100803ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[핑크빛생기아이크림]눅스 프로디쥬스 부스트 아이 밤 젤 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019100805ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[핑크빛생기아이크림]눅스 프로디쥬스 부스트 아이 밤 젤 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019100804ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[핑크빛생기아이크림]눅스 프로디쥬스 부스트 아이 밤 젤 15ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[핑크빛생기아이크림]눅스 프로디쥬스 부스트 아이 밤 젤 15ml';


-- ================================

-- 상품: [판매량 1억개 돌파] AHC 텐 레볼루션 리얼 아이크림 포 페이스 35ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[판매량 1억개 돌파] AHC 텐 레볼루션 리얼 아이크림 포 페이스 35ml',
 '[판매량 1억개 돌파] AHC 텐 레볼루션 리얼 아이크림 포 페이스 35ml',
 4.8,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'AHC'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[판매량 1억개 돌파] AHC 텐 레볼루션 리얼 아이크림 포 페이스 35ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[판매량 1억개 돌파] AHC 텐 레볼루션 리얼 아이크림 포 페이스 35ml'), NOW(), NOW()),
(23000, 'SALE', (SELECT id FROM product WHERE name = '[판매량 1억개 돌파] AHC 텐 레볼루션 리얼 아이크림 포 페이스 35ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019173304ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[판매량 1억개 돌파] AHC 텐 레볼루션 리얼 아이크림 포 페이스 35ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019173305ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[판매량 1억개 돌파] AHC 텐 레볼루션 리얼 아이크림 포 페이스 35ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[판매량 1억개 돌파] AHC 텐 레볼루션 리얼 아이크림 포 페이스 35ml';


-- ================================

-- 상품: [10년연속1위] 유세린 하이알루론 3X 아이크림 15ml 기획(+나이트크림 7ml 2개 ...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[10년연속1위] 유세린 하이알루론 3X 아이크림 15ml 기획(+나이트크림 7ml 2개 증정)',
 '[10년연속1위] 유세린 하이알루론 3X 아이크림 15ml 기획(+나이트크림 7ml 2개 증정)',
 4.8,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유세린'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[10년연속1위] 유세린 하이알루론 3X 아이크림 15ml 기획(+나이트크림 7ml 2개 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(53000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[10년연속1위] 유세린 하이알루론 3X 아이크림 15ml 기획(+나이트크림 7ml 2개 증정)'), NOW(), NOW()),
(53000, 'SALE', (SELECT id FROM product WHERE name = '[10년연속1위] 유세린 하이알루론 3X 아이크림 15ml 기획(+나이트크림 7ml 2개 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020045407ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[10년연속1위] 유세린 하이알루론 3X 아이크림 15ml 기획(+나이트크림 7ml 2개 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020045408ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[10년연속1위] 유세린 하이알루론 3X 아이크림 15ml 기획(+나이트크림 7ml 2개 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020045403ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[10년연속1위] 유세린 하이알루론 3X 아이크림 15ml 기획(+나이트크림 7ml 2개 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020045404ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[10년연속1위] 유세린 하이알루론 3X 아이크림 15ml 기획(+나이트크림 7ml 2개 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[10년연속1위] 유세린 하이알루론 3X 아이크림 15ml 기획(+나이트크림 7ml 2개 증정)';


-- ================================

-- 상품: [수분/진정] AHC 프로 샷 히알루로 딥 볼륨 아이크림 포 페이스 30ml 기획 (세럼 ...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분/진정] AHC 프로 샷 히알루로 딥 볼륨 아이크림 포 페이스 30ml 기획 (세럼 +10ml)',
 '[수분/진정] AHC 프로 샷 히알루로 딥 볼륨 아이크림 포 페이스 30ml 기획 (세럼 +10ml)',
 5.0,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'AHC'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분/진정] AHC 프로 샷 히알루로 딥 볼륨 아이크림 포 페이스 30ml 기획 (세럼 +10ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(27000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분/진정] AHC 프로 샷 히알루로 딥 볼륨 아이크림 포 페이스 30ml 기획 (세럼 +10ml)'), NOW(), NOW()),
(27000, 'SALE', (SELECT id FROM product WHERE name = '[수분/진정] AHC 프로 샷 히알루로 딥 볼륨 아이크림 포 페이스 30ml 기획 (세럼 +10ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020458112ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분/진정] AHC 프로 샷 히알루로 딥 볼륨 아이크림 포 페이스 30ml 기획 (세럼 +10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020458110ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분/진정] AHC 프로 샷 히알루로 딥 볼륨 아이크림 포 페이스 30ml 기획 (세럼 +10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020458107ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분/진정] AHC 프로 샷 히알루로 딥 볼륨 아이크림 포 페이스 30ml 기획 (세럼 +10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020458105ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[수분/진정] AHC 프로 샷 히알루로 딥 볼륨 아이크림 포 페이스 30ml 기획 (세럼 +10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020458111ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[수분/진정] AHC 프로 샷 히알루로 딥 볼륨 아이크림 포 페이스 30ml 기획 (세럼 +10ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분/진정] AHC 프로 샷 히알루로 딥 볼륨 아이크림 포 페이스 30ml 기획 (세럼 +10ml)';


-- ================================

-- 상품: [미백/단독기획]AHC 프로샷 글루타 브라이트 아이크림 포페이스 30ml기획 (+세럼10m...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[미백/단독기획]AHC 프로샷 글루타 브라이트 아이크림 포페이스 30ml기획 (+세럼10ml)',
 '[미백/단독기획]AHC 프로샷 글루타 브라이트 아이크림 포페이스 30ml기획 (+세럼10ml)',
 4.9,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'AHC'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[미백/단독기획]AHC 프로샷 글루타 브라이트 아이크림 포페이스 30ml기획 (+세럼10ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[미백/단독기획]AHC 프로샷 글루타 브라이트 아이크림 포페이스 30ml기획 (+세럼10ml)'), NOW(), NOW()),
(29000, 'SALE', (SELECT id FROM product WHERE name = '[미백/단독기획]AHC 프로샷 글루타 브라이트 아이크림 포페이스 30ml기획 (+세럼10ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020474709ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[미백/단독기획]AHC 프로샷 글루타 브라이트 아이크림 포페이스 30ml기획 (+세럼10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020474704ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[미백/단독기획]AHC 프로샷 글루타 브라이트 아이크림 포페이스 30ml기획 (+세럼10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020474713ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[미백/단독기획]AHC 프로샷 글루타 브라이트 아이크림 포페이스 30ml기획 (+세럼10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020474712ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[미백/단독기획]AHC 프로샷 글루타 브라이트 아이크림 포페이스 30ml기획 (+세럼10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020474711ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[미백/단독기획]AHC 프로샷 글루타 브라이트 아이크림 포페이스 30ml기획 (+세럼10ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[미백/단독기획]AHC 프로샷 글루타 브라이트 아이크림 포페이스 30ml기획 (+세럼10ml)';


-- ================================

-- 상품: [눈가탄력] 바이오힐 보 프로바이오덤 3D 리프팅 아이&링클 크림 25ml [더블기획]...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[눈가탄력] 바이오힐 보 프로바이오덤 3D 리프팅 아이&링클 크림 25ml [더블기획]',
 '[눈가탄력] 바이오힐 보 프로바이오덤 3D 리프팅 아이&링클 크림 25ml [더블기획]',
 4.8,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오힐보'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[눈가탄력] 바이오힐 보 프로바이오덤 3D 리프팅 아이&링클 크림 25ml [더블기획]'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[눈가탄력] 바이오힐 보 프로바이오덤 3D 리프팅 아이&링클 크림 25ml [더블기획]'), NOW(), NOW()),
(24500, 'SALE', (SELECT id FROM product WHERE name = '[눈가탄력] 바이오힐 보 프로바이오덤 3D 리프팅 아이&링클 크림 25ml [더블기획]'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020657204ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[눈가탄력] 바이오힐 보 프로바이오덤 3D 리프팅 아이&링클 크림 25ml [더블기획]'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020657206ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[눈가탄력] 바이오힐 보 프로바이오덤 3D 리프팅 아이&링클 크림 25ml [더블기획]'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020657205ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[눈가탄력] 바이오힐 보 프로바이오덤 3D 리프팅 아이&링클 크림 25ml [더블기획]'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020657203ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[눈가탄력] 바이오힐 보 프로바이오덤 3D 리프팅 아이&링클 크림 25ml [더블기획]'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020657202ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[눈가탄력] 바이오힐 보 프로바이오덤 3D 리프팅 아이&링클 크림 25ml [더블기획]'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020657201ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[눈가탄력] 바이오힐 보 프로바이오덤 3D 리프팅 아이&링클 크림 25ml [더블기획]'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[눈가탄력] 바이오힐 보 프로바이오덤 3D 리프팅 아이&링클 크림 25ml [더블기획]';


-- ================================

-- 상품: 에스트라 리제덤365 레티노이드 아이세럼 15ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('에스트라 리제덤365 레티노이드 아이세럼 15ml',
 '에스트라 리제덤365 레티노이드 아이세럼 15ml',
 4.9,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에스트라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '에스트라 리제덤365 레티노이드 아이세럼 15ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '에스트라 리제덤365 레티노이드 아이세럼 15ml'), NOW(), NOW()),
(29700, 'SALE', (SELECT id FROM product WHERE name = '에스트라 리제덤365 레티노이드 아이세럼 15ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021049502ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '에스트라 리제덤365 레티노이드 아이세럼 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021049503ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '에스트라 리제덤365 레티노이드 아이세럼 15ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '에스트라 리제덤365 레티노이드 아이세럼 15ml';


-- ================================

-- 상품: [주름 강력개선]LBB 인텐시브 모이스처라이징 아이크림 15ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[주름 강력개선]LBB 인텐시브 모이스처라이징 아이크림 15ml',
 '[주름 강력개선]LBB 인텐시브 모이스처라이징 아이크림 15ml',
 5.0,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'LBB'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[주름 강력개선]LBB 인텐시브 모이스처라이징 아이크림 15ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(48000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[주름 강력개선]LBB 인텐시브 모이스처라이징 아이크림 15ml'), NOW(), NOW()),
(43200, 'SALE', (SELECT id FROM product WHERE name = '[주름 강력개선]LBB 인텐시브 모이스처라이징 아이크림 15ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021192809ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[주름 강력개선]LBB 인텐시브 모이스처라이징 아이크림 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021192805ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[주름 강력개선]LBB 인텐시브 모이스처라이징 아이크림 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021192806ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[주름 강력개선]LBB 인텐시브 모이스처라이징 아이크림 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021192807ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[주름 강력개선]LBB 인텐시브 모이스처라이징 아이크림 15ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[주름 강력개선]LBB 인텐시브 모이스처라이징 아이크림 15ml';


-- ================================

-- 상품: 센텔리안24 링클셀 코어 아이크림 알엑스 30ml 기획 (+10ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('센텔리안24 링클셀 코어 아이크림 알엑스 30ml 기획 (+10ml)',
 '센텔리안24 링클셀 코어 아이크림 알엑스 30ml 기획 (+10ml)',
 4.8,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '센텔리안24'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '센텔리안24 링클셀 코어 아이크림 알엑스 30ml 기획 (+10ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39000, 'ORIGINAL', (SELECT id FROM product WHERE name = '센텔리안24 링클셀 코어 아이크림 알엑스 30ml 기획 (+10ml)'), NOW(), NOW()),
(19500, 'SALE', (SELECT id FROM product WHERE name = '센텔리안24 링클셀 코어 아이크림 알엑스 30ml 기획 (+10ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021201803ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '센텔리안24 링클셀 코어 아이크림 알엑스 30ml 기획 (+10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021201802ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '센텔리안24 링클셀 코어 아이크림 알엑스 30ml 기획 (+10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021201801ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '센텔리안24 링클셀 코어 아이크림 알엑스 30ml 기획 (+10ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '센텔리안24 링클셀 코어 아이크림 알엑스 30ml 기획 (+10ml)';


-- ================================

-- 상품: [눈가탄력UP] 빌리프 아쿠아 밤 아이젤 15ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[눈가탄력UP] 빌리프 아쿠아 밤 아이젤 15ml',
 '[눈가탄력UP] 빌리프 아쿠아 밤 아이젤 15ml',
 4.9,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '빌리프'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[눈가탄력UP] 빌리프 아쿠아 밤 아이젤 15ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[눈가탄력UP] 빌리프 아쿠아 밤 아이젤 15ml'), NOW(), NOW()),
(35000, 'SALE', (SELECT id FROM product WHERE name = '[눈가탄력UP] 빌리프 아쿠아 밤 아이젤 15ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021288207ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[눈가탄력UP] 빌리프 아쿠아 밤 아이젤 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021288202ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[눈가탄력UP] 빌리프 아쿠아 밤 아이젤 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021288201ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[눈가탄력UP] 빌리프 아쿠아 밤 아이젤 15ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[눈가탄력UP] 빌리프 아쿠아 밤 아이젤 15ml';


-- ================================

-- 상품: 키엘 파워풀 스트렝스 라인 리듀싱 다크서클 디미니싱 비타민C 아이세럼 15ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('키엘 파워풀 스트렝스 라인 리듀싱 다크서클 디미니싱 비타민C 아이세럼 15ml',
 '키엘 파워풀 스트렝스 라인 리듀싱 다크서클 디미니싱 비타민C 아이세럼 15ml',
 4.8,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '키엘'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '키엘 파워풀 스트렝스 라인 리듀싱 다크서클 디미니싱 비타민C 아이세럼 15ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(95000, 'ORIGINAL', (SELECT id FROM product WHERE name = '키엘 파워풀 스트렝스 라인 리듀싱 다크서클 디미니싱 비타민C 아이세럼 15ml'), NOW(), NOW()),
(80750, 'SALE', (SELECT id FROM product WHERE name = '키엘 파워풀 스트렝스 라인 리듀싱 다크서클 디미니싱 비타민C 아이세럼 15ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021426206ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '키엘 파워풀 스트렝스 라인 리듀싱 다크서클 디미니싱 비타민C 아이세럼 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021426203ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '키엘 파워풀 스트렝스 라인 리듀싱 다크서클 디미니싱 비타민C 아이세럼 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021426201ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '키엘 파워풀 스트렝스 라인 리듀싱 다크서클 디미니싱 비타민C 아이세럼 15ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '키엘 파워풀 스트렝스 라인 리듀싱 다크서클 디미니싱 비타민C 아이세럼 15ml';


-- ================================

-- 상품: [보습크림]닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 아이크림 15ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[보습크림]닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 아이크림 15ml',
 '[보습크림]닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 아이크림 15ml',
 4.9,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터자르트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[보습크림]닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 아이크림 15ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(45000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[보습크림]닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 아이크림 15ml'), NOW(), NOW()),
(45000, 'SALE', (SELECT id FROM product WHERE name = '[보습크림]닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 아이크림 15ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021431506ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[보습크림]닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 아이크림 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021431503ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[보습크림]닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 아이크림 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021431507ko.jpeg?l=ko', 3, (SELECT id FROM product WHERE name = '[보습크림]닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 아이크림 15ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[보습크림]닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 아이크림 15ml';


-- ================================

-- 상품: [보습크림/한정기획] 닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 아이크림 15ml 기...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[보습크림/한정기획] 닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 아이크림 15ml 기획',
 '[보습크림/한정기획] 닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 아이크림 15ml 기획',
 4.9,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터자르트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[보습크림/한정기획] 닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 아이크림 15ml 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(45000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[보습크림/한정기획] 닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 아이크림 15ml 기획'), NOW(), NOW()),
(22320, 'SALE', (SELECT id FROM product WHERE name = '[보습크림/한정기획] 닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 아이크림 15ml 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021622411ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[보습크림/한정기획] 닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 아이크림 15ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021622410ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[보습크림/한정기획] 닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 아이크림 15ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021622406ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[보습크림/한정기획] 닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 아이크림 15ml 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[보습크림/한정기획] 닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 아이크림 15ml 기획';


-- ================================

-- 상품: [NEW] 브링그린 슈퍼레몬글루타치온아이크림 30mL 더블기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW] 브링그린 슈퍼레몬글루타치온아이크림 30mL 더블기획',
 '[NEW] 브링그린 슈퍼레몬글루타치온아이크림 30mL 더블기획',
 4.7,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '브링그린'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW] 브링그린 슈퍼레몬글루타치온아이크림 30mL 더블기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW] 브링그린 슈퍼레몬글루타치온아이크림 30mL 더블기획'), NOW(), NOW()),
(14400, 'SALE', (SELECT id FROM product WHERE name = '[NEW] 브링그린 슈퍼레몬글루타치온아이크림 30mL 더블기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021640505ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW] 브링그린 슈퍼레몬글루타치온아이크림 30mL 더블기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021640506ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW] 브링그린 슈퍼레몬글루타치온아이크림 30mL 더블기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021640503ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW] 브링그린 슈퍼레몬글루타치온아이크림 30mL 더블기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021640504ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[NEW] 브링그린 슈퍼레몬글루타치온아이크림 30mL 더블기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW] 브링그린 슈퍼레몬글루타치온아이크림 30mL 더블기획';


-- ================================

-- 상품: [한유진PICK/화해1위] 비원츠 펩타이드 엑스 퍼밍 아이세럼스틱 15ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[한유진PICK/화해1위] 비원츠 펩타이드 엑스 퍼밍 아이세럼스틱 15ml',
 '[한유진PICK/화해1위] 비원츠 펩타이드 엑스 퍼밍 아이세럼스틱 15ml',
 4.9,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비원츠'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('단품 세럼스틱', 25600, (SELECT id FROM product WHERE name = '[한유진PICK/화해1위] 비원츠 펩타이드 엑스 퍼밍 아이세럼스틱 15ml'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('1+1리필기획 세럼스틱 (+눙눙이굿즈)', 37000, (SELECT id FROM product WHERE name = '[한유진PICK/화해1위] 비원츠 펩타이드 엑스 퍼밍 아이세럼스틱 15ml'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('1+1리필기획 세럼 스틱', 37000, (SELECT id FROM product WHERE name = '[한유진PICK/화해1위] 비원츠 펩타이드 엑스 퍼밍 아이세럼스틱 15ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[한유진PICK/화해1위] 비원츠 펩타이드 엑스 퍼밍 아이세럼스틱 15ml'), NOW(), NOW()),
(25600, 'SALE', (SELECT id FROM product WHERE name = '[한유진PICK/화해1위] 비원츠 펩타이드 엑스 퍼밍 아이세럼스틱 15ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021947511ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[한유진PICK/화해1위] 비원츠 펩타이드 엑스 퍼밍 아이세럼스틱 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021947505ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[한유진PICK/화해1위] 비원츠 펩타이드 엑스 퍼밍 아이세럼스틱 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021947504ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[한유진PICK/화해1위] 비원츠 펩타이드 엑스 퍼밍 아이세럼스틱 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021947502ko.png?l=ko', 4, (SELECT id FROM product WHERE name = '[한유진PICK/화해1위] 비원츠 펩타이드 엑스 퍼밍 아이세럼스틱 15ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[한유진PICK/화해1위] 비원츠 펩타이드 엑스 퍼밍 아이세럼스틱 15ml';


-- ================================

-- 상품: [눈가생기] 이니스프리 그린티 히알루론산 글로우 아이&페이스볼 10ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[눈가생기] 이니스프리 그린티 히알루론산 글로우 아이&페이스볼 10ml',
 '[눈가생기] 이니스프리 그린티 히알루론산 글로우 아이&페이스볼 10ml',
 4.5,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '이니스프리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[눈가생기] 이니스프리 그린티 히알루론산 글로우 아이&페이스볼 10ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[눈가생기] 이니스프리 그린티 히알루론산 글로우 아이&페이스볼 10ml'), NOW(), NOW()),
(17250, 'SALE', (SELECT id FROM product WHERE name = '[눈가생기] 이니스프리 그린티 히알루론산 글로우 아이&페이스볼 10ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022263802ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[눈가생기] 이니스프리 그린티 히알루론산 글로우 아이&페이스볼 10ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022263803ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[눈가생기] 이니스프리 그린티 히알루론산 글로우 아이&페이스볼 10ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022263804ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[눈가생기] 이니스프리 그린티 히알루론산 글로우 아이&페이스볼 10ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[눈가생기] 이니스프리 그린티 히알루론산 글로우 아이&페이스볼 10ml';


-- ================================

-- 상품: 스킨1004 마다가스카르 센텔라 프로바이오시카 바쿠치올 아이 크림 20ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('스킨1004 마다가스카르 센텔라 프로바이오시카 바쿠치올 아이 크림 20ml',
 '스킨1004 마다가스카르 센텔라 프로바이오시카 바쿠치올 아이 크림 20ml',
 5.0,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '스킨1004'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '스킨1004 마다가스카르 센텔라 프로바이오시카 바쿠치올 아이 크림 20ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '스킨1004 마다가스카르 센텔라 프로바이오시카 바쿠치올 아이 크림 20ml'), NOW(), NOW()),
(22100, 'SALE', (SELECT id FROM product WHERE name = '스킨1004 마다가스카르 센텔라 프로바이오시카 바쿠치올 아이 크림 20ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022424201ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '스킨1004 마다가스카르 센텔라 프로바이오시카 바쿠치올 아이 크림 20ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '스킨1004 마다가스카르 센텔라 프로바이오시카 바쿠치올 아이 크림 20ml';


-- ================================

-- 상품: 닥터멜락신 아이팔트 아이백 아이크림 10ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('닥터멜락신 아이팔트 아이백 아이크림 10ml',
 '닥터멜락신 아이팔트 아이백 아이크림 10ml',
 4.9,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터멜락신'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '닥터멜락신 아이팔트 아이백 아이크림 10ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30900, 'ORIGINAL', (SELECT id FROM product WHERE name = '닥터멜락신 아이팔트 아이백 아이크림 10ml'), NOW(), NOW()),
(25900, 'SALE', (SELECT id FROM product WHERE name = '닥터멜락신 아이팔트 아이백 아이크림 10ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022449905ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '닥터멜락신 아이팔트 아이백 아이크림 10ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022449903ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '닥터멜락신 아이팔트 아이백 아이크림 10ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022449901ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '닥터멜락신 아이팔트 아이백 아이크림 10ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '닥터멜락신 아이팔트 아이백 아이크림 10ml';


-- ================================

-- 상품: [한유진Pick/1+1리필기획] 비원츠 펩타이드X 퍼밍 아이세럼스틱 리필기획(15ml+15...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[한유진Pick/1+1리필기획] 비원츠 펩타이드X 퍼밍 아이세럼스틱 리필기획(15ml+15ml)',
 '[한유진Pick/1+1리필기획] 비원츠 펩타이드X 퍼밍 아이세럼스틱 리필기획(15ml+15ml)',
 4.9,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비원츠'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('1+1 리필기획 세럼스틱', 37000, (SELECT id FROM product WHERE name = '[한유진Pick/1+1리필기획] 비원츠 펩타이드X 퍼밍 아이세럼스틱 리필기획(15ml+15ml)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('(눙눙이굿즈) 1+1 리필기획 세럼스틱', 37000, (SELECT id FROM product WHERE name = '[한유진Pick/1+1리필기획] 비원츠 펩타이드X 퍼밍 아이세럼스틱 리필기획(15ml+15ml)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('단품 세럼스틱', 25600, (SELECT id FROM product WHERE name = '[한유진Pick/1+1리필기획] 비원츠 펩타이드X 퍼밍 아이세럼스틱 리필기획(15ml+15ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(37000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[한유진Pick/1+1리필기획] 비원츠 펩타이드X 퍼밍 아이세럼스틱 리필기획(15ml+15ml)'), NOW(), NOW()),
(37000, 'SALE', (SELECT id FROM product WHERE name = '[한유진Pick/1+1리필기획] 비원츠 펩타이드X 퍼밍 아이세럼스틱 리필기획(15ml+15ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022452410ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[한유진Pick/1+1리필기획] 비원츠 펩타이드X 퍼밍 아이세럼스틱 리필기획(15ml+15ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022452409ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[한유진Pick/1+1리필기획] 비원츠 펩타이드X 퍼밍 아이세럼스틱 리필기획(15ml+15ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022452407ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[한유진Pick/1+1리필기획] 비원츠 펩타이드X 퍼밍 아이세럼스틱 리필기획(15ml+15ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022452405ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[한유진Pick/1+1리필기획] 비원츠 펩타이드X 퍼밍 아이세럼스틱 리필기획(15ml+15ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022452401ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[한유진Pick/1+1리필기획] 비원츠 펩타이드X 퍼밍 아이세럼스틱 리필기획(15ml+15ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022452403ko.png?l=ko', 6, (SELECT id FROM product WHERE name = '[한유진Pick/1+1리필기획] 비원츠 펩타이드X 퍼밍 아이세럼스틱 리필기획(15ml+15ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[한유진Pick/1+1리필기획] 비원츠 펩타이드X 퍼밍 아이세럼스틱 리필기획(15ml+15ml)';


-- ================================

-- 상품: [1+1리필기획/눙눙이 Pick] 비원츠 펩타이드 엑스 퍼밍 아이세럼스틱 리필기획 (+눙눙...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[1+1리필기획/눙눙이 Pick] 비원츠 펩타이드 엑스 퍼밍 아이세럼스틱 리필기획 (+눙눙이 키링&부적 증정)',
 '[1+1리필기획/눙눙이 Pick] 비원츠 펩타이드 엑스 퍼밍 아이세럼스틱 리필기획 (+눙눙이 키링&부적 증정)',
 4.9,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비원츠'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('(눙눙이) 1+1 리필기획 세럼 스틱', 37000, (SELECT id FROM product WHERE name = '[1+1리필기획/눙눙이 Pick] 비원츠 펩타이드 엑스 퍼밍 아이세럼스틱 리필기획 (+눙눙이 키링&부적 증정)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('단품 세럼스틱', 25600, (SELECT id FROM product WHERE name = '[1+1리필기획/눙눙이 Pick] 비원츠 펩타이드 엑스 퍼밍 아이세럼스틱 리필기획 (+눙눙이 키링&부적 증정)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('(눙눙이) 단품 세럼 패치', 24000, (SELECT id FROM product WHERE name = '[1+1리필기획/눙눙이 Pick] 비원츠 펩타이드 엑스 퍼밍 아이세럼스틱 리필기획 (+눙눙이 키링&부적 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(37000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1+1리필기획/눙눙이 Pick] 비원츠 펩타이드 엑스 퍼밍 아이세럼스틱 리필기획 (+눙눙이 키링&부적 증정)'), NOW(), NOW()),
(37000, 'SALE', (SELECT id FROM product WHERE name = '[1+1리필기획/눙눙이 Pick] 비원츠 펩타이드 엑스 퍼밍 아이세럼스틱 리필기획 (+눙눙이 키링&부적 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022889412ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[1+1리필기획/눙눙이 Pick] 비원츠 펩타이드 엑스 퍼밍 아이세럼스틱 리필기획 (+눙눙이 키링&부적 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022889413ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[1+1리필기획/눙눙이 Pick] 비원츠 펩타이드 엑스 퍼밍 아이세럼스틱 리필기획 (+눙눙이 키링&부적 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022889408ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[1+1리필기획/눙눙이 Pick] 비원츠 펩타이드 엑스 퍼밍 아이세럼스틱 리필기획 (+눙눙이 키링&부적 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022889411ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[1+1리필기획/눙눙이 Pick] 비원츠 펩타이드 엑스 퍼밍 아이세럼스틱 리필기획 (+눙눙이 키링&부적 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022889403ko.png?l=ko', 5, (SELECT id FROM product WHERE name = '[1+1리필기획/눙눙이 Pick] 비원츠 펩타이드 엑스 퍼밍 아이세럼스틱 리필기획 (+눙눙이 키링&부적 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022889401ko.png?l=ko', 6, (SELECT id FROM product WHERE name = '[1+1리필기획/눙눙이 Pick] 비원츠 펩타이드 엑스 퍼밍 아이세럼스틱 리필기획 (+눙눙이 키링&부적 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[1+1리필기획/눙눙이 Pick] 비원츠 펩타이드 엑스 퍼밍 아이세럼스틱 리필기획 (+눙눙이 키링&부적 증정)';


-- ================================

-- 상품: 랑콤 제니피끄 얼티미트 아이 크림 20ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('랑콤 제니피끄 얼티미트 아이 크림 20ml',
 '랑콤 제니피끄 얼티미트 아이 크림 20ml',
 4.8,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '랑콤'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '랑콤 제니피끄 얼티미트 아이 크림 20ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(125000, 'ORIGINAL', (SELECT id FROM product WHERE name = '랑콤 제니피끄 얼티미트 아이 크림 20ml'), NOW(), NOW()),
(106250, 'SALE', (SELECT id FROM product WHERE name = '랑콤 제니피끄 얼티미트 아이 크림 20ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022922210ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '랑콤 제니피끄 얼티미트 아이 크림 20ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022922203ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '랑콤 제니피끄 얼티미트 아이 크림 20ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022922208ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '랑콤 제니피끄 얼티미트 아이 크림 20ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022922202ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '랑콤 제니피끄 얼티미트 아이 크림 20ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022922204ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '랑콤 제니피끄 얼티미트 아이 크림 20ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022922205ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '랑콤 제니피끄 얼티미트 아이 크림 20ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '랑콤 제니피끄 얼티미트 아이 크림 20ml';


-- ================================

-- 상품: 닥터멜락신 아이팔트 레티놀 아이백 아이크림 10g...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('닥터멜락신 아이팔트 레티놀 아이백 아이크림 10g',
 '닥터멜락신 아이팔트 레티놀 아이백 아이크림 10g',
 5.0,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터멜락신'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '닥터멜락신 아이팔트 레티놀 아이백 아이크림 10g'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30900, 'ORIGINAL', (SELECT id FROM product WHERE name = '닥터멜락신 아이팔트 레티놀 아이백 아이크림 10g'), NOW(), NOW()),
(27900, 'SALE', (SELECT id FROM product WHERE name = '닥터멜락신 아이팔트 레티놀 아이백 아이크림 10g'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022959102ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '닥터멜락신 아이팔트 레티놀 아이백 아이크림 10g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022959101ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '닥터멜락신 아이팔트 레티놀 아이백 아이크림 10g'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '닥터멜락신 아이팔트 레티놀 아이백 아이크림 10g';


-- ================================

-- 상품: [NEW/단백질 요거트] 에스네이처 아쿠아 스쿠알란 판테놀 아이크림 포 페이스 밤 25g...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW/단백질 요거트] 에스네이처 아쿠아 스쿠알란 판테놀 아이크림 포 페이스 밤 25g',
 '[NEW/단백질 요거트] 에스네이처 아쿠아 스쿠알란 판테놀 아이크림 포 페이스 밤 25g',
 4.9,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에스네이처'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW/단백질 요거트] 에스네이처 아쿠아 스쿠알란 판테놀 아이크림 포 페이스 밤 25g'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(34000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW/단백질 요거트] 에스네이처 아쿠아 스쿠알란 판테놀 아이크림 포 페이스 밤 25g'), NOW(), NOW()),
(17900, 'SALE', (SELECT id FROM product WHERE name = '[NEW/단백질 요거트] 에스네이처 아쿠아 스쿠알란 판테놀 아이크림 포 페이스 밤 25g'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023091760ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW/단백질 요거트] 에스네이처 아쿠아 스쿠알란 판테놀 아이크림 포 페이스 밤 25g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023091751ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW/단백질 요거트] 에스네이처 아쿠아 스쿠알란 판테놀 아이크림 포 페이스 밤 25g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023091752ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW/단백질 요거트] 에스네이처 아쿠아 스쿠알란 판테놀 아이크림 포 페이스 밤 25g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023091749ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[NEW/단백질 요거트] 에스네이처 아쿠아 스쿠알란 판테놀 아이크림 포 페이스 밤 25g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023091750ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[NEW/단백질 요거트] 에스네이처 아쿠아 스쿠알란 판테놀 아이크림 포 페이스 밤 25g'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW/단백질 요거트] 에스네이처 아쿠아 스쿠알란 판테놀 아이크림 포 페이스 밤 25g';


-- ================================

-- 상품: AXIS-Y 비건 콜라겐 아이 세럼 10ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('AXIS-Y 비건 콜라겐 아이 세럼 10ml',
 'AXIS-Y 비건 콜라겐 아이 세럼 10ml',
 0.0,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'AXIS-Y'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = 'AXIS-Y 비건 콜라겐 아이 세럼 10ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = 'AXIS-Y 비건 콜라겐 아이 세럼 10ml'), NOW(), NOW()),
(21900, 'SALE', (SELECT id FROM product WHERE name = 'AXIS-Y 비건 콜라겐 아이 세럼 10ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023180001ko.png?l=ko', 1, (SELECT id FROM product WHERE name = 'AXIS-Y 비건 콜라겐 아이 세럼 10ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = 'AXIS-Y 비건 콜라겐 아이 세럼 10ml';


-- ================================

-- 상품: [눈가탄력/레티날] 조선미녀 인삼아이크림 30ml 2입 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[눈가탄력/레티날] 조선미녀 인삼아이크림 30ml 2입 기획',
 '[눈가탄력/레티날] 조선미녀 인삼아이크림 30ml 2입 기획',
 4.9,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '조선미녀'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[눈가탄력/레티날] 조선미녀 인삼아이크림 30ml 2입 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[눈가탄력/레티날] 조선미녀 인삼아이크림 30ml 2입 기획'), NOW(), NOW()),
(27500, 'SALE', (SELECT id FROM product WHERE name = '[눈가탄력/레티날] 조선미녀 인삼아이크림 30ml 2입 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023197805ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[눈가탄력/레티날] 조선미녀 인삼아이크림 30ml 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023197804ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[눈가탄력/레티날] 조선미녀 인삼아이크림 30ml 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023197802ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[눈가탄력/레티날] 조선미녀 인삼아이크림 30ml 2입 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[눈가탄력/레티날] 조선미녀 인삼아이크림 30ml 2입 기획';


-- ================================

-- 상품: 크리니크 모이스춰 써지 아이 96-아워 하이드로 컨센트레이트 15ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('크리니크 모이스춰 써지 아이 96-아워 하이드로 컨센트레이트 15ml',
 '크리니크 모이스춰 써지 아이 96-아워 하이드로 컨센트레이트 15ml',
 4.5,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '크리니크'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '크리니크 모이스춰 써지 아이 96-아워 하이드로 컨센트레이트 15ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(70000, 'ORIGINAL', (SELECT id FROM product WHERE name = '크리니크 모이스춰 써지 아이 96-아워 하이드로 컨센트레이트 15ml'), NOW(), NOW()),
(59500, 'SALE', (SELECT id FROM product WHERE name = '크리니크 모이스춰 써지 아이 96-아워 하이드로 컨센트레이트 15ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013083802ko.jpeg?l=ko', 1, (SELECT id FROM product WHERE name = '크리니크 모이스춰 써지 아이 96-아워 하이드로 컨센트레이트 15ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '크리니크 모이스춰 써지 아이 96-아워 하이드로 컨센트레이트 15ml';


-- ================================

-- 상품: 코스노리 비건 아보카도 아이크림 (본품30ml+15ml 증정)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('코스노리 비건 아보카도 아이크림 (본품30ml+15ml 증정)',
 '코스노리 비건 아보카도 아이크림 (본품30ml+15ml 증정)',
 4.8,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '코스노리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '코스노리 비건 아보카도 아이크림 (본품30ml+15ml 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(20000, 'ORIGINAL', (SELECT id FROM product WHERE name = '코스노리 비건 아보카도 아이크림 (본품30ml+15ml 증정)'), NOW(), NOW()),
(17000, 'SALE', (SELECT id FROM product WHERE name = '코스노리 비건 아보카도 아이크림 (본품30ml+15ml 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016093916ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '코스노리 비건 아보카도 아이크림 (본품30ml+15ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016093917ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '코스노리 비건 아보카도 아이크림 (본품30ml+15ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016093915ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '코스노리 비건 아보카도 아이크림 (본품30ml+15ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016093920ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '코스노리 비건 아보카도 아이크림 (본품30ml+15ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016093919ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '코스노리 비건 아보카도 아이크림 (본품30ml+15ml 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '코스노리 비건 아보카도 아이크림 (본품30ml+15ml 증정)';


-- ================================

-- 상품: 에스티 로더 어드밴스드 나이트 리페어 아이 컨센트레이트 매트릭스 15ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('에스티 로더 어드밴스드 나이트 리페어 아이 컨센트레이트 매트릭스 15ml',
 '에스티 로더 어드밴스드 나이트 리페어 아이 컨센트레이트 매트릭스 15ml',
 4.9,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에스티로더'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '에스티 로더 어드밴스드 나이트 리페어 아이 컨센트레이트 매트릭스 15ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(145000, 'ORIGINAL', (SELECT id FROM product WHERE name = '에스티 로더 어드밴스드 나이트 리페어 아이 컨센트레이트 매트릭스 15ml'), NOW(), NOW()),
(123250, 'SALE', (SELECT id FROM product WHERE name = '에스티 로더 어드밴스드 나이트 리페어 아이 컨센트레이트 매트릭스 15ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016412103ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '에스티 로더 어드밴스드 나이트 리페어 아이 컨센트레이트 매트릭스 15ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '에스티 로더 어드밴스드 나이트 리페어 아이 컨센트레이트 매트릭스 15ml';


-- ================================

-- 상품: [10주년기념출시] AHC 텐션 아이크림 스틱 포 페이스 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[10주년기념출시] AHC 텐션 아이크림 스틱 포 페이스 기획',
 '[10주년기념출시] AHC 텐션 아이크림 스틱 포 페이스 기획',
 4.7,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'AHC'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[10주년기념출시] AHC 텐션 아이크림 스틱 포 페이스 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[10주년기념출시] AHC 텐션 아이크림 스틱 포 페이스 기획'), NOW(), NOW()),
(19890, 'SALE', (SELECT id FROM product WHERE name = '[10주년기념출시] AHC 텐션 아이크림 스틱 포 페이스 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016519208ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[10주년기념출시] AHC 텐션 아이크림 스틱 포 페이스 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016519209ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[10주년기념출시] AHC 텐션 아이크림 스틱 포 페이스 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[10주년기념출시] AHC 텐션 아이크림 스틱 포 페이스 기획';


-- ================================

-- 상품: 샤이샤이샤이 바나나 컨실 아이크림 15g...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('샤이샤이샤이 바나나 컨실 아이크림 15g',
 '샤이샤이샤이 바나나 컨실 아이크림 15g',
 4.5,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '샤이샤이샤이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '샤이샤이샤이 바나나 컨실 아이크림 15g'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '샤이샤이샤이 바나나 컨실 아이크림 15g'), NOW(), NOW()),
(26000, 'SALE', (SELECT id FROM product WHERE name = '샤이샤이샤이 바나나 컨실 아이크림 15g'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017137436ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '샤이샤이샤이 바나나 컨실 아이크림 15g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017137435ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '샤이샤이샤이 바나나 컨실 아이크림 15g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017137434ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '샤이샤이샤이 바나나 컨실 아이크림 15g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017137433ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '샤이샤이샤이 바나나 컨실 아이크림 15g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017137432ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '샤이샤이샤이 바나나 컨실 아이크림 15g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017137430ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '샤이샤이샤이 바나나 컨실 아이크림 15g'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '샤이샤이샤이 바나나 컨실 아이크림 15g';


-- ================================

-- 상품: AHC 유스 래스팅 리얼 아이크림 포 페이스 35ML...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('AHC 유스 래스팅 리얼 아이크림 포 페이스 35ML',
 'AHC 유스 래스팅 리얼 아이크림 포 페이스 35ML',
 4.8,
 (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'AHC'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = 'AHC 유스 래스팅 리얼 아이크림 포 페이스 35ML'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = 'AHC 유스 래스팅 리얼 아이크림 포 페이스 35ML'), NOW(), NOW()),
(11900, 'SALE', (SELECT id FROM product WHERE name = 'AHC 유스 래스팅 리얼 아이크림 포 페이스 35ML'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018055904ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = 'AHC 유스 래스팅 리얼 아이크림 포 페이스 35ML'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018055901ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = 'AHC 유스 래스팅 리얼 아이크림 포 페이스 35ML'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = 'AHC 유스 래스팅 리얼 아이크림 포 페이스 35ML';


-- ================================

-- ================================
