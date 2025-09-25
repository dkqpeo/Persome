-- 상품: 설화수 탄력 3종 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('설화수 탄력 3종 기획',
 '설화수 탄력 3종 기획',
 4.9,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '설화수'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('탄력 3종 기획', 193500, (SELECT id FROM product WHERE name = '설화수 탄력 3종 기획'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[지함보포장] 탄력 3종 기획', 193500, (SELECT id FROM product WHERE name = '설화수 탄력 3종 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(215000, 'ORIGINAL', (SELECT id FROM product WHERE name = '설화수 탄력 3종 기획'), NOW(), NOW()),
(193500, 'SALE', (SELECT id FROM product WHERE name = '설화수 탄력 3종 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020463549ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '설화수 탄력 3종 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020463550ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '설화수 탄력 3종 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020463539ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '설화수 탄력 3종 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020463531ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '설화수 탄력 3종 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020463540ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '설화수 탄력 3종 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020463541ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '설화수 탄력 3종 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '설화수 탄력 3종 기획';


-- ================================

-- 상품: [탄탄세트] 바이오힐 보 프로바이오덤 3D 리프팅 스킨케어 2종 기획 (에센셜 토너 150...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[탄탄세트] 바이오힐 보 프로바이오덤 3D 리프팅 스킨케어 2종 기획 (에센셜 토너 150ml+에멀전 150ml)',
 '[탄탄세트] 바이오힐 보 프로바이오덤 3D 리프팅 스킨케어 2종 기획 (에센셜 토너 150ml+에멀전 150ml)',
 4.9,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오힐보'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[탄탄세트] 바이오힐 보 프로바이오덤 3D 리프팅 스킨케어 2종 기획 (에센셜 토너 150ml+에멀전 150ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(54000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[탄탄세트] 바이오힐 보 프로바이오덤 3D 리프팅 스킨케어 2종 기획 (에센셜 토너 150ml+에멀전 150ml)'), NOW(), NOW()),
(35910, 'SALE', (SELECT id FROM product WHERE name = '[탄탄세트] 바이오힐 보 프로바이오덤 3D 리프팅 스킨케어 2종 기획 (에센셜 토너 150ml+에멀전 150ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020325009ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[탄탄세트] 바이오힐 보 프로바이오덤 3D 리프팅 스킨케어 2종 기획 (에센셜 토너 150ml+에멀전 150ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020325010ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[탄탄세트] 바이오힐 보 프로바이오덤 3D 리프팅 스킨케어 2종 기획 (에센셜 토너 150ml+에멀전 150ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020325007ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[탄탄세트] 바이오힐 보 프로바이오덤 3D 리프팅 스킨케어 2종 기획 (에센셜 토너 150ml+에멀전 150ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020325002ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[탄탄세트] 바이오힐 보 프로바이오덤 3D 리프팅 스킨케어 2종 기획 (에센셜 토너 150ml+에멀전 150ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020325004ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[탄탄세트] 바이오힐 보 프로바이오덤 3D 리프팅 스킨케어 2종 기획 (에센셜 토너 150ml+에멀전 150ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020325003ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[탄탄세트] 바이오힐 보 프로바이오덤 3D 리프팅 스킨케어 2종 기획 (에센셜 토너 150ml+에멀전 150ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[탄탄세트] 바이오힐 보 프로바이오덤 3D 리프팅 스킨케어 2종 기획 (에센셜 토너 150ml+에멀전 150ml)';


-- ================================

-- 상품: [토닝세트] 바이오힐 보 비타시너지 기미잡티 토닝 스킨케어 2종 (토닝토너 150ml+토닝...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[토닝세트] 바이오힐 보 비타시너지 기미잡티 토닝 스킨케어 2종 (토닝토너 150ml+토닝크림 150ml)',
 '[토닝세트] 바이오힐 보 비타시너지 기미잡티 토닝 스킨케어 2종 (토닝토너 150ml+토닝크림 150ml)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오힐보'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[토닝세트] 바이오힐 보 비타시너지 기미잡티 토닝 스킨케어 2종 (토닝토너 150ml+토닝크림 150ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(42000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[토닝세트] 바이오힐 보 비타시너지 기미잡티 토닝 스킨케어 2종 (토닝토너 150ml+토닝크림 150ml)'), NOW(), NOW()),
(27930, 'SALE', (SELECT id FROM product WHERE name = '[토닝세트] 바이오힐 보 비타시너지 기미잡티 토닝 스킨케어 2종 (토닝토너 150ml+토닝크림 150ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022441505ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[토닝세트] 바이오힐 보 비타시너지 기미잡티 토닝 스킨케어 2종 (토닝토너 150ml+토닝크림 150ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022441506ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[토닝세트] 바이오힐 보 비타시너지 기미잡티 토닝 스킨케어 2종 (토닝토너 150ml+토닝크림 150ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022441504ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[토닝세트] 바이오힐 보 비타시너지 기미잡티 토닝 스킨케어 2종 (토닝토너 150ml+토닝크림 150ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022441503ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[토닝세트] 바이오힐 보 비타시너지 기미잡티 토닝 스킨케어 2종 (토닝토너 150ml+토닝크림 150ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022441502ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[토닝세트] 바이오힐 보 비타시너지 기미잡티 토닝 스킨케어 2종 (토닝토너 150ml+토닝크림 150ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[토닝세트] 바이오힐 보 비타시너지 기미잡티 토닝 스킨케어 2종 (토닝토너 150ml+토닝크림 150ml)';


-- ================================

-- 상품: [NEW] 설화수 자음 2종 트라이얼 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW] 설화수 자음 2종 트라이얼 기획',
 '[NEW] 설화수 자음 2종 트라이얼 기획',
 5.0,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '설화수'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW] 설화수 자음 2종 트라이얼 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(85000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW] 설화수 자음 2종 트라이얼 기획'), NOW(), NOW()),
(76500, 'SALE', (SELECT id FROM product WHERE name = '[NEW] 설화수 자음 2종 트라이얼 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023176321ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW] 설화수 자음 2종 트라이얼 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023176326ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW] 설화수 자음 2종 트라이얼 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023176330ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW] 설화수 자음 2종 트라이얼 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023176331ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[NEW] 설화수 자음 2종 트라이얼 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023176332ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[NEW] 설화수 자음 2종 트라이얼 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023176333ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[NEW] 설화수 자음 2종 트라이얼 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW] 설화수 자음 2종 트라이얼 기획';


-- ================================

-- 상품: 설화수 자음 2종 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('설화수 자음 2종 기획',
 '설화수 자음 2종 기획',
 4.9,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '설화수'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[NEW] 자음 2종 기획', 135000, (SELECT id FROM product WHERE name = '설화수 자음 2종 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(150000, 'ORIGINAL', (SELECT id FROM product WHERE name = '설화수 자음 2종 기획'), NOW(), NOW()),
(135000, 'SALE', (SELECT id FROM product WHERE name = '설화수 자음 2종 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020463440ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '설화수 자음 2종 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020463426ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '설화수 자음 2종 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020463430ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '설화수 자음 2종 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020463421ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '설화수 자음 2종 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020463431ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '설화수 자음 2종 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020463432ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '설화수 자음 2종 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '설화수 자음 2종 기획';


-- ================================

-- 상품: [추석기프트특가/9월 올영픽] 라운드랩 포 맨 소나무 진정 토너/로션 2종 기획 (토너30...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[추석기프트특가/9월 올영픽] 라운드랩 포 맨 소나무 진정 토너/로션 2종 기획 (토너300ml+로션200ml)',
 '[추석기프트특가/9월 올영픽] 라운드랩 포 맨 소나무 진정 토너/로션 2종 기획 (토너300ml+로션200ml)',
 4.9,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라운드랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('토너300ml 대용량+로션200ml', 29210, (SELECT id FROM product WHERE name = '[추석기프트특가/9월 올영픽] 라운드랩 포 맨 소나무 진정 토너/로션 2종 기획 (토너300ml+로션200ml)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('토너200ml+로션200ml+위칙세정티슈', 29210, (SELECT id FROM product WHERE name = '[추석기프트특가/9월 올영픽] 라운드랩 포 맨 소나무 진정 토너/로션 2종 기획 (토너300ml+로션200ml)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('토너200ml+로션200ml+클렌저', 29210, (SELECT id FROM product WHERE name = '[추석기프트특가/9월 올영픽] 라운드랩 포 맨 소나무 진정 토너/로션 2종 기획 (토너300ml+로션200ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(43000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[추석기프트특가/9월 올영픽] 라운드랩 포 맨 소나무 진정 토너/로션 2종 기획 (토너300ml+로션200ml)'), NOW(), NOW()),
(29210, 'SALE', (SELECT id FROM product WHERE name = '[추석기프트특가/9월 올영픽] 라운드랩 포 맨 소나무 진정 토너/로션 2종 기획 (토너300ml+로션200ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189512ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[추석기프트특가/9월 올영픽] 라운드랩 포 맨 소나무 진정 토너/로션 2종 기획 (토너300ml+로션200ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189503ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[추석기프트특가/9월 올영픽] 라운드랩 포 맨 소나무 진정 토너/로션 2종 기획 (토너300ml+로션200ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189504ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[추석기프트특가/9월 올영픽] 라운드랩 포 맨 소나무 진정 토너/로션 2종 기획 (토너300ml+로션200ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189501ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[추석기프트특가/9월 올영픽] 라운드랩 포 맨 소나무 진정 토너/로션 2종 기획 (토너300ml+로션200ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[추석기프트특가/9월 올영픽] 라운드랩 포 맨 소나무 진정 토너/로션 2종 기획 (토너300ml+로션200ml)';


-- ================================

-- 상품: [추석기프트특가/수분강화] 라운드랩 포 맨 자작나무 토너/크림 2종 기획 (+쉐이빙폼 40...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[추석기프트특가/수분강화] 라운드랩 포 맨 자작나무 토너/크림 2종 기획 (+쉐이빙폼 40ml)',
 '[추석기프트특가/수분강화] 라운드랩 포 맨 자작나무 토너/크림 2종 기획 (+쉐이빙폼 40ml)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라운드랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('토너/크림 2종세트 (+쉐이빙폼)', 29740, (SELECT id FROM product WHERE name = '[추석기프트특가/수분강화] 라운드랩 포 맨 자작나무 토너/크림 2종 기획 (+쉐이빙폼 40ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(44000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[추석기프트특가/수분강화] 라운드랩 포 맨 자작나무 토너/크림 2종 기획 (+쉐이빙폼 40ml)'), NOW(), NOW()),
(29740, 'SALE', (SELECT id FROM product WHERE name = '[추석기프트특가/수분강화] 라운드랩 포 맨 자작나무 토너/크림 2종 기획 (+쉐이빙폼 40ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019597008ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[추석기프트특가/수분강화] 라운드랩 포 맨 자작나무 토너/크림 2종 기획 (+쉐이빙폼 40ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019597005ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[추석기프트특가/수분강화] 라운드랩 포 맨 자작나무 토너/크림 2종 기획 (+쉐이빙폼 40ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019597002ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[추석기프트특가/수분강화] 라운드랩 포 맨 자작나무 토너/크림 2종 기획 (+쉐이빙폼 40ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019597007ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[추석기프트특가/수분강화] 라운드랩 포 맨 자작나무 토너/크림 2종 기획 (+쉐이빙폼 40ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[추석기프트특가/수분강화] 라운드랩 포 맨 자작나무 토너/크림 2종 기획 (+쉐이빙폼 40ml)';


-- ================================

-- 상품: [시카보다 4배*강한] 한율 어린쑥 수분진정 2종세트(토너150ml+플루이드125ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[시카보다 4배*강한] 한율 어린쑥 수분진정 2종세트(토너150ml+플루이드125ml)',
 '[시카보다 4배*강한] 한율 어린쑥 수분진정 2종세트(토너150ml+플루이드125ml)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '한율'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[시카보다 4배*강한] 한율 어린쑥 수분진정 2종세트(토너150ml+플루이드125ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(59000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[시카보다 4배*강한] 한율 어린쑥 수분진정 2종세트(토너150ml+플루이드125ml)'), NOW(), NOW()),
(59000, 'SALE', (SELECT id FROM product WHERE name = '[시카보다 4배*강한] 한율 어린쑥 수분진정 2종세트(토너150ml+플루이드125ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018374117ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[시카보다 4배*강한] 한율 어린쑥 수분진정 2종세트(토너150ml+플루이드125ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018374110ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[시카보다 4배*강한] 한율 어린쑥 수분진정 2종세트(토너150ml+플루이드125ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018374109ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[시카보다 4배*강한] 한율 어린쑥 수분진정 2종세트(토너150ml+플루이드125ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[시카보다 4배*강한] 한율 어린쑥 수분진정 2종세트(토너150ml+플루이드125ml)';


-- ================================

-- 상품: [속광수분장벽] 온그리디언츠 속광 듀오 세트(카밍 소프너 250ml+카밍 로션 80ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[속광수분장벽] 온그리디언츠 속광 듀오 세트(카밍 소프너 250ml+카밍 로션 80ml)',
 '[속광수분장벽] 온그리디언츠 속광 듀오 세트(카밍 소프너 250ml+카밍 로션 80ml)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '온그리디언츠'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[속광수분장벽] 온그리디언츠 속광 듀오 세트(카밍 소프너 250ml+카밍 로션 80ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(27000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[속광수분장벽] 온그리디언츠 속광 듀오 세트(카밍 소프너 250ml+카밍 로션 80ml)'), NOW(), NOW()),
(17500, 'SALE', (SELECT id FROM product WHERE name = '[속광수분장벽] 온그리디언츠 속광 듀오 세트(카밍 소프너 250ml+카밍 로션 80ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022157704ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[속광수분장벽] 온그리디언츠 속광 듀오 세트(카밍 소프너 250ml+카밍 로션 80ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022157702ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[속광수분장벽] 온그리디언츠 속광 듀오 세트(카밍 소프너 250ml+카밍 로션 80ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022157701ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[속광수분장벽] 온그리디언츠 속광 듀오 세트(카밍 소프너 250ml+카밍 로션 80ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[속광수분장벽] 온그리디언츠 속광 듀오 세트(카밍 소프너 250ml+카밍 로션 80ml)';


-- ================================

-- 상품: 수려한 비책진생 스마트 3종 세트 (수액 80ml+유액 80ml+크림 30ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('수려한 비책진생 스마트 3종 세트 (수액 80ml+유액 80ml+크림 30ml)',
 '수려한 비책진생 스마트 3종 세트 (수액 80ml+유액 80ml+크림 30ml)',
 5.0,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '수려한'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '수려한 비책진생 스마트 3종 세트 (수액 80ml+유액 80ml+크림 30ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(54000, 'ORIGINAL', (SELECT id FROM product WHERE name = '수려한 비책진생 스마트 3종 세트 (수액 80ml+유액 80ml+크림 30ml)'), NOW(), NOW()),
(54000, 'SALE', (SELECT id FROM product WHERE name = '수려한 비책진생 스마트 3종 세트 (수액 80ml+유액 80ml+크림 30ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022711604ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '수려한 비책진생 스마트 3종 세트 (수액 80ml+유액 80ml+크림 30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022711602ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '수려한 비책진생 스마트 3종 세트 (수액 80ml+유액 80ml+크림 30ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '수려한 비책진생 스마트 3종 세트 (수액 80ml+유액 80ml+크림 30ml)';


-- ================================

-- 상품: [남성선물]아이오페 맨 2종세트(에센스145ml+에멀젼 120ml+3종미니어처 증정...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[남성선물]아이오페 맨 2종세트(에센스145ml+에멀젼 120ml+3종미니어처 증정',
 '[남성선물]아이오페 맨 2종세트(에센스145ml+에멀젼 120ml+3종미니어처 증정',
 4.9,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이오페'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[남성선물]아이오페 맨 2종세트(에센스145ml+에멀젼 120ml+3종미니어처 증정'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(78000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[남성선물]아이오페 맨 2종세트(에센스145ml+에멀젼 120ml+3종미니어처 증정'), NOW(), NOW()),
(48050, 'SALE', (SELECT id FROM product WHERE name = '[남성선물]아이오페 맨 2종세트(에센스145ml+에멀젼 120ml+3종미니어처 증정'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018386819ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[남성선물]아이오페 맨 2종세트(에센스145ml+에멀젼 120ml+3종미니어처 증정'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018386814ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[남성선물]아이오페 맨 2종세트(에센스145ml+에멀젼 120ml+3종미니어처 증정'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018386812ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[남성선물]아이오페 맨 2종세트(에센스145ml+에멀젼 120ml+3종미니어처 증정'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[남성선물]아이오페 맨 2종세트(에센스145ml+에멀젼 120ml+3종미니어처 증정';


-- ================================

-- 상품: [new] 닥터지 레드 블레미쉬 포 맨 토너/진정올인원 2종 기획 (+미니어처 2종)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[new] 닥터지 레드 블레미쉬 포 맨 토너/진정올인원 2종 기획 (+미니어처 2종)',
 '[new] 닥터지 레드 블레미쉬 포 맨 토너/진정올인원 2종 기획 (+미니어처 2종)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터지'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[new] 닥터지 레드 블레미쉬 포 맨 토너/진정올인원 2종 기획 (+미니어처 2종)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(61000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[new] 닥터지 레드 블레미쉬 포 맨 토너/진정올인원 2종 기획 (+미니어처 2종)'), NOW(), NOW()),
(42700, 'SALE', (SELECT id FROM product WHERE name = '[new] 닥터지 레드 블레미쉬 포 맨 토너/진정올인원 2종 기획 (+미니어처 2종)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022378001ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[new] 닥터지 레드 블레미쉬 포 맨 토너/진정올인원 2종 기획 (+미니어처 2종)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[new] 닥터지 레드 블레미쉬 포 맨 토너/진정올인원 2종 기획 (+미니어처 2종)';


-- ================================

-- 상품: 오브제 포어 제로 토너/로션 2종 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('오브제 포어 제로 토너/로션 2종 기획',
 '오브제 포어 제로 토너/로션 2종 기획',
 4.9,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '오브제'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '오브제 포어 제로 토너/로션 2종 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(42000, 'ORIGINAL', (SELECT id FROM product WHERE name = '오브제 포어 제로 토너/로션 2종 기획'), NOW(), NOW()),
(42000, 'SALE', (SELECT id FROM product WHERE name = '오브제 포어 제로 토너/로션 2종 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021625513ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '오브제 포어 제로 토너/로션 2종 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021625512ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '오브제 포어 제로 토너/로션 2종 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021625504ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '오브제 포어 제로 토너/로션 2종 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021625502ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '오브제 포어 제로 토너/로션 2종 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021625501ko.png?l=ko', 5, (SELECT id FROM product WHERE name = '오브제 포어 제로 토너/로션 2종 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '오브제 포어 제로 토너/로션 2종 기획';


-- ================================

-- 상품: [토너&에멀젼세트/기획] 하다라보 고쿠쥰로션&밀크 2종...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[토너&에멀젼세트/기획] 하다라보 고쿠쥰로션&밀크 2종',
 '[토너&에멀젼세트/기획] 하다라보 고쿠쥰로션&밀크 2종',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '하다라보'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[토너&에멀젼세트/기획] 하다라보 고쿠쥰로션&밀크 2종'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[토너&에멀젼세트/기획] 하다라보 고쿠쥰로션&밀크 2종'), NOW(), NOW()),
(21000, 'SALE', (SELECT id FROM product WHERE name = '[토너&에멀젼세트/기획] 하다라보 고쿠쥰로션&밀크 2종'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014491033ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[토너&에멀젼세트/기획] 하다라보 고쿠쥰로션&밀크 2종'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014491032ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[토너&에멀젼세트/기획] 하다라보 고쿠쥰로션&밀크 2종'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[토너&에멀젼세트/기획] 하다라보 고쿠쥰로션&밀크 2종';


-- ================================

-- 상품: 라끄베르 옴므 리차지 시카 2종세트 (애프터쉐이브185ml+에멀전180m+미니어처 2종 증...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('라끄베르 옴므 리차지 시카 2종세트 (애프터쉐이브185ml+에멀전180m+미니어처 2종 증정)',
 '라끄베르 옴므 리차지 시카 2종세트 (애프터쉐이브185ml+에멀전180m+미니어처 2종 증정)',
 4.9,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라끄베르'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 시카 2종세트 (애프터쉐이브185ml+에멀전180m+미니어처 2종 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 시카 2종세트 (애프터쉐이브185ml+에멀전180m+미니어처 2종 증정)'), NOW(), NOW()),
(21000, 'SALE', (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 시카 2종세트 (애프터쉐이브185ml+에멀전180m+미니어처 2종 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018515503ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 시카 2종세트 (애프터쉐이브185ml+에멀전180m+미니어처 2종 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018515505ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 시카 2종세트 (애프터쉐이브185ml+에멀전180m+미니어처 2종 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018515502ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 시카 2종세트 (애프터쉐이브185ml+에멀전180m+미니어처 2종 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018515501ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 시카 2종세트 (애프터쉐이브185ml+에멀전180m+미니어처 2종 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '라끄베르 옴므 리차지 시카 2종세트 (애프터쉐이브185ml+에멀전180m+미니어처 2종 증정)';


-- ================================

-- 상품: 싸이닉 더 심플 스킨케어 2종 기획 (토너145mlx2+로션145ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('싸이닉 더 심플 스킨케어 2종 기획 (토너145mlx2+로션145ml)',
 '싸이닉 더 심플 스킨케어 2종 기획 (토너145mlx2+로션145ml)',
 4.7,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '싸이닉'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '싸이닉 더 심플 스킨케어 2종 기획 (토너145mlx2+로션145ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(36000, 'ORIGINAL', (SELECT id FROM product WHERE name = '싸이닉 더 심플 스킨케어 2종 기획 (토너145mlx2+로션145ml)'), NOW(), NOW()),
(15800, 'SALE', (SELECT id FROM product WHERE name = '싸이닉 더 심플 스킨케어 2종 기획 (토너145mlx2+로션145ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013174012ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '싸이닉 더 심플 스킨케어 2종 기획 (토너145mlx2+로션145ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013174013ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '싸이닉 더 심플 스킨케어 2종 기획 (토너145mlx2+로션145ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '싸이닉 더 심플 스킨케어 2종 기획 (토너145mlx2+로션145ml)';


-- ================================

-- 상품: [추석기프트특가]우르오스 지복합성 2종 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[추석기프트특가]우르오스 지복합성 2종 기획',
 '[추석기프트특가]우르오스 지복합성 2종 기획',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '우르오스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 지복합성 2종 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(41900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 지복합성 2종 기획'), NOW(), NOW()),
(31500, 'SALE', (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 지복합성 2종 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0000/A00000000657011ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 지복합성 2종 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0000/A00000000657016ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 지복합성 2종 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0000/A00000000657015ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 지복합성 2종 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[추석기프트특가]우르오스 지복합성 2종 기획';


-- ================================

-- 상품: 엠도씨 릴리프 세트...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('엠도씨 릴리프 세트',
 '엠도씨 릴리프 세트',
 4.7,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '엠도씨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '엠도씨 릴리프 세트'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(42000, 'ORIGINAL', (SELECT id FROM product WHERE name = '엠도씨 릴리프 세트'), NOW(), NOW()),
(35700, 'SALE', (SELECT id FROM product WHERE name = '엠도씨 릴리프 세트'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001107319ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '엠도씨 릴리프 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001107318ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '엠도씨 릴리프 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001107317ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '엠도씨 릴리프 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001107316ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '엠도씨 릴리프 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001107315ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '엠도씨 릴리프 세트'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '엠도씨 릴리프 세트';


-- ================================

-- 상품: 엠도씨 세붐 스트라이크 세트...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('엠도씨 세붐 스트라이크 세트',
 '엠도씨 세붐 스트라이크 세트',
 4.7,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '엠도씨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '엠도씨 세붐 스트라이크 세트'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '엠도씨 세붐 스트라이크 세트'), NOW(), NOW()),
(32300, 'SALE', (SELECT id FROM product WHERE name = '엠도씨 세붐 스트라이크 세트'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001108023ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '엠도씨 세붐 스트라이크 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001108026ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '엠도씨 세붐 스트라이크 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001108025ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '엠도씨 세붐 스트라이크 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001108024ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '엠도씨 세붐 스트라이크 세트'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '엠도씨 세붐 스트라이크 세트';


-- ================================

-- 상품: 엠도씨 화이트닝 톤업 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('엠도씨 화이트닝 톤업 기획',
 '엠도씨 화이트닝 톤업 기획',
 4.7,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '엠도씨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '엠도씨 화이트닝 톤업 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(48000, 'ORIGINAL', (SELECT id FROM product WHERE name = '엠도씨 화이트닝 톤업 기획'), NOW(), NOW()),
(48000, 'SALE', (SELECT id FROM product WHERE name = '엠도씨 화이트닝 톤업 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001489623ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '엠도씨 화이트닝 톤업 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001489626ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '엠도씨 화이트닝 톤업 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001489625ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '엠도씨 화이트닝 톤업 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001489624ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '엠도씨 화이트닝 톤업 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '엠도씨 화이트닝 톤업 기획';


-- ================================

-- 상품: 라끄베르 옴므 리차지 2종세트 (애프터쉐이브185ml+에멀전180ml+미니어처 2종 증정)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('라끄베르 옴므 리차지 2종세트 (애프터쉐이브185ml+에멀전180ml+미니어처 2종 증정)',
 '라끄베르 옴므 리차지 2종세트 (애프터쉐이브185ml+에멀전180ml+미니어처 2종 증정)',
 4.7,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라끄베르'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 2종세트 (애프터쉐이브185ml+에멀전180ml+미니어처 2종 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 2종세트 (애프터쉐이브185ml+에멀전180ml+미니어처 2종 증정)'), NOW(), NOW()),
(32000, 'SALE', (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 2종세트 (애프터쉐이브185ml+에멀전180ml+미니어처 2종 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001675008ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 2종세트 (애프터쉐이브185ml+에멀전180ml+미니어처 2종 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001675007ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 2종세트 (애프터쉐이브185ml+에멀전180ml+미니어처 2종 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001675003ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 2종세트 (애프터쉐이브185ml+에멀전180ml+미니어처 2종 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001675002ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 2종세트 (애프터쉐이브185ml+에멀전180ml+미니어처 2종 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '라끄베르 옴므 리차지 2종세트 (애프터쉐이브185ml+에멀전180ml+미니어처 2종 증정)';


-- ================================

-- 상품: 보닌 더스타일 스탠다드 2종 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('보닌 더스타일 스탠다드 2종 기획',
 '보닌 더스타일 스탠다드 2종 기획',
 4.6,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '보닌'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '보닌 더스타일 스탠다드 2종 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(55000, 'ORIGINAL', (SELECT id FROM product WHERE name = '보닌 더스타일 스탠다드 2종 기획'), NOW(), NOW()),
(55000, 'SALE', (SELECT id FROM product WHERE name = '보닌 더스타일 스탠다드 2종 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001704504ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '보닌 더스타일 스탠다드 2종 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001704506ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '보닌 더스타일 스탠다드 2종 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001704505ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '보닌 더스타일 스탠다드 2종 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '보닌 더스타일 스탠다드 2종 기획';


-- ================================

-- 상품: [저자극/세트] 라운드랩 1025 독도 토너/로션 2종 기획 (200ml+200ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[저자극/세트] 라운드랩 1025 독도 토너/로션 2종 기획 (200ml+200ml)',
 '[저자극/세트] 라운드랩 1025 독도 토너/로션 2종 기획 (200ml+200ml)',
 4.7,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라운드랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[저자극/세트] 라운드랩 1025 독도 토너/로션 2종 기획 (200ml+200ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[저자극/세트] 라운드랩 1025 독도 토너/로션 2종 기획 (200ml+200ml)'), NOW(), NOW()),
(32000, 'SALE', (SELECT id FROM product WHERE name = '[저자극/세트] 라운드랩 1025 독도 토너/로션 2종 기획 (200ml+200ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013717925ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[저자극/세트] 라운드랩 1025 독도 토너/로션 2종 기획 (200ml+200ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013717926ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[저자극/세트] 라운드랩 1025 독도 토너/로션 2종 기획 (200ml+200ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013717927ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[저자극/세트] 라운드랩 1025 독도 토너/로션 2종 기획 (200ml+200ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013717924ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[저자극/세트] 라운드랩 1025 독도 토너/로션 2종 기획 (200ml+200ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[저자극/세트] 라운드랩 1025 독도 토너/로션 2종 기획 (200ml+200ml)';


-- ================================

-- 상품: 이자녹스 크리스탈 에이징 컴포팅 2종 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('이자녹스 크리스탈 에이징 컴포팅 2종 기획',
 '이자녹스 크리스탈 에이징 컴포팅 2종 기획',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '이자녹스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '이자녹스 크리스탈 에이징 컴포팅 2종 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(88000, 'ORIGINAL', (SELECT id FROM product WHERE name = '이자녹스 크리스탈 에이징 컴포팅 2종 기획'), NOW(), NOW()),
(88000, 'SALE', (SELECT id FROM product WHERE name = '이자녹스 크리스탈 에이징 컴포팅 2종 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013780001ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '이자녹스 크리스탈 에이징 컴포팅 2종 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013780003ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '이자녹스 크리스탈 에이징 컴포팅 2종 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013780002ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '이자녹스 크리스탈 에이징 컴포팅 2종 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '이자녹스 크리스탈 에이징 컴포팅 2종 기획';


-- ================================

-- 상품: 라네즈옴므 블루에너지 2종 기획 (미니어처 2종 포함)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('라네즈옴므 블루에너지 2종 기획 (미니어처 2종 포함)',
 '라네즈옴므 블루에너지 2종 기획 (미니어처 2종 포함)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라네즈'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '라네즈옴므 블루에너지 2종 기획 (미니어처 2종 포함)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(62000, 'ORIGINAL', (SELECT id FROM product WHERE name = '라네즈옴므 블루에너지 2종 기획 (미니어처 2종 포함)'), NOW(), NOW()),
(62000, 'SALE', (SELECT id FROM product WHERE name = '라네즈옴므 블루에너지 2종 기획 (미니어처 2종 포함)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014318913ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '라네즈옴므 블루에너지 2종 기획 (미니어처 2종 포함)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '라네즈옴므 블루에너지 2종 기획 (미니어처 2종 포함)';


-- ================================

-- 상품: 라네즈옴므 액티브워터 2종 기획 (미니어처 3종 포함)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('라네즈옴므 액티브워터 2종 기획 (미니어처 3종 포함)',
 '라네즈옴므 액티브워터 2종 기획 (미니어처 3종 포함)',
 4.9,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라네즈'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '라네즈옴므 액티브워터 2종 기획 (미니어처 3종 포함)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(53000, 'ORIGINAL', (SELECT id FROM product WHERE name = '라네즈옴므 액티브워터 2종 기획 (미니어처 3종 포함)'), NOW(), NOW()),
(53000, 'SALE', (SELECT id FROM product WHERE name = '라네즈옴므 액티브워터 2종 기획 (미니어처 3종 포함)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014319818ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '라네즈옴므 액티브워터 2종 기획 (미니어처 3종 포함)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '라네즈옴므 액티브워터 2종 기획 (미니어처 3종 포함)';


-- ================================

-- 상품: 플리프 시카-알로에 앰플토너 200ml+카밍 올인원 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('플리프 시카-알로에 앰플토너 200ml+카밍 올인원 200ml',
 '플리프 시카-알로에 앰플토너 200ml+카밍 올인원 200ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '플리프'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '플리프 시카-알로에 앰플토너 200ml+카밍 올인원 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '플리프 시카-알로에 앰플토너 200ml+카밍 올인원 200ml'), NOW(), NOW()),
(34800, 'SALE', (SELECT id FROM product WHERE name = '플리프 시카-알로에 앰플토너 200ml+카밍 올인원 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014746606ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '플리프 시카-알로에 앰플토너 200ml+카밍 올인원 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014746607ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '플리프 시카-알로에 앰플토너 200ml+카밍 올인원 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '플리프 시카-알로에 앰플토너 200ml+카밍 올인원 200ml';


-- ================================

-- 상품: [토너&로션] 마녀공장 비피다 바이옴 앰플 토너 300ml + 비피다 앰플 로션 300ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[토너&로션] 마녀공장 비피다 바이옴 앰플 토너 300ml + 비피다 앰플 로션 300ml 세트',
 '[토너&로션] 마녀공장 비피다 바이옴 앰플 토너 300ml + 비피다 앰플 로션 300ml 세트',
 4.7,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '마녀공장'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[토너&로션] 마녀공장 비피다 바이옴 앰플 토너 300ml + 비피다 앰플 로션 300ml 세트'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[토너&로션] 마녀공장 비피다 바이옴 앰플 토너 300ml + 비피다 앰플 로션 300ml 세트'), NOW(), NOW()),
(29900, 'SALE', (SELECT id FROM product WHERE name = '[토너&로션] 마녀공장 비피다 바이옴 앰플 토너 300ml + 비피다 앰플 로션 300ml 세트'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014999215ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[토너&로션] 마녀공장 비피다 바이옴 앰플 토너 300ml + 비피다 앰플 로션 300ml 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014999216ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[토너&로션] 마녀공장 비피다 바이옴 앰플 토너 300ml + 비피다 앰플 로션 300ml 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014999217ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[토너&로션] 마녀공장 비피다 바이옴 앰플 토너 300ml + 비피다 앰플 로션 300ml 세트'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[토너&로션] 마녀공장 비피다 바이옴 앰플 토너 300ml + 비피다 앰플 로션 300ml 세트';


-- ================================

-- 상품: [토너&에멀젼세트/기획] 하다라보 고쿠쥰 프리미엄 로션&밀크 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[토너&에멀젼세트/기획] 하다라보 고쿠쥰 프리미엄 로션&밀크 기획',
 '[토너&에멀젼세트/기획] 하다라보 고쿠쥰 프리미엄 로션&밀크 기획',
 4.7,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '하다라보'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[토너&에멀젼세트/기획] 하다라보 고쿠쥰 프리미엄 로션&밀크 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(34000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[토너&에멀젼세트/기획] 하다라보 고쿠쥰 프리미엄 로션&밀크 기획'), NOW(), NOW()),
(23800, 'SALE', (SELECT id FROM product WHERE name = '[토너&에멀젼세트/기획] 하다라보 고쿠쥰 프리미엄 로션&밀크 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015189212ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[토너&에멀젼세트/기획] 하다라보 고쿠쥰 프리미엄 로션&밀크 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[토너&에멀젼세트/기획] 하다라보 고쿠쥰 프리미엄 로션&밀크 기획';


-- ================================

-- 상품: [애프터쉐이브 본품증정]라끄베르 옴므 리차지 3종세트 (애프터쉐이브185ml*2ea+에멀전...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[애프터쉐이브 본품증정]라끄베르 옴므 리차지 3종세트 (애프터쉐이브185ml*2ea+에멀전180ml)',
 '[애프터쉐이브 본품증정]라끄베르 옴므 리차지 3종세트 (애프터쉐이브185ml*2ea+에멀전180ml)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라끄베르'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[애프터쉐이브 본품증정]라끄베르 옴므 리차지 3종세트 (애프터쉐이브185ml*2ea+에멀전180ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[애프터쉐이브 본품증정]라끄베르 옴므 리차지 3종세트 (애프터쉐이브185ml*2ea+에멀전180ml)'), NOW(), NOW()),
(32000, 'SALE', (SELECT id FROM product WHERE name = '[애프터쉐이브 본품증정]라끄베르 옴므 리차지 3종세트 (애프터쉐이브185ml*2ea+에멀전180ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015201304ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[애프터쉐이브 본품증정]라끄베르 옴므 리차지 3종세트 (애프터쉐이브185ml*2ea+에멀전180ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015201305ko.jpeg?l=ko', 2, (SELECT id FROM product WHERE name = '[애프터쉐이브 본품증정]라끄베르 옴므 리차지 3종세트 (애프터쉐이브185ml*2ea+에멀전180ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015201303ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[애프터쉐이브 본품증정]라끄베르 옴므 리차지 3종세트 (애프터쉐이브185ml*2ea+에멀전180ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015201301ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[애프터쉐이브 본품증정]라끄베르 옴므 리차지 3종세트 (애프터쉐이브185ml*2ea+에멀전180ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[애프터쉐이브 본품증정]라끄베르 옴므 리차지 3종세트 (애프터쉐이브185ml*2ea+에멀전180ml)';


-- ================================

-- 상품: [선물세트/탄력]닥터지 로얄 블랙스네일 스페셜 세트 (에센스165ml+크림50ml+아이크림...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[선물세트/탄력]닥터지 로얄 블랙스네일 스페셜 세트 (에센스165ml+크림50ml+아이크림10ml+마스크팩1ea)',
 '[선물세트/탄력]닥터지 로얄 블랙스네일 스페셜 세트 (에센스165ml+크림50ml+아이크림10ml+마스크팩1ea)',
 4.9,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터지'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[선물세트/탄력]닥터지 로얄 블랙스네일 스페셜 세트 (에센스165ml+크림50ml+아이크림10ml+마스크팩1ea)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(60000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[선물세트/탄력]닥터지 로얄 블랙스네일 스페셜 세트 (에센스165ml+크림50ml+아이크림10ml+마스크팩1ea)'), NOW(), NOW()),
(60000, 'SALE', (SELECT id FROM product WHERE name = '[선물세트/탄력]닥터지 로얄 블랙스네일 스페셜 세트 (에센스165ml+크림50ml+아이크림10ml+마스크팩1ea)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016562405ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[선물세트/탄력]닥터지 로얄 블랙스네일 스페셜 세트 (에센스165ml+크림50ml+아이크림10ml+마스크팩1ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016562403ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[선물세트/탄력]닥터지 로얄 블랙스네일 스페셜 세트 (에센스165ml+크림50ml+아이크림10ml+마스크팩1ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016562402ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[선물세트/탄력]닥터지 로얄 블랙스네일 스페셜 세트 (에센스165ml+크림50ml+아이크림10ml+마스크팩1ea)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[선물세트/탄력]닥터지 로얄 블랙스네일 스페셜 세트 (에센스165ml+크림50ml+아이크림10ml+마스크팩1ea)';


-- ================================

-- 상품: [선물추천] 눅스 베스트셀러 기프트세트(드라이오일 30ml + 레브드미엘 스틱레브르4g)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[선물추천] 눅스 베스트셀러 기프트세트(드라이오일 30ml + 레브드미엘 스틱레브르4g)',
 '[선물추천] 눅스 베스트셀러 기프트세트(드라이오일 30ml + 레브드미엘 스틱레브르4g)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '눅스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[선물추천] 눅스 베스트셀러 기프트세트(드라이오일 30ml + 레브드미엘 스틱레브르4g)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[선물추천] 눅스 베스트셀러 기프트세트(드라이오일 30ml + 레브드미엘 스틱레브르4g)'), NOW(), NOW()),
(29700, 'SALE', (SELECT id FROM product WHERE name = '[선물추천] 눅스 베스트셀러 기프트세트(드라이오일 30ml + 레브드미엘 스틱레브르4g)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016879009ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[선물추천] 눅스 베스트셀러 기프트세트(드라이오일 30ml + 레브드미엘 스틱레브르4g)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016879013ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[선물추천] 눅스 베스트셀러 기프트세트(드라이오일 30ml + 레브드미엘 스틱레브르4g)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016879010ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[선물추천] 눅스 베스트셀러 기프트세트(드라이오일 30ml + 레브드미엘 스틱레브르4g)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[선물추천] 눅스 베스트셀러 기프트세트(드라이오일 30ml + 레브드미엘 스틱레브르4g)';


-- ================================

-- 상품: [추석기프트특가]우르오스 2종 세트 택1(지복합성, 중건성)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[추석기프트특가]우르오스 2종 세트 택1(지복합성, 중건성)',
 '[추석기프트특가]우르오스 2종 세트 택1(지복합성, 중건성)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '우르오스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('중건성 2종 세트', 31500, (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 2종 세트 택1(지복합성, 중건성)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('지복합성 2종 세트', 31500, (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 2종 세트 택1(지복합성, 중건성)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(41900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 2종 세트 택1(지복합성, 중건성)'), NOW(), NOW()),
(31500, 'SALE', (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 2종 세트 택1(지복합성, 중건성)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017158109ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 2종 세트 택1(지복합성, 중건성)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017158113ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 2종 세트 택1(지복합성, 중건성)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017158112ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 2종 세트 택1(지복합성, 중건성)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017158111ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 2종 세트 택1(지복합성, 중건성)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[추석기프트특가]우르오스 2종 세트 택1(지복합성, 중건성)';


-- ================================

-- 상품: [여행용스킨케어] 닥터디퍼런트 베스트 트라이얼 키트...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[여행용스킨케어] 닥터디퍼런트 베스트 트라이얼 키트',
 '[여행용스킨케어] 닥터디퍼런트 베스트 트라이얼 키트',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터디퍼런트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[여행용스킨케어] 닥터디퍼런트 베스트 트라이얼 키트'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(9900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[여행용스킨케어] 닥터디퍼런트 베스트 트라이얼 키트'), NOW(), NOW()),
(9900, 'SALE', (SELECT id FROM product WHERE name = '[여행용스킨케어] 닥터디퍼런트 베스트 트라이얼 키트'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017330212ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[여행용스킨케어] 닥터디퍼런트 베스트 트라이얼 키트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017330211ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[여행용스킨케어] 닥터디퍼런트 베스트 트라이얼 키트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017330210ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[여행용스킨케어] 닥터디퍼런트 베스트 트라이얼 키트'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[여행용스킨케어] 닥터디퍼런트 베스트 트라이얼 키트';


-- ================================

-- 상품: [올리브영 단독] AHC 온리포맨 스킨케어 2종 기프트 세트...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[올리브영 단독] AHC 온리포맨 스킨케어 2종 기프트 세트',
 '[올리브영 단독] AHC 온리포맨 스킨케어 2종 기프트 세트',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'AHC'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[올리브영 단독] AHC 온리포맨 스킨케어 2종 기프트 세트'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(49000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[올리브영 단독] AHC 온리포맨 스킨케어 2종 기프트 세트'), NOW(), NOW()),
(49000, 'SALE', (SELECT id FROM product WHERE name = '[올리브영 단독] AHC 온리포맨 스킨케어 2종 기프트 세트'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017348906ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[올리브영 단독] AHC 온리포맨 스킨케어 2종 기프트 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017348907ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[올리브영 단독] AHC 온리포맨 스킨케어 2종 기프트 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017348908ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[올리브영 단독] AHC 온리포맨 스킨케어 2종 기프트 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017348909ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[올리브영 단독] AHC 온리포맨 스킨케어 2종 기프트 세트'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[올리브영 단독] AHC 온리포맨 스킨케어 2종 기프트 세트';


-- ================================

-- 상품: 보닌 더 캐릭터 블랙 시그니처 2종 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('보닌 더 캐릭터 블랙 시그니처 2종 기획',
 '보닌 더 캐릭터 블랙 시그니처 2종 기획',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '보닌'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '보닌 더 캐릭터 블랙 시그니처 2종 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '보닌 더 캐릭터 블랙 시그니처 2종 기획'), NOW(), NOW()),
(33000, 'SALE', (SELECT id FROM product WHERE name = '보닌 더 캐릭터 블랙 시그니처 2종 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017684301ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '보닌 더 캐릭터 블랙 시그니처 2종 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '보닌 더 캐릭터 블랙 시그니처 2종 기획';


-- ================================

-- 상품: 비욘드 엔젤아쿠아 스킨케어 2종세트(비건)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('비욘드 엔젤아쿠아 스킨케어 2종세트(비건)',
 '비욘드 엔젤아쿠아 스킨케어 2종세트(비건)',
 4.7,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비욘드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 스킨케어 2종세트(비건)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 스킨케어 2종세트(비건)'), NOW(), NOW()),
(17010, 'SALE', (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 스킨케어 2종세트(비건)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017915303ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 스킨케어 2종세트(비건)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017915304ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 스킨케어 2종세트(비건)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017915302ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 스킨케어 2종세트(비건)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017915301ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 스킨케어 2종세트(비건)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '비욘드 엔젤아쿠아 스킨케어 2종세트(비건)';


-- ================================

-- 상품: 피지오겔 DMT포맨 증정 기획세트 2종 한정기획 (플루이드 or 크림)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('피지오겔 DMT포맨 증정 기획세트 2종 한정기획 (플루이드 or 크림)',
 '피지오겔 DMT포맨 증정 기획세트 2종 한정기획 (플루이드 or 크림)',
 4.9,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '피지오겔'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '피지오겔 DMT포맨 증정 기획세트 2종 한정기획 (플루이드 or 크림)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(65000, 'ORIGINAL', (SELECT id FROM product WHERE name = '피지오겔 DMT포맨 증정 기획세트 2종 한정기획 (플루이드 or 크림)'), NOW(), NOW()),
(65000, 'SALE', (SELECT id FROM product WHERE name = '피지오겔 DMT포맨 증정 기획세트 2종 한정기획 (플루이드 or 크림)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017922718ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '피지오겔 DMT포맨 증정 기획세트 2종 한정기획 (플루이드 or 크림)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017922709ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '피지오겔 DMT포맨 증정 기획세트 2종 한정기획 (플루이드 or 크림)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017922708ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '피지오겔 DMT포맨 증정 기획세트 2종 한정기획 (플루이드 or 크림)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017922715ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '피지오겔 DMT포맨 증정 기획세트 2종 한정기획 (플루이드 or 크림)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017922716ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '피지오겔 DMT포맨 증정 기획세트 2종 한정기획 (플루이드 or 크림)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017922719ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '피지오겔 DMT포맨 증정 기획세트 2종 한정기획 (플루이드 or 크림)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '피지오겔 DMT포맨 증정 기획세트 2종 한정기획 (플루이드 or 크림)';


-- ================================

-- 상품: 프리메라 오가니언스 베리어 리페어 2종 기획 세트...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('프리메라 오가니언스 베리어 리페어 2종 기획 세트',
 '프리메라 오가니언스 베리어 리페어 2종 기획 세트',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '프리메라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '프리메라 오가니언스 베리어 리페어 2종 기획 세트'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(72000, 'ORIGINAL', (SELECT id FROM product WHERE name = '프리메라 오가니언스 베리어 리페어 2종 기획 세트'), NOW(), NOW()),
(72000, 'SALE', (SELECT id FROM product WHERE name = '프리메라 오가니언스 베리어 리페어 2종 기획 세트'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018318803ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '프리메라 오가니언스 베리어 리페어 2종 기획 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018318808ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '프리메라 오가니언스 베리어 리페어 2종 기획 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018318807ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '프리메라 오가니언스 베리어 리페어 2종 기획 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018318806ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '프리메라 오가니언스 베리어 리페어 2종 기획 세트'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '프리메라 오가니언스 베리어 리페어 2종 기획 세트';


-- ================================

-- 상품: [추석기프트특가/수분강화] 라운드랩 포 맨 자작나무 토너/로션 2종 기획 (+쉐이빙폼 40...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[추석기프트특가/수분강화] 라운드랩 포 맨 자작나무 토너/로션 2종 기획 (+쉐이빙폼 40ml)',
 '[추석기프트특가/수분강화] 라운드랩 포 맨 자작나무 토너/로션 2종 기획 (+쉐이빙폼 40ml)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라운드랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[추석기프트특가/수분강화] 라운드랩 포 맨 자작나무 토너/로션 2종 기획 (+쉐이빙폼 40ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(42000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[추석기프트특가/수분강화] 라운드랩 포 맨 자작나무 토너/로션 2종 기획 (+쉐이빙폼 40ml)'), NOW(), NOW()),
(29300, 'SALE', (SELECT id FROM product WHERE name = '[추석기프트특가/수분강화] 라운드랩 포 맨 자작나무 토너/로션 2종 기획 (+쉐이빙폼 40ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018767514ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[추석기프트특가/수분강화] 라운드랩 포 맨 자작나무 토너/로션 2종 기획 (+쉐이빙폼 40ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018767513ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[추석기프트특가/수분강화] 라운드랩 포 맨 자작나무 토너/로션 2종 기획 (+쉐이빙폼 40ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018767512ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[추석기프트특가/수분강화] 라운드랩 포 맨 자작나무 토너/로션 2종 기획 (+쉐이빙폼 40ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018767503ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[추석기프트특가/수분강화] 라운드랩 포 맨 자작나무 토너/로션 2종 기획 (+쉐이빙폼 40ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[추석기프트특가/수분강화] 라운드랩 포 맨 자작나무 토너/로션 2종 기획 (+쉐이빙폼 40ml)';


-- ================================

-- 상품: 한율 빨간쌀 보습탄력 2종세트...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('한율 빨간쌀 보습탄력 2종세트',
 '한율 빨간쌀 보습탄력 2종세트',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '한율'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '한율 빨간쌀 보습탄력 2종세트'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(83000, 'ORIGINAL', (SELECT id FROM product WHERE name = '한율 빨간쌀 보습탄력 2종세트'), NOW(), NOW()),
(83000, 'SALE', (SELECT id FROM product WHERE name = '한율 빨간쌀 보습탄력 2종세트'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018889814ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '한율 빨간쌀 보습탄력 2종세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018889808ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '한율 빨간쌀 보습탄력 2종세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018889807ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '한율 빨간쌀 보습탄력 2종세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018889804ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '한율 빨간쌀 보습탄력 2종세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018889803ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '한율 빨간쌀 보습탄력 2종세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018889802ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '한율 빨간쌀 보습탄력 2종세트'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '한율 빨간쌀 보습탄력 2종세트';


-- ================================

-- 상품: [보습선물세트] 오휘 미라클 모이스처 핑크베리어 2종 SET...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[보습선물세트] 오휘 미라클 모이스처 핑크베리어 2종 SET',
 '[보습선물세트] 오휘 미라클 모이스처 핑크베리어 2종 SET',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '오휘'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[보습선물세트] 오휘 미라클 모이스처 핑크베리어 2종 SET'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(72000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[보습선물세트] 오휘 미라클 모이스처 핑크베리어 2종 SET'), NOW(), NOW()),
(72000, 'SALE', (SELECT id FROM product WHERE name = '[보습선물세트] 오휘 미라클 모이스처 핑크베리어 2종 SET'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018959811ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[보습선물세트] 오휘 미라클 모이스처 핑크베리어 2종 SET'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018959806ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[보습선물세트] 오휘 미라클 모이스처 핑크베리어 2종 SET'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018959805ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[보습선물세트] 오휘 미라클 모이스처 핑크베리어 2종 SET'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018959804ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[보습선물세트] 오휘 미라클 모이스처 핑크베리어 2종 SET'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018959807ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[보습선물세트] 오휘 미라클 모이스처 핑크베리어 2종 SET'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[보습선물세트] 오휘 미라클 모이스처 핑크베리어 2종 SET';


-- ================================

-- 상품: [증정기획/선물세트] 닥터지 블랙스네일 옴므 프레스티지 3종 세트 (토너150ml+에멀전1...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[증정기획/선물세트] 닥터지 블랙스네일 옴므 프레스티지 3종 세트 (토너150ml+에멀전150ml+클렌징폼70ml)',
 '[증정기획/선물세트] 닥터지 블랙스네일 옴므 프레스티지 3종 세트 (토너150ml+에멀전150ml+클렌징폼70ml)',
 4.9,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터지'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[증정기획/선물세트] 닥터지 블랙스네일 옴므 프레스티지 3종 세트 (토너150ml+에멀전150ml+클렌징폼70ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(34000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[증정기획/선물세트] 닥터지 블랙스네일 옴므 프레스티지 3종 세트 (토너150ml+에멀전150ml+클렌징폼70ml)'), NOW(), NOW()),
(30690, 'SALE', (SELECT id FROM product WHERE name = '[증정기획/선물세트] 닥터지 블랙스네일 옴므 프레스티지 3종 세트 (토너150ml+에멀전150ml+클렌징폼70ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019013204ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[증정기획/선물세트] 닥터지 블랙스네일 옴므 프레스티지 3종 세트 (토너150ml+에멀전150ml+클렌징폼70ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019013202ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[증정기획/선물세트] 닥터지 블랙스네일 옴므 프레스티지 3종 세트 (토너150ml+에멀전150ml+클렌징폼70ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019013203ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[증정기획/선물세트] 닥터지 블랙스네일 옴므 프레스티지 3종 세트 (토너150ml+에멀전150ml+클렌징폼70ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019013201ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[증정기획/선물세트] 닥터지 블랙스네일 옴므 프레스티지 3종 세트 (토너150ml+에멀전150ml+클렌징폼70ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[증정기획/선물세트] 닥터지 블랙스네일 옴므 프레스티지 3종 세트 (토너150ml+에멀전150ml+클렌징폼70ml)';


-- ================================

-- 상품: [개기름케어] 아이소이 포맨 아크니 닥터 올인원 듀오 기획(+진정 올인원 15ml+아쿠아수...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[개기름케어] 아이소이 포맨 아크니 닥터 올인원 듀오 기획(+진정 올인원 15ml+아쿠아수딩토너 150ml) (온)',
 '[개기름케어] 아이소이 포맨 아크니 닥터 올인원 듀오 기획(+진정 올인원 15ml+아쿠아수딩토너 150ml) (온)',
 4.9,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이소이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[개기름케어] 아이소이 포맨 아크니 닥터 올인원 듀오 기획(+진정 올인원 15ml+아쿠아수딩토너 150ml) (온)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(52200, 'ORIGINAL', (SELECT id FROM product WHERE name = '[개기름케어] 아이소이 포맨 아크니 닥터 올인원 듀오 기획(+진정 올인원 15ml+아쿠아수딩토너 150ml) (온)'), NOW(), NOW()),
(52200, 'SALE', (SELECT id FROM product WHERE name = '[개기름케어] 아이소이 포맨 아크니 닥터 올인원 듀오 기획(+진정 올인원 15ml+아쿠아수딩토너 150ml) (온)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019834702ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[개기름케어] 아이소이 포맨 아크니 닥터 올인원 듀오 기획(+진정 올인원 15ml+아쿠아수딩토너 150ml) (온)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019834703ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[개기름케어] 아이소이 포맨 아크니 닥터 올인원 듀오 기획(+진정 올인원 15ml+아쿠아수딩토너 150ml) (온)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019834704ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[개기름케어] 아이소이 포맨 아크니 닥터 올인원 듀오 기획(+진정 올인원 15ml+아쿠아수딩토너 150ml) (온)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[개기름케어] 아이소이 포맨 아크니 닥터 올인원 듀오 기획(+진정 올인원 15ml+아쿠아수딩토너 150ml) (온)';


-- ================================

-- 상품: 디오디너리 스킨 서포트 세트 (나이아신아마이드 10% + 징크 1% 30ml, 히알루로닉 ...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('디오디너리 스킨 서포트 세트 (나이아신아마이드 10% + 징크 1% 30ml, 히알루로닉 애시드 2% +B5 30ml)',
 '디오디너리 스킨 서포트 세트 (나이아신아마이드 10% + 징크 1% 30ml, 히알루로닉 애시드 2% +B5 30ml)',
 4.6,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '디오디너리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '디오디너리 스킨 서포트 세트 (나이아신아마이드 10% + 징크 1% 30ml, 히알루로닉 애시드 2% +B5 30ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(18300, 'ORIGINAL', (SELECT id FROM product WHERE name = '디오디너리 스킨 서포트 세트 (나이아신아마이드 10% + 징크 1% 30ml, 히알루로닉 애시드 2% +B5 30ml)'), NOW(), NOW()),
(18300, 'SALE', (SELECT id FROM product WHERE name = '디오디너리 스킨 서포트 세트 (나이아신아마이드 10% + 징크 1% 30ml, 히알루로닉 애시드 2% +B5 30ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020032602ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '디오디너리 스킨 서포트 세트 (나이아신아마이드 10% + 징크 1% 30ml, 히알루로닉 애시드 2% +B5 30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020032604ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '디오디너리 스킨 서포트 세트 (나이아신아마이드 10% + 징크 1% 30ml, 히알루로닉 애시드 2% +B5 30ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '디오디너리 스킨 서포트 세트 (나이아신아마이드 10% + 징크 1% 30ml, 히알루로닉 애시드 2% +B5 30ml)';


-- ================================

-- 상품: [에이든팍 PICK]다슈 보이 파란 수분초 스킨/로션 150ml 4종 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[에이든팍 PICK]다슈 보이 파란 수분초 스킨/로션 150ml 4종 기획',
 '[에이든팍 PICK]다슈 보이 파란 수분초 스킨/로션 150ml 4종 기획',
 5.0,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '다슈'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[에이든팍 PICK]다슈 보이 파란 수분초 스킨/로션 150ml 4종 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[에이든팍 PICK]다슈 보이 파란 수분초 스킨/로션 150ml 4종 기획'), NOW(), NOW()),
(28890, 'SALE', (SELECT id FROM product WHERE name = '[에이든팍 PICK]다슈 보이 파란 수분초 스킨/로션 150ml 4종 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020416704ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[에이든팍 PICK]다슈 보이 파란 수분초 스킨/로션 150ml 4종 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020416703ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[에이든팍 PICK]다슈 보이 파란 수분초 스킨/로션 150ml 4종 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020416701ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[에이든팍 PICK]다슈 보이 파란 수분초 스킨/로션 150ml 4종 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[에이든팍 PICK]다슈 보이 파란 수분초 스킨/로션 150ml 4종 기획';


-- ================================

-- 상품: [한정기획] 피지오겔 시카밸런스 포맨 2종 (+플루이드 100ml or 크림 70ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[한정기획] 피지오겔 시카밸런스 포맨 2종 (+플루이드 100ml or 크림 70ml)',
 '[한정기획] 피지오겔 시카밸런스 포맨 2종 (+플루이드 100ml or 크림 70ml)',
 4.9,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '피지오겔'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[한정기획] 피지오겔 시카밸런스 포맨 2종 (+플루이드 100ml or 크림 70ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(69000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[한정기획] 피지오겔 시카밸런스 포맨 2종 (+플루이드 100ml or 크림 70ml)'), NOW(), NOW()),
(69000, 'SALE', (SELECT id FROM product WHERE name = '[한정기획] 피지오겔 시카밸런스 포맨 2종 (+플루이드 100ml or 크림 70ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020459010ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[한정기획] 피지오겔 시카밸런스 포맨 2종 (+플루이드 100ml or 크림 70ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020459008ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[한정기획] 피지오겔 시카밸런스 포맨 2종 (+플루이드 100ml or 크림 70ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020459002ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[한정기획] 피지오겔 시카밸런스 포맨 2종 (+플루이드 100ml or 크림 70ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020459005ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[한정기획] 피지오겔 시카밸런스 포맨 2종 (+플루이드 100ml or 크림 70ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020459004ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[한정기획] 피지오겔 시카밸런스 포맨 2종 (+플루이드 100ml or 크림 70ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020459003ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[한정기획] 피지오겔 시카밸런스 포맨 2종 (+플루이드 100ml or 크림 70ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[한정기획] 피지오겔 시카밸런스 포맨 2종 (+플루이드 100ml or 크림 70ml)';


-- ================================

-- 상품: 더후 로얄레지나 2종 세트(세럼 30ml+크림 50ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('더후 로얄레지나 2종 세트(세럼 30ml+크림 50ml)',
 '더후 로얄레지나 2종 세트(세럼 30ml+크림 50ml)',
 0.0,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더후'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '더후 로얄레지나 2종 세트(세럼 30ml+크림 50ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(173000, 'ORIGINAL', (SELECT id FROM product WHERE name = '더후 로얄레지나 2종 세트(세럼 30ml+크림 50ml)'), NOW(), NOW()),
(173000, 'SALE', (SELECT id FROM product WHERE name = '더후 로얄레지나 2종 세트(세럼 30ml+크림 50ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020464117ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '더후 로얄레지나 2종 세트(세럼 30ml+크림 50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020464114ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '더후 로얄레지나 2종 세트(세럼 30ml+크림 50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020464103ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '더후 로얄레지나 2종 세트(세럼 30ml+크림 50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020464109ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '더후 로얄레지나 2종 세트(세럼 30ml+크림 50ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '더후 로얄레지나 2종 세트(세럼 30ml+크림 50ml)';


-- ================================

-- 상품: 이자녹스 에이지포커스 프라임 스페셜 세트(스킨100ml+에멀전100ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('이자녹스 에이지포커스 프라임 스페셜 세트(스킨100ml+에멀전100ml)',
 '이자녹스 에이지포커스 프라임 스페셜 세트(스킨100ml+에멀전100ml)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '이자녹스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '이자녹스 에이지포커스 프라임 스페셜 세트(스킨100ml+에멀전100ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(72000, 'ORIGINAL', (SELECT id FROM product WHERE name = '이자녹스 에이지포커스 프라임 스페셜 세트(스킨100ml+에멀전100ml)'), NOW(), NOW()),
(72000, 'SALE', (SELECT id FROM product WHERE name = '이자녹스 에이지포커스 프라임 스페셜 세트(스킨100ml+에멀전100ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020467801ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '이자녹스 에이지포커스 프라임 스페셜 세트(스킨100ml+에멀전100ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020467802ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '이자녹스 에이지포커스 프라임 스페셜 세트(스킨100ml+에멀전100ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '이자녹스 에이지포커스 프라임 스페셜 세트(스킨100ml+에멀전100ml)';


-- ================================

-- 상품: 이자녹스 에이지포커스 바이탈 콜라겐 2종 세트(+스킨100ml+에멀전100ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('이자녹스 에이지포커스 바이탈 콜라겐 2종 세트(+스킨100ml+에멀전100ml)',
 '이자녹스 에이지포커스 바이탈 콜라겐 2종 세트(+스킨100ml+에멀전100ml)',
 4.9,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '이자녹스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '이자녹스 에이지포커스 바이탈 콜라겐 2종 세트(+스킨100ml+에멀전100ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(56000, 'ORIGINAL', (SELECT id FROM product WHERE name = '이자녹스 에이지포커스 바이탈 콜라겐 2종 세트(+스킨100ml+에멀전100ml)'), NOW(), NOW()),
(56000, 'SALE', (SELECT id FROM product WHERE name = '이자녹스 에이지포커스 바이탈 콜라겐 2종 세트(+스킨100ml+에멀전100ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020467901ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '이자녹스 에이지포커스 바이탈 콜라겐 2종 세트(+스킨100ml+에멀전100ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020467902ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '이자녹스 에이지포커스 바이탈 콜라겐 2종 세트(+스킨100ml+에멀전100ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '이자녹스 에이지포커스 바이탈 콜라겐 2종 세트(+스킨100ml+에멀전100ml)';


-- ================================

-- 상품: 설화수 윤조 3종 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('설화수 윤조 3종 기획',
 '설화수 윤조 3종 기획',
 4.9,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '설화수'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[지함보포장] 윤조 3종 기획', 206100, (SELECT id FROM product WHERE name = '설화수 윤조 3종 기획'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('윤조 3종 기획', 206100, (SELECT id FROM product WHERE name = '설화수 윤조 3종 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(229000, 'ORIGINAL', (SELECT id FROM product WHERE name = '설화수 윤조 3종 기획'), NOW(), NOW()),
(206100, 'SALE', (SELECT id FROM product WHERE name = '설화수 윤조 3종 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020472259ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '설화수 윤조 3종 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020472246ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '설화수 윤조 3종 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020472258ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '설화수 윤조 3종 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020472237ko.png?l=ko', 4, (SELECT id FROM product WHERE name = '설화수 윤조 3종 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020472247ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '설화수 윤조 3종 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020472248ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '설화수 윤조 3종 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '설화수 윤조 3종 기획';


-- ================================

-- 상품: 숨37 퍼멘타리프트 기초 스페셜 기획(토너 150ml+에멀전130ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('숨37 퍼멘타리프트 기초 스페셜 기획(토너 150ml+에멀전130ml)',
 '숨37 퍼멘타리프트 기초 스페셜 기획(토너 150ml+에멀전130ml)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '숨37'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '숨37 퍼멘타리프트 기초 스페셜 기획(토너 150ml+에멀전130ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(135000, 'ORIGINAL', (SELECT id FROM product WHERE name = '숨37 퍼멘타리프트 기초 스페셜 기획(토너 150ml+에멀전130ml)'), NOW(), NOW()),
(108000, 'SALE', (SELECT id FROM product WHERE name = '숨37 퍼멘타리프트 기초 스페셜 기획(토너 150ml+에멀전130ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020480805ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '숨37 퍼멘타리프트 기초 스페셜 기획(토너 150ml+에멀전130ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020480806ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '숨37 퍼멘타리프트 기초 스페셜 기획(토너 150ml+에멀전130ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020480801ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '숨37 퍼멘타리프트 기초 스페셜 기획(토너 150ml+에멀전130ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '숨37 퍼멘타리프트 기초 스페셜 기획(토너 150ml+에멀전130ml)';


-- ================================

-- 상품: 숨37 타임 에너지 브라이트 기초 2종 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('숨37 타임 에너지 브라이트 기초 2종 기획',
 '숨37 타임 에너지 브라이트 기초 2종 기획',
 4.9,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '숨37'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[기획] 토너50+에멀전50', 45000, (SELECT id FROM product WHERE name = '숨37 타임 에너지 브라이트 기초 2종 기획'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[기획] 토너120+에멀전100', 82000, (SELECT id FROM product WHERE name = '숨37 타임 에너지 브라이트 기초 2종 기획'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[기획] 토너170+에멀전120', 92000, (SELECT id FROM product WHERE name = '숨37 타임 에너지 브라이트 기초 2종 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(45000, 'ORIGINAL', (SELECT id FROM product WHERE name = '숨37 타임 에너지 브라이트 기초 2종 기획'), NOW(), NOW()),
(45000, 'SALE', (SELECT id FROM product WHERE name = '숨37 타임 에너지 브라이트 기초 2종 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020480909ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '숨37 타임 에너지 브라이트 기초 2종 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020480906ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '숨37 타임 에너지 브라이트 기초 2종 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020480907ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '숨37 타임 에너지 브라이트 기초 2종 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020480905ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '숨37 타임 에너지 브라이트 기초 2종 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020480908ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '숨37 타임 에너지 브라이트 기초 2종 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020480902ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '숨37 타임 에너지 브라이트 기초 2종 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '숨37 타임 에너지 브라이트 기초 2종 기획';


-- ================================

-- 상품: [탄력선물세트] 오휘 에이지 리커버리 3종 SET...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[탄력선물세트] 오휘 에이지 리커버리 3종 SET',
 '[탄력선물세트] 오휘 에이지 리커버리 3종 SET',
 5.0,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '오휘'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[탄력선물세트] 오휘 에이지 리커버리 3종 SET'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(150000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[탄력선물세트] 오휘 에이지 리커버리 3종 SET'), NOW(), NOW()),
(150000, 'SALE', (SELECT id FROM product WHERE name = '[탄력선물세트] 오휘 에이지 리커버리 3종 SET'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020506609ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[탄력선물세트] 오휘 에이지 리커버리 3종 SET'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020506606ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[탄력선물세트] 오휘 에이지 리커버리 3종 SET'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020506604ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[탄력선물세트] 오휘 에이지 리커버리 3종 SET'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[탄력선물세트] 오휘 에이지 리커버리 3종 SET';


-- ================================

-- 상품: 피지오겔 포맨 기획 4종 (DMT 플루이드/DMT크림/시카 플루이드/시카 크림)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('피지오겔 포맨 기획 4종 (DMT 플루이드/DMT크림/시카 플루이드/시카 크림)',
 '피지오겔 포맨 기획 4종 (DMT 플루이드/DMT크림/시카 플루이드/시카 크림)',
 4.9,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '피지오겔'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '피지오겔 포맨 기획 4종 (DMT 플루이드/DMT크림/시카 플루이드/시카 크림)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(65000, 'ORIGINAL', (SELECT id FROM product WHERE name = '피지오겔 포맨 기획 4종 (DMT 플루이드/DMT크림/시카 플루이드/시카 크림)'), NOW(), NOW()),
(65000, 'SALE', (SELECT id FROM product WHERE name = '피지오겔 포맨 기획 4종 (DMT 플루이드/DMT크림/시카 플루이드/시카 크림)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020587308ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '피지오겔 포맨 기획 4종 (DMT 플루이드/DMT크림/시카 플루이드/시카 크림)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020587301ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '피지오겔 포맨 기획 4종 (DMT 플루이드/DMT크림/시카 플루이드/시카 크림)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020587302ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '피지오겔 포맨 기획 4종 (DMT 플루이드/DMT크림/시카 플루이드/시카 크림)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020587309ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '피지오겔 포맨 기획 4종 (DMT 플루이드/DMT크림/시카 플루이드/시카 크림)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '피지오겔 포맨 기획 4종 (DMT 플루이드/DMT크림/시카 플루이드/시카 크림)';


-- ================================

-- 상품: 토리든 다이브인 포맨 저분자 히알루론산 스킨/젤로션 2종 기획(+스킨30ml+젤로션20ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('토리든 다이브인 포맨 저분자 히알루론산 스킨/젤로션 2종 기획(+스킨30ml+젤로션20ml)',
 '토리든 다이브인 포맨 저분자 히알루론산 스킨/젤로션 2종 기획(+스킨30ml+젤로션20ml)',
 4.9,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '토리든'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '토리든 다이브인 포맨 저분자 히알루론산 스킨/젤로션 2종 기획(+스킨30ml+젤로션20ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(37000, 'ORIGINAL', (SELECT id FROM product WHERE name = '토리든 다이브인 포맨 저분자 히알루론산 스킨/젤로션 2종 기획(+스킨30ml+젤로션20ml)'), NOW(), NOW()),
(27830, 'SALE', (SELECT id FROM product WHERE name = '토리든 다이브인 포맨 저분자 히알루론산 스킨/젤로션 2종 기획(+스킨30ml+젤로션20ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020711516ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '토리든 다이브인 포맨 저분자 히알루론산 스킨/젤로션 2종 기획(+스킨30ml+젤로션20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020711517ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '토리든 다이브인 포맨 저분자 히알루론산 스킨/젤로션 2종 기획(+스킨30ml+젤로션20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020711511ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '토리든 다이브인 포맨 저분자 히알루론산 스킨/젤로션 2종 기획(+스킨30ml+젤로션20ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '토리든 다이브인 포맨 저분자 히알루론산 스킨/젤로션 2종 기획(+스킨30ml+젤로션20ml)';


-- ================================

-- 상품: [선물추천] 더후 공진향 탄력 트라이얼 기획세트...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[선물추천] 더후 공진향 탄력 트라이얼 기획세트',
 '[선물추천] 더후 공진향 탄력 트라이얼 기획세트',
 4.9,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더후'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[선물추천] 더후 공진향 탄력 트라이얼 기획세트'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(60000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[선물추천] 더후 공진향 탄력 트라이얼 기획세트'), NOW(), NOW()),
(51000, 'SALE', (SELECT id FROM product WHERE name = '[선물추천] 더후 공진향 탄력 트라이얼 기획세트'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020807528ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[선물추천] 더후 공진향 탄력 트라이얼 기획세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020807525ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[선물추천] 더후 공진향 탄력 트라이얼 기획세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020807507ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[선물추천] 더후 공진향 탄력 트라이얼 기획세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020807517ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[선물추천] 더후 공진향 탄력 트라이얼 기획세트'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[선물추천] 더후 공진향 탄력 트라이얼 기획세트';


-- ================================

-- 상품: 더후 공진향 탄력 2종 기획세트 (토너 150ml+에멀전 110ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('더후 공진향 탄력 2종 기획세트 (토너 150ml+에멀전 110ml)',
 '더후 공진향 탄력 2종 기획세트 (토너 150ml+에멀전 110ml)',
 5.0,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더후'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '더후 공진향 탄력 2종 기획세트 (토너 150ml+에멀전 110ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(140000, 'ORIGINAL', (SELECT id FROM product WHERE name = '더후 공진향 탄력 2종 기획세트 (토너 150ml+에멀전 110ml)'), NOW(), NOW()),
(126000, 'SALE', (SELECT id FROM product WHERE name = '더후 공진향 탄력 2종 기획세트 (토너 150ml+에멀전 110ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020844316ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '더후 공진향 탄력 2종 기획세트 (토너 150ml+에멀전 110ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020844313ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '더후 공진향 탄력 2종 기획세트 (토너 150ml+에멀전 110ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020844301ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '더후 공진향 탄력 2종 기획세트 (토너 150ml+에멀전 110ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020844308ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '더후 공진향 탄력 2종 기획세트 (토너 150ml+에멀전 110ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '더후 공진향 탄력 2종 기획세트 (토너 150ml+에멀전 110ml)';


-- ================================

-- 상품: 스콧해미쉬 블루 블렌디드 토너&로션 에센스 스페셜 기프트...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('스콧해미쉬 블루 블렌디드 토너&로션 에센스 스페셜 기프트',
 '스콧해미쉬 블루 블렌디드 토너&로션 에센스 스페셜 기프트',
 5.0,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '스콧해미쉬'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '스콧해미쉬 블루 블렌디드 토너&로션 에센스 스페셜 기프트'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(110000, 'ORIGINAL', (SELECT id FROM product WHERE name = '스콧해미쉬 블루 블렌디드 토너&로션 에센스 스페셜 기프트'), NOW(), NOW()),
(65000, 'SALE', (SELECT id FROM product WHERE name = '스콧해미쉬 블루 블렌디드 토너&로션 에센스 스페셜 기프트'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020873202ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '스콧해미쉬 블루 블렌디드 토너&로션 에센스 스페셜 기프트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020873201ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '스콧해미쉬 블루 블렌디드 토너&로션 에센스 스페셜 기프트'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '스콧해미쉬 블루 블렌디드 토너&로션 에센스 스페셜 기프트';


-- ================================

-- 상품: 아이디얼 포 맨 퍼펙트 탄력 스킨케어 2종 세트...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아이디얼 포 맨 퍼펙트 탄력 스킨케어 2종 세트',
 '아이디얼 포 맨 퍼펙트 탄력 스킨케어 2종 세트',
 4.9,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이디얼포맨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[기존]탄력 스킨케어 2종+미니어처 3종', 24800, (SELECT id FROM product WHERE name = '아이디얼 포 맨 퍼펙트 탄력 스킨케어 2종 세트'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[리뉴얼]탄력 스킨케어 2종', 24800, (SELECT id FROM product WHERE name = '아이디얼 포 맨 퍼펙트 탄력 스킨케어 2종 세트'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[기존]미니어처 3종+토트넘양말', 24800, (SELECT id FROM product WHERE name = '아이디얼 포 맨 퍼펙트 탄력 스킨케어 2종 세트'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(48000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아이디얼 포 맨 퍼펙트 탄력 스킨케어 2종 세트'), NOW(), NOW()),
(24800, 'SALE', (SELECT id FROM product WHERE name = '아이디얼 포 맨 퍼펙트 탄력 스킨케어 2종 세트'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020889802ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아이디얼 포 맨 퍼펙트 탄력 스킨케어 2종 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020889806ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아이디얼 포 맨 퍼펙트 탄력 스킨케어 2종 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020889804ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아이디얼 포 맨 퍼펙트 탄력 스킨케어 2종 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020889803ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '아이디얼 포 맨 퍼펙트 탄력 스킨케어 2종 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020889809ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '아이디얼 포 맨 퍼펙트 탄력 스킨케어 2종 세트'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아이디얼 포 맨 퍼펙트 탄력 스킨케어 2종 세트';


-- ================================

-- 상품: 우노 스킨 세럼 2종 기획 380ml (스킨 세럼+스킨 모이스처+휩워시블랙 미니)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('우노 스킨 세럼 2종 기획 380ml (스킨 세럼+스킨 모이스처+휩워시블랙 미니)',
 '우노 스킨 세럼 2종 기획 380ml (스킨 세럼+스킨 모이스처+휩워시블랙 미니)',
 4.9,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '우노'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '우노 스킨 세럼 2종 기획 380ml (스킨 세럼+스킨 모이스처+휩워시블랙 미니)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30600, 'ORIGINAL', (SELECT id FROM product WHERE name = '우노 스킨 세럼 2종 기획 380ml (스킨 세럼+스킨 모이스처+휩워시블랙 미니)'), NOW(), NOW()),
(19900, 'SALE', (SELECT id FROM product WHERE name = '우노 스킨 세럼 2종 기획 380ml (스킨 세럼+스킨 모이스처+휩워시블랙 미니)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020898304ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '우노 스킨 세럼 2종 기획 380ml (스킨 세럼+스킨 모이스처+휩워시블랙 미니)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020898306ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '우노 스킨 세럼 2종 기획 380ml (스킨 세럼+스킨 모이스처+휩워시블랙 미니)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020898303ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '우노 스킨 세럼 2종 기획 380ml (스킨 세럼+스킨 모이스처+휩워시블랙 미니)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020898302ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '우노 스킨 세럼 2종 기획 380ml (스킨 세럼+스킨 모이스처+휩워시블랙 미니)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '우노 스킨 세럼 2종 기획 380ml (스킨 세럼+스킨 모이스처+휩워시블랙 미니)';


-- ================================

-- 상품: 더페이스샵 더프레시 포맨 수분 2종 세트(토너180ml+에멀젼170ml+토너32ml+에멀젼...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('더페이스샵 더프레시 포맨 수분 2종 세트(토너180ml+에멀젼170ml+토너32ml+에멀젼32ml)',
 '더페이스샵 더프레시 포맨 수분 2종 세트(토너180ml+에멀젼170ml+토너32ml+에멀젼32ml)',
 5.0,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더페이스샵'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '더페이스샵 더프레시 포맨 수분 2종 세트(토너180ml+에멀젼170ml+토너32ml+에멀젼32ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '더페이스샵 더프레시 포맨 수분 2종 세트(토너180ml+에멀젼170ml+토너32ml+에멀젼32ml)'), NOW(), NOW()),
(26600, 'SALE', (SELECT id FROM product WHERE name = '더페이스샵 더프레시 포맨 수분 2종 세트(토너180ml+에멀젼170ml+토너32ml+에멀젼32ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020971001ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '더페이스샵 더프레시 포맨 수분 2종 세트(토너180ml+에멀젼170ml+토너32ml+에멀젼32ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020971002ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '더페이스샵 더프레시 포맨 수분 2종 세트(토너180ml+에멀젼170ml+토너32ml+에멀젼32ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '더페이스샵 더프레시 포맨 수분 2종 세트(토너180ml+에멀젼170ml+토너32ml+에멀젼32ml)';


-- ================================

-- 상품: 더페이스샵 더젠틀포맨 안티에이징 2종 세트(스킨145ml+로션135ml+스킨32ml+로션3...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('더페이스샵 더젠틀포맨 안티에이징 2종 세트(스킨145ml+로션135ml+스킨32ml+로션32ml)',
 '더페이스샵 더젠틀포맨 안티에이징 2종 세트(스킨145ml+로션135ml+스킨32ml+로션32ml)',
 5.0,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더페이스샵'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '더페이스샵 더젠틀포맨 안티에이징 2종 세트(스킨145ml+로션135ml+스킨32ml+로션32ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(46000, 'ORIGINAL', (SELECT id FROM product WHERE name = '더페이스샵 더젠틀포맨 안티에이징 2종 세트(스킨145ml+로션135ml+스킨32ml+로션32ml)'), NOW(), NOW()),
(46000, 'SALE', (SELECT id FROM product WHERE name = '더페이스샵 더젠틀포맨 안티에이징 2종 세트(스킨145ml+로션135ml+스킨32ml+로션32ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020971502ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '더페이스샵 더젠틀포맨 안티에이징 2종 세트(스킨145ml+로션135ml+스킨32ml+로션32ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020971503ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '더페이스샵 더젠틀포맨 안티에이징 2종 세트(스킨145ml+로션135ml+스킨32ml+로션32ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '더페이스샵 더젠틀포맨 안티에이징 2종 세트(스킨145ml+로션135ml+스킨32ml+로션32ml)';


-- ================================

-- 상품: 더페이스샵 더 블랙밤 스페셜 세트(스킨140ml+로션130ml+스킨32ml+로션32ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('더페이스샵 더 블랙밤 스페셜 세트(스킨140ml+로션130ml+스킨32ml+로션32ml)',
 '더페이스샵 더 블랙밤 스페셜 세트(스킨140ml+로션130ml+스킨32ml+로션32ml)',
 5.0,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더페이스샵'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '더페이스샵 더 블랙밤 스페셜 세트(스킨140ml+로션130ml+스킨32ml+로션32ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(52000, 'ORIGINAL', (SELECT id FROM product WHERE name = '더페이스샵 더 블랙밤 스페셜 세트(스킨140ml+로션130ml+스킨32ml+로션32ml)'), NOW(), NOW()),
(52000, 'SALE', (SELECT id FROM product WHERE name = '더페이스샵 더 블랙밤 스페셜 세트(스킨140ml+로션130ml+스킨32ml+로션32ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020973201ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '더페이스샵 더 블랙밤 스페셜 세트(스킨140ml+로션130ml+스킨32ml+로션32ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020973202ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '더페이스샵 더 블랙밤 스페셜 세트(스킨140ml+로션130ml+스킨32ml+로션32ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '더페이스샵 더 블랙밤 스페셜 세트(스킨140ml+로션130ml+스킨32ml+로션32ml)';


-- ================================

-- 상품: [리프팅/선물세트]AHC 프리미어 앰플 인 아이크림 기프트 세트 40ml*4ea...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[리프팅/선물세트]AHC 프리미어 앰플 인 아이크림 기프트 세트 40ml*4ea',
 '[리프팅/선물세트]AHC 프리미어 앰플 인 아이크림 기프트 세트 40ml*4ea',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'AHC'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[리프팅/선물세트]AHC 프리미어 앰플 인 아이크림 기프트 세트 40ml*4ea'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(124000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[리프팅/선물세트]AHC 프리미어 앰플 인 아이크림 기프트 세트 40ml*4ea'), NOW(), NOW()),
(38000, 'SALE', (SELECT id FROM product WHERE name = '[리프팅/선물세트]AHC 프리미어 앰플 인 아이크림 기프트 세트 40ml*4ea'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021029403ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[리프팅/선물세트]AHC 프리미어 앰플 인 아이크림 기프트 세트 40ml*4ea'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021029405ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[리프팅/선물세트]AHC 프리미어 앰플 인 아이크림 기프트 세트 40ml*4ea'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021029404ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[리프팅/선물세트]AHC 프리미어 앰플 인 아이크림 기프트 세트 40ml*4ea'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021029402ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[리프팅/선물세트]AHC 프리미어 앰플 인 아이크림 기프트 세트 40ml*4ea'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021029401ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[리프팅/선물세트]AHC 프리미어 앰플 인 아이크림 기프트 세트 40ml*4ea'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[리프팅/선물세트]AHC 프리미어 앰플 인 아이크림 기프트 세트 40ml*4ea';


-- ================================

-- 상품: [올인원 증정기획] 더샘 에코 에너지 스킨케어 2종 세트...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[올인원 증정기획] 더샘 에코 에너지 스킨케어 2종 세트',
 '[올인원 증정기획] 더샘 에코 에너지 스킨케어 2종 세트',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더샘'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[올인원 증정기획] 더샘 에코 에너지 스킨케어 2종 세트'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[올인원 증정기획] 더샘 에코 에너지 스킨케어 2종 세트'), NOW(), NOW()),
(39000, 'SALE', (SELECT id FROM product WHERE name = '[올인원 증정기획] 더샘 에코 에너지 스킨케어 2종 세트'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021047401ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[올인원 증정기획] 더샘 에코 에너지 스킨케어 2종 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021047403ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[올인원 증정기획] 더샘 에코 에너지 스킨케어 2종 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021047405ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[올인원 증정기획] 더샘 에코 에너지 스킨케어 2종 세트'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[올인원 증정기획] 더샘 에코 에너지 스킨케어 2종 세트';


-- ================================

-- 상품: [여행용 키트 증정기획] 더샘 클래식 옴므 스페셜 2종 세트...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[여행용 키트 증정기획] 더샘 클래식 옴므 스페셜 2종 세트',
 '[여행용 키트 증정기획] 더샘 클래식 옴므 스페셜 2종 세트',
 5.0,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더샘'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[여행용 키트 증정기획] 더샘 클래식 옴므 스페셜 2종 세트'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(56000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[여행용 키트 증정기획] 더샘 클래식 옴므 스페셜 2종 세트'), NOW(), NOW()),
(56000, 'SALE', (SELECT id FROM product WHERE name = '[여행용 키트 증정기획] 더샘 클래식 옴므 스페셜 2종 세트'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021047801ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[여행용 키트 증정기획] 더샘 클래식 옴므 스페셜 2종 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021047803ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[여행용 키트 증정기획] 더샘 클래식 옴므 스페셜 2종 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021047805ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[여행용 키트 증정기획] 더샘 클래식 옴므 스페셜 2종 세트'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[여행용 키트 증정기획] 더샘 클래식 옴므 스페셜 2종 세트';


-- ================================

-- 상품: [여행용키트 증정기획] 더샘 미네랄 옴므 블랙 이엑스 2종 세트...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[여행용키트 증정기획] 더샘 미네랄 옴므 블랙 이엑스 2종 세트',
 '[여행용키트 증정기획] 더샘 미네랄 옴므 블랙 이엑스 2종 세트',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더샘'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[여행용키트 증정기획] 더샘 미네랄 옴므 블랙 이엑스 2종 세트'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(46000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[여행용키트 증정기획] 더샘 미네랄 옴므 블랙 이엑스 2종 세트'), NOW(), NOW()),
(32200, 'SALE', (SELECT id FROM product WHERE name = '[여행용키트 증정기획] 더샘 미네랄 옴므 블랙 이엑스 2종 세트'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021048102ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[여행용키트 증정기획] 더샘 미네랄 옴므 블랙 이엑스 2종 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021048104ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[여행용키트 증정기획] 더샘 미네랄 옴므 블랙 이엑스 2종 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021048101ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[여행용키트 증정기획] 더샘 미네랄 옴므 블랙 이엑스 2종 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021048106ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[여행용키트 증정기획] 더샘 미네랄 옴므 블랙 이엑스 2종 세트'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[여행용키트 증정기획] 더샘 미네랄 옴므 블랙 이엑스 2종 세트';


-- ================================

-- 상품: 설화수맨 기초 2종 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('설화수맨 기초 2종 기획',
 '설화수맨 기초 2종 기획',
 5.0,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '설화수'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '설화수맨 기초 2종 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(125000, 'ORIGINAL', (SELECT id FROM product WHERE name = '설화수맨 기초 2종 기획'), NOW(), NOW()),
(112500, 'SALE', (SELECT id FROM product WHERE name = '설화수맨 기초 2종 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021064616ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '설화수맨 기초 2종 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021064614ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '설화수맨 기초 2종 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021064613ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '설화수맨 기초 2종 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021064605ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '설화수맨 기초 2종 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '설화수맨 기초 2종 기획';


-- ================================

-- 상품: [단독기획] 아누아 어성초 77 깐달걀 토너 350ml + 어성초 산뜻진정 로션 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[단독기획] 아누아 어성초 77 깐달걀 토너 350ml + 어성초 산뜻진정 로션 200ml 기획세트',
 '[단독기획] 아누아 어성초 77 깐달걀 토너 350ml + 어성초 산뜻진정 로션 200ml 기획세트',
 4.9,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아누아'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[단독기획] 아누아 어성초 77 깐달걀 토너 350ml + 어성초 산뜻진정 로션 200ml 기획세트'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(49700, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독기획] 아누아 어성초 77 깐달걀 토너 350ml + 어성초 산뜻진정 로션 200ml 기획세트'), NOW(), NOW()),
(49700, 'SALE', (SELECT id FROM product WHERE name = '[단독기획] 아누아 어성초 77 깐달걀 토너 350ml + 어성초 산뜻진정 로션 200ml 기획세트'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021114805ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[단독기획] 아누아 어성초 77 깐달걀 토너 350ml + 어성초 산뜻진정 로션 200ml 기획세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021114801ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[단독기획] 아누아 어성초 77 깐달걀 토너 350ml + 어성초 산뜻진정 로션 200ml 기획세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021114803ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[단독기획] 아누아 어성초 77 깐달걀 토너 350ml + 어성초 산뜻진정 로션 200ml 기획세트'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[단독기획] 아누아 어성초 77 깐달걀 토너 350ml + 어성초 산뜻진정 로션 200ml 기획세트';


-- ================================

-- 상품: 피토메르 올리고포스 세럼 이드라땅 어드밴스드 30ml 세트 (+로제비자쥐 50ml+이드라 ...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('피토메르 올리고포스 세럼 이드라땅 어드밴스드 30ml 세트 (+로제비자쥐 50ml+이드라 오리지널 멜팅크림 30ml)',
 '피토메르 올리고포스 세럼 이드라땅 어드밴스드 30ml 세트 (+로제비자쥐 50ml+이드라 오리지널 멜팅크림 30ml)',
 5.0,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '피토메르'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '피토메르 올리고포스 세럼 이드라땅 어드밴스드 30ml 세트 (+로제비자쥐 50ml+이드라 오리지널 멜팅크림 30ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(241000, 'ORIGINAL', (SELECT id FROM product WHERE name = '피토메르 올리고포스 세럼 이드라땅 어드밴스드 30ml 세트 (+로제비자쥐 50ml+이드라 오리지널 멜팅크림 30ml)'), NOW(), NOW()),
(241000, 'SALE', (SELECT id FROM product WHERE name = '피토메르 올리고포스 세럼 이드라땅 어드밴스드 30ml 세트 (+로제비자쥐 50ml+이드라 오리지널 멜팅크림 30ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021425002ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '피토메르 올리고포스 세럼 이드라땅 어드밴스드 30ml 세트 (+로제비자쥐 50ml+이드라 오리지널 멜팅크림 30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021425001ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '피토메르 올리고포스 세럼 이드라땅 어드밴스드 30ml 세트 (+로제비자쥐 50ml+이드라 오리지널 멜팅크림 30ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '피토메르 올리고포스 세럼 이드라땅 어드밴스드 30ml 세트 (+로제비자쥐 50ml+이드라 오리지널 멜팅크림 30ml)';


-- ================================

-- 상품: 톰 글레이즈드 스킨 프로그램 (1+2+3+마스크 6매입+매그-업 브러시세트+도자기 샬레 세...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('톰 글레이즈드 스킨 프로그램 (1+2+3+마스크 6매입+매그-업 브러시세트+도자기 샬레 세트), 베이직 세트 (택 1)',
 '톰 글레이즈드 스킨 프로그램 (1+2+3+마스크 6매입+매그-업 브러시세트+도자기 샬레 세트), 베이직 세트 (택 1)',
 4.6,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '톰'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '톰 글레이즈드 스킨 프로그램 (1+2+3+마스크 6매입+매그-업 브러시세트+도자기 샬레 세트), 베이직 세트 (택 1)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(299000, 'ORIGINAL', (SELECT id FROM product WHERE name = '톰 글레이즈드 스킨 프로그램 (1+2+3+마스크 6매입+매그-업 브러시세트+도자기 샬레 세트), 베이직 세트 (택 1)'), NOW(), NOW()),
(188370, 'SALE', (SELECT id FROM product WHERE name = '톰 글레이즈드 스킨 프로그램 (1+2+3+마스크 6매입+매그-업 브러시세트+도자기 샬레 세트), 베이직 세트 (택 1)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021429101ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '톰 글레이즈드 스킨 프로그램 (1+2+3+마스크 6매입+매그-업 브러시세트+도자기 샬레 세트), 베이직 세트 (택 1)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021429103ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '톰 글레이즈드 스킨 프로그램 (1+2+3+마스크 6매입+매그-업 브러시세트+도자기 샬레 세트), 베이직 세트 (택 1)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021429102ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '톰 글레이즈드 스킨 프로그램 (1+2+3+마스크 6매입+매그-업 브러시세트+도자기 샬레 세트), 베이직 세트 (택 1)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '톰 글레이즈드 스킨 프로그램 (1+2+3+마스크 6매입+매그-업 브러시세트+도자기 샬레 세트), 베이직 세트 (택 1)';


-- ================================

-- 상품: [입문자용 패키지]바버 앰플 컨센트레이트 화이트 컬렉션 (2mlx7병)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[입문자용 패키지]바버 앰플 컨센트레이트 화이트 컬렉션 (2mlx7병)',
 '[입문자용 패키지]바버 앰플 컨센트레이트 화이트 컬렉션 (2mlx7병)',
 1.0,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바버'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[입문자용 패키지]바버 앰플 컨센트레이트 화이트 컬렉션 (2mlx7병)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(42000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[입문자용 패키지]바버 앰플 컨센트레이트 화이트 컬렉션 (2mlx7병)'), NOW(), NOW()),
(30500, 'SALE', (SELECT id FROM product WHERE name = '[입문자용 패키지]바버 앰플 컨센트레이트 화이트 컬렉션 (2mlx7병)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021485106ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[입문자용 패키지]바버 앰플 컨센트레이트 화이트 컬렉션 (2mlx7병)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021485105ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[입문자용 패키지]바버 앰플 컨센트레이트 화이트 컬렉션 (2mlx7병)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021485104ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[입문자용 패키지]바버 앰플 컨센트레이트 화이트 컬렉션 (2mlx7병)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021485103ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[입문자용 패키지]바버 앰플 컨센트레이트 화이트 컬렉션 (2mlx7병)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[입문자용 패키지]바버 앰플 컨센트레이트 화이트 컬렉션 (2mlx7병)';


-- ================================

-- 상품: 오딧세이 챕터5xMMY 생츄어리 2종세트(토너 140ml+모이스처라이저 110ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('오딧세이 챕터5xMMY 생츄어리 2종세트(토너 140ml+모이스처라이저 110ml)',
 '오딧세이 챕터5xMMY 생츄어리 2종세트(토너 140ml+모이스처라이저 110ml)',
 5.0,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '오딧세이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '오딧세이 챕터5xMMY 생츄어리 2종세트(토너 140ml+모이스처라이저 110ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(82000, 'ORIGINAL', (SELECT id FROM product WHERE name = '오딧세이 챕터5xMMY 생츄어리 2종세트(토너 140ml+모이스처라이저 110ml)'), NOW(), NOW()),
(59900, 'SALE', (SELECT id FROM product WHERE name = '오딧세이 챕터5xMMY 생츄어리 2종세트(토너 140ml+모이스처라이저 110ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021559117ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '오딧세이 챕터5xMMY 생츄어리 2종세트(토너 140ml+모이스처라이저 110ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021559123ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '오딧세이 챕터5xMMY 생츄어리 2종세트(토너 140ml+모이스처라이저 110ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021559122ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '오딧세이 챕터5xMMY 생츄어리 2종세트(토너 140ml+모이스처라이저 110ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021559121ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '오딧세이 챕터5xMMY 생츄어리 2종세트(토너 140ml+모이스처라이저 110ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021559120ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '오딧세이 챕터5xMMY 생츄어리 2종세트(토너 140ml+모이스처라이저 110ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021559119ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '오딧세이 챕터5xMMY 생츄어리 2종세트(토너 140ml+모이스처라이저 110ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '오딧세이 챕터5xMMY 생츄어리 2종세트(토너 140ml+모이스처라이저 110ml)';


-- ================================

-- 상품: 톰 프로그램 괄사 기획 세트(1+2+3+마스크 6매입+매그-업 브러시세트+도자기 샬레 세트...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('톰 프로그램 괄사 기획 세트(1+2+3+마스크 6매입+매그-업 브러시세트+도자기 샬레 세트+도자기 괄사)',
 '톰 프로그램 괄사 기획 세트(1+2+3+마스크 6매입+매그-업 브러시세트+도자기 샬레 세트+도자기 괄사)',
 4.6,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '톰'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '톰 프로그램 괄사 기획 세트(1+2+3+마스크 6매입+매그-업 브러시세트+도자기 샬레 세트+도자기 괄사)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(388000, 'ORIGINAL', (SELECT id FROM product WHERE name = '톰 프로그램 괄사 기획 세트(1+2+3+마스크 6매입+매그-업 브러시세트+도자기 샬레 세트+도자기 괄사)'), NOW(), NOW()),
(219000, 'SALE', (SELECT id FROM product WHERE name = '톰 프로그램 괄사 기획 세트(1+2+3+마스크 6매입+매그-업 브러시세트+도자기 샬레 세트+도자기 괄사)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021695801ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '톰 프로그램 괄사 기획 세트(1+2+3+마스크 6매입+매그-업 브러시세트+도자기 샬레 세트+도자기 괄사)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021695806ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '톰 프로그램 괄사 기획 세트(1+2+3+마스크 6매입+매그-업 브러시세트+도자기 샬레 세트+도자기 괄사)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021695805ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '톰 프로그램 괄사 기획 세트(1+2+3+마스크 6매입+매그-업 브러시세트+도자기 샬레 세트+도자기 괄사)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021695804ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '톰 프로그램 괄사 기획 세트(1+2+3+마스크 6매입+매그-업 브러시세트+도자기 샬레 세트+도자기 괄사)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021695803ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '톰 프로그램 괄사 기획 세트(1+2+3+마스크 6매입+매그-업 브러시세트+도자기 샬레 세트+도자기 괄사)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021695802ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '톰 프로그램 괄사 기획 세트(1+2+3+마스크 6매입+매그-업 브러시세트+도자기 샬레 세트+도자기 괄사)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '톰 프로그램 괄사 기획 세트(1+2+3+마스크 6매입+매그-업 브러시세트+도자기 샬레 세트+도자기 괄사)';


-- ================================

-- 상품: 아이디얼포맨 퍼펙트 탄력 2종 세트 토트넘 홋스퍼 에디션(미니어처3종+콜라보양말)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아이디얼포맨 퍼펙트 탄력 2종 세트 토트넘 홋스퍼 에디션(미니어처3종+콜라보양말)',
 '아이디얼포맨 퍼펙트 탄력 2종 세트 토트넘 홋스퍼 에디션(미니어처3종+콜라보양말)',
 4.9,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이디얼포맨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아이디얼포맨 퍼펙트 탄력 2종 세트 토트넘 홋스퍼 에디션(미니어처3종+콜라보양말)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(48000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아이디얼포맨 퍼펙트 탄력 2종 세트 토트넘 홋스퍼 에디션(미니어처3종+콜라보양말)'), NOW(), NOW()),
(24800, 'SALE', (SELECT id FROM product WHERE name = '아이디얼포맨 퍼펙트 탄력 2종 세트 토트넘 홋스퍼 에디션(미니어처3종+콜라보양말)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021739202ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아이디얼포맨 퍼펙트 탄력 2종 세트 토트넘 홋스퍼 에디션(미니어처3종+콜라보양말)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021739203ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아이디얼포맨 퍼펙트 탄력 2종 세트 토트넘 홋스퍼 에디션(미니어처3종+콜라보양말)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021739204ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아이디얼포맨 퍼펙트 탄력 2종 세트 토트넘 홋스퍼 에디션(미니어처3종+콜라보양말)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아이디얼포맨 퍼펙트 탄력 2종 세트 토트넘 홋스퍼 에디션(미니어처3종+콜라보양말)';


-- ================================

-- 상품: [추석기프트특가/한정기획] 라운드랩 포 맨 자작나무 토너/크림 2종 기획 (+클레이팩 50...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[추석기프트특가/한정기획] 라운드랩 포 맨 자작나무 토너/크림 2종 기획 (+클레이팩 50ml)',
 '[추석기프트특가/한정기획] 라운드랩 포 맨 자작나무 토너/크림 2종 기획 (+클레이팩 50ml)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라운드랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('+ 클레이팩 50ml 한정기획', 29740, (SELECT id FROM product WHERE name = '[추석기프트특가/한정기획] 라운드랩 포 맨 자작나무 토너/크림 2종 기획 (+클레이팩 50ml)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('+ 쉐이빙폼 40ml 기획', 29740, (SELECT id FROM product WHERE name = '[추석기프트특가/한정기획] 라운드랩 포 맨 자작나무 토너/크림 2종 기획 (+클레이팩 50ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(44000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[추석기프트특가/한정기획] 라운드랩 포 맨 자작나무 토너/크림 2종 기획 (+클레이팩 50ml)'), NOW(), NOW()),
(29740, 'SALE', (SELECT id FROM product WHERE name = '[추석기프트특가/한정기획] 라운드랩 포 맨 자작나무 토너/크림 2종 기획 (+클레이팩 50ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021752207ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[추석기프트특가/한정기획] 라운드랩 포 맨 자작나무 토너/크림 2종 기획 (+클레이팩 50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021752205ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[추석기프트특가/한정기획] 라운드랩 포 맨 자작나무 토너/크림 2종 기획 (+클레이팩 50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021752204ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[추석기프트특가/한정기획] 라운드랩 포 맨 자작나무 토너/크림 2종 기획 (+클레이팩 50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021752206ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[추석기프트특가/한정기획] 라운드랩 포 맨 자작나무 토너/크림 2종 기획 (+클레이팩 50ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[추석기프트특가/한정기획] 라운드랩 포 맨 자작나무 토너/크림 2종 기획 (+클레이팩 50ml)';


-- ================================

-- 상품: 하다라보 고쿠쥰 2종 세트 (로션 170ml+밀크 140ml+세안밴드)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('하다라보 고쿠쥰 2종 세트 (로션 170ml+밀크 140ml+세안밴드)',
 '하다라보 고쿠쥰 2종 세트 (로션 170ml+밀크 140ml+세안밴드)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '하다라보'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '하다라보 고쿠쥰 2종 세트 (로션 170ml+밀크 140ml+세안밴드)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '하다라보 고쿠쥰 2종 세트 (로션 170ml+밀크 140ml+세안밴드)'), NOW(), NOW()),
(30000, 'SALE', (SELECT id FROM product WHERE name = '하다라보 고쿠쥰 2종 세트 (로션 170ml+밀크 140ml+세안밴드)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022155702ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '하다라보 고쿠쥰 2종 세트 (로션 170ml+밀크 140ml+세안밴드)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022155705ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '하다라보 고쿠쥰 2종 세트 (로션 170ml+밀크 140ml+세안밴드)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022155704ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '하다라보 고쿠쥰 2종 세트 (로션 170ml+밀크 140ml+세안밴드)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022155703ko.png?l=ko', 4, (SELECT id FROM product WHERE name = '하다라보 고쿠쥰 2종 세트 (로션 170ml+밀크 140ml+세안밴드)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '하다라보 고쿠쥰 2종 세트 (로션 170ml+밀크 140ml+세안밴드)';


-- ================================

-- 상품: 톰 원데이 에스테틱 글레이즈드 프로그램...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('톰 원데이 에스테틱 글레이즈드 프로그램',
 '톰 원데이 에스테틱 글레이즈드 프로그램',
 4.9,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '톰'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '톰 원데이 에스테틱 글레이즈드 프로그램'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(45900, 'ORIGINAL', (SELECT id FROM product WHERE name = '톰 원데이 에스테틱 글레이즈드 프로그램'), NOW(), NOW()),
(29900, 'SALE', (SELECT id FROM product WHERE name = '톰 원데이 에스테틱 글레이즈드 프로그램'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022268101ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '톰 원데이 에스테틱 글레이즈드 프로그램'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022268102ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '톰 원데이 에스테틱 글레이즈드 프로그램'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '톰 원데이 에스테틱 글레이즈드 프로그램';


-- ================================

-- 상품: 마몽드 맨 리차징 토너&로션 2종 세트...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('마몽드 맨 리차징 토너&로션 2종 세트',
 '마몽드 맨 리차징 토너&로션 2종 세트',
 5.0,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '마몽드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '마몽드 맨 리차징 토너&로션 2종 세트'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39000, 'ORIGINAL', (SELECT id FROM product WHERE name = '마몽드 맨 리차징 토너&로션 2종 세트'), NOW(), NOW()),
(39000, 'SALE', (SELECT id FROM product WHERE name = '마몽드 맨 리차징 토너&로션 2종 세트'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022274201ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '마몽드 맨 리차징 토너&로션 2종 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022274204ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '마몽드 맨 리차징 토너&로션 2종 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022274203ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '마몽드 맨 리차징 토너&로션 2종 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022274202ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '마몽드 맨 리차징 토너&로션 2종 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022274206ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '마몽드 맨 리차징 토너&로션 2종 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022274207ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '마몽드 맨 리차징 토너&로션 2종 세트'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '마몽드 맨 리차징 토너&로션 2종 세트';


-- ================================

-- 상품: 아이디플라코스메틱 엑소브이 프로리프팅 세트(리프팅 앰플 5ml + MTS 롤러) (리뉴얼)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아이디플라코스메틱 엑소브이 프로리프팅 세트(리프팅 앰플 5ml + MTS 롤러) (리뉴얼)(2503)',
 '아이디플라코스메틱 엑소브이 프로리프팅 세트(리프팅 앰플 5ml + MTS 롤러) (리뉴얼)(2503)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이디플라코스메틱'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아이디플라코스메틱 엑소브이 프로리프팅 세트(리프팅 앰플 5ml + MTS 롤러) (리뉴얼)(2503)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(37100, 'ORIGINAL', (SELECT id FROM product WHERE name = '아이디플라코스메틱 엑소브이 프로리프팅 세트(리프팅 앰플 5ml + MTS 롤러) (리뉴얼)(2503)'), NOW(), NOW()),
(37100, 'SALE', (SELECT id FROM product WHERE name = '아이디플라코스메틱 엑소브이 프로리프팅 세트(리프팅 앰플 5ml + MTS 롤러) (리뉴얼)(2503)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022473512ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아이디플라코스메틱 엑소브이 프로리프팅 세트(리프팅 앰플 5ml + MTS 롤러) (리뉴얼)(2503)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022473511ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아이디플라코스메틱 엑소브이 프로리프팅 세트(리프팅 앰플 5ml + MTS 롤러) (리뉴얼)(2503)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022473510ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아이디플라코스메틱 엑소브이 프로리프팅 세트(리프팅 앰플 5ml + MTS 롤러) (리뉴얼)(2503)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022473509ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '아이디플라코스메틱 엑소브이 프로리프팅 세트(리프팅 앰플 5ml + MTS 롤러) (리뉴얼)(2503)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022473505ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '아이디플라코스메틱 엑소브이 프로리프팅 세트(리프팅 앰플 5ml + MTS 롤러) (리뉴얼)(2503)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022473503ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '아이디플라코스메틱 엑소브이 프로리프팅 세트(리프팅 앰플 5ml + MTS 롤러) (리뉴얼)(2503)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아이디플라코스메틱 엑소브이 프로리프팅 세트(리프팅 앰플 5ml + MTS 롤러) (리뉴얼)(2503)';


-- ================================

-- 상품: [한정수량/선물용] 연작 카밍 앤 컴포팅 스페셜 세트...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[한정수량/선물용] 연작 카밍 앤 컴포팅 스페셜 세트',
 '[한정수량/선물용] 연작 카밍 앤 컴포팅 스페셜 세트',
 5.0,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '연작'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[한정수량/선물용] 연작 카밍 앤 컴포팅 스페셜 세트'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(85000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[한정수량/선물용] 연작 카밍 앤 컴포팅 스페셜 세트'), NOW(), NOW()),
(80750, 'SALE', (SELECT id FROM product WHERE name = '[한정수량/선물용] 연작 카밍 앤 컴포팅 스페셜 세트'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022506401ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[한정수량/선물용] 연작 카밍 앤 컴포팅 스페셜 세트'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[한정수량/선물용] 연작 카밍 앤 컴포팅 스페셜 세트';


-- ================================

-- 상품: [클렌징폼증정] 이니스프리 포레스트 프레시 스킨 로션 2종 세트...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[클렌징폼증정] 이니스프리 포레스트 프레시 스킨 로션 2종 세트',
 '[클렌징폼증정] 이니스프리 포레스트 프레시 스킨 로션 2종 세트',
 5.0,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '이니스프리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[클렌징폼증정] 이니스프리 포레스트 프레시 스킨 로션 2종 세트'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(47000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[클렌징폼증정] 이니스프리 포레스트 프레시 스킨 로션 2종 세트'), NOW(), NOW()),
(47000, 'SALE', (SELECT id FROM product WHERE name = '[클렌징폼증정] 이니스프리 포레스트 프레시 스킨 로션 2종 세트'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022609709ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[클렌징폼증정] 이니스프리 포레스트 프레시 스킨 로션 2종 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022609707ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[클렌징폼증정] 이니스프리 포레스트 프레시 스킨 로션 2종 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022609706ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[클렌징폼증정] 이니스프리 포레스트 프레시 스킨 로션 2종 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022609705ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[클렌징폼증정] 이니스프리 포레스트 프레시 스킨 로션 2종 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022609704ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[클렌징폼증정] 이니스프리 포레스트 프레시 스킨 로션 2종 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022609703ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[클렌징폼증정] 이니스프리 포레스트 프레시 스킨 로션 2종 세트'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[클렌징폼증정] 이니스프리 포레스트 프레시 스킨 로션 2종 세트';


-- ================================

-- 상품: 아이디얼포맨 파워쿨링 애프터 쉐이브 2종 세트...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아이디얼포맨 파워쿨링 애프터 쉐이브 2종 세트',
 '아이디얼포맨 파워쿨링 애프터 쉐이브 2종 세트',
 4.9,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이디얼포맨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아이디얼포맨 파워쿨링 애프터 쉐이브 2종 세트'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아이디얼포맨 파워쿨링 애프터 쉐이브 2종 세트'), NOW(), NOW()),
(24000, 'SALE', (SELECT id FROM product WHERE name = '아이디얼포맨 파워쿨링 애프터 쉐이브 2종 세트'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022807308ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아이디얼포맨 파워쿨링 애프터 쉐이브 2종 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022807307ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아이디얼포맨 파워쿨링 애프터 쉐이브 2종 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022807305ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아이디얼포맨 파워쿨링 애프터 쉐이브 2종 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022807304ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '아이디얼포맨 파워쿨링 애프터 쉐이브 2종 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022807302ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '아이디얼포맨 파워쿨링 애프터 쉐이브 2종 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022807306ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '아이디얼포맨 파워쿨링 애프터 쉐이브 2종 세트'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아이디얼포맨 파워쿨링 애프터 쉐이브 2종 세트';


-- ================================

-- 상품: 토리든 밸런스풀 포맨 시카 클리어링 스킨/로션 2종 기획 (+스킨30ml+로션20ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('토리든 밸런스풀 포맨 시카 클리어링 스킨/로션 2종 기획 (+스킨30ml+로션20ml)',
 '토리든 밸런스풀 포맨 시카 클리어링 스킨/로션 2종 기획 (+스킨30ml+로션20ml)',
 4.7,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '토리든'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '토리든 밸런스풀 포맨 시카 클리어링 스킨/로션 2종 기획 (+스킨30ml+로션20ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '토리든 밸런스풀 포맨 시카 클리어링 스킨/로션 2종 기획 (+스킨30ml+로션20ml)'), NOW(), NOW()),
(27830, 'SALE', (SELECT id FROM product WHERE name = '토리든 밸런스풀 포맨 시카 클리어링 스킨/로션 2종 기획 (+스킨30ml+로션20ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022895103ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '토리든 밸런스풀 포맨 시카 클리어링 스킨/로션 2종 기획 (+스킨30ml+로션20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022895104ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '토리든 밸런스풀 포맨 시카 클리어링 스킨/로션 2종 기획 (+스킨30ml+로션20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022895105ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '토리든 밸런스풀 포맨 시카 클리어링 스킨/로션 2종 기획 (+스킨30ml+로션20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022895106ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '토리든 밸런스풀 포맨 시카 클리어링 스킨/로션 2종 기획 (+스킨30ml+로션20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022895108ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '토리든 밸런스풀 포맨 시카 클리어링 스킨/로션 2종 기획 (+스킨30ml+로션20ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '토리든 밸런스풀 포맨 시카 클리어링 스킨/로션 2종 기획 (+스킨30ml+로션20ml)';


-- ================================

-- 상품: [NEW] 아이오페 XMD 스템3 2종 세트 (소프너 130ml + 에멀전 130ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW] 아이오페 XMD 스템3 2종 세트 (소프너 130ml + 에멀전 130ml)',
 '[NEW] 아이오페 XMD 스템3 2종 세트 (소프너 130ml + 에멀전 130ml)',
 5.0,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이오페'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW] 아이오페 XMD 스템3 2종 세트 (소프너 130ml + 에멀전 130ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(95000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW] 아이오페 XMD 스템3 2종 세트 (소프너 130ml + 에멀전 130ml)'), NOW(), NOW()),
(95000, 'SALE', (SELECT id FROM product WHERE name = '[NEW] 아이오페 XMD 스템3 2종 세트 (소프너 130ml + 에멀전 130ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022949301ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW] 아이오페 XMD 스템3 2종 세트 (소프너 130ml + 에멀전 130ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW] 아이오페 XMD 스템3 2종 세트 (소프너 130ml + 에멀전 130ml)';


-- ================================

-- 상품: (NEW) 헤라 옴므 블랙 액티브 세트 2종(토너 125ml+에멀전 110ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('(NEW) 헤라 옴므 블랙 액티브 세트 2종(토너 125ml+에멀전 110ml)',
 '(NEW) 헤라 옴므 블랙 액티브 세트 2종(토너 125ml+에멀전 110ml)',
 5.0,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '헤라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '(NEW) 헤라 옴므 블랙 액티브 세트 2종(토너 125ml+에멀전 110ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(116000, 'ORIGINAL', (SELECT id FROM product WHERE name = '(NEW) 헤라 옴므 블랙 액티브 세트 2종(토너 125ml+에멀전 110ml)'), NOW(), NOW()),
(116000, 'SALE', (SELECT id FROM product WHERE name = '(NEW) 헤라 옴므 블랙 액티브 세트 2종(토너 125ml+에멀전 110ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022958001ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '(NEW) 헤라 옴므 블랙 액티브 세트 2종(토너 125ml+에멀전 110ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022958003ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '(NEW) 헤라 옴므 블랙 액티브 세트 2종(토너 125ml+에멀전 110ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022958002ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '(NEW) 헤라 옴므 블랙 액티브 세트 2종(토너 125ml+에멀전 110ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '(NEW) 헤라 옴므 블랙 액티브 세트 2종(토너 125ml+에멀전 110ml)';


-- ================================

-- 상품: [NEW]아이디얼포맨 퍼펙트 탄력 스킨&로션 2종 세트...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW]아이디얼포맨 퍼펙트 탄력 스킨&로션 2종 세트',
 '[NEW]아이디얼포맨 퍼펙트 탄력 스킨&로션 2종 세트',
 4.9,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이디얼포맨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW]아이디얼포맨 퍼펙트 탄력 스킨&로션 2종 세트'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW]아이디얼포맨 퍼펙트 탄력 스킨&로션 2종 세트'), NOW(), NOW()),
(24800, 'SALE', (SELECT id FROM product WHERE name = '[NEW]아이디얼포맨 퍼펙트 탄력 스킨&로션 2종 세트'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023086801ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW]아이디얼포맨 퍼펙트 탄력 스킨&로션 2종 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023086805ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW]아이디얼포맨 퍼펙트 탄력 스킨&로션 2종 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023086804ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW]아이디얼포맨 퍼펙트 탄력 스킨&로션 2종 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023086803ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[NEW]아이디얼포맨 퍼펙트 탄력 스킨&로션 2종 세트'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW]아이디얼포맨 퍼펙트 탄력 스킨&로션 2종 세트';


-- ================================

-- 상품: [올리브영단독기획/선물추천]눅스 윌 프로디쥬스 미니오일 기프트 2종 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[올리브영단독기획/선물추천]눅스 윌 프로디쥬스 미니오일 기프트 2종 기획',
 '[올리브영단독기획/선물추천]눅스 윌 프로디쥬스 미니오일 기프트 2종 기획',
 4.9,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '눅스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[올리브영단독기획/선물추천]눅스 윌 프로디쥬스 미니오일 기프트 2종 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(21000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[올리브영단독기획/선물추천]눅스 윌 프로디쥬스 미니오일 기프트 2종 기획'), NOW(), NOW()),
(16800, 'SALE', (SELECT id FROM product WHERE name = '[올리브영단독기획/선물추천]눅스 윌 프로디쥬스 미니오일 기프트 2종 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023152201ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[올리브영단독기획/선물추천]눅스 윌 프로디쥬스 미니오일 기프트 2종 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[올리브영단독기획/선물추천]눅스 윌 프로디쥬스 미니오일 기프트 2종 기획';


-- ================================

-- 상품: [추석기프트특가/9월 올영픽] 라운드랩 포 맨 소나무 진정 토너/크림 2종 기획 (토너30...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[추석기프트특가/9월 올영픽] 라운드랩 포 맨 소나무 진정 토너/크림 2종 기획 (토너300ml+크림75ml)',
 '[추석기프트특가/9월 올영픽] 라운드랩 포 맨 소나무 진정 토너/크림 2종 기획 (토너300ml+크림75ml)',
 4.9,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라운드랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('토너300ml 대용량+크림75ml', 29210, (SELECT id FROM product WHERE name = '[추석기프트특가/9월 올영픽] 라운드랩 포 맨 소나무 진정 토너/크림 2종 기획 (토너300ml+크림75ml)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('토너200ml+크림75ml+위칙세정티슈', 29210, (SELECT id FROM product WHERE name = '[추석기프트특가/9월 올영픽] 라운드랩 포 맨 소나무 진정 토너/크림 2종 기획 (토너300ml+크림75ml)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('토너200ml+크림75ml+클렌저', 29210, (SELECT id FROM product WHERE name = '[추석기프트특가/9월 올영픽] 라운드랩 포 맨 소나무 진정 토너/크림 2종 기획 (토너300ml+크림75ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(45000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[추석기프트특가/9월 올영픽] 라운드랩 포 맨 소나무 진정 토너/크림 2종 기획 (토너300ml+크림75ml)'), NOW(), NOW()),
(29210, 'SALE', (SELECT id FROM product WHERE name = '[추석기프트특가/9월 올영픽] 라운드랩 포 맨 소나무 진정 토너/크림 2종 기획 (토너300ml+크림75ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189713ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[추석기프트특가/9월 올영픽] 라운드랩 포 맨 소나무 진정 토너/크림 2종 기획 (토너300ml+크림75ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189703ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[추석기프트특가/9월 올영픽] 라운드랩 포 맨 소나무 진정 토너/크림 2종 기획 (토너300ml+크림75ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189704ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[추석기프트특가/9월 올영픽] 라운드랩 포 맨 소나무 진정 토너/크림 2종 기획 (토너300ml+크림75ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189702ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[추석기프트특가/9월 올영픽] 라운드랩 포 맨 소나무 진정 토너/크림 2종 기획 (토너300ml+크림75ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[추석기프트특가/9월 올영픽] 라운드랩 포 맨 소나무 진정 토너/크림 2종 기획 (토너300ml+크림75ml)';


-- ================================

-- 상품: [NEW] 닥터지 블랙스네일 레티놀 3종 기프트 세트 2종 (크림 50ml + 앰플 50m...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW] 닥터지 블랙스네일 레티놀 3종 기프트 세트 2종 (크림 50ml + 앰플 50ml + 마스크팩 1매)',
 '[NEW] 닥터지 블랙스네일 레티놀 3종 기프트 세트 2종 (크림 50ml + 앰플 50ml + 마스크팩 1매)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터지'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('링클마스크1매+크림50ml+앰플50ml', 34400, (SELECT id FROM product WHERE name = '[NEW] 닥터지 블랙스네일 레티놀 3종 기프트 세트 2종 (크림 50ml + 앰플 50ml + 마스크팩 1매)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('리프팅마스크1매+크림50ml+앰플50ml', 0, (SELECT id FROM product WHERE name = '[NEW] 닥터지 블랙스네일 레티놀 3종 기프트 세트 2종 (크림 50ml + 앰플 50ml + 마스크팩 1매)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(43000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW] 닥터지 블랙스네일 레티놀 3종 기프트 세트 2종 (크림 50ml + 앰플 50ml + 마스크팩 1매)'), NOW(), NOW()),
(34400, 'SALE', (SELECT id FROM product WHERE name = '[NEW] 닥터지 블랙스네일 레티놀 3종 기프트 세트 2종 (크림 50ml + 앰플 50ml + 마스크팩 1매)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023299203ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW] 닥터지 블랙스네일 레티놀 3종 기프트 세트 2종 (크림 50ml + 앰플 50ml + 마스크팩 1매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023299202ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW] 닥터지 블랙스네일 레티놀 3종 기프트 세트 2종 (크림 50ml + 앰플 50ml + 마스크팩 1매)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW] 닥터지 블랙스네일 레티놀 3종 기프트 세트 2종 (크림 50ml + 앰플 50ml + 마스크팩 1매)';


-- ================================

-- 상품: 숨37 타임 에너지 모이스트 기초 2종 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('숨37 타임 에너지 모이스트 기초 2종 기획',
 '숨37 타임 에너지 모이스트 기초 2종 기획',
 0.0,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '숨37'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[기획] 토너50+에멀전50', 45000, (SELECT id FROM product WHERE name = '숨37 타임 에너지 모이스트 기초 2종 기획'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[기획] 토너120+에멀전100', 82000, (SELECT id FROM product WHERE name = '숨37 타임 에너지 모이스트 기초 2종 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(45000, 'ORIGINAL', (SELECT id FROM product WHERE name = '숨37 타임 에너지 모이스트 기초 2종 기획'), NOW(), NOW()),
(45000, 'SALE', (SELECT id FROM product WHERE name = '숨37 타임 에너지 모이스트 기초 2종 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023508303ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '숨37 타임 에너지 모이스트 기초 2종 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023508304ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '숨37 타임 에너지 모이스트 기초 2종 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '숨37 타임 에너지 모이스트 기초 2종 기획';


-- ================================

-- 상품: [업체배송][지함보 포장/쇼핑백 증정] 설화수 윤조 3종 지함보 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[업체배송][지함보 포장/쇼핑백 증정] 설화수 윤조 3종 지함보 기획',
 '[업체배송][지함보 포장/쇼핑백 증정] 설화수 윤조 3종 지함보 기획',
 4.9,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '설화수'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('설화수 윤조 3종 지함보 기획', 206100, (SELECT id FROM product WHERE name = '[업체배송][지함보 포장/쇼핑백 증정] 설화수 윤조 3종 지함보 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(229000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[업체배송][지함보 포장/쇼핑백 증정] 설화수 윤조 3종 지함보 기획'), NOW(), NOW()),
(206100, 'SALE', (SELECT id FROM product WHERE name = '[업체배송][지함보 포장/쇼핑백 증정] 설화수 윤조 3종 지함보 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/B00000023332705ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[업체배송][지함보 포장/쇼핑백 증정] 설화수 윤조 3종 지함보 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/B00000023332704ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[업체배송][지함보 포장/쇼핑백 증정] 설화수 윤조 3종 지함보 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[업체배송][지함보 포장/쇼핑백 증정] 설화수 윤조 3종 지함보 기획';


-- ================================

-- 상품: [단독기획] 아이소이 잡티케어 2종 듀오세트(잡티로즈세럼20ml+흔적크림35ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[단독기획] 아이소이 잡티케어 2종 듀오세트(잡티로즈세럼20ml+흔적크림35ml)',
 '[단독기획] 아이소이 잡티케어 2종 듀오세트(잡티로즈세럼20ml+흔적크림35ml)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이소이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[단독기획] 아이소이 잡티케어 2종 듀오세트(잡티로즈세럼20ml+흔적크림35ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(60700, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독기획] 아이소이 잡티케어 2종 듀오세트(잡티로즈세럼20ml+흔적크림35ml)'), NOW(), NOW()),
(43230, 'SALE', (SELECT id FROM product WHERE name = '[단독기획] 아이소이 잡티케어 2종 듀오세트(잡티로즈세럼20ml+흔적크림35ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019980305ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[단독기획] 아이소이 잡티케어 2종 듀오세트(잡티로즈세럼20ml+흔적크림35ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019980306ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[단독기획] 아이소이 잡티케어 2종 듀오세트(잡티로즈세럼20ml+흔적크림35ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019980307ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[단독기획] 아이소이 잡티케어 2종 듀오세트(잡티로즈세럼20ml+흔적크림35ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019980304ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[단독기획] 아이소이 잡티케어 2종 듀오세트(잡티로즈세럼20ml+흔적크림35ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[단독기획] 아이소이 잡티케어 2종 듀오세트(잡티로즈세럼20ml+흔적크림35ml)';


-- ================================

-- 상품: [시카]아이디얼 포 맨 시카 흔적 토너 크림 2종 세트(크림 30mL증정)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[시카]아이디얼 포 맨 시카 흔적 토너 크림 2종 세트(크림 30mL증정)',
 '[시카]아이디얼 포 맨 시카 흔적 토너 크림 2종 세트(크림 30mL증정)',
 4.9,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이디얼포맨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[시카]아이디얼 포 맨 시카 흔적 토너 크림 2종 세트(크림 30mL증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(48000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[시카]아이디얼 포 맨 시카 흔적 토너 크림 2종 세트(크림 30mL증정)'), NOW(), NOW()),
(24300, 'SALE', (SELECT id FROM product WHERE name = '[시카]아이디얼 포 맨 시카 흔적 토너 크림 2종 세트(크림 30mL증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020044902ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[시카]아이디얼 포 맨 시카 흔적 토너 크림 2종 세트(크림 30mL증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020044905ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[시카]아이디얼 포 맨 시카 흔적 토너 크림 2종 세트(크림 30mL증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020044904ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[시카]아이디얼 포 맨 시카 흔적 토너 크림 2종 세트(크림 30mL증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020044903ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[시카]아이디얼 포 맨 시카 흔적 토너 크림 2종 세트(크림 30mL증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[시카]아이디얼 포 맨 시카 흔적 토너 크림 2종 세트(크림 30mL증정)';


-- ================================

-- 상품: 한율 어린쑥 수분진정 2종 세트 (토너 150ml+플루이드 125ml+크림 15ml+화장솜...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('한율 어린쑥 수분진정 2종 세트 (토너 150ml+플루이드 125ml+크림 15ml+화장솜 20매+카드)',
 '한율 어린쑥 수분진정 2종 세트 (토너 150ml+플루이드 125ml+크림 15ml+화장솜 20매+카드)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '한율'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '한율 어린쑥 수분진정 2종 세트 (토너 150ml+플루이드 125ml+크림 15ml+화장솜 20매+카드)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(59000, 'ORIGINAL', (SELECT id FROM product WHERE name = '한율 어린쑥 수분진정 2종 세트 (토너 150ml+플루이드 125ml+크림 15ml+화장솜 20매+카드)'), NOW(), NOW()),
(59000, 'SALE', (SELECT id FROM product WHERE name = '한율 어린쑥 수분진정 2종 세트 (토너 150ml+플루이드 125ml+크림 15ml+화장솜 20매+카드)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020238503ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '한율 어린쑥 수분진정 2종 세트 (토너 150ml+플루이드 125ml+크림 15ml+화장솜 20매+카드)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020238504ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '한율 어린쑥 수분진정 2종 세트 (토너 150ml+플루이드 125ml+크림 15ml+화장솜 20매+카드)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '한율 어린쑥 수분진정 2종 세트 (토너 150ml+플루이드 125ml+크림 15ml+화장솜 20매+카드)';


-- ================================

-- 상품: 더페이스샵 네오클래식 옴므 블랙 에센셜 세트(토너130ml+에멀젼110ml+토너30ml+에...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('더페이스샵 네오클래식 옴므 블랙 에센셜 세트(토너130ml+에멀젼110ml+토너30ml+에멀젼30ml)',
 '더페이스샵 네오클래식 옴므 블랙 에센셜 세트(토너130ml+에멀젼110ml+토너30ml+에멀젼30ml)',
 5.0,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더페이스샵'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '더페이스샵 네오클래식 옴므 블랙 에센셜 세트(토너130ml+에멀젼110ml+토너30ml+에멀젼30ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(52000, 'ORIGINAL', (SELECT id FROM product WHERE name = '더페이스샵 네오클래식 옴므 블랙 에센셜 세트(토너130ml+에멀젼110ml+토너30ml+에멀젼30ml)'), NOW(), NOW()),
(36400, 'SALE', (SELECT id FROM product WHERE name = '더페이스샵 네오클래식 옴므 블랙 에센셜 세트(토너130ml+에멀젼110ml+토너30ml+에멀젼30ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020972301ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '더페이스샵 네오클래식 옴므 블랙 에센셜 세트(토너130ml+에멀젼110ml+토너30ml+에멀젼30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020972302ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '더페이스샵 네오클래식 옴므 블랙 에센셜 세트(토너130ml+에멀젼110ml+토너30ml+에멀젼30ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '더페이스샵 네오클래식 옴므 블랙 에센셜 세트(토너130ml+에멀젼110ml+토너30ml+에멀젼30ml)';


-- ================================

-- 상품: 톰 프로그램 리필 세트(1+2+3+마스크 6매입+액션 키트 리필+매그-업 브러시 세트+도자...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('톰 프로그램 리필 세트(1+2+3+마스크 6매입+액션 키트 리필+매그-업 브러시 세트+도자기 샬레 세트)',
 '톰 프로그램 리필 세트(1+2+3+마스크 6매입+액션 키트 리필+매그-업 브러시 세트+도자기 샬레 세트)',
 4.6,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '톰'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '톰 프로그램 리필 세트(1+2+3+마스크 6매입+액션 키트 리필+매그-업 브러시 세트+도자기 샬레 세트)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(326000, 'ORIGINAL', (SELECT id FROM product WHERE name = '톰 프로그램 리필 세트(1+2+3+마스크 6매입+액션 키트 리필+매그-업 브러시 세트+도자기 샬레 세트)'), NOW(), NOW()),
(244500, 'SALE', (SELECT id FROM product WHERE name = '톰 프로그램 리필 세트(1+2+3+마스크 6매입+액션 키트 리필+매그-업 브러시 세트+도자기 샬레 세트)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021429201ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '톰 프로그램 리필 세트(1+2+3+마스크 6매입+액션 키트 리필+매그-업 브러시 세트+도자기 샬레 세트)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021429203ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '톰 프로그램 리필 세트(1+2+3+마스크 6매입+액션 키트 리필+매그-업 브러시 세트+도자기 샬레 세트)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021429202ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '톰 프로그램 리필 세트(1+2+3+마스크 6매입+액션 키트 리필+매그-업 브러시 세트+도자기 샬레 세트)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '톰 프로그램 리필 세트(1+2+3+마스크 6매입+액션 키트 리필+매그-업 브러시 세트+도자기 샬레 세트)';


-- ================================

-- 상품: 수려한 마이크로 진생 에센셜 기획(스킨 150ml+에멀전 130ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('수려한 마이크로 진생 에센셜 기획(스킨 150ml+에멀전 130ml)',
 '수려한 마이크로 진생 에센셜 기획(스킨 150ml+에멀전 130ml)',
 4.7,
 (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '수려한'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '수려한 마이크로 진생 에센셜 기획(스킨 150ml+에멀전 130ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(78000, 'ORIGINAL', (SELECT id FROM product WHERE name = '수려한 마이크로 진생 에센셜 기획(스킨 150ml+에멀전 130ml)'), NOW(), NOW()),
(78000, 'SALE', (SELECT id FROM product WHERE name = '수려한 마이크로 진생 에센셜 기획(스킨 150ml+에멀전 130ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021641101ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '수려한 마이크로 진생 에센셜 기획(스킨 150ml+에멀전 130ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '수려한 마이크로 진생 에센셜 기획(스킨 150ml+에멀전 130ml)';


-- ================================
