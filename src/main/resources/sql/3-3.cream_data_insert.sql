-- 상품: [9월 올영픽] 라로슈포제 시카플라스트 밤 B5+ 100ml 기획 (1.5ml*2+50주년...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽] 라로슈포제 시카플라스트 밤 B5+ 100ml 기획 (1.5ml*2+50주년 리유저블백+리미티드스티커)',
 '[9월 올영픽] 라로슈포제 시카플라스트 밤 B5+ 100ml 기획 (1.5ml*2+50주년 리유저블백+리미티드스티커)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라로슈포제'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9월 올영픽] 라로슈포제 시카플라스트 밤 B5+ 100ml 기획 (1.5ml*2+50주년 리유저블백+리미티드스티커)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(40000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽] 라로슈포제 시카플라스트 밤 B5+ 100ml 기획 (1.5ml*2+50주년 리유저블백+리미티드스티커)'), NOW(), NOW()),
(32000, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽] 라로슈포제 시카플라스트 밤 B5+ 100ml 기획 (1.5ml*2+50주년 리유저블백+리미티드스티커)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023174205ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽] 라로슈포제 시카플라스트 밤 B5+ 100ml 기획 (1.5ml*2+50주년 리유저블백+리미티드스티커)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023174201ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽] 라로슈포제 시카플라스트 밤 B5+ 100ml 기획 (1.5ml*2+50주년 리유저블백+리미티드스티커)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023174202ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽] 라로슈포제 시카플라스트 밤 B5+ 100ml 기획 (1.5ml*2+50주년 리유저블백+리미티드스티커)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023174203ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[9월 올영픽] 라로슈포제 시카플라스트 밤 B5+ 100ml 기획 (1.5ml*2+50주년 리유저블백+리미티드스티커)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[9월 올영픽] 라로슈포제 시카플라스트 밤 B5+ 100ml 기획 (1.5ml*2+50주년 리유저블백+리미티드스티커)';


-- ================================

-- 상품: [9/23 하루특가][온라인단독/대용량] 제로이드 인텐시브 크림 80ml 기획 (+50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9/23 하루특가][온라인단독/대용량] 제로이드 인텐시브 크림 80ml 기획 (+50ml)',
 '[9/23 하루특가][온라인단독/대용량] 제로이드 인텐시브 크림 80ml 기획 (+50ml)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '제로이드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9/23 하루특가][온라인단독/대용량] 제로이드 인텐시브 크림 80ml 기획 (+50ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(40000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9/23 하루특가][온라인단독/대용량] 제로이드 인텐시브 크림 80ml 기획 (+50ml)'), NOW(), NOW()),
(31900, 'SALE', (SELECT id FROM product WHERE name = '[9/23 하루특가][온라인단독/대용량] 제로이드 인텐시브 크림 80ml 기획 (+50ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023159013ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[9/23 하루특가][온라인단독/대용량] 제로이드 인텐시브 크림 80ml 기획 (+50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023159012ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[9/23 하루특가][온라인단독/대용량] 제로이드 인텐시브 크림 80ml 기획 (+50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023159010ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9/23 하루특가][온라인단독/대용량] 제로이드 인텐시브 크림 80ml 기획 (+50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023159009ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[9/23 하루특가][온라인단독/대용량] 제로이드 인텐시브 크림 80ml 기획 (+50ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[9/23 하루특가][온라인단독/대용량] 제로이드 인텐시브 크림 80ml 기획 (+50ml)';


-- ================================

-- 상품: [9월 올영픽] 라로슈포제 시카플라스트 멀티 리페어 크림 100ml 기획 (+15ml+시카...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽] 라로슈포제 시카플라스트 멀티 리페어 크림 100ml 기획 (+15ml+시카밤3ml+시카선크림 2ml)',
 '[9월 올영픽] 라로슈포제 시카플라스트 멀티 리페어 크림 100ml 기획 (+15ml+시카밤3ml+시카선크림 2ml)',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라로슈포제'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9월 올영픽] 라로슈포제 시카플라스트 멀티 리페어 크림 100ml 기획 (+15ml+시카밤3ml+시카선크림 2ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(50000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽] 라로슈포제 시카플라스트 멀티 리페어 크림 100ml 기획 (+15ml+시카밤3ml+시카선크림 2ml)'), NOW(), NOW()),
(40000, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽] 라로슈포제 시카플라스트 멀티 리페어 크림 100ml 기획 (+15ml+시카밤3ml+시카선크림 2ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023175105ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽] 라로슈포제 시카플라스트 멀티 리페어 크림 100ml 기획 (+15ml+시카밤3ml+시카선크림 2ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023175101ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽] 라로슈포제 시카플라스트 멀티 리페어 크림 100ml 기획 (+15ml+시카밤3ml+시카선크림 2ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023175103ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽] 라로슈포제 시카플라스트 멀티 리페어 크림 100ml 기획 (+15ml+시카밤3ml+시카선크림 2ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023175104ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[9월 올영픽] 라로슈포제 시카플라스트 멀티 리페어 크림 100ml 기획 (+15ml+시카밤3ml+시카선크림 2ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[9월 올영픽] 라로슈포제 시카플라스트 멀티 리페어 크림 100ml 기획 (+15ml+시카밤3ml+시카선크림 2ml)';


-- ================================

-- 상품: [올영어워즈1등 크림] 에스트라 아토베리어365 크림 80ml 기획 (+하이드로 에센스25...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[올영어워즈1등 크림] 에스트라 아토베리어365 크림 80ml 기획 (+하이드로 에센스25ml+세라-히알 앰플7ml)',
 '[올영어워즈1등 크림] 에스트라 아토베리어365 크림 80ml 기획 (+하이드로 에센스25ml+세라-히알 앰플7ml)',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에스트라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[올영어워즈1등 크림] 에스트라 아토베리어365 크림 80ml 기획 (+하이드로 에센스25ml+세라-히알 앰플7ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[올영어워즈1등 크림] 에스트라 아토베리어365 크림 80ml 기획 (+하이드로 에센스25ml+세라-히알 앰플7ml)'), NOW(), NOW()),
(29700, 'SALE', (SELECT id FROM product WHERE name = '[올영어워즈1등 크림] 에스트라 아토베리어365 크림 80ml 기획 (+하이드로 에센스25ml+세라-히알 앰플7ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022283309ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[올영어워즈1등 크림] 에스트라 아토베리어365 크림 80ml 기획 (+하이드로 에센스25ml+세라-히알 앰플7ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022283312ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[올영어워즈1등 크림] 에스트라 아토베리어365 크림 80ml 기획 (+하이드로 에센스25ml+세라-히알 앰플7ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022283308ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[올영어워즈1등 크림] 에스트라 아토베리어365 크림 80ml 기획 (+하이드로 에센스25ml+세라-히알 앰플7ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022283314ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[올영어워즈1등 크림] 에스트라 아토베리어365 크림 80ml 기획 (+하이드로 에센스25ml+세라-히알 앰플7ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022283313ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[올영어워즈1등 크림] 에스트라 아토베리어365 크림 80ml 기획 (+하이드로 에센스25ml+세라-히알 앰플7ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[올영어워즈1등 크림] 에스트라 아토베리어365 크림 80ml 기획 (+하이드로 에센스25ml+세라-히알 앰플7ml)';


-- ================================

-- 상품: [1+1/모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 더블 기획(+아쿠...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[1+1/모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 더블 기획(+아쿠아겔 마스크 1매)',
 '[1+1/모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 더블 기획(+아쿠아겔 마스크 1매)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에스네이처'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[1+1/모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 더블 기획(+아쿠아겔 마스크 1매)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(43000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1+1/모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 더블 기획(+아쿠아겔 마스크 1매)'), NOW(), NOW()),
(23200, 'SALE', (SELECT id FROM product WHERE name = '[1+1/모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 더블 기획(+아쿠아겔 마스크 1매)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023091583ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[1+1/모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 더블 기획(+아쿠아겔 마스크 1매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023091560ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[1+1/모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 더블 기획(+아쿠아겔 마스크 1매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023091561ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[1+1/모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 더블 기획(+아쿠아겔 마스크 1매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023091562ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[1+1/모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 더블 기획(+아쿠아겔 마스크 1매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023091563ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[1+1/모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 더블 기획(+아쿠아겔 마스크 1매)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[1+1/모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 더블 기획(+아쿠아겔 마스크 1매)';


-- ================================

-- 상품: [추석기프트특가/수분진정] 닥터지 레드 블레미쉬 클리어 수딩 크림 70ml 증정 기획 2종...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[추석기프트특가/수분진정] 닥터지 레드 블레미쉬 클리어 수딩 크림 70ml 증정 기획 2종 (+세럼 20ml)',
 '[추석기프트특가/수분진정] 닥터지 레드 블레미쉬 클리어 수딩 크림 70ml 증정 기획 2종 (+세럼 20ml)',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터지'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('세럼20+크림70(jar)+30(튜브)', 26100, (SELECT id FROM product WHERE name = '[추석기프트특가/수분진정] 닥터지 레드 블레미쉬 클리어 수딩 크림 70ml 증정 기획 2종 (+세럼 20ml)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('세럼20+크림70(튜브)+30(튜브)', 26500, (SELECT id FROM product WHERE name = '[추석기프트특가/수분진정] 닥터지 레드 블레미쉬 클리어 수딩 크림 70ml 증정 기획 2종 (+세럼 20ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[추석기프트특가/수분진정] 닥터지 레드 블레미쉬 클리어 수딩 크림 70ml 증정 기획 2종 (+세럼 20ml)'), NOW(), NOW()),
(26100, 'SALE', (SELECT id FROM product WHERE name = '[추석기프트특가/수분진정] 닥터지 레드 블레미쉬 클리어 수딩 크림 70ml 증정 기획 2종 (+세럼 20ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016461588ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[추석기프트특가/수분진정] 닥터지 레드 블레미쉬 클리어 수딩 크림 70ml 증정 기획 2종 (+세럼 20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016461585ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[추석기프트특가/수분진정] 닥터지 레드 블레미쉬 클리어 수딩 크림 70ml 증정 기획 2종 (+세럼 20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016461586ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[추석기프트특가/수분진정] 닥터지 레드 블레미쉬 클리어 수딩 크림 70ml 증정 기획 2종 (+세럼 20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016461587ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[추석기프트특가/수분진정] 닥터지 레드 블레미쉬 클리어 수딩 크림 70ml 증정 기획 2종 (+세럼 20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016461573ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[추석기프트특가/수분진정] 닥터지 레드 블레미쉬 클리어 수딩 크림 70ml 증정 기획 2종 (+세럼 20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016461574ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[추석기프트특가/수분진정] 닥터지 레드 블레미쉬 클리어 수딩 크림 70ml 증정 기획 2종 (+세럼 20ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[추석기프트특가/수분진정] 닥터지 레드 블레미쉬 클리어 수딩 크림 70ml 증정 기획 2종 (+세럼 20ml)';


-- ================================

-- 상품: [9월 올영픽] 피지오겔 DMT 페이셜 보습장벽 크림 150ml 기획(+데일리뮨 앰플 4m...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽] 피지오겔 DMT 페이셜 보습장벽 크림 150ml 기획(+데일리뮨 앰플 4ml, 마스크 1매 증정)',
 '[9월 올영픽] 피지오겔 DMT 페이셜 보습장벽 크림 150ml 기획(+데일리뮨 앰플 4ml, 마스크 1매 증정)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '피지오겔'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9월 올영픽] 피지오겔 DMT 페이셜 보습장벽 크림 150ml 기획(+데일리뮨 앰플 4ml, 마스크 1매 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(47500, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽] 피지오겔 DMT 페이셜 보습장벽 크림 150ml 기획(+데일리뮨 앰플 4ml, 마스크 1매 증정)'), NOW(), NOW()),
(20830, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽] 피지오겔 DMT 페이셜 보습장벽 크림 150ml 기획(+데일리뮨 앰플 4ml, 마스크 1매 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023218508ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽] 피지오겔 DMT 페이셜 보습장벽 크림 150ml 기획(+데일리뮨 앰플 4ml, 마스크 1매 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023218506ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽] 피지오겔 DMT 페이셜 보습장벽 크림 150ml 기획(+데일리뮨 앰플 4ml, 마스크 1매 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023218507ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽] 피지오겔 DMT 페이셜 보습장벽 크림 150ml 기획(+데일리뮨 앰플 4ml, 마스크 1매 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023218505ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[9월 올영픽] 피지오겔 DMT 페이셜 보습장벽 크림 150ml 기획(+데일리뮨 앰플 4ml, 마스크 1매 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[9월 올영픽] 피지오겔 DMT 페이셜 보습장벽 크림 150ml 기획(+데일리뮨 앰플 4ml, 마스크 1매 증정)';


-- ================================

-- 상품: 바이오더마 시카비오 포마드 100ml 기획(+시카비오 크림+5ml 2ea)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('바이오더마 시카비오 포마드 100ml 기획(+시카비오 크림+5ml 2ea)',
 '바이오더마 시카비오 포마드 100ml 기획(+시카비오 크림+5ml 2ea)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오더마'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '바이오더마 시카비오 포마드 100ml 기획(+시카비오 크림+5ml 2ea)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바이오더마 시카비오 포마드 100ml 기획(+시카비오 크림+5ml 2ea)'), NOW(), NOW()),
(29900, 'SALE', (SELECT id FROM product WHERE name = '바이오더마 시카비오 포마드 100ml 기획(+시카비오 크림+5ml 2ea)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023213802ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바이오더마 시카비오 포마드 100ml 기획(+시카비오 크림+5ml 2ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023213804ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '바이오더마 시카비오 포마드 100ml 기획(+시카비오 크림+5ml 2ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023213803ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '바이오더마 시카비오 포마드 100ml 기획(+시카비오 크림+5ml 2ea)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '바이오더마 시카비오 포마드 100ml 기획(+시카비오 크림+5ml 2ea)';


-- ================================

-- 상품: [1등 탄력] 바이오힐 보 프로바이오덤 3D 리프팅크림 50ml [리필기획]...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[1등 탄력] 바이오힐 보 프로바이오덤 3D 리프팅크림 50ml [리필기획]',
 '[1등 탄력] 바이오힐 보 프로바이오덤 3D 리프팅크림 50ml [리필기획]',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오힐보'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('리프팅크림 50ml 리필 기획+20ml', 38900, (SELECT id FROM product WHERE name = '[1등 탄력] 바이오힐 보 프로바이오덤 3D 리프팅크림 50ml [리필기획]'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('리프팅크림 50ml 리필 기획', 38900, (SELECT id FROM product WHERE name = '[1등 탄력] 바이오힐 보 프로바이오덤 3D 리프팅크림 50ml [리필기획]'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('리프팅크림 50ml 단품', 29200, (SELECT id FROM product WHERE name = '[1등 탄력] 바이오힐 보 프로바이오덤 3D 리프팅크림 50ml [리필기획]'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(70200, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1등 탄력] 바이오힐 보 프로바이오덤 3D 리프팅크림 50ml [리필기획]'), NOW(), NOW()),
(38900, 'SALE', (SELECT id FROM product WHERE name = '[1등 탄력] 바이오힐 보 프로바이오덤 3D 리프팅크림 50ml [리필기획]'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019970124ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[1등 탄력] 바이오힐 보 프로바이오덤 3D 리프팅크림 50ml [리필기획]'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019970123ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[1등 탄력] 바이오힐 보 프로바이오덤 3D 리프팅크림 50ml [리필기획]'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019970119ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[1등 탄력] 바이오힐 보 프로바이오덤 3D 리프팅크림 50ml [리필기획]'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019970114ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[1등 탄력] 바이오힐 보 프로바이오덤 3D 리프팅크림 50ml [리필기획]'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019970105ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[1등 탄력] 바이오힐 보 프로바이오덤 3D 리프팅크림 50ml [리필기획]'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019970104ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[1등 탄력] 바이오힐 보 프로바이오덤 3D 리프팅크림 50ml [리필기획]'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[1등 탄력] 바이오힐 보 프로바이오덤 3D 리프팅크림 50ml [리필기획]';


-- ================================

-- 상품: [올영 어워즈 1등 크림]에스트라 아토베리어365 크림 80ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[올영 어워즈 1등 크림]에스트라 아토베리어365 크림 80ml',
 '[올영 어워즈 1등 크림]에스트라 아토베리어365 크림 80ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에스트라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[올영 어워즈 1등 크림]에스트라 아토베리어365 크림 80ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[올영 어워즈 1등 크림]에스트라 아토베리어365 크림 80ml'), NOW(), NOW()),
(29700, 'SALE', (SELECT id FROM product WHERE name = '[올영 어워즈 1등 크림]에스트라 아토베리어365 크림 80ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019832004ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[올영 어워즈 1등 크림]에스트라 아토베리어365 크림 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019832005ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[올영 어워즈 1등 크림]에스트라 아토베리어365 크림 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019832003ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[올영 어워즈 1등 크림]에스트라 아토베리어365 크림 80ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[올영 어워즈 1등 크림]에스트라 아토베리어365 크림 80ml';


-- ================================

-- 상품: [9월 올영픽] 바이오더마 시카비오 크림+ 100ml 기획 (크림 + 40ml 본품 추가 ...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽] 바이오더마 시카비오 크림+ 100ml 기획 (크림 + 40ml 본품 추가 증정)',
 '[9월 올영픽] 바이오더마 시카비오 크림+ 100ml 기획 (크림 + 40ml 본품 추가 증정)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오더마'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('시카비오 크림+ 100 + 40 기획', 33920, (SELECT id FROM product WHERE name = '[9월 올영픽] 바이오더마 시카비오 크림+ 100ml 기획 (크림 + 40ml 본품 추가 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(43000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽] 바이오더마 시카비오 크림+ 100ml 기획 (크림 + 40ml 본품 추가 증정)'), NOW(), NOW()),
(33920, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽] 바이오더마 시카비오 크림+ 100ml 기획 (크림 + 40ml 본품 추가 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021257014ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽] 바이오더마 시카비오 크림+ 100ml 기획 (크림 + 40ml 본품 추가 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021257009ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽] 바이오더마 시카비오 크림+ 100ml 기획 (크림 + 40ml 본품 추가 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021257005ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽] 바이오더마 시카비오 크림+ 100ml 기획 (크림 + 40ml 본품 추가 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021257010ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[9월 올영픽] 바이오더마 시카비오 크림+ 100ml 기획 (크림 + 40ml 본품 추가 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021257007ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[9월 올영픽] 바이오더마 시카비오 크림+ 100ml 기획 (크림 + 40ml 본품 추가 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[9월 올영픽] 바이오더마 시카비오 크림+ 100ml 기획 (크림 + 40ml 본품 추가 증정)';


-- ================================

-- 상품: 에스트라 아토베리어365 하이드로 수딩크림 100ml 대용량 기획 (+30ml+속수분 앰플...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('에스트라 아토베리어365 하이드로 수딩크림 100ml 대용량 기획 (+30ml+속수분 앰플3ml)',
 '에스트라 아토베리어365 하이드로 수딩크림 100ml 대용량 기획 (+30ml+속수분 앰플3ml)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에스트라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '에스트라 아토베리어365 하이드로 수딩크림 100ml 대용량 기획 (+30ml+속수분 앰플3ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(47000, 'ORIGINAL', (SELECT id FROM product WHERE name = '에스트라 아토베리어365 하이드로 수딩크림 100ml 대용량 기획 (+30ml+속수분 앰플3ml)'), NOW(), NOW()),
(39900, 'SALE', (SELECT id FROM product WHERE name = '에스트라 아토베리어365 하이드로 수딩크림 100ml 대용량 기획 (+30ml+속수분 앰플3ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022587514ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '에스트라 아토베리어365 하이드로 수딩크림 100ml 대용량 기획 (+30ml+속수분 앰플3ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022587510ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '에스트라 아토베리어365 하이드로 수딩크림 100ml 대용량 기획 (+30ml+속수분 앰플3ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022587507ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '에스트라 아토베리어365 하이드로 수딩크림 100ml 대용량 기획 (+30ml+속수분 앰플3ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022587506ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '에스트라 아토베리어365 하이드로 수딩크림 100ml 대용량 기획 (+30ml+속수분 앰플3ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022587505ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '에스트라 아토베리어365 하이드로 수딩크림 100ml 대용량 기획 (+30ml+속수분 앰플3ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '에스트라 아토베리어365 하이드로 수딩크림 100ml 대용량 기획 (+30ml+속수분 앰플3ml)';


-- ================================

-- 상품: [9월 올영픽] 아누아 피디알엔 히알루론산 100 수분 크림 60ml 기획세트 (+60ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽] 아누아 피디알엔 히알루론산 100 수분 크림 60ml 기획세트 (+60ml)',
 '[9월 올영픽] 아누아 피디알엔 히알루론산 100 수분 크림 60ml 기획세트 (+60ml)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아누아'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 피디알엔 히알루론산 100 수분 크림 60ml 기획세트 (+60ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(64000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 피디알엔 히알루론산 100 수분 크림 60ml 기획세트 (+60ml)'), NOW(), NOW()),
(28900, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 피디알엔 히알루론산 100 수분 크림 60ml 기획세트 (+60ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189216ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 피디알엔 히알루론산 100 수분 크림 60ml 기획세트 (+60ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189214ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 피디알엔 히알루론산 100 수분 크림 60ml 기획세트 (+60ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189202ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 피디알엔 히알루론산 100 수분 크림 60ml 기획세트 (+60ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189203ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 피디알엔 히알루론산 100 수분 크림 60ml 기획세트 (+60ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189204ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 피디알엔 히알루론산 100 수분 크림 60ml 기획세트 (+60ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189205ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 피디알엔 히알루론산 100 수분 크림 60ml 기획세트 (+60ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[9월 올영픽] 아누아 피디알엔 히알루론산 100 수분 크림 60ml 기획세트 (+60ml)';


-- ================================

-- 상품: [더블기획/1+1]토리든 다이브인 히알루론산 수딩 크림 더블 기획세트(100ml+100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[더블기획/1+1]토리든 다이브인 히알루론산 수딩 크림 더블 기획세트(100ml+100ml)',
 '[더블기획/1+1]토리든 다이브인 히알루론산 수딩 크림 더블 기획세트(100ml+100ml)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '토리든'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('토리든 다이브인 수딩크림 더블기획', 31500, (SELECT id FROM product WHERE name = '[더블기획/1+1]토리든 다이브인 히알루론산 수딩 크림 더블 기획세트(100ml+100ml)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('토리든 다이브인 수딩크림 가나디 더블기획', 42000, (SELECT id FROM product WHERE name = '[더블기획/1+1]토리든 다이브인 히알루론산 수딩 크림 더블 기획세트(100ml+100ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(42000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[더블기획/1+1]토리든 다이브인 히알루론산 수딩 크림 더블 기획세트(100ml+100ml)'), NOW(), NOW()),
(31500, 'SALE', (SELECT id FROM product WHERE name = '[더블기획/1+1]토리든 다이브인 히알루론산 수딩 크림 더블 기획세트(100ml+100ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016559831ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[더블기획/1+1]토리든 다이브인 히알루론산 수딩 크림 더블 기획세트(100ml+100ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016559818ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[더블기획/1+1]토리든 다이브인 히알루론산 수딩 크림 더블 기획세트(100ml+100ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016559819ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[더블기획/1+1]토리든 다이브인 히알루론산 수딩 크림 더블 기획세트(100ml+100ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016559825ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[더블기획/1+1]토리든 다이브인 히알루론산 수딩 크림 더블 기획세트(100ml+100ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[더블기획/1+1]토리든 다이브인 히알루론산 수딩 크림 더블 기획세트(100ml+100ml)';


-- ================================

-- 상품: [글로벌1등크림] 닥터엘시아 345 릴리프 크림 50ml (단품/기획)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[글로벌1등크림] 닥터엘시아 345 릴리프 크림 50ml (단품/기획)',
 '[글로벌1등크림] 닥터엘시아 345 릴리프 크림 50ml (단품/기획)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터엘시아'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[글로벌1등크림] 닥터엘시아 345 릴리프 크림 50ml (단품/기획)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[글로벌1등크림] 닥터엘시아 345 릴리프 크림 50ml (단품/기획)'), NOW(), NOW()),
(24500, 'SALE', (SELECT id FROM product WHERE name = '[글로벌1등크림] 닥터엘시아 345 릴리프 크림 50ml (단품/기획)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021542311ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[글로벌1등크림] 닥터엘시아 345 릴리프 크림 50ml (단품/기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021542305ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[글로벌1등크림] 닥터엘시아 345 릴리프 크림 50ml (단품/기획)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[글로벌1등크림] 닥터엘시아 345 릴리프 크림 50ml (단품/기획)';


-- ================================

-- 상품: [9월 올영픽]이즈앤트리 어니언 뉴페어 겔크림 50ml 더블기획 (+20ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽]이즈앤트리 어니언 뉴페어 겔크림 50ml 더블기획 (+20ml)',
 '[9월 올영픽]이즈앤트리 어니언 뉴페어 겔크림 50ml 더블기획 (+20ml)',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '이즈앤트리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9월 올영픽]이즈앤트리 어니언 뉴페어 겔크림 50ml 더블기획 (+20ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(49000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽]이즈앤트리 어니언 뉴페어 겔크림 50ml 더블기획 (+20ml)'), NOW(), NOW()),
(34300, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽]이즈앤트리 어니언 뉴페어 겔크림 50ml 더블기획 (+20ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021838915ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽]이즈앤트리 어니언 뉴페어 겔크림 50ml 더블기획 (+20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021838916ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽]이즈앤트리 어니언 뉴페어 겔크림 50ml 더블기획 (+20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021838917ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽]이즈앤트리 어니언 뉴페어 겔크림 50ml 더블기획 (+20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021838913ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[9월 올영픽]이즈앤트리 어니언 뉴페어 겔크림 50ml 더블기획 (+20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021838918ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[9월 올영픽]이즈앤트리 어니언 뉴페어 겔크림 50ml 더블기획 (+20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021838914ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[9월 올영픽]이즈앤트리 어니언 뉴페어 겔크림 50ml 더블기획 (+20ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[9월 올영픽]이즈앤트리 어니언 뉴페어 겔크림 50ml 더블기획 (+20ml)';


-- ================================

-- 상품: [9월 올영픽/흔적수분크림] 메디큐브 PDRN 핑크 히알루로닉 수분크림 50ml 더블기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽/흔적수분크림] 메디큐브 PDRN 핑크 히알루로닉 수분크림 50ml 더블기획',
 '[9월 올영픽/흔적수분크림] 메디큐브 PDRN 핑크 히알루로닉 수분크림 50ml 더블기획',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '메디큐브'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9월 올영픽/흔적수분크림] 메디큐브 PDRN 핑크 히알루로닉 수분크림 50ml 더블기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(49000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽/흔적수분크림] 메디큐브 PDRN 핑크 히알루로닉 수분크림 50ml 더블기획'), NOW(), NOW()),
(24700, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽/흔적수분크림] 메디큐브 PDRN 핑크 히알루로닉 수분크림 50ml 더블기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022500818ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽/흔적수분크림] 메디큐브 PDRN 핑크 히알루로닉 수분크림 50ml 더블기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022500817ko.jpeg?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽/흔적수분크림] 메디큐브 PDRN 핑크 히알루로닉 수분크림 50ml 더블기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022500812ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽/흔적수분크림] 메디큐브 PDRN 핑크 히알루로닉 수분크림 50ml 더블기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022500806ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[9월 올영픽/흔적수분크림] 메디큐브 PDRN 핑크 히알루로닉 수분크림 50ml 더블기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022500805ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[9월 올영픽/흔적수분크림] 메디큐브 PDRN 핑크 히알루로닉 수분크림 50ml 더블기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022500804ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[9월 올영픽/흔적수분크림] 메디큐브 PDRN 핑크 히알루로닉 수분크림 50ml 더블기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[9월 올영픽/흔적수분크림] 메디큐브 PDRN 핑크 히알루로닉 수분크림 50ml 더블기획';


-- ================================

-- 상품: [구매인증이벤트][9월 올영픽/광채탄력] 닥터지 블랙스네일 크림 50ml 1+1 증정 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[구매인증이벤트][9월 올영픽/광채탄력] 닥터지 블랙스네일 크림 50ml 1+1 증정 기획 (+15ml 추가 증정)',
 '[구매인증이벤트][9월 올영픽/광채탄력] 닥터지 블랙스네일 크림 50ml 1+1 증정 기획 (+15ml 추가 증정)',
 5.0,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터지'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[구매인증이벤트][9월 올영픽/광채탄력] 닥터지 블랙스네일 크림 50ml 1+1 증정 기획 (+15ml 추가 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[구매인증이벤트][9월 올영픽/광채탄력] 닥터지 블랙스네일 크림 50ml 1+1 증정 기획 (+15ml 추가 증정)'), NOW(), NOW()),
(24300, 'SALE', (SELECT id FROM product WHERE name = '[구매인증이벤트][9월 올영픽/광채탄력] 닥터지 블랙스네일 크림 50ml 1+1 증정 기획 (+15ml 추가 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023332224ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[구매인증이벤트][9월 올영픽/광채탄력] 닥터지 블랙스네일 크림 50ml 1+1 증정 기획 (+15ml 추가 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023332217ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[구매인증이벤트][9월 올영픽/광채탄력] 닥터지 블랙스네일 크림 50ml 1+1 증정 기획 (+15ml 추가 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023332214ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[구매인증이벤트][9월 올영픽/광채탄력] 닥터지 블랙스네일 크림 50ml 1+1 증정 기획 (+15ml 추가 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023332215ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[구매인증이벤트][9월 올영픽/광채탄력] 닥터지 블랙스네일 크림 50ml 1+1 증정 기획 (+15ml 추가 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023332216ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[구매인증이벤트][9월 올영픽/광채탄력] 닥터지 블랙스네일 크림 50ml 1+1 증정 기획 (+15ml 추가 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023332206ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[구매인증이벤트][9월 올영픽/광채탄력] 닥터지 블랙스네일 크림 50ml 1+1 증정 기획 (+15ml 추가 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[구매인증이벤트][9월 올영픽/광채탄력] 닥터지 블랙스네일 크림 50ml 1+1 증정 기획 (+15ml 추가 증정)';


-- ================================

-- 상품: [화잘먹크림] 오드로이 모공수축크림 로프디 모공면적 100ml 더블기획 (+미스트앰플 30...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[화잘먹크림] 오드로이 모공수축크림 로프디 모공면적 100ml 더블기획 (+미스트앰플 30ml)',
 '[화잘먹크림] 오드로이 모공수축크림 로프디 모공면적 100ml 더블기획 (+미스트앰플 30ml)',
 4.6,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '오드로이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[화잘먹크림] 오드로이 모공수축크림 로프디 모공면적 100ml 더블기획 (+미스트앰플 30ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(56000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[화잘먹크림] 오드로이 모공수축크림 로프디 모공면적 100ml 더블기획 (+미스트앰플 30ml)'), NOW(), NOW()),
(36800, 'SALE', (SELECT id FROM product WHERE name = '[화잘먹크림] 오드로이 모공수축크림 로프디 모공면적 100ml 더블기획 (+미스트앰플 30ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023079922ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[화잘먹크림] 오드로이 모공수축크림 로프디 모공면적 100ml 더블기획 (+미스트앰플 30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023079910ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[화잘먹크림] 오드로이 모공수축크림 로프디 모공면적 100ml 더블기획 (+미스트앰플 30ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[화잘먹크림] 오드로이 모공수축크림 로프디 모공면적 100ml 더블기획 (+미스트앰플 30ml)';


-- ================================

-- 상품: [NEW][화잘먹 수분크림] 한율 쑥히알 크림 60ml 기획 (+31ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW][화잘먹 수분크림] 한율 쑥히알 크림 60ml 기획 (+31ml)',
 '[NEW][화잘먹 수분크림] 한율 쑥히알 크림 60ml 기획 (+31ml)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '한율'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW][화잘먹 수분크림] 한율 쑥히알 크림 60ml 기획 (+31ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW][화잘먹 수분크림] 한율 쑥히알 크림 60ml 기획 (+31ml)'), NOW(), NOW()),
(19200, 'SALE', (SELECT id FROM product WHERE name = '[NEW][화잘먹 수분크림] 한율 쑥히알 크림 60ml 기획 (+31ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023183306ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW][화잘먹 수분크림] 한율 쑥히알 크림 60ml 기획 (+31ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023183304ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW][화잘먹 수분크림] 한율 쑥히알 크림 60ml 기획 (+31ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023183302ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW][화잘먹 수분크림] 한율 쑥히알 크림 60ml 기획 (+31ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023183301ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[NEW][화잘먹 수분크림] 한율 쑥히알 크림 60ml 기획 (+31ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023183305ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[NEW][화잘먹 수분크림] 한율 쑥히알 크림 60ml 기획 (+31ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW][화잘먹 수분크림] 한율 쑥히알 크림 60ml 기획 (+31ml)';


-- ================================

-- 상품: [모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 기획 (60ml+30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 기획 (60ml+30ml)',
 '[모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 기획 (60ml+30ml)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에스네이처'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 기획 (60ml+30ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 기획 (60ml+30ml)'), NOW(), NOW()),
(16110, 'SALE', (SELECT id FROM product WHERE name = '[모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 기획 (60ml+30ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015623093ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 기획 (60ml+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015623089ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 기획 (60ml+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015623094ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 기획 (60ml+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015623091ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 기획 (60ml+30ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 기획 (60ml+30ml)';


-- ================================

-- 상품: [단독기획] 바이오던스 포어 퍼펙팅 콜라겐 펩타이드 크림 50ml 기획 (+10ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[단독기획] 바이오던스 포어 퍼펙팅 콜라겐 펩타이드 크림 50ml 기획 (+10ml)',
 '[단독기획] 바이오던스 포어 퍼펙팅 콜라겐 펩타이드 크림 50ml 기획 (+10ml)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오던스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[단독기획] 바이오던스 포어 퍼펙팅 콜라겐 펩타이드 크림 50ml 기획 (+10ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독기획] 바이오던스 포어 퍼펙팅 콜라겐 펩타이드 크림 50ml 기획 (+10ml)'), NOW(), NOW()),
(25500, 'SALE', (SELECT id FROM product WHERE name = '[단독기획] 바이오던스 포어 퍼펙팅 콜라겐 펩타이드 크림 50ml 기획 (+10ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023087742ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[단독기획] 바이오던스 포어 퍼펙팅 콜라겐 펩타이드 크림 50ml 기획 (+10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023087741ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[단독기획] 바이오던스 포어 퍼펙팅 콜라겐 펩타이드 크림 50ml 기획 (+10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023087733ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[단독기획] 바이오던스 포어 퍼펙팅 콜라겐 펩타이드 크림 50ml 기획 (+10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023087734ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[단독기획] 바이오던스 포어 퍼펙팅 콜라겐 펩타이드 크림 50ml 기획 (+10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023087735ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[단독기획] 바이오던스 포어 퍼펙팅 콜라겐 펩타이드 크림 50ml 기획 (+10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023087736ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[단독기획] 바이오던스 포어 퍼펙팅 콜라겐 펩타이드 크림 50ml 기획 (+10ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[단독기획] 바이오던스 포어 퍼펙팅 콜라겐 펩타이드 크림 50ml 기획 (+10ml)';


-- ================================

-- 상품: 라로슈포제 시카플라스트 밤B5+ 40ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('라로슈포제 시카플라스트 밤B5+ 40ml',
 '라로슈포제 시카플라스트 밤B5+ 40ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라로슈포제'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '라로슈포제 시카플라스트 밤B5+ 40ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '라로슈포제 시카플라스트 밤B5+ 40ml'), NOW(), NOW()),
(26000, 'SALE', (SELECT id FROM product WHERE name = '라로슈포제 시카플라스트 밤B5+ 40ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017431608ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '라로슈포제 시카플라스트 밤B5+ 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017431607ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '라로슈포제 시카플라스트 밤B5+ 40ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '라로슈포제 시카플라스트 밤B5+ 40ml';


-- ================================

-- 상품: [NEW] 브링그린 티트리시카수딩크림플러스100ml 2입 기획 / 단품...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW] 브링그린 티트리시카수딩크림플러스100ml 2입 기획 / 단품',
 '[NEW] 브링그린 티트리시카수딩크림플러스100ml 2입 기획 / 단품',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '브링그린'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('크림100ml 2입(+징크테카세럼3ml)', 19800, (SELECT id FROM product WHERE name = '[NEW] 브링그린 티트리시카수딩크림플러스100ml 2입 기획 / 단품'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('크림100ml 단품', 17100, (SELECT id FROM product WHERE name = '[NEW] 브링그린 티트리시카수딩크림플러스100ml 2입 기획 / 단품'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('크림100ml 2입(+피지처방키트3개입)', 0, (SELECT id FROM product WHERE name = '[NEW] 브링그린 티트리시카수딩크림플러스100ml 2입 기획 / 단품'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(34200, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW] 브링그린 티트리시카수딩크림플러스100ml 2입 기획 / 단품'), NOW(), NOW()),
(19800, 'SALE', (SELECT id FROM product WHERE name = '[NEW] 브링그린 티트리시카수딩크림플러스100ml 2입 기획 / 단품'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022655317ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW] 브링그린 티트리시카수딩크림플러스100ml 2입 기획 / 단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022655302ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW] 브링그린 티트리시카수딩크림플러스100ml 2입 기획 / 단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022655318ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW] 브링그린 티트리시카수딩크림플러스100ml 2입 기획 / 단품'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW] 브링그린 티트리시카수딩크림플러스100ml 2입 기획 / 단품';


-- ================================

-- 상품: [1등 진정] 센텔리안24 마데카 크림 타임 리버스 기획 (15ml*2ea+랩마스크3매)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[1등 진정] 센텔리안24 마데카 크림 타임 리버스 기획 (15ml*2ea+랩마스크3매)',
 '[1등 진정] 센텔리안24 마데카 크림 타임 리버스 기획 (15ml*2ea+랩마스크3매)',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '센텔리안24'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[1등 진정] 센텔리안24 마데카 크림 타임 리버스 기획 (15ml*2ea+랩마스크3매)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1등 진정] 센텔리안24 마데카 크림 타임 리버스 기획 (15ml*2ea+랩마스크3매)'), NOW(), NOW()),
(20900, 'SALE', (SELECT id FROM product WHERE name = '[1등 진정] 센텔리안24 마데카 크림 타임 리버스 기획 (15ml*2ea+랩마스크3매)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019966405ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[1등 진정] 센텔리안24 마데카 크림 타임 리버스 기획 (15ml*2ea+랩마스크3매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019966410ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[1등 진정] 센텔리안24 마데카 크림 타임 리버스 기획 (15ml*2ea+랩마스크3매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019966411ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[1등 진정] 센텔리안24 마데카 크림 타임 리버스 기획 (15ml*2ea+랩마스크3매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019966409ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[1등 진정] 센텔리안24 마데카 크림 타임 리버스 기획 (15ml*2ea+랩마스크3매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019966406ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[1등 진정] 센텔리안24 마데카 크림 타임 리버스 기획 (15ml*2ea+랩마스크3매)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[1등 진정] 센텔리안24 마데카 크림 타임 리버스 기획 (15ml*2ea+랩마스크3매)';


-- ================================

-- 상품: [온라인단독/대용량] 제로이드 수딩 크림 80ml 기획 (+50ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[온라인단독/대용량] 제로이드 수딩 크림 80ml 기획 (+50ml)',
 '[온라인단독/대용량] 제로이드 수딩 크림 80ml 기획 (+50ml)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '제로이드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[온라인단독/대용량] 제로이드 수딩 크림 80ml 기획 (+50ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[온라인단독/대용량] 제로이드 수딩 크림 80ml 기획 (+50ml)'), NOW(), NOW()),
(34200, 'SALE', (SELECT id FROM product WHERE name = '[온라인단독/대용량] 제로이드 수딩 크림 80ml 기획 (+50ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023158905ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[온라인단독/대용량] 제로이드 수딩 크림 80ml 기획 (+50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023158903ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[온라인단독/대용량] 제로이드 수딩 크림 80ml 기획 (+50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023158902ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[온라인단독/대용량] 제로이드 수딩 크림 80ml 기획 (+50ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[온라인단독/대용량] 제로이드 수딩 크림 80ml 기획 (+50ml)';


-- ================================

-- 상품: [NEW/기프트] 바이오힐 보 프로바이오덤 3D 리프팅 스킨케어 3종 기획 (토너+에멀전+...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW/기프트] 바이오힐 보 프로바이오덤 3D 리프팅 스킨케어 3종 기획 (토너+에멀전+3D 리프팅 크림)',
 '[NEW/기프트] 바이오힐 보 프로바이오덤 3D 리프팅 스킨케어 3종 기획 (토너+에멀전+3D 리프팅 크림)',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오힐보'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW/기프트] 바이오힐 보 프로바이오덤 3D 리프팅 스킨케어 3종 기획 (토너+에멀전+3D 리프팅 크림)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(93000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW/기프트] 바이오힐 보 프로바이오덤 3D 리프팅 스킨케어 3종 기획 (토너+에멀전+3D 리프팅 크림)'), NOW(), NOW()),
(59900, 'SALE', (SELECT id FROM product WHERE name = '[NEW/기프트] 바이오힐 보 프로바이오덤 3D 리프팅 스킨케어 3종 기획 (토너+에멀전+3D 리프팅 크림)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022414707ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW/기프트] 바이오힐 보 프로바이오덤 3D 리프팅 스킨케어 3종 기획 (토너+에멀전+3D 리프팅 크림)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022414708ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW/기프트] 바이오힐 보 프로바이오덤 3D 리프팅 스킨케어 3종 기획 (토너+에멀전+3D 리프팅 크림)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022414706ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW/기프트] 바이오힐 보 프로바이오덤 3D 리프팅 스킨케어 3종 기획 (토너+에멀전+3D 리프팅 크림)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022414705ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[NEW/기프트] 바이오힐 보 프로바이오덤 3D 리프팅 스킨케어 3종 기획 (토너+에멀전+3D 리프팅 크림)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022414704ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[NEW/기프트] 바이오힐 보 프로바이오덤 3D 리프팅 스킨케어 3종 기획 (토너+에멀전+3D 리프팅 크림)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022414703ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[NEW/기프트] 바이오힐 보 프로바이오덤 3D 리프팅 스킨케어 3종 기획 (토너+에멀전+3D 리프팅 크림)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW/기프트] 바이오힐 보 프로바이오덤 3D 리프팅 스킨케어 3종 기획 (토너+에멀전+3D 리프팅 크림)';


-- ================================

-- 상품: [위클리초특가/화잘먹수분크림] 메디큐브 PDRN 핑크 히알루로닉 수분 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[위클리초특가/화잘먹수분크림] 메디큐브 PDRN 핑크 히알루로닉 수분 크림 50ml',
 '[위클리초특가/화잘먹수분크림] 메디큐브 PDRN 핑크 히알루로닉 수분 크림 50ml',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '메디큐브'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[위클리초특가/화잘먹수분크림] 메디큐브 PDRN 핑크 히알루로닉 수분 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[위클리초특가/화잘먹수분크림] 메디큐브 PDRN 핑크 히알루로닉 수분 크림 50ml'), NOW(), NOW()),
(9900, 'SALE', (SELECT id FROM product WHERE name = '[위클리초특가/화잘먹수분크림] 메디큐브 PDRN 핑크 히알루로닉 수분 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022394708ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[위클리초특가/화잘먹수분크림] 메디큐브 PDRN 핑크 히알루로닉 수분 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022394709ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[위클리초특가/화잘먹수분크림] 메디큐브 PDRN 핑크 히알루로닉 수분 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022394702ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[위클리초특가/화잘먹수분크림] 메디큐브 PDRN 핑크 히알루로닉 수분 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022394705ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[위클리초특가/화잘먹수분크림] 메디큐브 PDRN 핑크 히알루로닉 수분 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022394701ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[위클리초특가/화잘먹수분크림] 메디큐브 PDRN 핑크 히알루로닉 수분 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022394703ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[위클리초특가/화잘먹수분크림] 메디큐브 PDRN 핑크 히알루로닉 수분 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[위클리초특가/화잘먹수분크림] 메디큐브 PDRN 핑크 히알루로닉 수분 크림 50ml';


-- ================================

-- 상품: [단독기획/대용량] 파티온 노스카나인 트러블 크림 75ml 기획(+5ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[단독기획/대용량] 파티온 노스카나인 트러블 크림 75ml 기획(+5ml)',
 '[단독기획/대용량] 파티온 노스카나인 트러블 크림 75ml 기획(+5ml)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '파티온'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[단독기획/대용량] 파티온 노스카나인 트러블 크림 75ml 기획(+5ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(45000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독기획/대용량] 파티온 노스카나인 트러블 크림 75ml 기획(+5ml)'), NOW(), NOW()),
(32000, 'SALE', (SELECT id FROM product WHERE name = '[단독기획/대용량] 파티온 노스카나인 트러블 크림 75ml 기획(+5ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023230404ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[단독기획/대용량] 파티온 노스카나인 트러블 크림 75ml 기획(+5ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023230403ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[단독기획/대용량] 파티온 노스카나인 트러블 크림 75ml 기획(+5ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023230402ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[단독기획/대용량] 파티온 노스카나인 트러블 크림 75ml 기획(+5ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[단독기획/대용량] 파티온 노스카나인 트러블 크림 75ml 기획(+5ml)';


-- ================================

-- 상품: [총100ml/화잘먹크림] 웰라쥬 리얼 히알루로닉 100 크림 50ml 더블 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[총100ml/화잘먹크림] 웰라쥬 리얼 히알루로닉 100 크림 50ml 더블 기획',
 '[총100ml/화잘먹크림] 웰라쥬 리얼 히알루로닉 100 크림 50ml 더블 기획',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '웰라쥬'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[총100ml/화잘먹크림] 웰라쥬 리얼 히알루로닉 100 크림 50ml 더블 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[총100ml/화잘먹크림] 웰라쥬 리얼 히알루로닉 100 크림 50ml 더블 기획'), NOW(), NOW()),
(25900, 'SALE', (SELECT id FROM product WHERE name = '[총100ml/화잘먹크림] 웰라쥬 리얼 히알루로닉 100 크림 50ml 더블 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017851264ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[총100ml/화잘먹크림] 웰라쥬 리얼 히알루로닉 100 크림 50ml 더블 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017851265ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[총100ml/화잘먹크림] 웰라쥬 리얼 히알루로닉 100 크림 50ml 더블 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017851266ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[총100ml/화잘먹크림] 웰라쥬 리얼 히알루로닉 100 크림 50ml 더블 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[총100ml/화잘먹크림] 웰라쥬 리얼 히알루로닉 100 크림 50ml 더블 기획';


-- ================================

-- 상품: 라로슈포제 시카플라스트 멀티 리페어 크림 100ml 기획 (+멜라B3 세럼 3ml 증정)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('라로슈포제 시카플라스트 멀티 리페어 크림 100ml 기획 (+멜라B3 세럼 3ml 증정)',
 '라로슈포제 시카플라스트 멀티 리페어 크림 100ml 기획 (+멜라B3 세럼 3ml 증정)',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라로슈포제'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '라로슈포제 시카플라스트 멀티 리페어 크림 100ml 기획 (+멜라B3 세럼 3ml 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(50000, 'ORIGINAL', (SELECT id FROM product WHERE name = '라로슈포제 시카플라스트 멀티 리페어 크림 100ml 기획 (+멜라B3 세럼 3ml 증정)'), NOW(), NOW()),
(40000, 'SALE', (SELECT id FROM product WHERE name = '라로슈포제 시카플라스트 멀티 리페어 크림 100ml 기획 (+멜라B3 세럼 3ml 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022429206ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '라로슈포제 시카플라스트 멀티 리페어 크림 100ml 기획 (+멜라B3 세럼 3ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022429201ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '라로슈포제 시카플라스트 멀티 리페어 크림 100ml 기획 (+멜라B3 세럼 3ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022429204ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '라로슈포제 시카플라스트 멀티 리페어 크림 100ml 기획 (+멜라B3 세럼 3ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022429202ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '라로슈포제 시카플라스트 멀티 리페어 크림 100ml 기획 (+멜라B3 세럼 3ml 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '라로슈포제 시카플라스트 멀티 리페어 크림 100ml 기획 (+멜라B3 세럼 3ml 증정)';


-- ================================

-- 상품: [수분캡슐크림/PDRN 원액캡슐]메디큐브 PDRN 핑크 콜라겐 캡슐크림 55g...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분캡슐크림/PDRN 원액캡슐]메디큐브 PDRN 핑크 콜라겐 캡슐크림 55g',
 '[수분캡슐크림/PDRN 원액캡슐]메디큐브 PDRN 핑크 콜라겐 캡슐크림 55g',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '메디큐브'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분캡슐크림/PDRN 원액캡슐]메디큐브 PDRN 핑크 콜라겐 캡슐크림 55g'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(33300, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분캡슐크림/PDRN 원액캡슐]메디큐브 PDRN 핑크 콜라겐 캡슐크림 55g'), NOW(), NOW()),
(33300, 'SALE', (SELECT id FROM product WHERE name = '[수분캡슐크림/PDRN 원액캡슐]메디큐브 PDRN 핑크 콜라겐 캡슐크림 55g'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022395201ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분캡슐크림/PDRN 원액캡슐]메디큐브 PDRN 핑크 콜라겐 캡슐크림 55g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022395203ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분캡슐크림/PDRN 원액캡슐]메디큐브 PDRN 핑크 콜라겐 캡슐크림 55g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022395202ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분캡슐크림/PDRN 원액캡슐]메디큐브 PDRN 핑크 콜라겐 캡슐크림 55g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022395204ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[수분캡슐크림/PDRN 원액캡슐]메디큐브 PDRN 핑크 콜라겐 캡슐크림 55g'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분캡슐크림/PDRN 원액캡슐]메디큐브 PDRN 핑크 콜라겐 캡슐크림 55g';


-- ================================

-- 상품: 한율 어린쑥 수분진정 크림 55ml 기획 (+25ml+랩핑시트팩 1매)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('한율 어린쑥 수분진정 크림 55ml 기획 (+25ml+랩핑시트팩 1매)',
 '한율 어린쑥 수분진정 크림 55ml 기획 (+25ml+랩핑시트팩 1매)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '한율'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '한율 어린쑥 수분진정 크림 55ml 기획 (+25ml+랩핑시트팩 1매)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '한율 어린쑥 수분진정 크림 55ml 기획 (+25ml+랩핑시트팩 1매)'), NOW(), NOW()),
(28300, 'SALE', (SELECT id FROM product WHERE name = '한율 어린쑥 수분진정 크림 55ml 기획 (+25ml+랩핑시트팩 1매)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023001607ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '한율 어린쑥 수분진정 크림 55ml 기획 (+25ml+랩핑시트팩 1매)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '한율 어린쑥 수분진정 크림 55ml 기획 (+25ml+랩핑시트팩 1매)';


-- ================================

-- 상품: [수분진정] 메이크프렘 인테카 수딩크림 50ml 기획(+크림 31ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분진정] 메이크프렘 인테카 수딩크림 50ml 기획(+크림 31ml)',
 '[수분진정] 메이크프렘 인테카 수딩크림 50ml 기획(+크림 31ml)',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '메이크프렘'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분진정] 메이크프렘 인테카 수딩크림 50ml 기획(+크림 31ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분진정] 메이크프렘 인테카 수딩크림 50ml 기획(+크림 31ml)'), NOW(), NOW()),
(16910, 'SALE', (SELECT id FROM product WHERE name = '[수분진정] 메이크프렘 인테카 수딩크림 50ml 기획(+크림 31ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017204018ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분진정] 메이크프렘 인테카 수딩크림 50ml 기획(+크림 31ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017204017ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분진정] 메이크프렘 인테카 수딩크림 50ml 기획(+크림 31ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017204019ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분진정] 메이크프렘 인테카 수딩크림 50ml 기획(+크림 31ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017204006ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[수분진정] 메이크프렘 인테카 수딩크림 50ml 기획(+크림 31ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분진정] 메이크프렘 인테카 수딩크림 50ml 기획(+크림 31ml)';


-- ================================

-- 상품: [9월 올영픽]피지오겔 DMT 리제너러티브 수분크림 100ml 기획 (+토너15ml+데일리...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽]피지오겔 DMT 리제너러티브 수분크림 100ml 기획 (+토너15ml+데일리뮨 앰플4ml)',
 '[9월 올영픽]피지오겔 DMT 리제너러티브 수분크림 100ml 기획 (+토너15ml+데일리뮨 앰플4ml)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '피지오겔'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9월 올영픽]피지오겔 DMT 리제너러티브 수분크림 100ml 기획 (+토너15ml+데일리뮨 앰플4ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(31500, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽]피지오겔 DMT 리제너러티브 수분크림 100ml 기획 (+토너15ml+데일리뮨 앰플4ml)'), NOW(), NOW()),
(19800, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽]피지오겔 DMT 리제너러티브 수분크림 100ml 기획 (+토너15ml+데일리뮨 앰플4ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021634410ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽]피지오겔 DMT 리제너러티브 수분크림 100ml 기획 (+토너15ml+데일리뮨 앰플4ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021634408ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽]피지오겔 DMT 리제너러티브 수분크림 100ml 기획 (+토너15ml+데일리뮨 앰플4ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021634407ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽]피지오겔 DMT 리제너러티브 수분크림 100ml 기획 (+토너15ml+데일리뮨 앰플4ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021634404ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[9월 올영픽]피지오겔 DMT 리제너러티브 수분크림 100ml 기획 (+토너15ml+데일리뮨 앰플4ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021634409ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[9월 올영픽]피지오겔 DMT 리제너러티브 수분크림 100ml 기획 (+토너15ml+데일리뮨 앰플4ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[9월 올영픽]피지오겔 DMT 리제너러티브 수분크림 100ml 기획 (+토너15ml+데일리뮨 앰플4ml)';


-- ================================

-- 상품: [1등크림/올영단독] 더하르나이 시카이드 크림 100ml+30ml 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[1등크림/올영단독] 더하르나이 시카이드 크림 100ml+30ml 기획',
 '[1등크림/올영단독] 더하르나이 시카이드 크림 100ml+30ml 기획',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더하르나이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[1등크림/올영단독] 더하르나이 시카이드 크림 100ml+30ml 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1등크림/올영단독] 더하르나이 시카이드 크림 100ml+30ml 기획'), NOW(), NOW()),
(29000, 'SALE', (SELECT id FROM product WHERE name = '[1등크림/올영단독] 더하르나이 시카이드 크림 100ml+30ml 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019240520ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[1등크림/올영단독] 더하르나이 시카이드 크림 100ml+30ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019240518ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[1등크림/올영단독] 더하르나이 시카이드 크림 100ml+30ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019240516ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[1등크림/올영단독] 더하르나이 시카이드 크림 100ml+30ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019240515ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[1등크림/올영단독] 더하르나이 시카이드 크림 100ml+30ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019240514ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[1등크림/올영단독] 더하르나이 시카이드 크림 100ml+30ml 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[1등크림/올영단독] 더하르나이 시카이드 크림 100ml+30ml 기획';


-- ================================

-- 상품: [고현정 PICK] 코이 플로우 리프팅 랩핑 크림 50ml 기획 (+미니 크림 10ml 2...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[고현정 PICK] 코이 플로우 리프팅 랩핑 크림 50ml 기획 (+미니 크림 10ml 2ea)',
 '[고현정 PICK] 코이 플로우 리프팅 랩핑 크림 50ml 기획 (+미니 크림 10ml 2ea)',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '코이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[고현정 PICK] 코이 플로우 리프팅 랩핑 크림 50ml 기획 (+미니 크림 10ml 2ea)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(57000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[고현정 PICK] 코이 플로우 리프팅 랩핑 크림 50ml 기획 (+미니 크림 10ml 2ea)'), NOW(), NOW()),
(38900, 'SALE', (SELECT id FROM product WHERE name = '[고현정 PICK] 코이 플로우 리프팅 랩핑 크림 50ml 기획 (+미니 크림 10ml 2ea)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021463320ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[고현정 PICK] 코이 플로우 리프팅 랩핑 크림 50ml 기획 (+미니 크림 10ml 2ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021463321ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[고현정 PICK] 코이 플로우 리프팅 랩핑 크림 50ml 기획 (+미니 크림 10ml 2ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021463319ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[고현정 PICK] 코이 플로우 리프팅 랩핑 크림 50ml 기획 (+미니 크림 10ml 2ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021463316ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[고현정 PICK] 코이 플로우 리프팅 랩핑 크림 50ml 기획 (+미니 크림 10ml 2ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021463310ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[고현정 PICK] 코이 플로우 리프팅 랩핑 크림 50ml 기획 (+미니 크림 10ml 2ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021463308ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[고현정 PICK] 코이 플로우 리프팅 랩핑 크림 50ml 기획 (+미니 크림 10ml 2ea)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[고현정 PICK] 코이 플로우 리프팅 랩핑 크림 50ml 기획 (+미니 크림 10ml 2ea)';


-- ================================

-- 상품: [화해1위/수분광채크림] 아누아 피디알엔 히알루론산 100 수분 크림 60mL 기획 (+3...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[화해1위/수분광채크림] 아누아 피디알엔 히알루론산 100 수분 크림 60mL 기획 (+30mL)',
 '[화해1위/수분광채크림] 아누아 피디알엔 히알루론산 100 수분 크림 60mL 기획 (+30mL)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아누아'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[화해1위/수분광채크림] 아누아 피디알엔 히알루론산 100 수분 크림 60mL 기획 (+30mL)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[화해1위/수분광채크림] 아누아 피디알엔 히알루론산 100 수분 크림 60mL 기획 (+30mL)'), NOW(), NOW()),
(19500, 'SALE', (SELECT id FROM product WHERE name = '[화해1위/수분광채크림] 아누아 피디알엔 히알루론산 100 수분 크림 60mL 기획 (+30mL)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022270313ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[화해1위/수분광채크림] 아누아 피디알엔 히알루론산 100 수분 크림 60mL 기획 (+30mL)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022270308ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[화해1위/수분광채크림] 아누아 피디알엔 히알루론산 100 수분 크림 60mL 기획 (+30mL)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022270303ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[화해1위/수분광채크림] 아누아 피디알엔 히알루론산 100 수분 크림 60mL 기획 (+30mL)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[화해1위/수분광채크림] 아누아 피디알엔 히알루론산 100 수분 크림 60mL 기획 (+30mL)';


-- ================================

-- 상품: [단독기획/5겹장벽크림] 파티온 노스카나인 트러블 크림 45ml 기획(+5ml+세럼 5ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[단독기획/5겹장벽크림] 파티온 노스카나인 트러블 크림 45ml 기획(+5ml+세럼 5ml)',
 '[단독기획/5겹장벽크림] 파티온 노스카나인 트러블 크림 45ml 기획(+5ml+세럼 5ml)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '파티온'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[단독기획/5겹장벽크림] 파티온 노스카나인 트러블 크림 45ml 기획(+5ml+세럼 5ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독기획/5겹장벽크림] 파티온 노스카나인 트러블 크림 45ml 기획(+5ml+세럼 5ml)'), NOW(), NOW()),
(21500, 'SALE', (SELECT id FROM product WHERE name = '[단독기획/5겹장벽크림] 파티온 노스카나인 트러블 크림 45ml 기획(+5ml+세럼 5ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021971605ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[단독기획/5겹장벽크림] 파티온 노스카나인 트러블 크림 45ml 기획(+5ml+세럼 5ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021971607ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[단독기획/5겹장벽크림] 파티온 노스카나인 트러블 크림 45ml 기획(+5ml+세럼 5ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021971608ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[단독기획/5겹장벽크림] 파티온 노스카나인 트러블 크림 45ml 기획(+5ml+세럼 5ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[단독기획/5겹장벽크림] 파티온 노스카나인 트러블 크림 45ml 기획(+5ml+세럼 5ml)';


-- ================================

-- 상품: [아랑 PICK] 낫츠 센텔라스카 연고 일랑일랑 15g...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[아랑 PICK] 낫츠 센텔라스카 연고 일랑일랑 15g',
 '[아랑 PICK] 낫츠 센텔라스카 연고 일랑일랑 15g',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '낫츠'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[아랑 PICK] 낫츠 센텔라스카 연고 일랑일랑 15g'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(20000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[아랑 PICK] 낫츠 센텔라스카 연고 일랑일랑 15g'), NOW(), NOW()),
(18000, 'SALE', (SELECT id FROM product WHERE name = '[아랑 PICK] 낫츠 센텔라스카 연고 일랑일랑 15g'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016836019ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[아랑 PICK] 낫츠 센텔라스카 연고 일랑일랑 15g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016836008ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[아랑 PICK] 낫츠 센텔라스카 연고 일랑일랑 15g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016836015ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[아랑 PICK] 낫츠 센텔라스카 연고 일랑일랑 15g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016836016ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[아랑 PICK] 낫츠 센텔라스카 연고 일랑일랑 15g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016836017ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[아랑 PICK] 낫츠 센텔라스카 연고 일랑일랑 15g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016836020ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[아랑 PICK] 낫츠 센텔라스카 연고 일랑일랑 15g'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[아랑 PICK] 낫츠 센텔라스카 연고 일랑일랑 15g';


-- ================================

-- 상품: [수분진정][올영단독]넘버즈인 1번 판토텐산 액티브 수딩크림 80ml 1+1 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분진정][올영단독]넘버즈인 1번 판토텐산 액티브 수딩크림 80ml 1+1 기획',
 '[수분진정][올영단독]넘버즈인 1번 판토텐산 액티브 수딩크림 80ml 1+1 기획',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '넘버즈인'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('1번 수딩크림 더블기획', 25840, (SELECT id FROM product WHERE name = '[수분진정][올영단독]넘버즈인 1번 판토텐산 액티브 수딩크림 80ml 1+1 기획'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('1번 수딩크림 더블기획 (태닝 포차코)', 0, (SELECT id FROM product WHERE name = '[수분진정][올영단독]넘버즈인 1번 판토텐산 액티브 수딩크림 80ml 1+1 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(40000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분진정][올영단독]넘버즈인 1번 판토텐산 액티브 수딩크림 80ml 1+1 기획'), NOW(), NOW()),
(25840, 'SALE', (SELECT id FROM product WHERE name = '[수분진정][올영단독]넘버즈인 1번 판토텐산 액티브 수딩크림 80ml 1+1 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022915111ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분진정][올영단독]넘버즈인 1번 판토텐산 액티브 수딩크림 80ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022915117ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분진정][올영단독]넘버즈인 1번 판토텐산 액티브 수딩크림 80ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022915110ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분진정][올영단독]넘버즈인 1번 판토텐산 액티브 수딩크림 80ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022915112ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[수분진정][올영단독]넘버즈인 1번 판토텐산 액티브 수딩크림 80ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022915113ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[수분진정][올영단독]넘버즈인 1번 판토텐산 액티브 수딩크림 80ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022915114ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[수분진정][올영단독]넘버즈인 1번 판토텐산 액티브 수딩크림 80ml 1+1 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분진정][올영단독]넘버즈인 1번 판토텐산 액티브 수딩크림 80ml 1+1 기획';


-- ================================

-- 상품: 에스트라 에이시카365 리페어 크림 pH4.5 60ml 기획 (+에이시카 세럼 7ml 증정...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('에스트라 에이시카365 리페어 크림 pH4.5 60ml 기획 (+에이시카 세럼 7ml 증정)',
 '에스트라 에이시카365 리페어 크림 pH4.5 60ml 기획 (+에이시카 세럼 7ml 증정)',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에스트라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '에스트라 에이시카365 리페어 크림 pH4.5 60ml 기획 (+에이시카 세럼 7ml 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '에스트라 에이시카365 리페어 크림 pH4.5 60ml 기획 (+에이시카 세럼 7ml 증정)'), NOW(), NOW()),
(26900, 'SALE', (SELECT id FROM product WHERE name = '에스트라 에이시카365 리페어 크림 pH4.5 60ml 기획 (+에이시카 세럼 7ml 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022284002ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '에스트라 에이시카365 리페어 크림 pH4.5 60ml 기획 (+에이시카 세럼 7ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022284007ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '에스트라 에이시카365 리페어 크림 pH4.5 60ml 기획 (+에이시카 세럼 7ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022284006ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '에스트라 에이시카365 리페어 크림 pH4.5 60ml 기획 (+에이시카 세럼 7ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022284003ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '에스트라 에이시카365 리페어 크림 pH4.5 60ml 기획 (+에이시카 세럼 7ml 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '에스트라 에이시카365 리페어 크림 pH4.5 60ml 기획 (+에이시카 세럼 7ml 증정)';


-- ================================

-- 상품: 피지오겔 레드수딩 AI 리페어 크림 100ml 기획 (+리페어에센스50ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('피지오겔 레드수딩 AI 리페어 크림 100ml 기획 (+리페어에센스50ml)',
 '피지오겔 레드수딩 AI 리페어 크림 100ml 기획 (+리페어에센스50ml)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '피지오겔'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '피지오겔 레드수딩 AI 리페어 크림 100ml 기획 (+리페어에센스50ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39500, 'ORIGINAL', (SELECT id FROM product WHERE name = '피지오겔 레드수딩 AI 리페어 크림 100ml 기획 (+리페어에센스50ml)'), NOW(), NOW()),
(27900, 'SALE', (SELECT id FROM product WHERE name = '피지오겔 레드수딩 AI 리페어 크림 100ml 기획 (+리페어에센스50ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023097911ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '피지오겔 레드수딩 AI 리페어 크림 100ml 기획 (+리페어에센스50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023097912ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '피지오겔 레드수딩 AI 리페어 크림 100ml 기획 (+리페어에센스50ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '피지오겔 레드수딩 AI 리페어 크림 100ml 기획 (+리페어에센스50ml)';


-- ================================

-- 상품: [반반크림/사계절맞춤]달바 더블 세럼 앤 크림 70g...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[반반크림/사계절맞춤]달바 더블 세럼 앤 크림 70g',
 '[반반크림/사계절맞춤]달바 더블 세럼 앤 크림 70g',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '달바'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[반반크림/사계절맞춤]달바 더블 세럼 앤 크림 70g'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(78000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[반반크림/사계절맞춤]달바 더블 세럼 앤 크림 70g'), NOW(), NOW()),
(38900, 'SALE', (SELECT id FROM product WHERE name = '[반반크림/사계절맞춤]달바 더블 세럼 앤 크림 70g'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017321235ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[반반크림/사계절맞춤]달바 더블 세럼 앤 크림 70g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017321236ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[반반크림/사계절맞춤]달바 더블 세럼 앤 크림 70g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017321237ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[반반크림/사계절맞춤]달바 더블 세럼 앤 크림 70g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017321228ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[반반크림/사계절맞춤]달바 더블 세럼 앤 크림 70g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017321231ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[반반크림/사계절맞춤]달바 더블 세럼 앤 크림 70g'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[반반크림/사계절맞춤]달바 더블 세럼 앤 크림 70g';


-- ================================

-- 상품: 바이오더마 아토덤 인텐시브 밤 500ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('바이오더마 아토덤 인텐시브 밤 500ml',
 '바이오더마 아토덤 인텐시브 밤 500ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오더마'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '바이오더마 아토덤 인텐시브 밤 500ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(48000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바이오더마 아토덤 인텐시브 밤 500ml'), NOW(), NOW()),
(38400, 'SALE', (SELECT id FROM product WHERE name = '바이오더마 아토덤 인텐시브 밤 500ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017182916ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바이오더마 아토덤 인텐시브 밤 500ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017182913ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '바이오더마 아토덤 인텐시브 밤 500ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '바이오더마 아토덤 인텐시브 밤 500ml';


-- ================================

-- 상품: [NEW] 라운드랩 소나무 진정 시카 크림 플러스 60ml 기획 (+토너 20ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW] 라운드랩 소나무 진정 시카 크림 플러스 60ml 기획 (+토너 20ml)',
 '[NEW] 라운드랩 소나무 진정 시카 크림 플러스 60ml 기획 (+토너 20ml)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라운드랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW] 라운드랩 소나무 진정 시카 크림 플러스 60ml 기획 (+토너 20ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(34000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW] 라운드랩 소나무 진정 시카 크림 플러스 60ml 기획 (+토너 20ml)'), NOW(), NOW()),
(25600, 'SALE', (SELECT id FROM product WHERE name = '[NEW] 라운드랩 소나무 진정 시카 크림 플러스 60ml 기획 (+토너 20ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021875603ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW] 라운드랩 소나무 진정 시카 크림 플러스 60ml 기획 (+토너 20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021875606ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW] 라운드랩 소나무 진정 시카 크림 플러스 60ml 기획 (+토너 20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021875607ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW] 라운드랩 소나무 진정 시카 크림 플러스 60ml 기획 (+토너 20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021875604ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[NEW] 라운드랩 소나무 진정 시카 크림 플러스 60ml 기획 (+토너 20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021875605ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[NEW] 라운드랩 소나무 진정 시카 크림 플러스 60ml 기획 (+토너 20ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW] 라운드랩 소나무 진정 시카 크림 플러스 60ml 기획 (+토너 20ml)';


-- ================================

-- 상품: [박해린PICK/장벽회복] 리얼베리어 익스트림 크림 70ml 기획 (+30ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[박해린PICK/장벽회복] 리얼베리어 익스트림 크림 70ml 기획 (+30ml)',
 '[박해린PICK/장벽회복] 리얼베리어 익스트림 크림 70ml 기획 (+30ml)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '리얼베리어'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[박해린PICK/장벽회복] 리얼베리어 익스트림 크림 70ml 기획 (+30ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[박해린PICK/장벽회복] 리얼베리어 익스트림 크림 70ml 기획 (+30ml)'), NOW(), NOW()),
(28500, 'SALE', (SELECT id FROM product WHERE name = '[박해린PICK/장벽회복] 리얼베리어 익스트림 크림 70ml 기획 (+30ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019965107ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[박해린PICK/장벽회복] 리얼베리어 익스트림 크림 70ml 기획 (+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019965104ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[박해린PICK/장벽회복] 리얼베리어 익스트림 크림 70ml 기획 (+30ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[박해린PICK/장벽회복] 리얼베리어 익스트림 크림 70ml 기획 (+30ml)';


-- ================================

-- 상품: [SNS 대란템]바이오더마 세비엄 포어 리파이너...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[SNS 대란템]바이오더마 세비엄 포어 리파이너',
 '[SNS 대란템]바이오더마 세비엄 포어 리파이너',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오더마'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[SNS 대란템]바이오더마 세비엄 포어 리파이너'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[SNS 대란템]바이오더마 세비엄 포어 리파이너'), NOW(), NOW()),
(18910, 'SALE', (SELECT id FROM product WHERE name = '[SNS 대란템]바이오더마 세비엄 포어 리파이너'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0000/A00000000284815ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[SNS 대란템]바이오더마 세비엄 포어 리파이너'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0000/A00000000284808ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[SNS 대란템]바이오더마 세비엄 포어 리파이너'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0000/A00000000284810ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[SNS 대란템]바이오더마 세비엄 포어 리파이너'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[SNS 대란템]바이오더마 세비엄 포어 리파이너';


-- ================================

-- 상품: [채서안PICK/보습탄력] 아비브 부활초 크림 뉴트리션 튜브 75ml 기획 (+30ml 추...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[채서안PICK/보습탄력] 아비브 부활초 크림 뉴트리션 튜브 75ml 기획 (+30ml 추가 증정)',
 '[채서안PICK/보습탄력] 아비브 부활초 크림 뉴트리션 튜브 75ml 기획 (+30ml 추가 증정)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아비브'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[채서안PICK/보습탄력] 아비브 부활초 크림 뉴트리션 튜브 75ml 기획 (+30ml 추가 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[채서안PICK/보습탄력] 아비브 부활초 크림 뉴트리션 튜브 75ml 기획 (+30ml 추가 증정)'), NOW(), NOW()),
(24500, 'SALE', (SELECT id FROM product WHERE name = '[채서안PICK/보습탄력] 아비브 부활초 크림 뉴트리션 튜브 75ml 기획 (+30ml 추가 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015803816ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[채서안PICK/보습탄력] 아비브 부활초 크림 뉴트리션 튜브 75ml 기획 (+30ml 추가 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015803815ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[채서안PICK/보습탄력] 아비브 부활초 크림 뉴트리션 튜브 75ml 기획 (+30ml 추가 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015803811ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[채서안PICK/보습탄력] 아비브 부활초 크림 뉴트리션 튜브 75ml 기획 (+30ml 추가 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[채서안PICK/보습탄력] 아비브 부활초 크림 뉴트리션 튜브 75ml 기획 (+30ml 추가 증정)';


-- ================================

-- 상품: [단독/대용량] 라운드랩 자작나무 수분 크림 120ml 기획 (+수분패드 4매)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[단독/대용량] 라운드랩 자작나무 수분 크림 120ml 기획 (+수분패드 4매)',
 '[단독/대용량] 라운드랩 자작나무 수분 크림 120ml 기획 (+수분패드 4매)',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라운드랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[단독/대용량] 라운드랩 자작나무 수분 크림 120ml 기획 (+수분패드 4매)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(42000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독/대용량] 라운드랩 자작나무 수분 크림 120ml 기획 (+수분패드 4매)'), NOW(), NOW()),
(27300, 'SALE', (SELECT id FROM product WHERE name = '[단독/대용량] 라운드랩 자작나무 수분 크림 120ml 기획 (+수분패드 4매)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016658619ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[단독/대용량] 라운드랩 자작나무 수분 크림 120ml 기획 (+수분패드 4매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016658621ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[단독/대용량] 라운드랩 자작나무 수분 크림 120ml 기획 (+수분패드 4매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016658620ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[단독/대용량] 라운드랩 자작나무 수분 크림 120ml 기획 (+수분패드 4매)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[단독/대용량] 라운드랩 자작나무 수분 크림 120ml 기획 (+수분패드 4매)';


-- ================================

-- 상품: 토리든 다이브인 저분자 히알루론산 수딩 크림 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('토리든 다이브인 저분자 히알루론산 수딩 크림 100ml',
 '토리든 다이브인 저분자 히알루론산 수딩 크림 100ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '토리든'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '토리든 다이브인 저분자 히알루론산 수딩 크림 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '토리든 다이브인 저분자 히알루론산 수딩 크림 100ml'), NOW(), NOW()),
(18000, 'SALE', (SELECT id FROM product WHERE name = '토리든 다이브인 저분자 히알루론산 수딩 크림 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016931305ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '토리든 다이브인 저분자 히알루론산 수딩 크림 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016931307ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '토리든 다이브인 저분자 히알루론산 수딩 크림 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016931306ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '토리든 다이브인 저분자 히알루론산 수딩 크림 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '토리든 다이브인 저분자 히알루론산 수딩 크림 100ml';


-- ================================

-- 상품: [7겹보습크림/한정기획] 닥터자르트 세라마이딘 울트라 모이스처라이징 크림 50ml 1+1 ...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[7겹보습크림/한정기획] 닥터자르트 세라마이딘 울트라 모이스처라이징 크림 50ml 1+1 기획',
 '[7겹보습크림/한정기획] 닥터자르트 세라마이딘 울트라 모이스처라이징 크림 50ml 1+1 기획',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터자르트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[7겹보습크림/한정기획] 닥터자르트 세라마이딘 울트라 모이스처라이징 크림 50ml 1+1 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(51000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[7겹보습크림/한정기획] 닥터자르트 세라마이딘 울트라 모이스처라이징 크림 50ml 1+1 기획'), NOW(), NOW()),
(40800, 'SALE', (SELECT id FROM product WHERE name = '[7겹보습크림/한정기획] 닥터자르트 세라마이딘 울트라 모이스처라이징 크림 50ml 1+1 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021859408ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[7겹보습크림/한정기획] 닥터자르트 세라마이딘 울트라 모이스처라이징 크림 50ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021859403ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[7겹보습크림/한정기획] 닥터자르트 세라마이딘 울트라 모이스처라이징 크림 50ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021859404ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[7겹보습크림/한정기획] 닥터자르트 세라마이딘 울트라 모이스처라이징 크림 50ml 1+1 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[7겹보습크림/한정기획] 닥터자르트 세라마이딘 울트라 모이스처라이징 크림 50ml 1+1 기획';


-- ================================

-- 상품: [비타캡슐톡톡/리뉴얼] 구달 청귤 비타C 잡티케어 크림 알파 75ml 리필 기획 (75ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[비타캡슐톡톡/리뉴얼] 구달 청귤 비타C 잡티케어 크림 알파 75ml 리필 기획 (75ml+75ml)',
 '[비타캡슐톡톡/리뉴얼] 구달 청귤 비타C 잡티케어 크림 알파 75ml 리필 기획 (75ml+75ml)',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '구달'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[비타캡슐톡톡/리뉴얼] 구달 청귤 비타C 잡티케어 크림 알파 75ml 리필 기획 (75ml+75ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[비타캡슐톡톡/리뉴얼] 구달 청귤 비타C 잡티케어 크림 알파 75ml 리필 기획 (75ml+75ml)'), NOW(), NOW()),
(30000, 'SALE', (SELECT id FROM product WHERE name = '[비타캡슐톡톡/리뉴얼] 구달 청귤 비타C 잡티케어 크림 알파 75ml 리필 기획 (75ml+75ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023065509ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[비타캡슐톡톡/리뉴얼] 구달 청귤 비타C 잡티케어 크림 알파 75ml 리필 기획 (75ml+75ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023065512ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[비타캡슐톡톡/리뉴얼] 구달 청귤 비타C 잡티케어 크림 알파 75ml 리필 기획 (75ml+75ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023065510ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[비타캡슐톡톡/리뉴얼] 구달 청귤 비타C 잡티케어 크림 알파 75ml 리필 기획 (75ml+75ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023065511ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[비타캡슐톡톡/리뉴얼] 구달 청귤 비타C 잡티케어 크림 알파 75ml 리필 기획 (75ml+75ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[비타캡슐톡톡/리뉴얼] 구달 청귤 비타C 잡티케어 크림 알파 75ml 리필 기획 (75ml+75ml)';


-- ================================

-- 상품: [탄력수분크림] 퍼셀 픽셀바이옴 히알 콜라겐 스플래쉬 크림 50ml 기획 (+25ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[탄력수분크림] 퍼셀 픽셀바이옴 히알 콜라겐 스플래쉬 크림 50ml 기획 (+25ml)',
 '[탄력수분크림] 퍼셀 픽셀바이옴 히알 콜라겐 스플래쉬 크림 50ml 기획 (+25ml)',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '퍼셀'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[탄력수분크림] 퍼셀 픽셀바이옴 히알 콜라겐 스플래쉬 크림 50ml 기획 (+25ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(36000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[탄력수분크림] 퍼셀 픽셀바이옴 히알 콜라겐 스플래쉬 크림 50ml 기획 (+25ml)'), NOW(), NOW()),
(23000, 'SALE', (SELECT id FROM product WHERE name = '[탄력수분크림] 퍼셀 픽셀바이옴 히알 콜라겐 스플래쉬 크림 50ml 기획 (+25ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022909313ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[탄력수분크림] 퍼셀 픽셀바이옴 히알 콜라겐 스플래쉬 크림 50ml 기획 (+25ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022909310ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[탄력수분크림] 퍼셀 픽셀바이옴 히알 콜라겐 스플래쉬 크림 50ml 기획 (+25ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022909309ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[탄력수분크림] 퍼셀 픽셀바이옴 히알 콜라겐 스플래쉬 크림 50ml 기획 (+25ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022909304ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[탄력수분크림] 퍼셀 픽셀바이옴 히알 콜라겐 스플래쉬 크림 50ml 기획 (+25ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[탄력수분크림] 퍼셀 픽셀바이옴 히알 콜라겐 스플래쉬 크림 50ml 기획 (+25ml)';


-- ================================

-- 상품: [오리지널PDRN/광채크림] 리쥬란 힐러 턴오버 액티브 크림 50ml 기획(+더마힐러앰플 ...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[오리지널PDRN/광채크림] 리쥬란 힐러 턴오버 액티브 크림 50ml 기획(+더마힐러앰플 1ml*7ea)',
 '[오리지널PDRN/광채크림] 리쥬란 힐러 턴오버 액티브 크림 50ml 기획(+더마힐러앰플 1ml*7ea)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '리쥬란'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('50ml 기획(+더마힐러앰플 1ml*7)', 27400, (SELECT id FROM product WHERE name = '[오리지널PDRN/광채크림] 리쥬란 힐러 턴오버 액티브 크림 50ml 기획(+더마힐러앰플 1ml*7ea)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('50ml 기획(+턴오버앰플 3ml)', 27400, (SELECT id FROM product WHERE name = '[오리지널PDRN/광채크림] 리쥬란 힐러 턴오버 액티브 크림 50ml 기획(+더마힐러앰플 1ml*7ea)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[오리지널PDRN/광채크림] 리쥬란 힐러 턴오버 액티브 크림 50ml 기획(+더마힐러앰플 1ml*7ea)'), NOW(), NOW()),
(27400, 'SALE', (SELECT id FROM product WHERE name = '[오리지널PDRN/광채크림] 리쥬란 힐러 턴오버 액티브 크림 50ml 기획(+더마힐러앰플 1ml*7ea)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020380417ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[오리지널PDRN/광채크림] 리쥬란 힐러 턴오버 액티브 크림 50ml 기획(+더마힐러앰플 1ml*7ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020380419ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[오리지널PDRN/광채크림] 리쥬란 힐러 턴오버 액티브 크림 50ml 기획(+더마힐러앰플 1ml*7ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020380418ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[오리지널PDRN/광채크림] 리쥬란 힐러 턴오버 액티브 크림 50ml 기획(+더마힐러앰플 1ml*7ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020380403ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[오리지널PDRN/광채크림] 리쥬란 힐러 턴오버 액티브 크림 50ml 기획(+더마힐러앰플 1ml*7ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020380414ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[오리지널PDRN/광채크림] 리쥬란 힐러 턴오버 액티브 크림 50ml 기획(+더마힐러앰플 1ml*7ea)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[오리지널PDRN/광채크림] 리쥬란 힐러 턴오버 액티브 크림 50ml 기획(+더마힐러앰플 1ml*7ea)';


-- ================================

-- 상품: [의약외품] 마일드랩 센텔라스카 연고 30g...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[의약외품] 마일드랩 센텔라스카 연고 30g',
 '[의약외품] 마일드랩 센텔라스카 연고 30g',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '마일드랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[의약외품] 마일드랩 센텔라스카 연고 30g'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(36000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[의약외품] 마일드랩 센텔라스카 연고 30g'), NOW(), NOW()),
(27000, 'SALE', (SELECT id FROM product WHERE name = '[의약외품] 마일드랩 센텔라스카 연고 30g'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018227228ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[의약외품] 마일드랩 센텔라스카 연고 30g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018227224ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[의약외품] 마일드랩 센텔라스카 연고 30g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018227208ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[의약외품] 마일드랩 센텔라스카 연고 30g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018227207ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[의약외품] 마일드랩 센텔라스카 연고 30g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018227206ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[의약외품] 마일드랩 센텔라스카 연고 30g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018227204ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[의약외품] 마일드랩 센텔라스카 연고 30g'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[의약외품] 마일드랩 센텔라스카 연고 30g';


-- ================================

-- 상품: [한정기획/강력진정크림] 닥터자르트 시카페어 인텐시브 수딩 리페어 크림 50ml 1+1 기...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[한정기획/강력진정크림] 닥터자르트 시카페어 인텐시브 수딩 리페어 크림 50ml 1+1 기획',
 '[한정기획/강력진정크림] 닥터자르트 시카페어 인텐시브 수딩 리페어 크림 50ml 1+1 기획',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터자르트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[한정기획/강력진정크림] 닥터자르트 시카페어 인텐시브 수딩 리페어 크림 50ml 1+1 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(50000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[한정기획/강력진정크림] 닥터자르트 시카페어 인텐시브 수딩 리페어 크림 50ml 1+1 기획'), NOW(), NOW()),
(42500, 'SALE', (SELECT id FROM product WHERE name = '[한정기획/강력진정크림] 닥터자르트 시카페어 인텐시브 수딩 리페어 크림 50ml 1+1 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021859208ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[한정기획/강력진정크림] 닥터자르트 시카페어 인텐시브 수딩 리페어 크림 50ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021859203ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[한정기획/강력진정크림] 닥터자르트 시카페어 인텐시브 수딩 리페어 크림 50ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021859207ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[한정기획/강력진정크림] 닥터자르트 시카페어 인텐시브 수딩 리페어 크림 50ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021859204ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[한정기획/강력진정크림] 닥터자르트 시카페어 인텐시브 수딩 리페어 크림 50ml 1+1 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[한정기획/강력진정크림] 닥터자르트 시카페어 인텐시브 수딩 리페어 크림 50ml 1+1 기획';


-- ================================

-- 상품: [수분 진정] 셀인샷 EGF 알란테놀 트러블 크림 70ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분 진정] 셀인샷 EGF 알란테놀 트러블 크림 70ml',
 '[수분 진정] 셀인샷 EGF 알란테놀 트러블 크림 70ml',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '셀인샷'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분 진정] 셀인샷 EGF 알란테놀 트러블 크림 70ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(41200, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분 진정] 셀인샷 EGF 알란테놀 트러블 크림 70ml'), NOW(), NOW()),
(28900, 'SALE', (SELECT id FROM product WHERE name = '[수분 진정] 셀인샷 EGF 알란테놀 트러블 크림 70ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022652712ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분 진정] 셀인샷 EGF 알란테놀 트러블 크림 70ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022652703ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분 진정] 셀인샷 EGF 알란테놀 트러블 크림 70ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022652707ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분 진정] 셀인샷 EGF 알란테놀 트러블 크림 70ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022652701ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[수분 진정] 셀인샷 EGF 알란테놀 트러블 크림 70ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분 진정] 셀인샷 EGF 알란테놀 트러블 크림 70ml';


-- ================================

-- 상품: 피지오겔 레드수딩 시카밸런스 크림 80ml 대용량...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('피지오겔 레드수딩 시카밸런스 크림 80ml 대용량',
 '피지오겔 레드수딩 시카밸런스 크림 80ml 대용량',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '피지오겔'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '피지오겔 레드수딩 시카밸런스 크림 80ml 대용량'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '피지오겔 레드수딩 시카밸런스 크림 80ml 대용량'), NOW(), NOW()),
(25000, 'SALE', (SELECT id FROM product WHERE name = '피지오겔 레드수딩 시카밸런스 크림 80ml 대용량'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018712711ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '피지오겔 레드수딩 시카밸런스 크림 80ml 대용량'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018712709ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '피지오겔 레드수딩 시카밸런스 크림 80ml 대용량'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018712710ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '피지오겔 레드수딩 시카밸런스 크림 80ml 대용량'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018712708ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '피지오겔 레드수딩 시카밸런스 크림 80ml 대용량'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '피지오겔 레드수딩 시카밸런스 크림 80ml 대용량';


-- ================================

-- 상품: [안티에이징/밀착보습막] 셀퓨전씨 레이저 리쥬버네이션 크림 50ml 더블 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[안티에이징/밀착보습막] 셀퓨전씨 레이저 리쥬버네이션 크림 50ml 더블 기획',
 '[안티에이징/밀착보습막] 셀퓨전씨 레이저 리쥬버네이션 크림 50ml 더블 기획',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '셀퓨전씨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[안티에이징/밀착보습막] 셀퓨전씨 레이저 리쥬버네이션 크림 50ml 더블 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(40000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[안티에이징/밀착보습막] 셀퓨전씨 레이저 리쥬버네이션 크림 50ml 더블 기획'), NOW(), NOW()),
(28900, 'SALE', (SELECT id FROM product WHERE name = '[안티에이징/밀착보습막] 셀퓨전씨 레이저 리쥬버네이션 크림 50ml 더블 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021536305ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[안티에이징/밀착보습막] 셀퓨전씨 레이저 리쥬버네이션 크림 50ml 더블 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021536304ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[안티에이징/밀착보습막] 셀퓨전씨 레이저 리쥬버네이션 크림 50ml 더블 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021536303ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[안티에이징/밀착보습막] 셀퓨전씨 레이저 리쥬버네이션 크림 50ml 더블 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021536302ko.png?l=ko', 4, (SELECT id FROM product WHERE name = '[안티에이징/밀착보습막] 셀퓨전씨 레이저 리쥬버네이션 크림 50ml 더블 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[안티에이징/밀착보습막] 셀퓨전씨 레이저 리쥬버네이션 크림 50ml 더블 기획';


-- ================================

-- 상품: 리얼베리어 익스트림 크림 라이트 50ml 1+1 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('리얼베리어 익스트림 크림 라이트 50ml 1+1 기획',
 '리얼베리어 익스트림 크림 라이트 50ml 1+1 기획',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '리얼베리어'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '리얼베리어 익스트림 크림 라이트 50ml 1+1 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(34000, 'ORIGINAL', (SELECT id FROM product WHERE name = '리얼베리어 익스트림 크림 라이트 50ml 1+1 기획'), NOW(), NOW()),
(24500, 'SALE', (SELECT id FROM product WHERE name = '리얼베리어 익스트림 크림 라이트 50ml 1+1 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021939302ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '리얼베리어 익스트림 크림 라이트 50ml 1+1 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '리얼베리어 익스트림 크림 라이트 50ml 1+1 기획';


-- ================================

-- 상품: [미백/잡티케어] 달바 비타 토닝 캡슐 크림 55g 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[미백/잡티케어] 달바 비타 토닝 캡슐 크림 55g 기획',
 '[미백/잡티케어] 달바 비타 토닝 캡슐 크림 55g 기획',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '달바'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[미백/잡티케어] 달바 비타 토닝 캡슐 크림 55g 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(58000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[미백/잡티케어] 달바 비타 토닝 캡슐 크림 55g 기획'), NOW(), NOW()),
(58000, 'SALE', (SELECT id FROM product WHERE name = '[미백/잡티케어] 달바 비타 토닝 캡슐 크림 55g 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022343219ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[미백/잡티케어] 달바 비타 토닝 캡슐 크림 55g 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022343216ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[미백/잡티케어] 달바 비타 토닝 캡슐 크림 55g 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022343204ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[미백/잡티케어] 달바 비타 토닝 캡슐 크림 55g 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[미백/잡티케어] 달바 비타 토닝 캡슐 크림 55g 기획';


-- ================================

-- 상품: [바르고 자는 톤업크림] 메디테라피 포쎄라 리얼 비피다 블러 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[바르고 자는 톤업크림] 메디테라피 포쎄라 리얼 비피다 블러 크림 50ml',
 '[바르고 자는 톤업크림] 메디테라피 포쎄라 리얼 비피다 블러 크림 50ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '메디테라피'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[바르고 자는 톤업크림] 메디테라피 포쎄라 리얼 비피다 블러 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(19800, 'ORIGINAL', (SELECT id FROM product WHERE name = '[바르고 자는 톤업크림] 메디테라피 포쎄라 리얼 비피다 블러 크림 50ml'), NOW(), NOW()),
(19800, 'SALE', (SELECT id FROM product WHERE name = '[바르고 자는 톤업크림] 메디테라피 포쎄라 리얼 비피다 블러 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023106115ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[바르고 자는 톤업크림] 메디테라피 포쎄라 리얼 비피다 블러 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023106107ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[바르고 자는 톤업크림] 메디테라피 포쎄라 리얼 비피다 블러 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023106108ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[바르고 자는 톤업크림] 메디테라피 포쎄라 리얼 비피다 블러 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023106109ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[바르고 자는 톤업크림] 메디테라피 포쎄라 리얼 비피다 블러 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023106110ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[바르고 자는 톤업크림] 메디테라피 포쎄라 리얼 비피다 블러 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023106111ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[바르고 자는 톤업크림] 메디테라피 포쎄라 리얼 비피다 블러 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[바르고 자는 톤업크림] 메디테라피 포쎄라 리얼 비피다 블러 크림 50ml';


-- ================================

-- 상품: 제로이드 인텐시브 오인트 크림 80ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('제로이드 인텐시브 오인트 크림 80ml',
 '제로이드 인텐시브 오인트 크림 80ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '제로이드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '제로이드 인텐시브 오인트 크림 80ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '제로이드 인텐시브 오인트 크림 80ml'), NOW(), NOW()),
(30800, 'SALE', (SELECT id FROM product WHERE name = '제로이드 인텐시브 오인트 크림 80ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021629110ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '제로이드 인텐시브 오인트 크림 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021629109ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '제로이드 인텐시브 오인트 크림 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021629105ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '제로이드 인텐시브 오인트 크림 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021629107ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '제로이드 인텐시브 오인트 크림 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021629106ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '제로이드 인텐시브 오인트 크림 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021629108ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '제로이드 인텐시브 오인트 크림 80ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '제로이드 인텐시브 오인트 크림 80ml';


-- ================================

-- 상품: 바이오더마 아토덤 인텐시브 밤 200ml 기획 (+ 75ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('바이오더마 아토덤 인텐시브 밤 200ml 기획 (+ 75ml)',
 '바이오더마 아토덤 인텐시브 밤 200ml 기획 (+ 75ml)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오더마'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('인텐시브 밤 기획', 30330, (SELECT id FROM product WHERE name = '바이오더마 아토덤 인텐시브 밤 200ml 기획 (+ 75ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39900, 'ORIGINAL', (SELECT id FROM product WHERE name = '바이오더마 아토덤 인텐시브 밤 200ml 기획 (+ 75ml)'), NOW(), NOW()),
(30330, 'SALE', (SELECT id FROM product WHERE name = '바이오더마 아토덤 인텐시브 밤 200ml 기획 (+ 75ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019948617ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바이오더마 아토덤 인텐시브 밤 200ml 기획 (+ 75ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019948611ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '바이오더마 아토덤 인텐시브 밤 200ml 기획 (+ 75ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019948616ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '바이오더마 아토덤 인텐시브 밤 200ml 기획 (+ 75ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '바이오더마 아토덤 인텐시브 밤 200ml 기획 (+ 75ml)';


-- ================================

-- 상품: 제로이드 수딩 크림 80ml 기획 (+포밍 클렌저 50ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('제로이드 수딩 크림 80ml 기획 (+포밍 클렌저 50ml)',
 '제로이드 수딩 크림 80ml 기획 (+포밍 클렌저 50ml)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '제로이드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '제로이드 수딩 크림 80ml 기획 (+포밍 클렌저 50ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '제로이드 수딩 크림 80ml 기획 (+포밍 클렌저 50ml)'), NOW(), NOW()),
(30000, 'SALE', (SELECT id FROM product WHERE name = '제로이드 수딩 크림 80ml 기획 (+포밍 클렌저 50ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023042703ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '제로이드 수딩 크림 80ml 기획 (+포밍 클렌저 50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023042707ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '제로이드 수딩 크림 80ml 기획 (+포밍 클렌저 50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023042705ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '제로이드 수딩 크림 80ml 기획 (+포밍 클렌저 50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023042701ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '제로이드 수딩 크림 80ml 기획 (+포밍 클렌저 50ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '제로이드 수딩 크림 80ml 기획 (+포밍 클렌저 50ml)';


-- ================================

-- 상품: 폴라초이스 클리니컬 0.3% 레티놀 + 2% 바쿠치올 트리트먼트 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('폴라초이스 클리니컬 0.3% 레티놀 + 2% 바쿠치올 트리트먼트 30ml',
 '폴라초이스 클리니컬 0.3% 레티놀 + 2% 바쿠치올 트리트먼트 30ml',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '폴라초이스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '폴라초이스 클리니컬 0.3% 레티놀 + 2% 바쿠치올 트리트먼트 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(91000, 'ORIGINAL', (SELECT id FROM product WHERE name = '폴라초이스 클리니컬 0.3% 레티놀 + 2% 바쿠치올 트리트먼트 30ml'), NOW(), NOW()),
(77350, 'SALE', (SELECT id FROM product WHERE name = '폴라초이스 클리니컬 0.3% 레티놀 + 2% 바쿠치올 트리트먼트 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018917003ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '폴라초이스 클리니컬 0.3% 레티놀 + 2% 바쿠치올 트리트먼트 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018917005ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '폴라초이스 클리니컬 0.3% 레티놀 + 2% 바쿠치올 트리트먼트 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018917004ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '폴라초이스 클리니컬 0.3% 레티놀 + 2% 바쿠치올 트리트먼트 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '폴라초이스 클리니컬 0.3% 레티놀 + 2% 바쿠치올 트리트먼트 30ml';


-- ================================

-- 상품: 바이오던스 스킨 글로우 에센스 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('바이오던스 스킨 글로우 에센스 크림 50ml',
 '바이오던스 스킨 글로우 에센스 크림 50ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오던스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '바이오던스 스킨 글로우 에센스 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(48000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바이오던스 스킨 글로우 에센스 크림 50ml'), NOW(), NOW()),
(29900, 'SALE', (SELECT id FROM product WHERE name = '바이오던스 스킨 글로우 에센스 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021909605ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바이오던스 스킨 글로우 에센스 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021909608ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '바이오던스 스킨 글로우 에센스 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021909607ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '바이오던스 스킨 글로우 에센스 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021909606ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '바이오던스 스킨 글로우 에센스 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '바이오던스 스킨 글로우 에센스 크림 50ml';


-- ================================

-- 상품: 파티온 노스카나인 트러블 흔적 리페어 크림 50ml 기획 (+5ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('파티온 노스카나인 트러블 흔적 리페어 크림 50ml 기획 (+5ml)',
 '파티온 노스카나인 트러블 흔적 리페어 크림 50ml 기획 (+5ml)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '파티온'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '파티온 노스카나인 트러블 흔적 리페어 크림 50ml 기획 (+5ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '파티온 노스카나인 트러블 흔적 리페어 크림 50ml 기획 (+5ml)'), NOW(), NOW()),
(29700, 'SALE', (SELECT id FROM product WHERE name = '파티온 노스카나인 트러블 흔적 리페어 크림 50ml 기획 (+5ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021110905ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '파티온 노스카나인 트러블 흔적 리페어 크림 50ml 기획 (+5ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021110907ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '파티온 노스카나인 트러블 흔적 리페어 크림 50ml 기획 (+5ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021110906ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '파티온 노스카나인 트러블 흔적 리페어 크림 50ml 기획 (+5ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021110904ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '파티온 노스카나인 트러블 흔적 리페어 크림 50ml 기획 (+5ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '파티온 노스카나인 트러블 흔적 리페어 크림 50ml 기획 (+5ml)';


-- ================================

-- 상품: [진정/탄력] 센텔리안24 마데카 크림 타임 리버스 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[진정/탄력] 센텔리안24 마데카 크림 타임 리버스 50ml',
 '[진정/탄력] 센텔리안24 마데카 크림 타임 리버스 50ml',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '센텔리안24'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[진정/탄력] 센텔리안24 마데카 크림 타임 리버스 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[진정/탄력] 센텔리안24 마데카 크림 타임 리버스 50ml'), NOW(), NOW()),
(15000, 'SALE', (SELECT id FROM product WHERE name = '[진정/탄력] 센텔리안24 마데카 크림 타임 리버스 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019889209ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[진정/탄력] 센텔리안24 마데카 크림 타임 리버스 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019889206ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[진정/탄력] 센텔리안24 마데카 크림 타임 리버스 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019889210ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[진정/탄력] 센텔리안24 마데카 크림 타임 리버스 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019889207ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[진정/탄력] 센텔리안24 마데카 크림 타임 리버스 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019889202ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[진정/탄력] 센텔리안24 마데카 크림 타임 리버스 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019889208ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[진정/탄력] 센텔리안24 마데카 크림 타임 리버스 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[진정/탄력] 센텔리안24 마데카 크림 타임 리버스 50ml';


-- ================================

-- 상품: [단독기획/레티날0.1%] 닥터디퍼런트 비타리프트 에이 포르테 2입 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[단독기획/레티날0.1%] 닥터디퍼런트 비타리프트 에이 포르테 2입 기획',
 '[단독기획/레티날0.1%] 닥터디퍼런트 비타리프트 에이 포르테 2입 기획',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터디퍼런트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[단독기획/레티날0.1%] 닥터디퍼런트 비타리프트 에이 포르테 2입 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(93600, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독기획/레티날0.1%] 닥터디퍼런트 비타리프트 에이 포르테 2입 기획'), NOW(), NOW()),
(71040, 'SALE', (SELECT id FROM product WHERE name = '[단독기획/레티날0.1%] 닥터디퍼런트 비타리프트 에이 포르테 2입 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018462423ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[단독기획/레티날0.1%] 닥터디퍼런트 비타리프트 에이 포르테 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018462422ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[단독기획/레티날0.1%] 닥터디퍼런트 비타리프트 에이 포르테 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018462421ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[단독기획/레티날0.1%] 닥터디퍼런트 비타리프트 에이 포르테 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018462420ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[단독기획/레티날0.1%] 닥터디퍼런트 비타리프트 에이 포르테 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018462419ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[단독기획/레티날0.1%] 닥터디퍼런트 비타리프트 에이 포르테 2입 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[단독기획/레티날0.1%] 닥터디퍼런트 비타리프트 에이 포르테 2입 기획';


-- ================================

-- 상품: [수분/진정]아벤느 클리낭스 아쿠아크림-인-젤 수분 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분/진정]아벤느 클리낭스 아쿠아크림-인-젤 수분 크림 50ml',
 '[수분/진정]아벤느 클리낭스 아쿠아크림-인-젤 수분 크림 50ml',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아벤느'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분/진정]아벤느 클리낭스 아쿠아크림-인-젤 수분 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분/진정]아벤느 클리낭스 아쿠아크림-인-젤 수분 크림 50ml'), NOW(), NOW()),
(26900, 'SALE', (SELECT id FROM product WHERE name = '[수분/진정]아벤느 클리낭스 아쿠아크림-인-젤 수분 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017435609ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분/진정]아벤느 클리낭스 아쿠아크림-인-젤 수분 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017435614ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분/진정]아벤느 클리낭스 아쿠아크림-인-젤 수분 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017435613ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분/진정]아벤느 클리낭스 아쿠아크림-인-젤 수분 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017435612ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[수분/진정]아벤느 클리낭스 아쿠아크림-인-젤 수분 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017435611ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[수분/진정]아벤느 클리낭스 아쿠아크림-인-젤 수분 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017435610ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[수분/진정]아벤느 클리낭스 아쿠아크림-인-젤 수분 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분/진정]아벤느 클리낭스 아쿠아크림-인-젤 수분 크림 50ml';

-- ================================

-- 상품: [대용량기획/1등수분크림]비욘드 엔젤아쿠아 수분진정 크림 150ml 기획 (+150ml+3...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[대용량기획/1등수분크림]비욘드 엔젤아쿠아 수분진정 크림 150ml 기획 (+150ml+30ml*2ea)',
 '[대용량기획/1등수분크림]비욘드 엔젤아쿠아 수분진정 크림 150ml 기획 (+150ml+30ml*2ea)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비욘드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[대용량기획/1등수분크림]비욘드 엔젤아쿠아 수분진정 크림 150ml 기획 (+150ml+30ml*2ea)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[대용량기획/1등수분크림]비욘드 엔젤아쿠아 수분진정 크림 150ml 기획 (+150ml+30ml*2ea)'), NOW(), NOW()),
(19760, 'SALE', (SELECT id FROM product WHERE name = '[대용량기획/1등수분크림]비욘드 엔젤아쿠아 수분진정 크림 150ml 기획 (+150ml+30ml*2ea)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023046202ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[대용량기획/1등수분크림]비욘드 엔젤아쿠아 수분진정 크림 150ml 기획 (+150ml+30ml*2ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023046203ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[대용량기획/1등수분크림]비욘드 엔젤아쿠아 수분진정 크림 150ml 기획 (+150ml+30ml*2ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023046204ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[대용량기획/1등수분크림]비욘드 엔젤아쿠아 수분진정 크림 150ml 기획 (+150ml+30ml*2ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023046207ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[대용량기획/1등수분크림]비욘드 엔젤아쿠아 수분진정 크림 150ml 기획 (+150ml+30ml*2ea)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[대용량기획/1등수분크림]비욘드 엔젤아쿠아 수분진정 크림 150ml 기획 (+150ml+30ml*2ea)';


-- ================================

-- 상품: 토리든 솔리드인 세라마이드 크림 70ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('토리든 솔리드인 세라마이드 크림 70ml',
 '토리든 솔리드인 세라마이드 크림 70ml',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '토리든'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '토리든 솔리드인 세라마이드 크림 70ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '토리든 솔리드인 세라마이드 크림 70ml'), NOW(), NOW()),
(19600, 'SALE', (SELECT id FROM product WHERE name = '토리든 솔리드인 세라마이드 크림 70ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022834601ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '토리든 솔리드인 세라마이드 크림 70ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022834602ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '토리든 솔리드인 세라마이드 크림 70ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '토리든 솔리드인 세라마이드 크림 70ml';

-- ================================

-- 상품: [수분쿨링/열감진정] 에스네이처 아쿠아 오아시스 수분 젤크림 90ml 기획 (+카밍패드 2...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분쿨링/열감진정] 에스네이처 아쿠아 오아시스 수분 젤크림 90ml 기획 (+카밍패드 2매)',
 '[수분쿨링/열감진정] 에스네이처 아쿠아 오아시스 수분 젤크림 90ml 기획 (+카밍패드 2매)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에스네이처'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분쿨링/열감진정] 에스네이처 아쿠아 오아시스 수분 젤크림 90ml 기획 (+카밍패드 2매)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(34000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분쿨링/열감진정] 에스네이처 아쿠아 오아시스 수분 젤크림 90ml 기획 (+카밍패드 2매)'), NOW(), NOW()),
(34000, 'SALE', (SELECT id FROM product WHERE name = '[수분쿨링/열감진정] 에스네이처 아쿠아 오아시스 수분 젤크림 90ml 기획 (+카밍패드 2매)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020289350ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분쿨링/열감진정] 에스네이처 아쿠아 오아시스 수분 젤크림 90ml 기획 (+카밍패드 2매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020289338ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분쿨링/열감진정] 에스네이처 아쿠아 오아시스 수분 젤크림 90ml 기획 (+카밍패드 2매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020289339ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분쿨링/열감진정] 에스네이처 아쿠아 오아시스 수분 젤크림 90ml 기획 (+카밍패드 2매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020289340ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[수분쿨링/열감진정] 에스네이처 아쿠아 오아시스 수분 젤크림 90ml 기획 (+카밍패드 2매)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분쿨링/열감진정] 에스네이처 아쿠아 오아시스 수분 젤크림 90ml 기획 (+카밍패드 2매)';


-- ================================

-- 상품: 헤브블루 살몬 PDRN 케어링 센텔라 크림 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('헤브블루 살몬 PDRN 케어링 센텔라 크림 100ml',
 '헤브블루 살몬 PDRN 케어링 센텔라 크림 100ml',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '헤브블루'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '헤브블루 살몬 PDRN 케어링 센텔라 크림 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39900, 'ORIGINAL', (SELECT id FROM product WHERE name = '헤브블루 살몬 PDRN 케어링 센텔라 크림 100ml'), NOW(), NOW()),
(26800, 'SALE', (SELECT id FROM product WHERE name = '헤브블루 살몬 PDRN 케어링 센텔라 크림 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020159217ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '헤브블루 살몬 PDRN 케어링 센텔라 크림 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020159218ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '헤브블루 살몬 PDRN 케어링 센텔라 크림 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020159216ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '헤브블루 살몬 PDRN 케어링 센텔라 크림 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '헤브블루 살몬 PDRN 케어링 센텔라 크림 100ml';


-- ================================

-- 상품: [영양보습] VT 피디알엔 캡슐크림 100 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[영양보습] VT 피디알엔 캡슐크림 100 50ml',
 '[영양보습] VT 피디알엔 캡슐크림 100 50ml',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'VT'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[영양보습] VT 피디알엔 캡슐크림 100 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(34000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[영양보습] VT 피디알엔 캡슐크림 100 50ml'), NOW(), NOW()),
(21900, 'SALE', (SELECT id FROM product WHERE name = '[영양보습] VT 피디알엔 캡슐크림 100 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023302404ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[영양보습] VT 피디알엔 캡슐크림 100 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023302403ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[영양보습] VT 피디알엔 캡슐크림 100 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023302402ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[영양보습] VT 피디알엔 캡슐크림 100 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[영양보습] VT 피디알엔 캡슐크림 100 50ml';


-- ================================

-- 상품: [트러블로션] 에스트라 테라크네365 수딩 액티브 모이스처라이저 60ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[트러블로션] 에스트라 테라크네365 수딩 액티브 모이스처라이저 60ml',
 '[트러블로션] 에스트라 테라크네365 수딩 액티브 모이스처라이저 60ml',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에스트라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[트러블로션] 에스트라 테라크네365 수딩 액티브 모이스처라이저 60ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[트러블로션] 에스트라 테라크네365 수딩 액티브 모이스처라이저 60ml'), NOW(), NOW()),
(33000, 'SALE', (SELECT id FROM product WHERE name = '[트러블로션] 에스트라 테라크네365 수딩 액티브 모이스처라이저 60ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018268502ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[트러블로션] 에스트라 테라크네365 수딩 액티브 모이스처라이저 60ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018268503ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[트러블로션] 에스트라 테라크네365 수딩 액티브 모이스처라이저 60ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[트러블로션] 에스트라 테라크네365 수딩 액티브 모이스처라이저 60ml';


-- ================================

-- 상품: [수분와락/속건조] 리얼베리어 워터리 히알 크림 70ml 기획 (+25ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분와락/속건조] 리얼베리어 워터리 히알 크림 70ml 기획 (+25ml)',
 '[수분와락/속건조] 리얼베리어 워터리 히알 크림 70ml 기획 (+25ml)',
 5.0,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '리얼베리어'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분와락/속건조] 리얼베리어 워터리 히알 크림 70ml 기획 (+25ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분와락/속건조] 리얼베리어 워터리 히알 크림 70ml 기획 (+25ml)'), NOW(), NOW()),
(20900, 'SALE', (SELECT id FROM product WHERE name = '[수분와락/속건조] 리얼베리어 워터리 히알 크림 70ml 기획 (+25ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022564907ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분와락/속건조] 리얼베리어 워터리 히알 크림 70ml 기획 (+25ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022564902ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분와락/속건조] 리얼베리어 워터리 히알 크림 70ml 기획 (+25ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분와락/속건조] 리얼베리어 워터리 히알 크림 70ml 기획 (+25ml)';


-- ================================


-- 상품: 설화수 탄력크림EX (50ml/75ml 기획)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('설화수 탄력크림EX (50ml/75ml 기획)',
 '설화수 탄력크림EX (50ml/75ml 기획)',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '설화수'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[기획] 75ml', 121500, (SELECT id FROM product WHERE name = '설화수 탄력크림EX (50ml/75ml 기획)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[단품] 75ml', 121500, (SELECT id FROM product WHERE name = '설화수 탄력크림EX (50ml/75ml 기획)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[기획] 50ml', 90000, (SELECT id FROM product WHERE name = '설화수 탄력크림EX (50ml/75ml 기획)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[단품] 50ml', 90000, (SELECT id FROM product WHERE name = '설화수 탄력크림EX (50ml/75ml 기획)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(135000, 'ORIGINAL', (SELECT id FROM product WHERE name = '설화수 탄력크림EX (50ml/75ml 기획)'), NOW(), NOW()),
(121500, 'SALE', (SELECT id FROM product WHERE name = '설화수 탄력크림EX (50ml/75ml 기획)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020462737ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '설화수 탄력크림EX (50ml/75ml 기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020462727ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '설화수 탄력크림EX (50ml/75ml 기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020462728ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '설화수 탄력크림EX (50ml/75ml 기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020462729ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '설화수 탄력크림EX (50ml/75ml 기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020462730ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '설화수 탄력크림EX (50ml/75ml 기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020462731ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '설화수 탄력크림EX (50ml/75ml 기획)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '설화수 탄력크림EX (50ml/75ml 기획)';


-- ================================

-- 상품: [100시간 속보습] 라네즈 워터뱅크 모이스춰 크림 45ml 기획 (+25ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[100시간 속보습] 라네즈 워터뱅크 모이스춰 크림 45ml 기획 (+25ml)',
 '[100시간 속보습] 라네즈 워터뱅크 모이스춰 크림 45ml 기획 (+25ml)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라네즈'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[100시간 속보습] 라네즈 워터뱅크 모이스춰 크림 45ml 기획 (+25ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[100시간 속보습] 라네즈 워터뱅크 모이스춰 크림 45ml 기획 (+25ml)'), NOW(), NOW()),
(39000, 'SALE', (SELECT id FROM product WHERE name = '[100시간 속보습] 라네즈 워터뱅크 모이스춰 크림 45ml 기획 (+25ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019816608ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[100시간 속보습] 라네즈 워터뱅크 모이스춰 크림 45ml 기획 (+25ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019816609ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[100시간 속보습] 라네즈 워터뱅크 모이스춰 크림 45ml 기획 (+25ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019816610ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[100시간 속보습] 라네즈 워터뱅크 모이스춰 크림 45ml 기획 (+25ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[100시간 속보습] 라네즈 워터뱅크 모이스춰 크림 45ml 기획 (+25ml)';


-- ================================

-- 상품: [관리 전후 손상 피부 개선] SVR 시카비트플러스 크림 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[관리 전후 손상 피부 개선] SVR 시카비트플러스 크림 100ml',
 '[관리 전후 손상 피부 개선] SVR 시카비트플러스 크림 100ml',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'SVR'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[관리 전후 손상 피부 개선] SVR 시카비트플러스 크림 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(43000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[관리 전후 손상 피부 개선] SVR 시카비트플러스 크림 100ml'), NOW(), NOW()),
(38700, 'SALE', (SELECT id FROM product WHERE name = '[관리 전후 손상 피부 개선] SVR 시카비트플러스 크림 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021934203ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[관리 전후 손상 피부 개선] SVR 시카비트플러스 크림 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[관리 전후 손상 피부 개선] SVR 시카비트플러스 크림 100ml';


-- ================================

-- 상품: NDP 시카 바이오 플라센타 수분진정 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('NDP 시카 바이오 플라센타 수분진정 크림 50ml',
 'NDP 시카 바이오 플라센타 수분진정 크림 50ml',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'NDP'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = 'NDP 시카 바이오 플라센타 수분진정 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(41000, 'ORIGINAL', (SELECT id FROM product WHERE name = 'NDP 시카 바이오 플라센타 수분진정 크림 50ml'), NOW(), NOW()),
(36900, 'SALE', (SELECT id FROM product WHERE name = 'NDP 시카 바이오 플라센타 수분진정 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021154817ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = 'NDP 시카 바이오 플라센타 수분진정 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021154811ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = 'NDP 시카 바이오 플라센타 수분진정 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021154810ko.png?l=ko', 3, (SELECT id FROM product WHERE name = 'NDP 시카 바이오 플라센타 수분진정 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021154809ko.png?l=ko', 4, (SELECT id FROM product WHERE name = 'NDP 시카 바이오 플라센타 수분진정 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021154807ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = 'NDP 시카 바이오 플라센타 수분진정 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = 'NDP 시카 바이오 플라센타 수분진정 크림 50ml';


-- ================================

-- 상품: [160만개판매]CKD 레티노콜라겐 저분자 300 괄사 목주름 크림 50ml 1+1 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[160만개판매]CKD 레티노콜라겐 저분자 300 괄사 목주름 크림 50ml 1+1 기획',
 '[160만개판매]CKD 레티노콜라겐 저분자 300 괄사 목주름 크림 50ml 1+1 기획',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'CKD'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[160만개판매]CKD 레티노콜라겐 저분자 300 괄사 목주름 크림 50ml 1+1 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(45000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[160만개판매]CKD 레티노콜라겐 저분자 300 괄사 목주름 크림 50ml 1+1 기획'), NOW(), NOW()),
(26900, 'SALE', (SELECT id FROM product WHERE name = '[160만개판매]CKD 레티노콜라겐 저분자 300 괄사 목주름 크림 50ml 1+1 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019210509ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[160만개판매]CKD 레티노콜라겐 저분자 300 괄사 목주름 크림 50ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019210506ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[160만개판매]CKD 레티노콜라겐 저분자 300 괄사 목주름 크림 50ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019210504ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[160만개판매]CKD 레티노콜라겐 저분자 300 괄사 목주름 크림 50ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019210503ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[160만개판매]CKD 레티노콜라겐 저분자 300 괄사 목주름 크림 50ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019210502ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[160만개판매]CKD 레티노콜라겐 저분자 300 괄사 목주름 크림 50ml 1+1 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[160만개판매]CKD 레티노콜라겐 저분자 300 괄사 목주름 크림 50ml 1+1 기획';


-- ================================

-- 상품: [얼음물광크림/1+1] 비플레인 녹두 모공 타이트업 수딩 크림  60ml 1+1 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[얼음물광크림/1+1] 비플레인 녹두 모공 타이트업 수딩 크림  60ml 1+1 기획',
 '[얼음물광크림/1+1] 비플레인 녹두 모공 타이트업 수딩 크림  60ml 1+1 기획',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비플레인'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[얼음물광크림/1+1] 비플레인 녹두 모공 타이트업 수딩 크림  60ml 1+1 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[얼음물광크림/1+1] 비플레인 녹두 모공 타이트업 수딩 크림  60ml 1+1 기획'), NOW(), NOW()),
(26000, 'SALE', (SELECT id FROM product WHERE name = '[얼음물광크림/1+1] 비플레인 녹두 모공 타이트업 수딩 크림  60ml 1+1 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020982649ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[얼음물광크림/1+1] 비플레인 녹두 모공 타이트업 수딩 크림  60ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020982652ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[얼음물광크림/1+1] 비플레인 녹두 모공 타이트업 수딩 크림  60ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020982651ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[얼음물광크림/1+1] 비플레인 녹두 모공 타이트업 수딩 크림  60ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020982650ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[얼음물광크림/1+1] 비플레인 녹두 모공 타이트업 수딩 크림  60ml 1+1 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[얼음물광크림/1+1] 비플레인 녹두 모공 타이트업 수딩 크림  60ml 1+1 기획';


-- ================================

-- 상품: [민감진정] 라운드랩 포 맨 소나무 진정 시카 크림 75ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[민감진정] 라운드랩 포 맨 소나무 진정 시카 크림 75ml',
 '[민감진정] 라운드랩 포 맨 소나무 진정 시카 크림 75ml',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라운드랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[민감진정] 라운드랩 포 맨 소나무 진정 시카 크림 75ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(27000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[민감진정] 라운드랩 포 맨 소나무 진정 시카 크림 75ml'), NOW(), NOW()),
(19900, 'SALE', (SELECT id FROM product WHERE name = '[민감진정] 라운드랩 포 맨 소나무 진정 시카 크림 75ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019915501ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[민감진정] 라운드랩 포 맨 소나무 진정 시카 크림 75ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019915508ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[민감진정] 라운드랩 포 맨 소나무 진정 시카 크림 75ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019915506ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[민감진정] 라운드랩 포 맨 소나무 진정 시카 크림 75ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[민감진정] 라운드랩 포 맨 소나무 진정 시카 크림 75ml';


-- ================================

-- 상품: [400만개돌파/1등수분크림] 비욘드 엔젤아쿠아 수분진정크림 더블기획(150mlX2개입)(...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[400만개돌파/1등수분크림] 비욘드 엔젤아쿠아 수분진정크림 더블기획(150mlX2개입)(비건)',
 '[400만개돌파/1등수분크림] 비욘드 엔젤아쿠아 수분진정크림 더블기획(150mlX2개입)(비건)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비욘드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[400만개돌파/1등수분크림] 비욘드 엔젤아쿠아 수분진정크림 더블기획(150mlX2개입)(비건)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[400만개돌파/1등수분크림] 비욘드 엔젤아쿠아 수분진정크림 더블기획(150mlX2개입)(비건)'), NOW(), NOW()),
(19760, 'SALE', (SELECT id FROM product WHERE name = '[400만개돌파/1등수분크림] 비욘드 엔젤아쿠아 수분진정크림 더블기획(150mlX2개입)(비건)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016351135ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[400만개돌파/1등수분크림] 비욘드 엔젤아쿠아 수분진정크림 더블기획(150mlX2개입)(비건)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016351132ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[400만개돌파/1등수분크림] 비욘드 엔젤아쿠아 수분진정크림 더블기획(150mlX2개입)(비건)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016351128ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[400만개돌파/1등수분크림] 비욘드 엔젤아쿠아 수분진정크림 더블기획(150mlX2개입)(비건)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016351130ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[400만개돌파/1등수분크림] 비욘드 엔젤아쿠아 수분진정크림 더블기획(150mlX2개입)(비건)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016351136ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[400만개돌파/1등수분크림] 비욘드 엔젤아쿠아 수분진정크림 더블기획(150mlX2개입)(비건)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[400만개돌파/1등수분크림] 비욘드 엔젤아쿠아 수분진정크림 더블기획(150mlX2개입)(비건)';


-- ================================

-- 상품: [주름모공] 코스알엑스 더 레티놀 0.1 모공탄력 크림 20ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[주름모공] 코스알엑스 더 레티놀 0.1 모공탄력 크림 20ml',
 '[주름모공] 코스알엑스 더 레티놀 0.1 모공탄력 크림 20ml',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '코스알엑스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[주름모공] 코스알엑스 더 레티놀 0.1 모공탄력 크림 20ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[주름모공] 코스알엑스 더 레티놀 0.1 모공탄력 크림 20ml'), NOW(), NOW()),
(25000, 'SALE', (SELECT id FROM product WHERE name = '[주름모공] 코스알엑스 더 레티놀 0.1 모공탄력 크림 20ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018054315ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[주름모공] 코스알엑스 더 레티놀 0.1 모공탄력 크림 20ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018054313ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[주름모공] 코스알엑스 더 레티놀 0.1 모공탄력 크림 20ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018054311ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[주름모공] 코스알엑스 더 레티놀 0.1 모공탄력 크림 20ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[주름모공] 코스알엑스 더 레티놀 0.1 모공탄력 크림 20ml';


-- ================================

-- 상품: 아누아 어성초 센텔라 레드 스팟 크림 30g...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아누아 어성초 센텔라 레드 스팟 크림 30g',
 '아누아 어성초 센텔라 레드 스팟 크림 30g',
 4.5,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아누아'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아누아 어성초 센텔라 레드 스팟 크림 30g'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(19800, 'ORIGINAL', (SELECT id FROM product WHERE name = '아누아 어성초 센텔라 레드 스팟 크림 30g'), NOW(), NOW()),
(15900, 'SALE', (SELECT id FROM product WHERE name = '아누아 어성초 센텔라 레드 스팟 크림 30g'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022540907ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '아누아 어성초 센텔라 레드 스팟 크림 30g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022540905ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '아누아 어성초 센텔라 레드 스팟 크림 30g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022540903ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '아누아 어성초 센텔라 레드 스팟 크림 30g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022540904ko.png?l=ko', 4, (SELECT id FROM product WHERE name = '아누아 어성초 센텔라 레드 스팟 크림 30g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022540906ko.png?l=ko', 5, (SELECT id FROM product WHERE name = '아누아 어성초 센텔라 레드 스팟 크림 30g'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아누아 어성초 센텔라 레드 스팟 크림 30g';


-- ================================

-- 상품: [트러블진정] 이니스프리 레티놀 시카 흔적 장벽 크림 50ml 기획 (+30ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[트러블진정] 이니스프리 레티놀 시카 흔적 장벽 크림 50ml 기획 (+30ml)',
 '[트러블진정] 이니스프리 레티놀 시카 흔적 장벽 크림 50ml 기획 (+30ml)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '이니스프리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[트러블진정] 이니스프리 레티놀 시카 흔적 장벽 크림 50ml 기획 (+30ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[트러블진정] 이니스프리 레티놀 시카 흔적 장벽 크림 50ml 기획 (+30ml)'), NOW(), NOW()),
(24500, 'SALE', (SELECT id FROM product WHERE name = '[트러블진정] 이니스프리 레티놀 시카 흔적 장벽 크림 50ml 기획 (+30ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021605013ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[트러블진정] 이니스프리 레티놀 시카 흔적 장벽 크림 50ml 기획 (+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021605009ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[트러블진정] 이니스프리 레티놀 시카 흔적 장벽 크림 50ml 기획 (+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021605010ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[트러블진정] 이니스프리 레티놀 시카 흔적 장벽 크림 50ml 기획 (+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021605011ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[트러블진정] 이니스프리 레티놀 시카 흔적 장벽 크림 50ml 기획 (+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021605012ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[트러블진정] 이니스프리 레티놀 시카 흔적 장벽 크림 50ml 기획 (+30ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[트러블진정] 이니스프리 레티놀 시카 흔적 장벽 크림 50ml 기획 (+30ml)';


-- ================================

-- 상품: [저자극] 라운드랩 1025 독도 크림 80ml 기획 (+20ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[저자극] 라운드랩 1025 독도 크림 80ml 기획 (+20ml)',
 '[저자극] 라운드랩 1025 독도 크림 80ml 기획 (+20ml)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라운드랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[저자극] 라운드랩 1025 독도 크림 80ml 기획 (+20ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[저자극] 라운드랩 1025 독도 크림 80ml 기획 (+20ml)'), NOW(), NOW()),
(24000, 'SALE', (SELECT id FROM product WHERE name = '[저자극] 라운드랩 1025 독도 크림 80ml 기획 (+20ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014484321ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[저자극] 라운드랩 1025 독도 크림 80ml 기획 (+20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014484322ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[저자극] 라운드랩 1025 독도 크림 80ml 기획 (+20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014484320ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[저자극] 라운드랩 1025 독도 크림 80ml 기획 (+20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014484319ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[저자극] 라운드랩 1025 독도 크림 80ml 기획 (+20ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[저자극] 라운드랩 1025 독도 크림 80ml 기획 (+20ml)';


-- ================================

-- 상품: [장벽크림] 바이오힐 보 판테셀 리페어 시카좀 크림 80mL [단품/증정기획]...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[장벽크림] 바이오힐 보 판테셀 리페어 시카좀 크림 80mL [단품/증정기획]',
 '[장벽크림] 바이오힐 보 판테셀 리페어 시카좀 크림 80mL [단품/증정기획]',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오힐보'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('크림80m+미스트20ml+앰플마스크 1매', 24000, (SELECT id FROM product WHERE name = '[장벽크림] 바이오힐 보 판테셀 리페어 시카좀 크림 80mL [단품/증정기획]'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('크림80ml+앰플13ml 기획', 24000, (SELECT id FROM product WHERE name = '[장벽크림] 바이오힐 보 판테셀 리페어 시카좀 크림 80mL [단품/증정기획]'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('크림80ml단품', 0, (SELECT id FROM product WHERE name = '[장벽크림] 바이오힐 보 판테셀 리페어 시카좀 크림 80mL [단품/증정기획]'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[장벽크림] 바이오힐 보 판테셀 리페어 시카좀 크림 80mL [단품/증정기획]'), NOW(), NOW()),
(24000, 'SALE', (SELECT id FROM product WHERE name = '[장벽크림] 바이오힐 보 판테셀 리페어 시카좀 크림 80mL [단품/증정기획]'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022448709ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[장벽크림] 바이오힐 보 판테셀 리페어 시카좀 크림 80mL [단품/증정기획]'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022448711ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[장벽크림] 바이오힐 보 판테셀 리페어 시카좀 크림 80mL [단품/증정기획]'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022448710ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[장벽크림] 바이오힐 보 판테셀 리페어 시카좀 크림 80mL [단품/증정기획]'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022448702ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[장벽크림] 바이오힐 보 판테셀 리페어 시카좀 크림 80mL [단품/증정기획]'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[장벽크림] 바이오힐 보 판테셀 리페어 시카좀 크림 80mL [단품/증정기획]';


-- ================================

-- 상품: [포켓몬에디션/화잘먹크림] 성분에디터 그린토마토 NMN 포어 리프팅 크림 50ml 더블 기...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[포켓몬에디션/화잘먹크림] 성분에디터 그린토마토 NMN 포어 리프팅 크림 50ml 더블 기획 (+키링+스티커)',
 '[포켓몬에디션/화잘먹크림] 성분에디터 그린토마토 NMN 포어 리프팅 크림 50ml 더블 기획 (+키링+스티커)',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '성분에디터'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[포켓몬에디션/화잘먹크림] 성분에디터 그린토마토 NMN 포어 리프팅 크림 50ml 더블 기획 (+키링+스티커)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(34000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[포켓몬에디션/화잘먹크림] 성분에디터 그린토마토 NMN 포어 리프팅 크림 50ml 더블 기획 (+키링+스티커)'), NOW(), NOW()),
(18600, 'SALE', (SELECT id FROM product WHERE name = '[포켓몬에디션/화잘먹크림] 성분에디터 그린토마토 NMN 포어 리프팅 크림 50ml 더블 기획 (+키링+스티커)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023091613ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[포켓몬에디션/화잘먹크림] 성분에디터 그린토마토 NMN 포어 리프팅 크림 50ml 더블 기획 (+키링+스티커)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023091605ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[포켓몬에디션/화잘먹크림] 성분에디터 그린토마토 NMN 포어 리프팅 크림 50ml 더블 기획 (+키링+스티커)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[포켓몬에디션/화잘먹크림] 성분에디터 그린토마토 NMN 포어 리프팅 크림 50ml 더블 기획 (+키링+스티커)';


-- ================================

-- 상품: [극강보습] 이지듀 베리어 리페어 보습케어 크림 105ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[극강보습] 이지듀 베리어 리페어 보습케어 크림 105ml',
 '[극강보습] 이지듀 베리어 리페어 보습케어 크림 105ml',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '이지듀'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[극강보습] 이지듀 베리어 리페어 보습케어 크림 105ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(45000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[극강보습] 이지듀 베리어 리페어 보습케어 크림 105ml'), NOW(), NOW()),
(32000, 'SALE', (SELECT id FROM product WHERE name = '[극강보습] 이지듀 베리어 리페어 보습케어 크림 105ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018849507ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[극강보습] 이지듀 베리어 리페어 보습케어 크림 105ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018849508ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[극강보습] 이지듀 베리어 리페어 보습케어 크림 105ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018849506ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[극강보습] 이지듀 베리어 리페어 보습케어 크림 105ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[극강보습] 이지듀 베리어 리페어 보습케어 크림 105ml';


-- ================================

-- 상품: [폭탄듀오] 빌리프 더 트루 크림 모이스춰라이징 밤 / 아쿠아 밤 30ml 1+1 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[폭탄듀오] 빌리프 더 트루 크림 모이스춰라이징 밤 / 아쿠아 밤 30ml 1+1 기획',
 '[폭탄듀오] 빌리프 더 트루 크림 모이스춰라이징 밤 / 아쿠아 밤 30ml 1+1 기획',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '빌리프'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[기획] 모밤30ml+모밤31ml', 32000, (SELECT id FROM product WHERE name = '[폭탄듀오] 빌리프 더 트루 크림 모이스춰라이징 밤 / 아쿠아 밤 30ml 1+1 기획'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[기획] 아밤30ml+아밤31ml', 32000, (SELECT id FROM product WHERE name = '[폭탄듀오] 빌리프 더 트루 크림 모이스춰라이징 밤 / 아쿠아 밤 30ml 1+1 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[폭탄듀오] 빌리프 더 트루 크림 모이스춰라이징 밤 / 아쿠아 밤 30ml 1+1 기획'), NOW(), NOW()),
(32000, 'SALE', (SELECT id FROM product WHERE name = '[폭탄듀오] 빌리프 더 트루 크림 모이스춰라이징 밤 / 아쿠아 밤 30ml 1+1 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021121346ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[폭탄듀오] 빌리프 더 트루 크림 모이스춰라이징 밤 / 아쿠아 밤 30ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021121347ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[폭탄듀오] 빌리프 더 트루 크림 모이스춰라이징 밤 / 아쿠아 밤 30ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021121343ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[폭탄듀오] 빌리프 더 트루 크림 모이스춰라이징 밤 / 아쿠아 밤 30ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021121341ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[폭탄듀오] 빌리프 더 트루 크림 모이스춰라이징 밤 / 아쿠아 밤 30ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021121342ko.png?l=ko', 5, (SELECT id FROM product WHERE name = '[폭탄듀오] 빌리프 더 트루 크림 모이스춰라이징 밤 / 아쿠아 밤 30ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021121315ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[폭탄듀오] 빌리프 더 트루 크림 모이스춰라이징 밤 / 아쿠아 밤 30ml 1+1 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[폭탄듀오] 빌리프 더 트루 크림 모이스춰라이징 밤 / 아쿠아 밤 30ml 1+1 기획';


-- ================================

-- 상품: [9월 올영픽] 키엘 울트라 훼이셜 크림 (28ml/50ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽] 키엘 울트라 훼이셜 크림 (28ml/50ml)',
 '[9월 올영픽] 키엘 울트라 훼이셜 크림 (28ml/50ml)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '키엘'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('울트라 훼이셜 크림 50ml 기획 세트', 41190, (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 울트라 훼이셜 크림 (28ml/50ml)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('울트라 훼이셜 크림 28ml 기획 세트', 25230, (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 울트라 훼이셜 크림 (28ml/50ml)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('울트라 훼이셜 크림 50ml', 41190, (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 울트라 훼이셜 크림 (28ml/50ml)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('울트라 훼이셜 크림 28ml', 25230, (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 울트라 훼이셜 크림 (28ml/50ml)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('오일-프리 젤크림 50ml', 41190, (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 울트라 훼이셜 크림 (28ml/50ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(49000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 울트라 훼이셜 크림 (28ml/50ml)'), NOW(), NOW()),
(41190, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 울트라 훼이셜 크림 (28ml/50ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022527752ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 울트라 훼이셜 크림 (28ml/50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022527751ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 울트라 훼이셜 크림 (28ml/50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022527750ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 울트라 훼이셜 크림 (28ml/50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022527733ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 울트라 훼이셜 크림 (28ml/50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022527731ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 울트라 훼이셜 크림 (28ml/50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022527702ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 울트라 훼이셜 크림 (28ml/50ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[9월 올영픽] 키엘 울트라 훼이셜 크림 (28ml/50ml)';


-- ================================

-- 상품: [보습진정] 바이오힐 보 판테셀 리페어시카 크림 50ml [단품/리필기획]...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[보습진정] 바이오힐 보 판테셀 리페어시카 크림 50ml [단품/리필기획]',
 '[보습진정] 바이오힐 보 판테셀 리페어시카 크림 50ml [단품/리필기획]',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오힐보'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[보습진정] 바이오힐 보 판테셀 리페어시카 크림 50ml [단품/리필기획]'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(44800, 'ORIGINAL', (SELECT id FROM product WHERE name = '[보습진정] 바이오힐 보 판테셀 리페어시카 크림 50ml [단품/리필기획]'), NOW(), NOW()),
(33500, 'SALE', (SELECT id FROM product WHERE name = '[보습진정] 바이오힐 보 판테셀 리페어시카 크림 50ml [단품/리필기획]'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018924804ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[보습진정] 바이오힐 보 판테셀 리페어시카 크림 50ml [단품/리필기획]'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018924808ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[보습진정] 바이오힐 보 판테셀 리페어시카 크림 50ml [단품/리필기획]'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018924812ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[보습진정] 바이오힐 보 판테셀 리페어시카 크림 50ml [단품/리필기획]'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[보습진정] 바이오힐 보 판테셀 리페어시카 크림 50ml [단품/리필기획]';


-- ================================

-- 상품: 바이오더마 시카비오 포마드 100ml(리페어 리치 밤)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('바이오더마 시카비오 포마드 100ml(리페어 리치 밤)',
 '바이오더마 시카비오 포마드 100ml(리페어 리치 밤)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오더마'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('시카비오 포마드 단품', 29900, (SELECT id FROM product WHERE name = '바이오더마 시카비오 포마드 100ml(리페어 리치 밤)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바이오더마 시카비오 포마드 100ml(리페어 리치 밤)'), NOW(), NOW()),
(29900, 'SALE', (SELECT id FROM product WHERE name = '바이오더마 시카비오 포마드 100ml(리페어 리치 밤)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013469120ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바이오더마 시카비오 포마드 100ml(리페어 리치 밤)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013469112ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '바이오더마 시카비오 포마드 100ml(리페어 리치 밤)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013469113ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '바이오더마 시카비오 포마드 100ml(리페어 리치 밤)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013469119ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '바이오더마 시카비오 포마드 100ml(리페어 리치 밤)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013469122ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '바이오더마 시카비오 포마드 100ml(리페어 리치 밤)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '바이오더마 시카비오 포마드 100ml(리페어 리치 밤)';


-- ================================

-- 상품: [보들보들보들크림/속건조] 브링그린 블루빈 B5-PDRN 마일드 크림 100ml (+블루빈...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[보들보들보들크림/속건조] 브링그린 블루빈 B5-PDRN 마일드 크림 100ml (+블루빈로션 10ml)',
 '[보들보들보들크림/속건조] 브링그린 블루빈 B5-PDRN 마일드 크림 100ml (+블루빈로션 10ml)',
 5.0,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '브링그린'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[보들보들보들크림/속건조] 브링그린 블루빈 B5-PDRN 마일드 크림 100ml (+블루빈로션 10ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(22000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[보들보들보들크림/속건조] 브링그린 블루빈 B5-PDRN 마일드 크림 100ml (+블루빈로션 10ml)'), NOW(), NOW()),
(22000, 'SALE', (SELECT id FROM product WHERE name = '[보들보들보들크림/속건조] 브링그린 블루빈 B5-PDRN 마일드 크림 100ml (+블루빈로션 10ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023438406ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[보들보들보들크림/속건조] 브링그린 블루빈 B5-PDRN 마일드 크림 100ml (+블루빈로션 10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023438403ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[보들보들보들크림/속건조] 브링그린 블루빈 B5-PDRN 마일드 크림 100ml (+블루빈로션 10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023438407ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[보들보들보들크림/속건조] 브링그린 블루빈 B5-PDRN 마일드 크림 100ml (+블루빈로션 10ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[보들보들보들크림/속건조] 브링그린 블루빈 B5-PDRN 마일드 크림 100ml (+블루빈로션 10ml)';


-- ================================

-- 상품: 몰바니 볼륨 인크리징 프로틴 크림 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('몰바니 볼륨 인크리징 프로틴 크림 100ml',
 '몰바니 볼륨 인크리징 프로틴 크림 100ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '몰바니'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '몰바니 볼륨 인크리징 프로틴 크림 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(36000, 'ORIGINAL', (SELECT id FROM product WHERE name = '몰바니 볼륨 인크리징 프로틴 크림 100ml'), NOW(), NOW()),
(21900, 'SALE', (SELECT id FROM product WHERE name = '몰바니 볼륨 인크리징 프로틴 크림 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019230007ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '몰바니 볼륨 인크리징 프로틴 크림 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019230006ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '몰바니 볼륨 인크리징 프로틴 크림 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019230005ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '몰바니 볼륨 인크리징 프로틴 크림 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019230001ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '몰바니 볼륨 인크리징 프로틴 크림 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '몰바니 볼륨 인크리징 프로틴 크림 100ml';


-- ================================

-- 상품: 라로슈포제 똘러리앙 덤알레르고 크림 40ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('라로슈포제 똘러리앙 덤알레르고 크림 40ml',
 '라로슈포제 똘러리앙 덤알레르고 크림 40ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라로슈포제'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '라로슈포제 똘러리앙 덤알레르고 크림 40ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '라로슈포제 똘러리앙 덤알레르고 크림 40ml'), NOW(), NOW()),
(29700, 'SALE', (SELECT id FROM product WHERE name = '라로슈포제 똘러리앙 덤알레르고 크림 40ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016180503ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '라로슈포제 똘러리앙 덤알레르고 크림 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016180502ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '라로슈포제 똘러리앙 덤알레르고 크림 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016180504ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '라로슈포제 똘러리앙 덤알레르고 크림 40ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '라로슈포제 똘러리앙 덤알레르고 크림 40ml';


-- ================================

-- 상품: [수분진정/단독기획] 메이크프렘 인테카 수딩크림 70ml 기획(+크림 31ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분진정/단독기획] 메이크프렘 인테카 수딩크림 70ml 기획(+크림 31ml)',
 '[수분진정/단독기획] 메이크프렘 인테카 수딩크림 70ml 기획(+크림 31ml)',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '메이크프렘'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분진정/단독기획] 메이크프렘 인테카 수딩크림 70ml 기획(+크림 31ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분진정/단독기획] 메이크프렘 인테카 수딩크림 70ml 기획(+크림 31ml)'), NOW(), NOW()),
(29000, 'SALE', (SELECT id FROM product WHERE name = '[수분진정/단독기획] 메이크프렘 인테카 수딩크림 70ml 기획(+크림 31ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022472746ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분진정/단독기획] 메이크프렘 인테카 수딩크림 70ml 기획(+크림 31ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022472744ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분진정/단독기획] 메이크프렘 인테카 수딩크림 70ml 기획(+크림 31ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022472745ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분진정/단독기획] 메이크프렘 인테카 수딩크림 70ml 기획(+크림 31ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022472730ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[수분진정/단독기획] 메이크프렘 인테카 수딩크림 70ml 기획(+크림 31ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022472729ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[수분진정/단독기획] 메이크프렘 인테카 수딩크림 70ml 기획(+크림 31ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분진정/단독기획] 메이크프렘 인테카 수딩크림 70ml 기획(+크림 31ml)';


-- ================================

-- 상품: 제로이드 인텐시브 크림 80ml 기획 (+크림 클렌저 25ml+데일리 선크림 10ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('제로이드 인텐시브 크림 80ml 기획 (+크림 클렌저 25ml+데일리 선크림 10ml)',
 '제로이드 인텐시브 크림 80ml 기획 (+크림 클렌저 25ml+데일리 선크림 10ml)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '제로이드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '제로이드 인텐시브 크림 80ml 기획 (+크림 클렌저 25ml+데일리 선크림 10ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '제로이드 인텐시브 크림 80ml 기획 (+크림 클렌저 25ml+데일리 선크림 10ml)'), NOW(), NOW()),
(28800, 'SALE', (SELECT id FROM product WHERE name = '제로이드 인텐시브 크림 80ml 기획 (+크림 클렌저 25ml+데일리 선크림 10ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022433508ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '제로이드 인텐시브 크림 80ml 기획 (+크림 클렌저 25ml+데일리 선크림 10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022433505ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '제로이드 인텐시브 크림 80ml 기획 (+크림 클렌저 25ml+데일리 선크림 10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022433501ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '제로이드 인텐시브 크림 80ml 기획 (+크림 클렌저 25ml+데일리 선크림 10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022433502ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '제로이드 인텐시브 크림 80ml 기획 (+크림 클렌저 25ml+데일리 선크림 10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022433503ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '제로이드 인텐시브 크림 80ml 기획 (+크림 클렌저 25ml+데일리 선크림 10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022433504ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '제로이드 인텐시브 크림 80ml 기획 (+크림 클렌저 25ml+데일리 선크림 10ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '제로이드 인텐시브 크림 80ml 기획 (+크림 클렌저 25ml+데일리 선크림 10ml)';


-- ================================

-- 상품: [단독기획] 토리든 다이브인 저분자 히알루론산 크림 80ml 기획(+크림 20ml 추가증정...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[단독기획] 토리든 다이브인 저분자 히알루론산 크림 80ml 기획(+크림 20ml 추가증정)',
 '[단독기획] 토리든 다이브인 저분자 히알루론산 크림 80ml 기획(+크림 20ml 추가증정)',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '토리든'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[단독기획] 토리든 다이브인 저분자 히알루론산 크림 80ml 기획(+크림 20ml 추가증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(21000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독기획] 토리든 다이브인 저분자 히알루론산 크림 80ml 기획(+크림 20ml 추가증정)'), NOW(), NOW()),
(21000, 'SALE', (SELECT id FROM product WHERE name = '[단독기획] 토리든 다이브인 저분자 히알루론산 크림 80ml 기획(+크림 20ml 추가증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016325413ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[단독기획] 토리든 다이브인 저분자 히알루론산 크림 80ml 기획(+크림 20ml 추가증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016325414ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[단독기획] 토리든 다이브인 저분자 히알루론산 크림 80ml 기획(+크림 20ml 추가증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016325411ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[단독기획] 토리든 다이브인 저분자 히알루론산 크림 80ml 기획(+크림 20ml 추가증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[단독기획] 토리든 다이브인 저분자 히알루론산 크림 80ml 기획(+크림 20ml 추가증정)';


-- ================================

-- 상품: 아누아 자작나무 70 수분 부스팅 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아누아 자작나무 70 수분 부스팅 크림 50ml',
 '아누아 자작나무 70 수분 부스팅 크림 50ml',
 4.6,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아누아'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아누아 자작나무 70 수분 부스팅 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아누아 자작나무 70 수분 부스팅 크림 50ml'), NOW(), NOW()),
(21000, 'SALE', (SELECT id FROM product WHERE name = '아누아 자작나무 70 수분 부스팅 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017690606ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아누아 자작나무 70 수분 부스팅 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017690605ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아누아 자작나무 70 수분 부스팅 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017690607ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아누아 자작나무 70 수분 부스팅 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아누아 자작나무 70 수분 부스팅 크림 50ml';


-- ================================

-- 상품: [수분진정] 닥터지 레드 블레미쉬 클리어 수딩 크림 70ml 기획 2종...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분진정] 닥터지 레드 블레미쉬 클리어 수딩 크림 70ml 기획 2종',
 '[수분진정] 닥터지 레드 블레미쉬 클리어 수딩 크림 70ml 기획 2종',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터지'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('70ml(jar)+30ml(튜브)', 28500, (SELECT id FROM product WHERE name = '[수분진정] 닥터지 레드 블레미쉬 클리어 수딩 크림 70ml 기획 2종'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('70(자)+70(튜브)+겔마스크1매', 0, (SELECT id FROM product WHERE name = '[수분진정] 닥터지 레드 블레미쉬 클리어 수딩 크림 70ml 기획 2종'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분진정] 닥터지 레드 블레미쉬 클리어 수딩 크림 70ml 기획 2종'), NOW(), NOW()),
(28500, 'SALE', (SELECT id FROM product WHERE name = '[수분진정] 닥터지 레드 블레미쉬 클리어 수딩 크림 70ml 기획 2종'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023006301ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분진정] 닥터지 레드 블레미쉬 클리어 수딩 크림 70ml 기획 2종'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023006305ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분진정] 닥터지 레드 블레미쉬 클리어 수딩 크림 70ml 기획 2종'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023006302ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분진정] 닥터지 레드 블레미쉬 클리어 수딩 크림 70ml 기획 2종'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분진정] 닥터지 레드 블레미쉬 클리어 수딩 크림 70ml 기획 2종';


-- ================================

-- 상품: [온라인몰 한정기획]바이오더마 하이드라비오 젤크림 2입 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[온라인몰 한정기획]바이오더마 하이드라비오 젤크림 2입 기획',
 '[온라인몰 한정기획]바이오더마 하이드라비오 젤크림 2입 기획',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오더마'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[온라인몰 한정기획]바이오더마 하이드라비오 젤크림 2입 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(53400, 'ORIGINAL', (SELECT id FROM product WHERE name = '[온라인몰 한정기획]바이오더마 하이드라비오 젤크림 2입 기획'), NOW(), NOW()),
(43130, 'SALE', (SELECT id FROM product WHERE name = '[온라인몰 한정기획]바이오더마 하이드라비오 젤크림 2입 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018273902ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[온라인몰 한정기획]바이오더마 하이드라비오 젤크림 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018273903ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[온라인몰 한정기획]바이오더마 하이드라비오 젤크림 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018273904ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[온라인몰 한정기획]바이오더마 하이드라비오 젤크림 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018273906ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[온라인몰 한정기획]바이오더마 하이드라비오 젤크림 2입 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[온라인몰 한정기획]바이오더마 하이드라비오 젤크림 2입 기획';


-- ================================

-- 상품: [산뜻/지성크림] 닥터디퍼런트 113 모이스처라이저 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[산뜻/지성크림] 닥터디퍼런트 113 모이스처라이저 100ml',
 '[산뜻/지성크림] 닥터디퍼런트 113 모이스처라이저 100ml',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터디퍼런트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[산뜻/지성크림] 닥터디퍼런트 113 모이스처라이저 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[산뜻/지성크림] 닥터디퍼런트 113 모이스처라이저 100ml'), NOW(), NOW()),
(28000, 'SALE', (SELECT id FROM product WHERE name = '[산뜻/지성크림] 닥터디퍼런트 113 모이스처라이저 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014533306ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[산뜻/지성크림] 닥터디퍼런트 113 모이스처라이저 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014533302ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[산뜻/지성크림] 닥터디퍼런트 113 모이스처라이저 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[산뜻/지성크림] 닥터디퍼런트 113 모이스처라이저 100ml';


-- ================================

-- 상품: [단독기획/수분충전템] 파티온 포도당 하이드로 크림 60ml 기획(+10ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[단독기획/수분충전템] 파티온 포도당 하이드로 크림 60ml 기획(+10ml)',
 '[단독기획/수분충전템] 파티온 포도당 하이드로 크림 60ml 기획(+10ml)',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '파티온'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[단독기획/수분충전템] 파티온 포도당 하이드로 크림 60ml 기획(+10ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(21000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독기획/수분충전템] 파티온 포도당 하이드로 크림 60ml 기획(+10ml)'), NOW(), NOW()),
(15900, 'SALE', (SELECT id FROM product WHERE name = '[단독기획/수분충전템] 파티온 포도당 하이드로 크림 60ml 기획(+10ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022284801ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[단독기획/수분충전템] 파티온 포도당 하이드로 크림 60ml 기획(+10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022284805ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[단독기획/수분충전템] 파티온 포도당 하이드로 크림 60ml 기획(+10ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[단독기획/수분충전템] 파티온 포도당 하이드로 크림 60ml 기획(+10ml)';


-- ================================

-- 상품: [3천원페이백] 마미케어 바다포도 레티놀 모공탄력 크림 50g...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[3천원페이백] 마미케어 바다포도 레티놀 모공탄력 크림 50g',
 '[3천원페이백] 마미케어 바다포도 레티놀 모공탄력 크림 50g',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '마미케어'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[3천원페이백] 마미케어 바다포도 레티놀 모공탄력 크림 50g'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(27800, 'ORIGINAL', (SELECT id FROM product WHERE name = '[3천원페이백] 마미케어 바다포도 레티놀 모공탄력 크림 50g'), NOW(), NOW()),
(15900, 'SALE', (SELECT id FROM product WHERE name = '[3천원페이백] 마미케어 바다포도 레티놀 모공탄력 크림 50g'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022429414ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[3천원페이백] 마미케어 바다포도 레티놀 모공탄력 크림 50g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022429406ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[3천원페이백] 마미케어 바다포도 레티놀 모공탄력 크림 50g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022429402ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[3천원페이백] 마미케어 바다포도 레티놀 모공탄력 크림 50g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022429403ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[3천원페이백] 마미케어 바다포도 레티놀 모공탄력 크림 50g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022429404ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[3천원페이백] 마미케어 바다포도 레티놀 모공탄력 크림 50g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022429405ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[3천원페이백] 마미케어 바다포도 레티놀 모공탄력 크림 50g'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[3천원페이백] 마미케어 바다포도 레티놀 모공탄력 크림 50g';


-- ================================

-- 상품: [가나디콜라보] 토리든 다이브인 저분자 히알루론산 수딩 크림 100ml 가나디 더블 기획 ...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[가나디콜라보] 토리든 다이브인 저분자 히알루론산 수딩 크림 100ml 가나디 더블 기획 (+파우치 키링)',
 '[가나디콜라보] 토리든 다이브인 저분자 히알루론산 수딩 크림 100ml 가나디 더블 기획 (+파우치 키링)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '토리든'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[가나디콜라보] 토리든 다이브인 저분자 히알루론산 수딩 크림 100ml 가나디 더블 기획 (+파우치 키링)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(42000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[가나디콜라보] 토리든 다이브인 저분자 히알루론산 수딩 크림 100ml 가나디 더블 기획 (+파우치 키링)'), NOW(), NOW()),
(42000, 'SALE', (SELECT id FROM product WHERE name = '[가나디콜라보] 토리든 다이브인 저분자 히알루론산 수딩 크림 100ml 가나디 더블 기획 (+파우치 키링)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023083208ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[가나디콜라보] 토리든 다이브인 저분자 히알루론산 수딩 크림 100ml 가나디 더블 기획 (+파우치 키링)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023083203ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[가나디콜라보] 토리든 다이브인 저분자 히알루론산 수딩 크림 100ml 가나디 더블 기획 (+파우치 키링)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023083204ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[가나디콜라보] 토리든 다이브인 저분자 히알루론산 수딩 크림 100ml 가나디 더블 기획 (+파우치 키링)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023083205ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[가나디콜라보] 토리든 다이브인 저분자 히알루론산 수딩 크림 100ml 가나디 더블 기획 (+파우치 키링)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023083206ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[가나디콜라보] 토리든 다이브인 저분자 히알루론산 수딩 크림 100ml 가나디 더블 기획 (+파우치 키링)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[가나디콜라보] 토리든 다이브인 저분자 히알루론산 수딩 크림 100ml 가나디 더블 기획 (+파우치 키링)';


-- ================================

-- 상품: [모공케어/PDRN] 닥터지 바쿠치올 포어젯 크림 50ml+10ml 증정 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[모공케어/PDRN] 닥터지 바쿠치올 포어젯 크림 50ml+10ml 증정 기획',
 '[모공케어/PDRN] 닥터지 바쿠치올 포어젯 크림 50ml+10ml 증정 기획',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터지'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('크림50ml+세럼10ml', 41000, (SELECT id FROM product WHERE name = '[모공케어/PDRN] 닥터지 바쿠치올 포어젯 크림 50ml+10ml 증정 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(41000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[모공케어/PDRN] 닥터지 바쿠치올 포어젯 크림 50ml+10ml 증정 기획'), NOW(), NOW()),
(41000, 'SALE', (SELECT id FROM product WHERE name = '[모공케어/PDRN] 닥터지 바쿠치올 포어젯 크림 50ml+10ml 증정 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020325816ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[모공케어/PDRN] 닥터지 바쿠치올 포어젯 크림 50ml+10ml 증정 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020325818ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[모공케어/PDRN] 닥터지 바쿠치올 포어젯 크림 50ml+10ml 증정 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020325817ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[모공케어/PDRN] 닥터지 바쿠치올 포어젯 크림 50ml+10ml 증정 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[모공케어/PDRN] 닥터지 바쿠치올 포어젯 크림 50ml+10ml 증정 기획';


-- ================================

-- 상품: [수상 기념 페이백] NDP 비타민 B9 톤업 미백 크림 65ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수상 기념 페이백] NDP 비타민 B9 톤업 미백 크림 65ml',
 '[수상 기념 페이백] NDP 비타민 B9 톤업 미백 크림 65ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'NDP'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수상 기념 페이백] NDP 비타민 B9 톤업 미백 크림 65ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수상 기념 페이백] NDP 비타민 B9 톤업 미백 크림 65ml'), NOW(), NOW()),
(26100, 'SALE', (SELECT id FROM product WHERE name = '[수상 기념 페이백] NDP 비타민 B9 톤업 미백 크림 65ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022424819ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수상 기념 페이백] NDP 비타민 B9 톤업 미백 크림 65ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022424807ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수상 기념 페이백] NDP 비타민 B9 톤업 미백 크림 65ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022424801ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수상 기념 페이백] NDP 비타민 B9 톤업 미백 크림 65ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022424802ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[수상 기념 페이백] NDP 비타민 B9 톤업 미백 크림 65ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022424803ko.png?l=ko', 5, (SELECT id FROM product WHERE name = '[수상 기념 페이백] NDP 비타민 B9 톤업 미백 크림 65ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수상 기념 페이백] NDP 비타민 B9 톤업 미백 크림 65ml';


-- ================================

-- 상품: 메디큐브 제로 모공 원데이 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('메디큐브 제로 모공 원데이 크림 50ml',
 '메디큐브 제로 모공 원데이 크림 50ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '메디큐브'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '메디큐브 제로 모공 원데이 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39900, 'ORIGINAL', (SELECT id FROM product WHERE name = '메디큐브 제로 모공 원데이 크림 50ml'), NOW(), NOW()),
(39900, 'SALE', (SELECT id FROM product WHERE name = '메디큐브 제로 모공 원데이 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020621201ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '메디큐브 제로 모공 원데이 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020621205ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '메디큐브 제로 모공 원데이 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020621204ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '메디큐브 제로 모공 원데이 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020621203ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '메디큐브 제로 모공 원데이 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020621202ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '메디큐브 제로 모공 원데이 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '메디큐브 제로 모공 원데이 크림 50ml';


-- ================================

-- 상품: 차앤박(CNP) 프로폴리스 앰플 액티브 샷크림 1+1 기획(50ml+50ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('차앤박(CNP) 프로폴리스 앰플 액티브 샷크림 1+1 기획(50ml+50ml)',
 '차앤박(CNP) 프로폴리스 앰플 액티브 샷크림 1+1 기획(50ml+50ml)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '차앤박'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '차앤박(CNP) 프로폴리스 앰플 액티브 샷크림 1+1 기획(50ml+50ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39000, 'ORIGINAL', (SELECT id FROM product WHERE name = '차앤박(CNP) 프로폴리스 앰플 액티브 샷크림 1+1 기획(50ml+50ml)'), NOW(), NOW()),
(25900, 'SALE', (SELECT id FROM product WHERE name = '차앤박(CNP) 프로폴리스 앰플 액티브 샷크림 1+1 기획(50ml+50ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018283103ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '차앤박(CNP) 프로폴리스 앰플 액티브 샷크림 1+1 기획(50ml+50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018283101ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '차앤박(CNP) 프로폴리스 앰플 액티브 샷크림 1+1 기획(50ml+50ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '차앤박(CNP) 프로폴리스 앰플 액티브 샷크림 1+1 기획(50ml+50ml)';


-- ================================

-- 상품: [기미잡티 크림]LBB 골드렐라 펩타이드 28 안티 멜라닌 마스크 크림 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[기미잡티 크림]LBB 골드렐라 펩타이드 28 안티 멜라닌 마스크 크림 100ml',
 '[기미잡티 크림]LBB 골드렐라 펩타이드 28 안티 멜라닌 마스크 크림 100ml',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'LBB'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[기미잡티 크림]LBB 골드렐라 펩타이드 28 안티 멜라닌 마스크 크림 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(49000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[기미잡티 크림]LBB 골드렐라 펩타이드 28 안티 멜라닌 마스크 크림 100ml'), NOW(), NOW()),
(39200, 'SALE', (SELECT id FROM product WHERE name = '[기미잡티 크림]LBB 골드렐라 펩타이드 28 안티 멜라닌 마스크 크림 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021201009ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[기미잡티 크림]LBB 골드렐라 펩타이드 28 안티 멜라닌 마스크 크림 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021201004ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[기미잡티 크림]LBB 골드렐라 펩타이드 28 안티 멜라닌 마스크 크림 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021201005ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[기미잡티 크림]LBB 골드렐라 펩타이드 28 안티 멜라닌 마스크 크림 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021201006ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[기미잡티 크림]LBB 골드렐라 펩타이드 28 안티 멜라닌 마스크 크림 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[기미잡티 크림]LBB 골드렐라 펩타이드 28 안티 멜라닌 마스크 크림 100ml';


-- ================================

-- 상품: [NEW] 아이오페 XMD 스템3 클리니컬 리커버리 크림 50ml 기획 (+세럼 5ml +...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW] 아이오페 XMD 스템3 클리니컬 리커버리 크림 50ml 기획 (+세럼 5ml +크림 5ml)',
 '[NEW] 아이오페 XMD 스템3 클리니컬 리커버리 크림 50ml 기획 (+세럼 5ml +크림 5ml)',
 5.0,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이오페'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW] 아이오페 XMD 스템3 클리니컬 리커버리 크림 50ml 기획 (+세럼 5ml +크림 5ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(80000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW] 아이오페 XMD 스템3 클리니컬 리커버리 크림 50ml 기획 (+세럼 5ml +크림 5ml)'), NOW(), NOW()),
(80000, 'SALE', (SELECT id FROM product WHERE name = '[NEW] 아이오페 XMD 스템3 클리니컬 리커버리 크림 50ml 기획 (+세럼 5ml +크림 5ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022949202ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW] 아이오페 XMD 스템3 클리니컬 리커버리 크림 50ml 기획 (+세럼 5ml +크림 5ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW] 아이오페 XMD 스템3 클리니컬 리커버리 크림 50ml 기획 (+세럼 5ml +크림 5ml)';


-- ================================

-- 상품: [PDRN]에스트라 리제덤365 밀도탄력 캡슐크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[PDRN]에스트라 리제덤365 밀도탄력 캡슐크림 50ml',
 '[PDRN]에스트라 리제덤365 밀도탄력 캡슐크림 50ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에스트라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[PDRN]에스트라 리제덤365 밀도탄력 캡슐크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(45000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[PDRN]에스트라 리제덤365 밀도탄력 캡슐크림 50ml'), NOW(), NOW()),
(38200, 'SALE', (SELECT id FROM product WHERE name = '[PDRN]에스트라 리제덤365 밀도탄력 캡슐크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018905603ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[PDRN]에스트라 리제덤365 밀도탄력 캡슐크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018905604ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[PDRN]에스트라 리제덤365 밀도탄력 캡슐크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[PDRN]에스트라 리제덤365 밀도탄력 캡슐크림 50ml';

-- ================================

-- 상품: 조선미녀 조선미녀크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('조선미녀 조선미녀크림 50ml',
 '조선미녀 조선미녀크림 50ml',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '조선미녀'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '조선미녀 조선미녀크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '조선미녀 조선미녀크림 50ml'), NOW(), NOW()),
(24000, 'SALE', (SELECT id FROM product WHERE name = '조선미녀 조선미녀크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018883107ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '조선미녀 조선미녀크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018883108ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '조선미녀 조선미녀크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '조선미녀 조선미녀크림 50ml';


-- ================================

-- 상품: [장벽광채크림] 유리아쥬 제모스 PSO 150ml 기획 (+오떼르말 50ml 증정)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[장벽광채크림] 유리아쥬 제모스 PSO 150ml 기획 (+오떼르말 50ml 증정)',
 '[장벽광채크림] 유리아쥬 제모스 PSO 150ml 기획 (+오떼르말 50ml 증정)',
 4.6,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유리아쥬'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[장벽광채크림] 유리아쥬 제모스 PSO 150ml 기획 (+오떼르말 50ml 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(36000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[장벽광채크림] 유리아쥬 제모스 PSO 150ml 기획 (+오떼르말 50ml 증정)'), NOW(), NOW()),
(36000, 'SALE', (SELECT id FROM product WHERE name = '[장벽광채크림] 유리아쥬 제모스 PSO 150ml 기획 (+오떼르말 50ml 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021097307ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[장벽광채크림] 유리아쥬 제모스 PSO 150ml 기획 (+오떼르말 50ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021097306ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[장벽광채크림] 유리아쥬 제모스 PSO 150ml 기획 (+오떼르말 50ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021097304ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[장벽광채크림] 유리아쥬 제모스 PSO 150ml 기획 (+오떼르말 50ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021097303ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[장벽광채크림] 유리아쥬 제모스 PSO 150ml 기획 (+오떼르말 50ml 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[장벽광채크림] 유리아쥬 제모스 PSO 150ml 기획 (+오떼르말 50ml 증정)';


-- ================================

-- 상품: [민감피부진정/쿨링수분크림] 셀퓨전씨 포스트 알파 시카 카밍 다운 크림 50ml 기획 (+...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[민감피부진정/쿨링수분크림] 셀퓨전씨 포스트 알파 시카 카밍 다운 크림 50ml 기획 (+50ml 리필)',
 '[민감피부진정/쿨링수분크림] 셀퓨전씨 포스트 알파 시카 카밍 다운 크림 50ml 기획 (+50ml 리필)',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '셀퓨전씨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[민감피부진정/쿨링수분크림] 셀퓨전씨 포스트 알파 시카 카밍 다운 크림 50ml 기획 (+50ml 리필)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(36000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[민감피부진정/쿨링수분크림] 셀퓨전씨 포스트 알파 시카 카밍 다운 크림 50ml 기획 (+50ml 리필)'), NOW(), NOW()),
(36000, 'SALE', (SELECT id FROM product WHERE name = '[민감피부진정/쿨링수분크림] 셀퓨전씨 포스트 알파 시카 카밍 다운 크림 50ml 기획 (+50ml 리필)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021658005ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[민감피부진정/쿨링수분크림] 셀퓨전씨 포스트 알파 시카 카밍 다운 크림 50ml 기획 (+50ml 리필)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021658004ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[민감피부진정/쿨링수분크림] 셀퓨전씨 포스트 알파 시카 카밍 다운 크림 50ml 기획 (+50ml 리필)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021658003ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[민감피부진정/쿨링수분크림] 셀퓨전씨 포스트 알파 시카 카밍 다운 크림 50ml 기획 (+50ml 리필)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021658002ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[민감피부진정/쿨링수분크림] 셀퓨전씨 포스트 알파 시카 카밍 다운 크림 50ml 기획 (+50ml 리필)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021658001ko.png?l=ko', 5, (SELECT id FROM product WHERE name = '[민감피부진정/쿨링수분크림] 셀퓨전씨 포스트 알파 시카 카밍 다운 크림 50ml 기획 (+50ml 리필)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[민감피부진정/쿨링수분크림] 셀퓨전씨 포스트 알파 시카 카밍 다운 크림 50ml 기획 (+50ml 리필)';


-- ================================

-- 상품: SVR 시카비트+ 크림 HPPI 100ml 기획 (+ 2ml*5ea)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('SVR 시카비트+ 크림 HPPI 100ml 기획 (+ 2ml*5ea)',
 'SVR 시카비트+ 크림 HPPI 100ml 기획 (+ 2ml*5ea)',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'SVR'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = 'SVR 시카비트+ 크림 HPPI 100ml 기획 (+ 2ml*5ea)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(43000, 'ORIGINAL', (SELECT id FROM product WHERE name = 'SVR 시카비트+ 크림 HPPI 100ml 기획 (+ 2ml*5ea)'), NOW(), NOW()),
(35900, 'SALE', (SELECT id FROM product WHERE name = 'SVR 시카비트+ 크림 HPPI 100ml 기획 (+ 2ml*5ea)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023428005ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = 'SVR 시카비트+ 크림 HPPI 100ml 기획 (+ 2ml*5ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023428007ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = 'SVR 시카비트+ 크림 HPPI 100ml 기획 (+ 2ml*5ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023428006ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = 'SVR 시카비트+ 크림 HPPI 100ml 기획 (+ 2ml*5ea)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = 'SVR 시카비트+ 크림 HPPI 100ml 기획 (+ 2ml*5ea)';


-- ================================

-- 상품: [속보습/장벽케어] 더랩바이블랑두 저분자 히알루론산 카밍+ 크림 80ml 대용량 기획(+2...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[속보습/장벽케어] 더랩바이블랑두 저분자 히알루론산 카밍+ 크림 80ml 대용량 기획(+20ml 추가 증정)',
 '[속보습/장벽케어] 더랩바이블랑두 저분자 히알루론산 카밍+ 크림 80ml 대용량 기획(+20ml 추가 증정)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더랩바이블랑두'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[속보습/장벽케어] 더랩바이블랑두 저분자 히알루론산 카밍+ 크림 80ml 대용량 기획(+20ml 추가 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[속보습/장벽케어] 더랩바이블랑두 저분자 히알루론산 카밍+ 크림 80ml 대용량 기획(+20ml 추가 증정)'), NOW(), NOW()),
(35000, 'SALE', (SELECT id FROM product WHERE name = '[속보습/장벽케어] 더랩바이블랑두 저분자 히알루론산 카밍+ 크림 80ml 대용량 기획(+20ml 추가 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015014526ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[속보습/장벽케어] 더랩바이블랑두 저분자 히알루론산 카밍+ 크림 80ml 대용량 기획(+20ml 추가 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015014522ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[속보습/장벽케어] 더랩바이블랑두 저분자 히알루론산 카밍+ 크림 80ml 대용량 기획(+20ml 추가 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015014521ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[속보습/장벽케어] 더랩바이블랑두 저분자 히알루론산 카밍+ 크림 80ml 대용량 기획(+20ml 추가 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015014520ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[속보습/장벽케어] 더랩바이블랑두 저분자 히알루론산 카밍+ 크림 80ml 대용량 기획(+20ml 추가 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[속보습/장벽케어] 더랩바이블랑두 저분자 히알루론산 카밍+ 크림 80ml 대용량 기획(+20ml 추가 증정)';


-- ================================

-- 상품: [물착크림] 스킨푸드 블루 캐모마일 히알루로닉 수분크림 기획(70ml+30ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[물착크림] 스킨푸드 블루 캐모마일 히알루로닉 수분크림 기획(70ml+30ml)',
 '[물착크림] 스킨푸드 블루 캐모마일 히알루로닉 수분크림 기획(70ml+30ml)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '스킨푸드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[물착크림] 스킨푸드 블루 캐모마일 히알루로닉 수분크림 기획(70ml+30ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[물착크림] 스킨푸드 블루 캐모마일 히알루로닉 수분크림 기획(70ml+30ml)'), NOW(), NOW()),
(16250, 'SALE', (SELECT id FROM product WHERE name = '[물착크림] 스킨푸드 블루 캐모마일 히알루로닉 수분크림 기획(70ml+30ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020383130ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[물착크림] 스킨푸드 블루 캐모마일 히알루로닉 수분크림 기획(70ml+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020383131ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[물착크림] 스킨푸드 블루 캐모마일 히알루로닉 수분크림 기획(70ml+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020383132ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[물착크림] 스킨푸드 블루 캐모마일 히알루로닉 수분크림 기획(70ml+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020383116ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[물착크림] 스킨푸드 블루 캐모마일 히알루로닉 수분크림 기획(70ml+30ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[물착크림] 스킨푸드 블루 캐모마일 히알루로닉 수분크림 기획(70ml+30ml)';


-- ================================

-- 상품: [아랑 PICK] 낫츠 센텔라스카 연고 일랑일랑 2입 기획(15g+15g)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[아랑 PICK] 낫츠 센텔라스카 연고 일랑일랑 2입 기획(15g+15g)',
 '[아랑 PICK] 낫츠 센텔라스카 연고 일랑일랑 2입 기획(15g+15g)',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '낫츠'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[아랑 PICK] 낫츠 센텔라스카 연고 일랑일랑 2입 기획(15g+15g)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(40000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[아랑 PICK] 낫츠 센텔라스카 연고 일랑일랑 2입 기획(15g+15g)'), NOW(), NOW()),
(34000, 'SALE', (SELECT id FROM product WHERE name = '[아랑 PICK] 낫츠 센텔라스카 연고 일랑일랑 2입 기획(15g+15g)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018713915ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[아랑 PICK] 낫츠 센텔라스카 연고 일랑일랑 2입 기획(15g+15g)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018713908ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[아랑 PICK] 낫츠 센텔라스카 연고 일랑일랑 2입 기획(15g+15g)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018713914ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[아랑 PICK] 낫츠 센텔라스카 연고 일랑일랑 2입 기획(15g+15g)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018713917ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[아랑 PICK] 낫츠 센텔라스카 연고 일랑일랑 2입 기획(15g+15g)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[아랑 PICK] 낫츠 센텔라스카 연고 일랑일랑 2입 기획(15g+15g)';


-- ================================

-- 상품: [코어탄력크림] 아이소이 인텐시브 에너자이징 크림EX 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[코어탄력크림] 아이소이 인텐시브 에너자이징 크림EX 30ml',
 '[코어탄력크림] 아이소이 인텐시브 에너자이징 크림EX 30ml',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이소이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[코어탄력크림] 아이소이 인텐시브 에너자이징 크림EX 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(45000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[코어탄력크림] 아이소이 인텐시브 에너자이징 크림EX 30ml'), NOW(), NOW()),
(33700, 'SALE', (SELECT id FROM product WHERE name = '[코어탄력크림] 아이소이 인텐시브 에너자이징 크림EX 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015462511ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[코어탄력크림] 아이소이 인텐시브 에너자이징 크림EX 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015462512ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[코어탄력크림] 아이소이 인텐시브 에너자이징 크림EX 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015462513ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[코어탄력크림] 아이소이 인텐시브 에너자이징 크림EX 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015462514ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[코어탄력크림] 아이소이 인텐시브 에너자이징 크림EX 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[코어탄력크림] 아이소이 인텐시브 에너자이징 크림EX 30ml';


-- ================================

-- 상품: [NCT 재민PICK] 이즈앤트리 어니언 뉴페어 겔크림 50ml 기획 (+20ml +패드2...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NCT 재민PICK] 이즈앤트리 어니언 뉴페어 겔크림 50ml 기획 (+20ml +패드2매)',
 '[NCT 재민PICK] 이즈앤트리 어니언 뉴페어 겔크림 50ml 기획 (+20ml +패드2매)',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '이즈앤트리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NCT 재민PICK] 이즈앤트리 어니언 뉴페어 겔크림 50ml 기획 (+20ml +패드2매)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NCT 재민PICK] 이즈앤트리 어니언 뉴페어 겔크림 50ml 기획 (+20ml +패드2매)'), NOW(), NOW()),
(32000, 'SALE', (SELECT id FROM product WHERE name = '[NCT 재민PICK] 이즈앤트리 어니언 뉴페어 겔크림 50ml 기획 (+20ml +패드2매)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020813020ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NCT 재민PICK] 이즈앤트리 어니언 뉴페어 겔크림 50ml 기획 (+20ml +패드2매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020813021ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NCT 재민PICK] 이즈앤트리 어니언 뉴페어 겔크림 50ml 기획 (+20ml +패드2매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020813022ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NCT 재민PICK] 이즈앤트리 어니언 뉴페어 겔크림 50ml 기획 (+20ml +패드2매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020813023ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[NCT 재민PICK] 이즈앤트리 어니언 뉴페어 겔크림 50ml 기획 (+20ml +패드2매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020813024ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[NCT 재민PICK] 이즈앤트리 어니언 뉴페어 겔크림 50ml 기획 (+20ml +패드2매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020813019ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[NCT 재민PICK] 이즈앤트리 어니언 뉴페어 겔크림 50ml 기획 (+20ml +패드2매)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NCT 재민PICK] 이즈앤트리 어니언 뉴페어 겔크림 50ml 기획 (+20ml +패드2매)';


-- ================================

-- 상품: 마녀공장 판테토인 크림 80ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('마녀공장 판테토인 크림 80ml',
 '마녀공장 판테토인 크림 80ml',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '마녀공장'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '마녀공장 판테토인 크림 80ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29200, 'ORIGINAL', (SELECT id FROM product WHERE name = '마녀공장 판테토인 크림 80ml'), NOW(), NOW()),
(20700, 'SALE', (SELECT id FROM product WHERE name = '마녀공장 판테토인 크림 80ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019940409ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '마녀공장 판테토인 크림 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019940408ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '마녀공장 판테토인 크림 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019940410ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '마녀공장 판테토인 크림 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019940404ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '마녀공장 판테토인 크림 80ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '마녀공장 판테토인 크림 80ml';


-- ================================

-- 상품: CKD 레티노콜라겐 저분자 300 괄사 목주름 크림 50ml 리필용...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('CKD 레티노콜라겐 저분자 300 괄사 목주름 크림 50ml 리필용',
 'CKD 레티노콜라겐 저분자 300 괄사 목주름 크림 50ml 리필용',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'CKD'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = 'CKD 레티노콜라겐 저분자 300 괄사 목주름 크림 50ml 리필용'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(36000, 'ORIGINAL', (SELECT id FROM product WHERE name = 'CKD 레티노콜라겐 저분자 300 괄사 목주름 크림 50ml 리필용'), NOW(), NOW()),
(14900, 'SALE', (SELECT id FROM product WHERE name = 'CKD 레티노콜라겐 저분자 300 괄사 목주름 크림 50ml 리필용'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023049810ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = 'CKD 레티노콜라겐 저분자 300 괄사 목주름 크림 50ml 리필용'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = 'CKD 레티노콜라겐 저분자 300 괄사 목주름 크림 50ml 리필용';


-- ================================

-- 상품: 메디큐브 레드 이레이징 크림 2.0 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('메디큐브 레드 이레이징 크림 2.0 50ml',
 '메디큐브 레드 이레이징 크림 2.0 50ml',
 4.5,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '메디큐브'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '메디큐브 레드 이레이징 크림 2.0 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25200, 'ORIGINAL', (SELECT id FROM product WHERE name = '메디큐브 레드 이레이징 크림 2.0 50ml'), NOW(), NOW()),
(19900, 'SALE', (SELECT id FROM product WHERE name = '메디큐브 레드 이레이징 크림 2.0 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018613109ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '메디큐브 레드 이레이징 크림 2.0 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018613107ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '메디큐브 레드 이레이징 크림 2.0 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018613108ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '메디큐브 레드 이레이징 크림 2.0 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018613110ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '메디큐브 레드 이레이징 크림 2.0 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '메디큐브 레드 이레이징 크림 2.0 50ml';


-- ================================

-- 상품: [NEW] 브링그린 대나무히알루수분부스팅크림 100ml 2입...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW] 브링그린 대나무히알루수분부스팅크림 100ml 2입',
 '[NEW] 브링그린 대나무히알루수분부스팅크림 100ml 2입',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '브링그린'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW] 브링그린 대나무히알루수분부스팅크림 100ml 2입'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(19000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW] 브링그린 대나무히알루수분부스팅크림 100ml 2입'), NOW(), NOW()),
(17100, 'SALE', (SELECT id FROM product WHERE name = '[NEW] 브링그린 대나무히알루수분부스팅크림 100ml 2입'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021269009ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW] 브링그린 대나무히알루수분부스팅크림 100ml 2입'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021269010ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW] 브링그린 대나무히알루수분부스팅크림 100ml 2입'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021269011ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW] 브링그린 대나무히알루수분부스팅크림 100ml 2입'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021269008ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[NEW] 브링그린 대나무히알루수분부스팅크림 100ml 2입'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW] 브링그린 대나무히알루수분부스팅크림 100ml 2입';


-- ================================

-- 상품: [단독기획] 제로이드 수딩 크림 80ml 기획 (+수딩 로션 25ml+ 데일리 선크림 10...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[단독기획] 제로이드 수딩 크림 80ml 기획 (+수딩 로션 25ml+ 데일리 선크림 10ml)',
 '[단독기획] 제로이드 수딩 크림 80ml 기획 (+수딩 로션 25ml+ 데일리 선크림 10ml)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '제로이드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[단독기획] 제로이드 수딩 크림 80ml 기획 (+수딩 로션 25ml+ 데일리 선크림 10ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독기획] 제로이드 수딩 크림 80ml 기획 (+수딩 로션 25ml+ 데일리 선크림 10ml)'), NOW(), NOW()),
(30000, 'SALE', (SELECT id FROM product WHERE name = '[단독기획] 제로이드 수딩 크림 80ml 기획 (+수딩 로션 25ml+ 데일리 선크림 10ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022433609ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[단독기획] 제로이드 수딩 크림 80ml 기획 (+수딩 로션 25ml+ 데일리 선크림 10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022433605ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[단독기획] 제로이드 수딩 크림 80ml 기획 (+수딩 로션 25ml+ 데일리 선크림 10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022433603ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[단독기획] 제로이드 수딩 크림 80ml 기획 (+수딩 로션 25ml+ 데일리 선크림 10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022433601ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[단독기획] 제로이드 수딩 크림 80ml 기획 (+수딩 로션 25ml+ 데일리 선크림 10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022433604ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[단독기획] 제로이드 수딩 크림 80ml 기획 (+수딩 로션 25ml+ 데일리 선크림 10ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[단독기획] 제로이드 수딩 크림 80ml 기획 (+수딩 로션 25ml+ 데일리 선크림 10ml)';


-- ================================

-- 상품: [스티치에디션/화잘먹크림] 구달 어성초 히알루론 수딩 크림 75ml 리필 기획 (+75ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[스티치에디션/화잘먹크림] 구달 어성초 히알루론 수딩 크림 75ml 리필 기획 (+75ml 리필+미니백)',
 '[스티치에디션/화잘먹크림] 구달 어성초 히알루론 수딩 크림 75ml 리필 기획 (+75ml 리필+미니백)',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '구달'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[스티치에디션/화잘먹크림] 구달 어성초 히알루론 수딩 크림 75ml 리필 기획 (+75ml 리필+미니백)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[스티치에디션/화잘먹크림] 구달 어성초 히알루론 수딩 크림 75ml 리필 기획 (+75ml 리필+미니백)'), NOW(), NOW()),
(30000, 'SALE', (SELECT id FROM product WHERE name = '[스티치에디션/화잘먹크림] 구달 어성초 히알루론 수딩 크림 75ml 리필 기획 (+75ml 리필+미니백)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022670244ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[스티치에디션/화잘먹크림] 구달 어성초 히알루론 수딩 크림 75ml 리필 기획 (+75ml 리필+미니백)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022670248ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[스티치에디션/화잘먹크림] 구달 어성초 히알루론 수딩 크림 75ml 리필 기획 (+75ml 리필+미니백)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022670240ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[스티치에디션/화잘먹크림] 구달 어성초 히알루론 수딩 크림 75ml 리필 기획 (+75ml 리필+미니백)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022670238ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[스티치에디션/화잘먹크림] 구달 어성초 히알루론 수딩 크림 75ml 리필 기획 (+75ml 리필+미니백)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022670237ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[스티치에디션/화잘먹크림] 구달 어성초 히알루론 수딩 크림 75ml 리필 기획 (+75ml 리필+미니백)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[스티치에디션/화잘먹크림] 구달 어성초 히알루론 수딩 크림 75ml 리필 기획 (+75ml 리필+미니백)';


-- ================================

-- 상품: [가벼운 사용감] 피지오겔 DMT 하이드로 수딩 젤 크림 70ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[가벼운 사용감] 피지오겔 DMT 하이드로 수딩 젤 크림 70ml',
 '[가벼운 사용감] 피지오겔 DMT 하이드로 수딩 젤 크림 70ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '피지오겔'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[가벼운 사용감] 피지오겔 DMT 하이드로 수딩 젤 크림 70ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29500, 'ORIGINAL', (SELECT id FROM product WHERE name = '[가벼운 사용감] 피지오겔 DMT 하이드로 수딩 젤 크림 70ml'), NOW(), NOW()),
(29500, 'SALE', (SELECT id FROM product WHERE name = '[가벼운 사용감] 피지오겔 DMT 하이드로 수딩 젤 크림 70ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018712404ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[가벼운 사용감] 피지오겔 DMT 하이드로 수딩 젤 크림 70ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018712401ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[가벼운 사용감] 피지오겔 DMT 하이드로 수딩 젤 크림 70ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018712403ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[가벼운 사용감] 피지오겔 DMT 하이드로 수딩 젤 크림 70ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[가벼운 사용감] 피지오겔 DMT 하이드로 수딩 젤 크림 70ml';


-- ================================

-- 상품: [화해1위/100시간보습] 프리메이 진정한 수분 크림 100ml + 30ml 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[화해1위/100시간보습] 프리메이 진정한 수분 크림 100ml + 30ml 기획',
 '[화해1위/100시간보습] 프리메이 진정한 수분 크림 100ml + 30ml 기획',
 5.0,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '프리메이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[화해1위/100시간보습] 프리메이 진정한 수분 크림 100ml + 30ml 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[화해1위/100시간보습] 프리메이 진정한 수분 크림 100ml + 30ml 기획'), NOW(), NOW()),
(13900, 'SALE', (SELECT id FROM product WHERE name = '[화해1위/100시간보습] 프리메이 진정한 수분 크림 100ml + 30ml 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021486221ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[화해1위/100시간보습] 프리메이 진정한 수분 크림 100ml + 30ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021486220ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[화해1위/100시간보습] 프리메이 진정한 수분 크림 100ml + 30ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021486219ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[화해1위/100시간보습] 프리메이 진정한 수분 크림 100ml + 30ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021486215ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[화해1위/100시간보습] 프리메이 진정한 수분 크림 100ml + 30ml 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[화해1위/100시간보습] 프리메이 진정한 수분 크림 100ml + 30ml 기획';


-- ================================

-- 상품: [엔하이픈 PICK] 믹순 기프트 세트(콩 크림 50ml+콩 에센스 50ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[엔하이픈 PICK] 믹순 기프트 세트(콩 크림 50ml+콩 에센스 50ml)',
 '[엔하이픈 PICK] 믹순 기프트 세트(콩 크림 50ml+콩 에센스 50ml)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '믹순'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[엔하이픈 PICK] 믹순 기프트 세트(콩 크림 50ml+콩 에센스 50ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(70000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[엔하이픈 PICK] 믹순 기프트 세트(콩 크림 50ml+콩 에센스 50ml)'), NOW(), NOW()),
(60000, 'SALE', (SELECT id FROM product WHERE name = '[엔하이픈 PICK] 믹순 기프트 세트(콩 크림 50ml+콩 에센스 50ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016241907ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[엔하이픈 PICK] 믹순 기프트 세트(콩 크림 50ml+콩 에센스 50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016241908ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[엔하이픈 PICK] 믹순 기프트 세트(콩 크림 50ml+콩 에센스 50ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[엔하이픈 PICK] 믹순 기프트 세트(콩 크림 50ml+콩 에센스 50ml)';


-- ================================

-- 상품: [수분진정] 이니스프리 그린티 씨드 히알루론산 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분진정] 이니스프리 그린티 씨드 히알루론산 크림 50ml',
 '[수분진정] 이니스프리 그린티 씨드 히알루론산 크림 50ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '이니스프리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분진정] 이니스프리 그린티 씨드 히알루론산 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(27000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분진정] 이니스프리 그린티 씨드 히알루론산 크림 50ml'), NOW(), NOW()),
(18900, 'SALE', (SELECT id FROM product WHERE name = '[수분진정] 이니스프리 그린티 씨드 히알루론산 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018320821ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분진정] 이니스프리 그린티 씨드 히알루론산 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018320817ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분진정] 이니스프리 그린티 씨드 히알루론산 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018320818ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분진정] 이니스프리 그린티 씨드 히알루론산 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018320819ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[수분진정] 이니스프리 그린티 씨드 히알루론산 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분진정] 이니스프리 그린티 씨드 히알루론산 크림 50ml';


-- ================================

-- 상품: 제로이드 인텐시브 크림 80ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('제로이드 인텐시브 크림 80ml',
 '제로이드 인텐시브 크림 80ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '제로이드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '제로이드 인텐시브 크림 80ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '제로이드 인텐시브 크림 80ml'), NOW(), NOW()),
(28800, 'SALE', (SELECT id FROM product WHERE name = '제로이드 인텐시브 크림 80ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020941831ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '제로이드 인텐시브 크림 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020941829ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '제로이드 인텐시브 크림 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020941830ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '제로이드 인텐시브 크림 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020941828ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '제로이드 인텐시브 크림 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020941827ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '제로이드 인텐시브 크림 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020941826ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '제로이드 인텐시브 크림 80ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '제로이드 인텐시브 크림 80ml';


-- ================================

-- 상품: 넘버즈인 5번 글루타치온씨 흔적 토닝 레이저 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('넘버즈인 5번 글루타치온씨 흔적 토닝 레이저 크림 50ml',
 '넘버즈인 5번 글루타치온씨 흔적 토닝 레이저 크림 50ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '넘버즈인'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '넘버즈인 5번 글루타치온씨 흔적 토닝 레이저 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '넘버즈인 5번 글루타치온씨 흔적 토닝 레이저 크림 50ml'), NOW(), NOW()),
(28500, 'SALE', (SELECT id FROM product WHERE name = '넘버즈인 5번 글루타치온씨 흔적 토닝 레이저 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021060007ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '넘버즈인 5번 글루타치온씨 흔적 토닝 레이저 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021060008ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '넘버즈인 5번 글루타치온씨 흔적 토닝 레이저 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021060009ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '넘버즈인 5번 글루타치온씨 흔적 토닝 레이저 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021060010ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '넘버즈인 5번 글루타치온씨 흔적 토닝 레이저 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021060011ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '넘버즈인 5번 글루타치온씨 흔적 토닝 레이저 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '넘버즈인 5번 글루타치온씨 흔적 토닝 레이저 크림 50ml';


-- ================================

-- 상품: [NEW/겉뽀속촉] 스킨푸드 피치뽀송 징크피씨에이 톤업 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW/겉뽀속촉] 스킨푸드 피치뽀송 징크피씨에이 톤업 크림 50ml',
 '[NEW/겉뽀속촉] 스킨푸드 피치뽀송 징크피씨에이 톤업 크림 50ml',
 5.0,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '스킨푸드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW/겉뽀속촉] 스킨푸드 피치뽀송 징크피씨에이 톤업 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(27000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW/겉뽀속촉] 스킨푸드 피치뽀송 징크피씨에이 톤업 크림 50ml'), NOW(), NOW()),
(18300, 'SALE', (SELECT id FROM product WHERE name = '[NEW/겉뽀속촉] 스킨푸드 피치뽀송 징크피씨에이 톤업 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023145505ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW/겉뽀속촉] 스킨푸드 피치뽀송 징크피씨에이 톤업 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023145504ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW/겉뽀속촉] 스킨푸드 피치뽀송 징크피씨에이 톤업 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023145503ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW/겉뽀속촉] 스킨푸드 피치뽀송 징크피씨에이 톤업 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023145502ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[NEW/겉뽀속촉] 스킨푸드 피치뽀송 징크피씨에이 톤업 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023145501ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[NEW/겉뽀속촉] 스킨푸드 피치뽀송 징크피씨에이 톤업 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW/겉뽀속촉] 스킨푸드 피치뽀송 징크피씨에이 톤업 크림 50ml';


-- ================================

-- 상품: 닥터엘시아 345 릴리프 크림 50ml 더블 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('닥터엘시아 345 릴리프 크림 50ml 더블 기획',
 '닥터엘시아 345 릴리프 크림 50ml 더블 기획',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터엘시아'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '닥터엘시아 345 릴리프 크림 50ml 더블 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(58000, 'ORIGINAL', (SELECT id FROM product WHERE name = '닥터엘시아 345 릴리프 크림 50ml 더블 기획'), NOW(), NOW()),
(58000, 'SALE', (SELECT id FROM product WHERE name = '닥터엘시아 345 릴리프 크림 50ml 더블 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022764404ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '닥터엘시아 345 릴리프 크림 50ml 더블 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '닥터엘시아 345 릴리프 크림 50ml 더블 기획';


-- ================================

-- 상품: [진정크림/총100ml] 웰라쥬 리얼 시카카밍 95 크림 80ml 기획 (+20ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[진정크림/총100ml] 웰라쥬 리얼 시카카밍 95 크림 80ml 기획 (+20ml)',
 '[진정크림/총100ml] 웰라쥬 리얼 시카카밍 95 크림 80ml 기획 (+20ml)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '웰라쥬'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[진정크림/총100ml] 웰라쥬 리얼 시카카밍 95 크림 80ml 기획 (+20ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[진정크림/총100ml] 웰라쥬 리얼 시카카밍 95 크림 80ml 기획 (+20ml)'), NOW(), NOW()),
(28000, 'SALE', (SELECT id FROM product WHERE name = '[진정크림/총100ml] 웰라쥬 리얼 시카카밍 95 크림 80ml 기획 (+20ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015529148ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[진정크림/총100ml] 웰라쥬 리얼 시카카밍 95 크림 80ml 기획 (+20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015529149ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[진정크림/총100ml] 웰라쥬 리얼 시카카밍 95 크림 80ml 기획 (+20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015529150ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[진정크림/총100ml] 웰라쥬 리얼 시카카밍 95 크림 80ml 기획 (+20ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[진정크림/총100ml] 웰라쥬 리얼 시카카밍 95 크림 80ml 기획 (+20ml)';


-- ================================

-- 상품: [화잘먹모공크림] 오드로이 블랙체리 모공수축크림 로프디 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[화잘먹모공크림] 오드로이 블랙체리 모공수축크림 로프디 100ml',
 '[화잘먹모공크림] 오드로이 블랙체리 모공수축크림 로프디 100ml',
 4.6,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '오드로이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[화잘먹모공크림] 오드로이 블랙체리 모공수축크림 로프디 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[화잘먹모공크림] 오드로이 블랙체리 모공수축크림 로프디 100ml'), NOW(), NOW()),
(28000, 'SALE', (SELECT id FROM product WHERE name = '[화잘먹모공크림] 오드로이 블랙체리 모공수축크림 로프디 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021108514ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[화잘먹모공크림] 오드로이 블랙체리 모공수축크림 로프디 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021108507ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[화잘먹모공크림] 오드로이 블랙체리 모공수축크림 로프디 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[화잘먹모공크림] 오드로이 블랙체리 모공수축크림 로프디 100ml';


-- ================================

-- 상품: [단독기획/장벽크림] 닥터자르트 파워 더마 베리어 크림 80ml 증량 기획세트...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[단독기획/장벽크림] 닥터자르트 파워 더마 베리어 크림 80ml 증량 기획세트',
 '[단독기획/장벽크림] 닥터자르트 파워 더마 베리어 크림 80ml 증량 기획세트',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터자르트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[단독기획/장벽크림] 닥터자르트 파워 더마 베리어 크림 80ml 증량 기획세트'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독기획/장벽크림] 닥터자르트 파워 더마 베리어 크림 80ml 증량 기획세트'), NOW(), NOW()),
(28000, 'SALE', (SELECT id FROM product WHERE name = '[단독기획/장벽크림] 닥터자르트 파워 더마 베리어 크림 80ml 증량 기획세트'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023319204ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[단독기획/장벽크림] 닥터자르트 파워 더마 베리어 크림 80ml 증량 기획세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023319203ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[단독기획/장벽크림] 닥터자르트 파워 더마 베리어 크림 80ml 증량 기획세트'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[단독기획/장벽크림] 닥터자르트 파워 더마 베리어 크림 80ml 증량 기획세트';


-- ================================

-- 상품: [1+1/보습진정] 이니스프리 그린티 씨드 크림 50ml 더블 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[1+1/보습진정] 이니스프리 그린티 씨드 크림 50ml 더블 기획',
 '[1+1/보습진정] 이니스프리 그린티 씨드 크림 50ml 더블 기획',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '이니스프리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[1+1/보습진정] 이니스프리 그린티 씨드 크림 50ml 더블 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1+1/보습진정] 이니스프리 그린티 씨드 크림 50ml 더블 기획'), NOW(), NOW()),
(28000, 'SALE', (SELECT id FROM product WHERE name = '[1+1/보습진정] 이니스프리 그린티 씨드 크림 50ml 더블 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023361407ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[1+1/보습진정] 이니스프리 그린티 씨드 크림 50ml 더블 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023361408ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[1+1/보습진정] 이니스프리 그린티 씨드 크림 50ml 더블 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023361403ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[1+1/보습진정] 이니스프리 그린티 씨드 크림 50ml 더블 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023361404ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[1+1/보습진정] 이니스프리 그린티 씨드 크림 50ml 더블 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023361405ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[1+1/보습진정] 이니스프리 그린티 씨드 크림 50ml 더블 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023361406ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[1+1/보습진정] 이니스프리 그린티 씨드 크림 50ml 더블 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[1+1/보습진정] 이니스프리 그린티 씨드 크림 50ml 더블 기획';


-- ================================

-- 상품: [단독기획/PDRN] 파티온 노스카나인 트러블 모공탄력 크림 45ml 기획(+15ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[단독기획/PDRN] 파티온 노스카나인 트러블 모공탄력 크림 45ml 기획(+15ml)',
 '[단독기획/PDRN] 파티온 노스카나인 트러블 모공탄력 크림 45ml 기획(+15ml)',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '파티온'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[단독기획/PDRN] 파티온 노스카나인 트러블 모공탄력 크림 45ml 기획(+15ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(34000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독기획/PDRN] 파티온 노스카나인 트러블 모공탄력 크림 45ml 기획(+15ml)'), NOW(), NOW()),
(27800, 'SALE', (SELECT id FROM product WHERE name = '[단독기획/PDRN] 파티온 노스카나인 트러블 모공탄력 크림 45ml 기획(+15ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021028803ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[단독기획/PDRN] 파티온 노스카나인 트러블 모공탄력 크림 45ml 기획(+15ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021028805ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[단독기획/PDRN] 파티온 노스카나인 트러블 모공탄력 크림 45ml 기획(+15ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021028807ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[단독기획/PDRN] 파티온 노스카나인 트러블 모공탄력 크림 45ml 기획(+15ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[단독기획/PDRN] 파티온 노스카나인 트러블 모공탄력 크림 45ml 기획(+15ml)';


-- ================================

-- 상품: [온라인단독] 아이소이 모이스춰 닥터 장수진 수분크림 70ml+15ml 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[온라인단독] 아이소이 모이스춰 닥터 장수진 수분크림 70ml+15ml 기획',
 '[온라인단독] 아이소이 모이스춰 닥터 장수진 수분크림 70ml+15ml 기획',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이소이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[온라인단독] 아이소이 모이스춰 닥터 장수진 수분크림 70ml+15ml 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(36000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[온라인단독] 아이소이 모이스춰 닥터 장수진 수분크림 70ml+15ml 기획'), NOW(), NOW()),
(27000, 'SALE', (SELECT id FROM product WHERE name = '[온라인단독] 아이소이 모이스춰 닥터 장수진 수분크림 70ml+15ml 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017427513ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[온라인단독] 아이소이 모이스춰 닥터 장수진 수분크림 70ml+15ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017427509ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[온라인단독] 아이소이 모이스춰 닥터 장수진 수분크림 70ml+15ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017427508ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[온라인단독] 아이소이 모이스춰 닥터 장수진 수분크림 70ml+15ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017427504ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[온라인단독] 아이소이 모이스춰 닥터 장수진 수분크림 70ml+15ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017427512ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[온라인단독] 아이소이 모이스춰 닥터 장수진 수분크림 70ml+15ml 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[온라인단독] 아이소이 모이스춰 닥터 장수진 수분크림 70ml+15ml 기획';


-- ================================

-- 상품: [데이PICK/레티날0.1%] 닥터디퍼런트 비타리프트 에이 포르테 20g 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[데이PICK/레티날0.1%] 닥터디퍼런트 비타리프트 에이 포르테 20g 기획',
 '[데이PICK/레티날0.1%] 닥터디퍼런트 비타리프트 에이 포르테 20g 기획',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터디퍼런트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('비타리프트A 포르테 증정 기획', 52000, (SELECT id FROM product WHERE name = '[데이PICK/레티날0.1%] 닥터디퍼런트 비타리프트 에이 포르테 20g 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(52000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[데이PICK/레티날0.1%] 닥터디퍼런트 비타리프트 에이 포르테 20g 기획'), NOW(), NOW()),
(52000, 'SALE', (SELECT id FROM product WHERE name = '[데이PICK/레티날0.1%] 닥터디퍼런트 비타리프트 에이 포르테 20g 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020035617ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[데이PICK/레티날0.1%] 닥터디퍼런트 비타리프트 에이 포르테 20g 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020035615ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[데이PICK/레티날0.1%] 닥터디퍼런트 비타리프트 에이 포르테 20g 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020035616ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[데이PICK/레티날0.1%] 닥터디퍼런트 비타리프트 에이 포르테 20g 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020035611ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[데이PICK/레티날0.1%] 닥터디퍼런트 비타리프트 에이 포르테 20g 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020035612ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[데이PICK/레티날0.1%] 닥터디퍼런트 비타리프트 에이 포르테 20g 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[데이PICK/레티날0.1%] 닥터디퍼런트 비타리프트 에이 포르테 20g 기획';


-- ================================

-- 상품: [자극진정] 더랩바이블랑두 그린 플라보노이드 진정 크림 50ml+30ml 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[자극진정] 더랩바이블랑두 그린 플라보노이드 진정 크림 50ml+30ml 기획',
 '[자극진정] 더랩바이블랑두 그린 플라보노이드 진정 크림 50ml+30ml 기획',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더랩바이블랑두'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[자극진정] 더랩바이블랑두 그린 플라보노이드 진정 크림 50ml+30ml 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[자극진정] 더랩바이블랑두 그린 플라보노이드 진정 크림 50ml+30ml 기획'), NOW(), NOW()),
(25000, 'SALE', (SELECT id FROM product WHERE name = '[자극진정] 더랩바이블랑두 그린 플라보노이드 진정 크림 50ml+30ml 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017915416ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[자극진정] 더랩바이블랑두 그린 플라보노이드 진정 크림 50ml+30ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017915421ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[자극진정] 더랩바이블랑두 그린 플라보노이드 진정 크림 50ml+30ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017915420ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[자극진정] 더랩바이블랑두 그린 플라보노이드 진정 크림 50ml+30ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017915419ko.png?l=ko', 4, (SELECT id FROM product WHERE name = '[자극진정] 더랩바이블랑두 그린 플라보노이드 진정 크림 50ml+30ml 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[자극진정] 더랩바이블랑두 그린 플라보노이드 진정 크림 50ml+30ml 기획';


-- ================================

-- 상품: 클레어스 미드나잇 블루 카밍 크림 60g...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('클레어스 미드나잇 블루 카밍 크림 60g',
 '클레어스 미드나잇 블루 카밍 크림 60g',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '디어클레어스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '클레어스 미드나잇 블루 카밍 크림 60g'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29500, 'ORIGINAL', (SELECT id FROM product WHERE name = '클레어스 미드나잇 블루 카밍 크림 60g'), NOW(), NOW()),
(24900, 'SALE', (SELECT id FROM product WHERE name = '클레어스 미드나잇 블루 카밍 크림 60g'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020960809ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '클레어스 미드나잇 블루 카밍 크림 60g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020960802ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '클레어스 미드나잇 블루 카밍 크림 60g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020960803ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '클레어스 미드나잇 블루 카밍 크림 60g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020960804ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '클레어스 미드나잇 블루 카밍 크림 60g'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '클레어스 미드나잇 블루 카밍 크림 60g';


-- ================================

-- 상품: [리프팅] 아벤느 탄력 액티브 HAB3 안티에이징 크림 50ml 기획 (+리필 50ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[리프팅] 아벤느 탄력 액티브 HAB3 안티에이징 크림 50ml 기획 (+리필 50ml)',
 '[리프팅] 아벤느 탄력 액티브 HAB3 안티에이징 크림 50ml 기획 (+리필 50ml)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아벤느'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[리프팅] 아벤느 탄력 액티브 HAB3 안티에이징 크림 50ml 기획 (+리필 50ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(77000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[리프팅] 아벤느 탄력 액티브 HAB3 안티에이징 크림 50ml 기획 (+리필 50ml)'), NOW(), NOW()),
(49900, 'SALE', (SELECT id FROM product WHERE name = '[리프팅] 아벤느 탄력 액티브 HAB3 안티에이징 크림 50ml 기획 (+리필 50ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022484206ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[리프팅] 아벤느 탄력 액티브 HAB3 안티에이징 크림 50ml 기획 (+리필 50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022484212ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[리프팅] 아벤느 탄력 액티브 HAB3 안티에이징 크림 50ml 기획 (+리필 50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022484211ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[리프팅] 아벤느 탄력 액티브 HAB3 안티에이징 크림 50ml 기획 (+리필 50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022484210ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[리프팅] 아벤느 탄력 액티브 HAB3 안티에이징 크림 50ml 기획 (+리필 50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022484209ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[리프팅] 아벤느 탄력 액티브 HAB3 안티에이징 크림 50ml 기획 (+리필 50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022484207ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[리프팅] 아벤느 탄력 액티브 HAB3 안티에이징 크림 50ml 기획 (+리필 50ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[리프팅] 아벤느 탄력 액티브 HAB3 안티에이징 크림 50ml 기획 (+리필 50ml)';


-- ================================

-- 상품: 제로이드 더마뉴얼 리페어 크림 15ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('제로이드 더마뉴얼 리페어 크림 15ml',
 '제로이드 더마뉴얼 리페어 크림 15ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '제로이드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '제로이드 더마뉴얼 리페어 크림 15ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(15000, 'ORIGINAL', (SELECT id FROM product WHERE name = '제로이드 더마뉴얼 리페어 크림 15ml'), NOW(), NOW()),
(15000, 'SALE', (SELECT id FROM product WHERE name = '제로이드 더마뉴얼 리페어 크림 15ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020990602ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '제로이드 더마뉴얼 리페어 크림 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020990601ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '제로이드 더마뉴얼 리페어 크림 15ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '제로이드 더마뉴얼 리페어 크림 15ml';


-- ================================

-- 상품: [화잘먹크림] 클리어디어 미나리 딥 쿨 수딩 크림 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[화잘먹크림] 클리어디어 미나리 딥 쿨 수딩 크림 30ml',
 '[화잘먹크림] 클리어디어 미나리 딥 쿨 수딩 크림 30ml',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '클리어디어'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[화잘먹크림] 클리어디어 미나리 딥 쿨 수딩 크림 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[화잘먹크림] 클리어디어 미나리 딥 쿨 수딩 크림 30ml'), NOW(), NOW()),
(23200, 'SALE', (SELECT id FROM product WHERE name = '[화잘먹크림] 클리어디어 미나리 딥 쿨 수딩 크림 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020988907ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[화잘먹크림] 클리어디어 미나리 딥 쿨 수딩 크림 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020988901ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[화잘먹크림] 클리어디어 미나리 딥 쿨 수딩 크림 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[화잘먹크림] 클리어디어 미나리 딥 쿨 수딩 크림 30ml';


-- ================================

-- 상품: [장벽탄력] 지피덤 셀트리온 EGF 스킨 베리어 인텐시브 크림 80ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[장벽탄력] 지피덤 셀트리온 EGF 스킨 베리어 인텐시브 크림 80ml',
 '[장벽탄력] 지피덤 셀트리온 EGF 스킨 베리어 인텐시브 크림 80ml',
 5.0,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '지피덤'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[장벽탄력] 지피덤 셀트리온 EGF 스킨 베리어 인텐시브 크림 80ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[장벽탄력] 지피덤 셀트리온 EGF 스킨 베리어 인텐시브 크림 80ml'), NOW(), NOW()),
(23040, 'SALE', (SELECT id FROM product WHERE name = '[장벽탄력] 지피덤 셀트리온 EGF 스킨 베리어 인텐시브 크림 80ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022951308ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[장벽탄력] 지피덤 셀트리온 EGF 스킨 베리어 인텐시브 크림 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022951303ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[장벽탄력] 지피덤 셀트리온 EGF 스킨 베리어 인텐시브 크림 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022951304ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[장벽탄력] 지피덤 셀트리온 EGF 스킨 베리어 인텐시브 크림 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022951305ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[장벽탄력] 지피덤 셀트리온 EGF 스킨 베리어 인텐시브 크림 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022951306ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[장벽탄력] 지피덤 셀트리온 EGF 스킨 베리어 인텐시브 크림 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022951307ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[장벽탄력] 지피덤 셀트리온 EGF 스킨 베리어 인텐시브 크림 80ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[장벽탄력] 지피덤 셀트리온 EGF 스킨 베리어 인텐시브 크림 80ml';


-- ================================

-- 상품: [1등수분밀착크림/민감피부개선] 셀퓨전씨 약산성 패리어 수분 크림 80ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[1등수분밀착크림/민감피부개선] 셀퓨전씨 약산성 패리어 수분 크림 80ml',
 '[1등수분밀착크림/민감피부개선] 셀퓨전씨 약산성 패리어 수분 크림 80ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '셀퓨전씨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[1등수분밀착크림/민감피부개선] 셀퓨전씨 약산성 패리어 수분 크림 80ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(36000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1등수분밀착크림/민감피부개선] 셀퓨전씨 약산성 패리어 수분 크림 80ml'), NOW(), NOW()),
(22900, 'SALE', (SELECT id FROM product WHERE name = '[1등수분밀착크림/민감피부개선] 셀퓨전씨 약산성 패리어 수분 크림 80ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016241503ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[1등수분밀착크림/민감피부개선] 셀퓨전씨 약산성 패리어 수분 크림 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016241506ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[1등수분밀착크림/민감피부개선] 셀퓨전씨 약산성 패리어 수분 크림 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016241504ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[1등수분밀착크림/민감피부개선] 셀퓨전씨 약산성 패리어 수분 크림 80ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[1등수분밀착크림/민감피부개선] 셀퓨전씨 약산성 패리어 수분 크림 80ml';


-- ================================

-- 상품: 가히 멀티밤 9g...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('가히 멀티밤 9g',
 '가히 멀티밤 9g',
 4.6,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '가히'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '가히 멀티밤 9g'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(37800, 'ORIGINAL', (SELECT id FROM product WHERE name = '가히 멀티밤 9g'), NOW(), NOW()),
(22600, 'SALE', (SELECT id FROM product WHERE name = '가히 멀티밤 9g'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015499133ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '가히 멀티밤 9g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015499134ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '가히 멀티밤 9g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015499132ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '가히 멀티밤 9g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015499131ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '가히 멀티밤 9g'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '가히 멀티밤 9g';


-- ================================

-- 상품: [미백/잡티] 라운드랩 비타 나이아신 잡티크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[미백/잡티] 라운드랩 비타 나이아신 잡티크림 50ml',
 '[미백/잡티] 라운드랩 비타 나이아신 잡티크림 50ml',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라운드랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[미백/잡티] 라운드랩 비타 나이아신 잡티크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[미백/잡티] 라운드랩 비타 나이아신 잡티크림 50ml'), NOW(), NOW()),
(22400, 'SALE', (SELECT id FROM product WHERE name = '[미백/잡티] 라운드랩 비타 나이아신 잡티크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020417102ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[미백/잡티] 라운드랩 비타 나이아신 잡티크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020417104ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[미백/잡티] 라운드랩 비타 나이아신 잡티크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020417103ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[미백/잡티] 라운드랩 비타 나이아신 잡티크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[미백/잡티] 라운드랩 비타 나이아신 잡티크림 50ml';


-- ================================

-- 상품: 코스알엑스 더 세라마이드 스킨 베리어 모이스처라이저 80ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('코스알엑스 더 세라마이드 스킨 베리어 모이스처라이저 80ml',
 '코스알엑스 더 세라마이드 스킨 베리어 모이스처라이저 80ml',
 5.0,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '코스알엑스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '코스알엑스 더 세라마이드 스킨 베리어 모이스처라이저 80ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '코스알엑스 더 세라마이드 스킨 베리어 모이스처라이저 80ml'), NOW(), NOW()),
(21380, 'SALE', (SELECT id FROM product WHERE name = '코스알엑스 더 세라마이드 스킨 베리어 모이스처라이저 80ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022512710ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '코스알엑스 더 세라마이드 스킨 베리어 모이스처라이저 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022512706ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '코스알엑스 더 세라마이드 스킨 베리어 모이스처라이저 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022512707ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '코스알엑스 더 세라마이드 스킨 베리어 모이스처라이저 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022512708ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '코스알엑스 더 세라마이드 스킨 베리어 모이스처라이저 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022512709ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '코스알엑스 더 세라마이드 스킨 베리어 모이스처라이저 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022512703ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '코스알엑스 더 세라마이드 스킨 베리어 모이스처라이저 80ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '코스알엑스 더 세라마이드 스킨 베리어 모이스처라이저 80ml';


-- ================================

-- 상품: 더마라인 디렉소 바이오 액티빙 PDRN 크림 100g...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('더마라인 디렉소 바이오 액티빙 PDRN 크림 100g',
 '더마라인 디렉소 바이오 액티빙 PDRN 크림 100g',
 5.0,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더마라인'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '더마라인 디렉소 바이오 액티빙 PDRN 크림 100g'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(63000, 'ORIGINAL', (SELECT id FROM product WHERE name = '더마라인 디렉소 바이오 액티빙 PDRN 크림 100g'), NOW(), NOW()),
(44100, 'SALE', (SELECT id FROM product WHERE name = '더마라인 디렉소 바이오 액티빙 PDRN 크림 100g'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021338301ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '더마라인 디렉소 바이오 액티빙 PDRN 크림 100g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021338302ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '더마라인 디렉소 바이오 액티빙 PDRN 크림 100g'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '더마라인 디렉소 바이오 액티빙 PDRN 크림 100g';


-- ================================

-- 상품: 잇츠스킨 시크릿 솔루션 웨딩 드레스 퓨어 크림 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('잇츠스킨 시크릿 솔루션 웨딩 드레스 퓨어 크림 100ml',
 '잇츠스킨 시크릿 솔루션 웨딩 드레스 퓨어 크림 100ml',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '잇츠스킨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '잇츠스킨 시크릿 솔루션 웨딩 드레스 퓨어 크림 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(12000, 'ORIGINAL', (SELECT id FROM product WHERE name = '잇츠스킨 시크릿 솔루션 웨딩 드레스 퓨어 크림 100ml'), NOW(), NOW()),
(9600, 'SALE', (SELECT id FROM product WHERE name = '잇츠스킨 시크릿 솔루션 웨딩 드레스 퓨어 크림 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022839005ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '잇츠스킨 시크릿 솔루션 웨딩 드레스 퓨어 크림 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022839006ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '잇츠스킨 시크릿 솔루션 웨딩 드레스 퓨어 크림 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022839007ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '잇츠스킨 시크릿 솔루션 웨딩 드레스 퓨어 크림 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022839001ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '잇츠스킨 시크릿 솔루션 웨딩 드레스 퓨어 크림 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '잇츠스킨 시크릿 솔루션 웨딩 드레스 퓨어 크림 100ml';


-- ================================

-- 상품: 프리메라 오가니언스 씨드 펩타이드 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('프리메라 오가니언스 씨드 펩타이드 크림 50ml',
 '프리메라 오가니언스 씨드 펩타이드 크림 50ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '프리메라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('크림 단품', 43000, (SELECT id FROM product WHERE name = '프리메라 오가니언스 씨드 펩타이드 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(43000, 'ORIGINAL', (SELECT id FROM product WHERE name = '프리메라 오가니언스 씨드 펩타이드 크림 50ml'), NOW(), NOW()),
(43000, 'SALE', (SELECT id FROM product WHERE name = '프리메라 오가니언스 씨드 펩타이드 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018897903ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '프리메라 오가니언스 씨드 펩타이드 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018897908ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '프리메라 오가니언스 씨드 펩타이드 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018897901ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '프리메라 오가니언스 씨드 펩타이드 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '프리메라 오가니언스 씨드 펩타이드 크림 50ml';


-- ================================

-- 상품: [1+1/모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 더블기획(60ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[1+1/모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 더블기획(60ml+60ml)',
 '[1+1/모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 더블기획(60ml+60ml)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에스네이처'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[1+1/모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 더블기획(60ml+60ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(43000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1+1/모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 더블기획(60ml+60ml)'), NOW(), NOW()),
(43000, 'SALE', (SELECT id FROM product WHERE name = '[1+1/모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 더블기획(60ml+60ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019278263ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[1+1/모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 더블기획(60ml+60ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019278259ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[1+1/모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 더블기획(60ml+60ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019278260ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[1+1/모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 더블기획(60ml+60ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019278261ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[1+1/모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 더블기획(60ml+60ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[1+1/모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 더블기획(60ml+60ml)';


-- ================================

-- 상품: [증정기획] 닥터지 로얄 블랙스네일 크림세트 (50ml+15ml 증정)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[증정기획] 닥터지 로얄 블랙스네일 크림세트 (50ml+15ml 증정)',
 '[증정기획] 닥터지 로얄 블랙스네일 크림세트 (50ml+15ml 증정)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터지'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[증정기획] 닥터지 로얄 블랙스네일 크림세트 (50ml+15ml 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(42000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[증정기획] 닥터지 로얄 블랙스네일 크림세트 (50ml+15ml 증정)'), NOW(), NOW()),
(42000, 'SALE', (SELECT id FROM product WHERE name = '[증정기획] 닥터지 로얄 블랙스네일 크림세트 (50ml+15ml 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016365111ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[증정기획] 닥터지 로얄 블랙스네일 크림세트 (50ml+15ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016365112ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[증정기획] 닥터지 로얄 블랙스네일 크림세트 (50ml+15ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016365110ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[증정기획] 닥터지 로얄 블랙스네일 크림세트 (50ml+15ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016365113ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[증정기획] 닥터지 로얄 블랙스네일 크림세트 (50ml+15ml 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[증정기획] 닥터지 로얄 블랙스네일 크림세트 (50ml+15ml 증정)';


-- ================================

-- 상품: 크리니크 모이스춰 써지 시베리아 시카크림 50ml 기획/단품...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('크리니크 모이스춰 써지 시베리아 시카크림 50ml 기획/단품',
 '크리니크 모이스춰 써지 시베리아 시카크림 50ml 기획/단품',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '크리니크'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '크리니크 모이스춰 써지 시베리아 시카크림 50ml 기획/단품'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(49000, 'ORIGINAL', (SELECT id FROM product WHERE name = '크리니크 모이스춰 써지 시베리아 시카크림 50ml 기획/단품'), NOW(), NOW()),
(41650, 'SALE', (SELECT id FROM product WHERE name = '크리니크 모이스춰 써지 시베리아 시카크림 50ml 기획/단품'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014566214ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '크리니크 모이스춰 써지 시베리아 시카크림 50ml 기획/단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014566211ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '크리니크 모이스춰 써지 시베리아 시카크림 50ml 기획/단품'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '크리니크 모이스춰 써지 시베리아 시카크림 50ml 기획/단품';


-- ================================

-- 상품: 크리니크 모이스춰 써지 쏙보습크림 50ml (+15ml*2ea)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('크리니크 모이스춰 써지 쏙보습크림 50ml (+15ml*2ea)',
 '크리니크 모이스춰 써지 쏙보습크림 50ml (+15ml*2ea)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '크리니크'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '크리니크 모이스춰 써지 쏙보습크림 50ml (+15ml*2ea)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(49000, 'ORIGINAL', (SELECT id FROM product WHERE name = '크리니크 모이스춰 써지 쏙보습크림 50ml (+15ml*2ea)'), NOW(), NOW()),
(41650, 'SALE', (SELECT id FROM product WHERE name = '크리니크 모이스춰 써지 쏙보습크림 50ml (+15ml*2ea)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022949807ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '크리니크 모이스춰 써지 쏙보습크림 50ml (+15ml*2ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022949808ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '크리니크 모이스춰 써지 쏙보습크림 50ml (+15ml*2ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022949802ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '크리니크 모이스춰 써지 쏙보습크림 50ml (+15ml*2ea)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '크리니크 모이스춰 써지 쏙보습크림 50ml (+15ml*2ea)';


-- ================================

-- 상품: 코스알엑스 퓨어 핏 시카 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('코스알엑스 퓨어 핏 시카 크림 50ml',
 '코스알엑스 퓨어 핏 시카 크림 50ml',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '코스알엑스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '코스알엑스 퓨어 핏 시카 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '코스알엑스 퓨어 핏 시카 크림 50ml'), NOW(), NOW()),
(20000, 'SALE', (SELECT id FROM product WHERE name = '코스알엑스 퓨어 핏 시카 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013749506ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '코스알엑스 퓨어 핏 시카 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013749507ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '코스알엑스 퓨어 핏 시카 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '코스알엑스 퓨어 핏 시카 크림 50ml';


-- ================================

-- 상품: [9월 올영픽] 키엘 울트라 훼이셜 크림 4.0세대 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽] 키엘 울트라 훼이셜 크림 4.0세대 50ml',
 '[9월 올영픽] 키엘 울트라 훼이셜 크림 4.0세대 50ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '키엘'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('50ml 기획세트', 41190, (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 울트라 훼이셜 크림 4.0세대 50ml'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('50ml', 41190, (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 울트라 훼이셜 크림 4.0세대 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(49000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 울트라 훼이셜 크림 4.0세대 50ml'), NOW(), NOW()),
(41190, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 울트라 훼이셜 크림 4.0세대 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021416836ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 울트라 훼이셜 크림 4.0세대 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021416834ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 울트라 훼이셜 크림 4.0세대 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021416829ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 울트라 훼이셜 크림 4.0세대 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021416818ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 울트라 훼이셜 크림 4.0세대 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021416804ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 울트라 훼이셜 크림 4.0세대 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[9월 올영픽] 키엘 울트라 훼이셜 크림 4.0세대 50ml';


-- ================================

-- 상품: [1+1] 프리메라 알파인 베리 워터리 크림 리필기획/단품...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[1+1] 프리메라 알파인 베리 워터리 크림 리필기획/단품',
 '[1+1] 프리메라 알파인 베리 워터리 크림 리필기획/단품',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '프리메라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('50ml+50ml(리필)', 41000, (SELECT id FROM product WHERE name = '[1+1] 프리메라 알파인 베리 워터리 크림 리필기획/단품'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('50ml(단품)', 41000, (SELECT id FROM product WHERE name = '[1+1] 프리메라 알파인 베리 워터리 크림 리필기획/단품'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(41000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1+1] 프리메라 알파인 베리 워터리 크림 리필기획/단품'), NOW(), NOW()),
(41000, 'SALE', (SELECT id FROM product WHERE name = '[1+1] 프리메라 알파인 베리 워터리 크림 리필기획/단품'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018279526ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[1+1] 프리메라 알파인 베리 워터리 크림 리필기획/단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018279506ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[1+1] 프리메라 알파인 베리 워터리 크림 리필기획/단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018279507ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[1+1] 프리메라 알파인 베리 워터리 크림 리필기획/단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018279508ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[1+1] 프리메라 알파인 베리 워터리 크림 리필기획/단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018279509ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[1+1] 프리메라 알파인 베리 워터리 크림 리필기획/단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018279510ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[1+1] 프리메라 알파인 베리 워터리 크림 리필기획/단품'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[1+1] 프리메라 알파인 베리 워터리 크림 리필기획/단품';


-- ================================

-- 상품: [손상/장벽 리페어] 아벤느 시칼파트 플러스 SOS 리페어 크림 100ml 2입 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[손상/장벽 리페어] 아벤느 시칼파트 플러스 SOS 리페어 크림 100ml 2입 기획',
 '[손상/장벽 리페어] 아벤느 시칼파트 플러스 SOS 리페어 크림 100ml 2입 기획',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아벤느'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[손상/장벽 리페어] 아벤느 시칼파트 플러스 SOS 리페어 크림 100ml 2입 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(45000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[손상/장벽 리페어] 아벤느 시칼파트 플러스 SOS 리페어 크림 100ml 2입 기획'), NOW(), NOW()),
(39900, 'SALE', (SELECT id FROM product WHERE name = '[손상/장벽 리페어] 아벤느 시칼파트 플러스 SOS 리페어 크림 100ml 2입 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018419815ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[손상/장벽 리페어] 아벤느 시칼파트 플러스 SOS 리페어 크림 100ml 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018419820ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[손상/장벽 리페어] 아벤느 시칼파트 플러스 SOS 리페어 크림 100ml 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018419819ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[손상/장벽 리페어] 아벤느 시칼파트 플러스 SOS 리페어 크림 100ml 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018419818ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[손상/장벽 리페어] 아벤느 시칼파트 플러스 SOS 리페어 크림 100ml 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018419817ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[손상/장벽 리페어] 아벤느 시칼파트 플러스 SOS 리페어 크림 100ml 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018419816ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[손상/장벽 리페어] 아벤느 시칼파트 플러스 SOS 리페어 크림 100ml 2입 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[손상/장벽 리페어] 아벤느 시칼파트 플러스 SOS 리페어 크림 100ml 2입 기획';


-- ================================

-- 상품: [증정기획] 헤브블루 살몬 PDRN 센텔라 크림 100ml 기획 (+연어 토너 25ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[증정기획] 헤브블루 살몬 PDRN 센텔라 크림 100ml 기획 (+연어 토너 25ml)',
 '[증정기획] 헤브블루 살몬 PDRN 센텔라 크림 100ml 기획 (+연어 토너 25ml)',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '헤브블루'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[증정기획] 헤브블루 살몬 PDRN 센텔라 크림 100ml 기획 (+연어 토너 25ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[증정기획] 헤브블루 살몬 PDRN 센텔라 크림 100ml 기획 (+연어 토너 25ml)'), NOW(), NOW()),
(39900, 'SALE', (SELECT id FROM product WHERE name = '[증정기획] 헤브블루 살몬 PDRN 센텔라 크림 100ml 기획 (+연어 토너 25ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021041716ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[증정기획] 헤브블루 살몬 PDRN 센텔라 크림 100ml 기획 (+연어 토너 25ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021041714ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[증정기획] 헤브블루 살몬 PDRN 센텔라 크림 100ml 기획 (+연어 토너 25ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021041711ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[증정기획] 헤브블루 살몬 PDRN 센텔라 크림 100ml 기획 (+연어 토너 25ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[증정기획] 헤브블루 살몬 PDRN 센텔라 크림 100ml 기획 (+연어 토너 25ml)';


-- ================================

-- 상품: [리프팅] 아벤느 HAB3 탄력 액티브 안티에이징 크림 50ml 기획 (+HAB3 안티에이...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[리프팅] 아벤느 HAB3 탄력 액티브 안티에이징 크림 50ml 기획 (+HAB3 안티에이징 세럼 10ml)',
 '[리프팅] 아벤느 HAB3 탄력 액티브 안티에이징 크림 50ml 기획 (+HAB3 안티에이징 세럼 10ml)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아벤느'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[리프팅] 아벤느 HAB3 탄력 액티브 안티에이징 크림 50ml 기획 (+HAB3 안티에이징 세럼 10ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(52000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[리프팅] 아벤느 HAB3 탄력 액티브 안티에이징 크림 50ml 기획 (+HAB3 안티에이징 세럼 10ml)'), NOW(), NOW()),
(39900, 'SALE', (SELECT id FROM product WHERE name = '[리프팅] 아벤느 HAB3 탄력 액티브 안티에이징 크림 50ml 기획 (+HAB3 안티에이징 세럼 10ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022166503ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[리프팅] 아벤느 HAB3 탄력 액티브 안티에이징 크림 50ml 기획 (+HAB3 안티에이징 세럼 10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022166508ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[리프팅] 아벤느 HAB3 탄력 액티브 안티에이징 크림 50ml 기획 (+HAB3 안티에이징 세럼 10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022166507ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[리프팅] 아벤느 HAB3 탄력 액티브 안티에이징 크림 50ml 기획 (+HAB3 안티에이징 세럼 10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022166506ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[리프팅] 아벤느 HAB3 탄력 액티브 안티에이징 크림 50ml 기획 (+HAB3 안티에이징 세럼 10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022166505ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[리프팅] 아벤느 HAB3 탄력 액티브 안티에이징 크림 50ml 기획 (+HAB3 안티에이징 세럼 10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022166504ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[리프팅] 아벤느 HAB3 탄력 액티브 안티에이징 크림 50ml 기획 (+HAB3 안티에이징 세럼 10ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[리프팅] 아벤느 HAB3 탄력 액티브 안티에이징 크림 50ml 기획 (+HAB3 안티에이징 세럼 10ml)';


-- ================================

-- 상품: 아벤느 비타민 액티브 VACg 크림 50ml 기획 (+비타민 Cg 액티브 세럼 10ml) ...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아벤느 비타민 액티브 VACg 크림 50ml 기획 (+비타민 Cg 액티브 세럼 10ml) *광채 *항산화',
 '아벤느 비타민 액티브 VACg 크림 50ml 기획 (+비타민 Cg 액티브 세럼 10ml) *광채 *항산화',
 4.6,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아벤느'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아벤느 비타민 액티브 VACg 크림 50ml 기획 (+비타민 Cg 액티브 세럼 10ml) *광채 *항산화'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(52000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아벤느 비타민 액티브 VACg 크림 50ml 기획 (+비타민 Cg 액티브 세럼 10ml) *광채 *항산화'), NOW(), NOW()),
(39900, 'SALE', (SELECT id FROM product WHERE name = '아벤느 비타민 액티브 VACg 크림 50ml 기획 (+비타민 Cg 액티브 세럼 10ml) *광채 *항산화'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022517901ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아벤느 비타민 액티브 VACg 크림 50ml 기획 (+비타민 Cg 액티브 세럼 10ml) *광채 *항산화'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022517910ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아벤느 비타민 액티브 VACg 크림 50ml 기획 (+비타민 Cg 액티브 세럼 10ml) *광채 *항산화'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022517909ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아벤느 비타민 액티브 VACg 크림 50ml 기획 (+비타민 Cg 액티브 세럼 10ml) *광채 *항산화'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022517908ko.png?l=ko', 4, (SELECT id FROM product WHERE name = '아벤느 비타민 액티브 VACg 크림 50ml 기획 (+비타민 Cg 액티브 세럼 10ml) *광채 *항산화'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022517907ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '아벤느 비타민 액티브 VACg 크림 50ml 기획 (+비타민 Cg 액티브 세럼 10ml) *광채 *항산화'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022517905ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '아벤느 비타민 액티브 VACg 크림 50ml 기획 (+비타민 Cg 액티브 세럼 10ml) *광채 *항산화'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아벤느 비타민 액티브 VACg 크림 50ml 기획 (+비타민 Cg 액티브 세럼 10ml) *광채 *항산화';


-- ================================

-- 상품: [NEW] 피지오겔 DMT 스트레치 마크 튼살 크림 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW] 피지오겔 DMT 스트레치 마크 튼살 크림 150ml',
 '[NEW] 피지오겔 DMT 스트레치 마크 튼살 크림 150ml',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '피지오겔'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW] 피지오겔 DMT 스트레치 마크 튼살 크림 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(49500, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW] 피지오겔 DMT 스트레치 마크 튼살 크림 150ml'), NOW(), NOW()),
(39500, 'SALE', (SELECT id FROM product WHERE name = '[NEW] 피지오겔 DMT 스트레치 마크 튼살 크림 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020503705ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW] 피지오겔 DMT 스트레치 마크 튼살 크림 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020503704ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW] 피지오겔 DMT 스트레치 마크 튼살 크림 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020503703ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW] 피지오겔 DMT 스트레치 마크 튼살 크림 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020503702ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[NEW] 피지오겔 DMT 스트레치 마크 튼살 크림 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020503701ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[NEW] 피지오겔 DMT 스트레치 마크 튼살 크림 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW] 피지오겔 DMT 스트레치 마크 튼살 크림 150ml';


-- ================================

-- 상품: [수부지트러블엔] 한율 쑥시카 수분크림 기획 (55ml+25ml+시트팩1매)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수부지트러블엔] 한율 쑥시카 수분크림 기획 (55ml+25ml+시트팩1매)',
 '[수부지트러블엔] 한율 쑥시카 수분크림 기획 (55ml+25ml+시트팩1매)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '한율'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('한율 쑥시카 수분크림 55ml 기획', 38000, (SELECT id FROM product WHERE name = '[수부지트러블엔] 한율 쑥시카 수분크림 기획 (55ml+25ml+시트팩1매)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수부지트러블엔] 한율 쑥시카 수분크림 기획 (55ml+25ml+시트팩1매)'), NOW(), NOW()),
(38000, 'SALE', (SELECT id FROM product WHERE name = '[수부지트러블엔] 한율 쑥시카 수분크림 기획 (55ml+25ml+시트팩1매)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019082426ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수부지트러블엔] 한율 쑥시카 수분크림 기획 (55ml+25ml+시트팩1매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019082425ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수부지트러블엔] 한율 쑥시카 수분크림 기획 (55ml+25ml+시트팩1매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019082405ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수부지트러블엔] 한율 쑥시카 수분크림 기획 (55ml+25ml+시트팩1매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019082404ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[수부지트러블엔] 한율 쑥시카 수분크림 기획 (55ml+25ml+시트팩1매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019082403ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[수부지트러블엔] 한율 쑥시카 수분크림 기획 (55ml+25ml+시트팩1매)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수부지트러블엔] 한율 쑥시카 수분크림 기획 (55ml+25ml+시트팩1매)';


-- ================================

-- 상품: [탄력광채]비원츠 시카콜라겐 리프팅 크림 50ml 기획(+라비토끼 스마트톡)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[탄력광채]비원츠 시카콜라겐 리프팅 크림 50ml 기획(+라비토끼 스마트톡)',
 '[탄력광채]비원츠 시카콜라겐 리프팅 크림 50ml 기획(+라비토끼 스마트톡)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비원츠'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[단품] 리프팅크림50ml', 38000, (SELECT id FROM product WHERE name = '[탄력광채]비원츠 시카콜라겐 리프팅 크림 50ml 기획(+라비토끼 스마트톡)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[기획] 리프팅크림50ml SET', 0, (SELECT id FROM product WHERE name = '[탄력광채]비원츠 시카콜라겐 리프팅 크림 50ml 기획(+라비토끼 스마트톡)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[탄력광채]비원츠 시카콜라겐 리프팅 크림 50ml 기획(+라비토끼 스마트톡)'), NOW(), NOW()),
(38000, 'SALE', (SELECT id FROM product WHERE name = '[탄력광채]비원츠 시카콜라겐 리프팅 크림 50ml 기획(+라비토끼 스마트톡)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021242406ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[탄력광채]비원츠 시카콜라겐 리프팅 크림 50ml 기획(+라비토끼 스마트톡)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021242407ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[탄력광채]비원츠 시카콜라겐 리프팅 크림 50ml 기획(+라비토끼 스마트톡)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021242408ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[탄력광채]비원츠 시카콜라겐 리프팅 크림 50ml 기획(+라비토끼 스마트톡)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021242409ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[탄력광채]비원츠 시카콜라겐 리프팅 크림 50ml 기획(+라비토끼 스마트톡)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[탄력광채]비원츠 시카콜라겐 리프팅 크림 50ml 기획(+라비토끼 스마트톡)';


-- ================================

-- 상품: [보습크림/한정기획] 닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 크림 기획(50ml+...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[보습크림/한정기획] 닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 크림 기획(50ml+15ml*2)',
 '[보습크림/한정기획] 닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 크림 기획(50ml+15ml*2)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터자르트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[보습크림/한정기획] 닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 크림 기획(50ml+15ml*2)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(50000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[보습크림/한정기획] 닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 크림 기획(50ml+15ml*2)'), NOW(), NOW()),
(37500, 'SALE', (SELECT id FROM product WHERE name = '[보습크림/한정기획] 닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 크림 기획(50ml+15ml*2)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017779406ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[보습크림/한정기획] 닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 크림 기획(50ml+15ml*2)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017779405ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[보습크림/한정기획] 닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 크림 기획(50ml+15ml*2)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[보습크림/한정기획] 닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 크림 기획(50ml+15ml*2)';


-- ================================

-- 상품: [30ml+30ml+패드2매] 프리메라 나이아시카 수딩글로우 워터리 크림 기획/단품...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[30ml+30ml+패드2매] 프리메라 나이아시카 수딩글로우 워터리 크림 기획/단품',
 '[30ml+30ml+패드2매] 프리메라 나이아시카 수딩글로우 워터리 크림 기획/단품',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '프리메라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[30ml+30ml+패드2매] 프리메라 나이아시카 수딩글로우 워터리 크림 기획/단품'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(36900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[30ml+30ml+패드2매] 프리메라 나이아시카 수딩글로우 워터리 크림 기획/단품'), NOW(), NOW()),
(36900, 'SALE', (SELECT id FROM product WHERE name = '[30ml+30ml+패드2매] 프리메라 나이아시카 수딩글로우 워터리 크림 기획/단품'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021716709ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[30ml+30ml+패드2매] 프리메라 나이아시카 수딩글로우 워터리 크림 기획/단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021716703ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[30ml+30ml+패드2매] 프리메라 나이아시카 수딩글로우 워터리 크림 기획/단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021716704ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[30ml+30ml+패드2매] 프리메라 나이아시카 수딩글로우 워터리 크림 기획/단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021716708ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[30ml+30ml+패드2매] 프리메라 나이아시카 수딩글로우 워터리 크림 기획/단품'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[30ml+30ml+패드2매] 프리메라 나이아시카 수딩글로우 워터리 크림 기획/단품';


-- ================================

-- 상품: [리뉴얼] 구달 청귤 비타C 잡티케어 톤업 크림 50ml 기획 (+5ml + 세럼 5ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[리뉴얼] 구달 청귤 비타C 잡티케어 톤업 크림 50ml 기획 (+5ml + 세럼 5ml)',
 '[리뉴얼] 구달 청귤 비타C 잡티케어 톤업 크림 50ml 기획 (+5ml + 세럼 5ml)',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '구달'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[리뉴얼] 구달 청귤 비타C 잡티케어 톤업 크림 50ml 기획 (+5ml + 세럼 5ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(22000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[리뉴얼] 구달 청귤 비타C 잡티케어 톤업 크림 50ml 기획 (+5ml + 세럼 5ml)'), NOW(), NOW()),
(17600, 'SALE', (SELECT id FROM product WHERE name = '[리뉴얼] 구달 청귤 비타C 잡티케어 톤업 크림 50ml 기획 (+5ml + 세럼 5ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022978506ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[리뉴얼] 구달 청귤 비타C 잡티케어 톤업 크림 50ml 기획 (+5ml + 세럼 5ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022978507ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[리뉴얼] 구달 청귤 비타C 잡티케어 톤업 크림 50ml 기획 (+5ml + 세럼 5ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022978508ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[리뉴얼] 구달 청귤 비타C 잡티케어 톤업 크림 50ml 기획 (+5ml + 세럼 5ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022978505ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[리뉴얼] 구달 청귤 비타C 잡티케어 톤업 크림 50ml 기획 (+5ml + 세럼 5ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022978503ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[리뉴얼] 구달 청귤 비타C 잡티케어 톤업 크림 50ml 기획 (+5ml + 세럼 5ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[리뉴얼] 구달 청귤 비타C 잡티케어 톤업 크림 50ml 기획 (+5ml + 세럼 5ml)';


-- ================================

-- 상품: [화해1위/화잘먹모공크림] 오드로이 블랙체리 모공수축크림 로프디 100ml 더블기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[화해1위/화잘먹모공크림] 오드로이 블랙체리 모공수축크림 로프디 100ml 더블기획',
 '[화해1위/화잘먹모공크림] 오드로이 블랙체리 모공수축크림 로프디 100ml 더블기획',
 4.6,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '오드로이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[화해1위/화잘먹모공크림] 오드로이 블랙체리 모공수축크림 로프디 100ml 더블기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(56000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[화해1위/화잘먹모공크림] 오드로이 블랙체리 모공수축크림 로프디 100ml 더블기획'), NOW(), NOW()),
(36800, 'SALE', (SELECT id FROM product WHERE name = '[화해1위/화잘먹모공크림] 오드로이 블랙체리 모공수축크림 로프디 100ml 더블기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021328810ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[화해1위/화잘먹모공크림] 오드로이 블랙체리 모공수축크림 로프디 100ml 더블기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021328805ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[화해1위/화잘먹모공크림] 오드로이 블랙체리 모공수축크림 로프디 100ml 더블기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[화해1위/화잘먹모공크림] 오드로이 블랙체리 모공수축크림 로프디 100ml 더블기획';


-- ================================

-- 상품: [단독기획] 아이소이 모이스춰 닥터 장수진 수분크림 70ml 기획(+수분앰플 10ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[단독기획] 아이소이 모이스춰 닥터 장수진 수분크림 70ml 기획(+수분앰플 10ml)',
 '[단독기획] 아이소이 모이스춰 닥터 장수진 수분크림 70ml 기획(+수분앰플 10ml)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이소이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[단독기획] 아이소이 모이스춰 닥터 장수진 수분크림 70ml 기획(+수분앰플 10ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(36000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독기획] 아이소이 모이스춰 닥터 장수진 수분크림 70ml 기획(+수분앰플 10ml)'), NOW(), NOW()),
(36000, 'SALE', (SELECT id FROM product WHERE name = '[단독기획] 아이소이 모이스춰 닥터 장수진 수분크림 70ml 기획(+수분앰플 10ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018106208ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[단독기획] 아이소이 모이스춰 닥터 장수진 수분크림 70ml 기획(+수분앰플 10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018106211ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[단독기획] 아이소이 모이스춰 닥터 장수진 수분크림 70ml 기획(+수분앰플 10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018106210ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[단독기획] 아이소이 모이스춰 닥터 장수진 수분크림 70ml 기획(+수분앰플 10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018106215ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[단독기획] 아이소이 모이스춰 닥터 장수진 수분크림 70ml 기획(+수분앰플 10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018106214ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[단독기획] 아이소이 모이스춰 닥터 장수진 수분크림 70ml 기획(+수분앰플 10ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[단독기획] 아이소이 모이스춰 닥터 장수진 수분크림 70ml 기획(+수분앰플 10ml)';


-- ================================

-- 상품: [진정영양/장벽크림] 유리아쥬 제모스 페이스 2입 기획 (40ml+40ml+제모스토너 50...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[진정영양/장벽크림] 유리아쥬 제모스 페이스 2입 기획 (40ml+40ml+제모스토너 50ml 증정)',
 '[진정영양/장벽크림] 유리아쥬 제모스 페이스 2입 기획 (40ml+40ml+제모스토너 50ml 증정)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유리아쥬'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[진정영양/장벽크림] 유리아쥬 제모스 페이스 2입 기획 (40ml+40ml+제모스토너 50ml 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[진정영양/장벽크림] 유리아쥬 제모스 페이스 2입 기획 (40ml+40ml+제모스토너 50ml 증정)'), NOW(), NOW()),
(35100, 'SALE', (SELECT id FROM product WHERE name = '[진정영양/장벽크림] 유리아쥬 제모스 페이스 2입 기획 (40ml+40ml+제모스토너 50ml 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014536010ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[진정영양/장벽크림] 유리아쥬 제모스 페이스 2입 기획 (40ml+40ml+제모스토너 50ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014536011ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[진정영양/장벽크림] 유리아쥬 제모스 페이스 2입 기획 (40ml+40ml+제모스토너 50ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014536009ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[진정영양/장벽크림] 유리아쥬 제모스 페이스 2입 기획 (40ml+40ml+제모스토너 50ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014536008ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[진정영양/장벽크림] 유리아쥬 제모스 페이스 2입 기획 (40ml+40ml+제모스토너 50ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014536007ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[진정영양/장벽크림] 유리아쥬 제모스 페이스 2입 기획 (40ml+40ml+제모스토너 50ml 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[진정영양/장벽크림] 유리아쥬 제모스 페이스 2입 기획 (40ml+40ml+제모스토너 50ml 증정)';


-- ================================

-- 상품: 라로슈포제 에빠끌라 MAT 세보 컨트롤링 모이스춰라이저...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('라로슈포제 에빠끌라 MAT 세보 컨트롤링 모이스춰라이저',
 '라로슈포제 에빠끌라 MAT 세보 컨트롤링 모이스춰라이저',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라로슈포제'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '라로슈포제 에빠끌라 MAT 세보 컨트롤링 모이스춰라이저'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '라로슈포제 에빠끌라 MAT 세보 컨트롤링 모이스춰라이저'), NOW(), NOW()),
(35000, 'SALE', (SELECT id FROM product WHERE name = '라로슈포제 에빠끌라 MAT 세보 컨트롤링 모이스춰라이저'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001047108ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '라로슈포제 에빠끌라 MAT 세보 컨트롤링 모이스춰라이저'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001047107ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '라로슈포제 에빠끌라 MAT 세보 컨트롤링 모이스춰라이저'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '라로슈포제 에빠끌라 MAT 세보 컨트롤링 모이스춰라이저';


-- ================================

-- 상품: [24시간수분잠금] 아비브 수분초 히알루론 크림 하이드레이팅 팟 80ml 기획(+수분초 패...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[24시간수분잠금] 아비브 수분초 히알루론 크림 하이드레이팅 팟 80ml 기획(+수분초 패드 10매 증정)',
 '[24시간수분잠금] 아비브 수분초 히알루론 크림 하이드레이팅 팟 80ml 기획(+수분초 패드 10매 증정)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아비브'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[24시간수분잠금] 아비브 수분초 히알루론 크림 하이드레이팅 팟 80ml 기획(+수분초 패드 10매 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[24시간수분잠금] 아비브 수분초 히알루론 크림 하이드레이팅 팟 80ml 기획(+수분초 패드 10매 증정)'), NOW(), NOW()),
(35000, 'SALE', (SELECT id FROM product WHERE name = '[24시간수분잠금] 아비브 수분초 히알루론 크림 하이드레이팅 팟 80ml 기획(+수분초 패드 10매 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017029907ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[24시간수분잠금] 아비브 수분초 히알루론 크림 하이드레이팅 팟 80ml 기획(+수분초 패드 10매 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017029908ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[24시간수분잠금] 아비브 수분초 히알루론 크림 하이드레이팅 팟 80ml 기획(+수분초 패드 10매 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[24시간수분잠금] 아비브 수분초 히알루론 크림 하이드레이팅 팟 80ml 기획(+수분초 패드 10매 증정)';


-- ================================

-- 상품: 에센허브 티트리 수딩 인 카밍 크림 80ml 기획(+크림 30ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('에센허브 티트리 수딩 인 카밍 크림 80ml 기획(+크림 30ml)',
 '에센허브 티트리 수딩 인 카밍 크림 80ml 기획(+크림 30ml)',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에센허브'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '에센허브 티트리 수딩 인 카밍 크림 80ml 기획(+크림 30ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(34000, 'ORIGINAL', (SELECT id FROM product WHERE name = '에센허브 티트리 수딩 인 카밍 크림 80ml 기획(+크림 30ml)'), NOW(), NOW()),
(34000, 'SALE', (SELECT id FROM product WHERE name = '에센허브 티트리 수딩 인 카밍 크림 80ml 기획(+크림 30ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021201604ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '에센허브 티트리 수딩 인 카밍 크림 80ml 기획(+크림 30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021201605ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '에센허브 티트리 수딩 인 카밍 크림 80ml 기획(+크림 30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021201606ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '에센허브 티트리 수딩 인 카밍 크림 80ml 기획(+크림 30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021201607ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '에센허브 티트리 수딩 인 카밍 크림 80ml 기획(+크림 30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021201609ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '에센허브 티트리 수딩 인 카밍 크림 80ml 기획(+크림 30ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '에센허브 티트리 수딩 인 카밍 크림 80ml 기획(+크림 30ml)';


-- ================================

-- 상품: [피부장벽강화크림] 더하르나이 시카이드 밤 100ml기획(+앰플5ml*3p+크림5ml*2p...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[피부장벽강화크림] 더하르나이 시카이드 밤 100ml기획(+앰플5ml*3p+크림5ml*2p)',
 '[피부장벽강화크림] 더하르나이 시카이드 밤 100ml기획(+앰플5ml*3p+크림5ml*2p)',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더하르나이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[피부장벽강화크림] 더하르나이 시카이드 밤 100ml기획(+앰플5ml*3p+크림5ml*2p)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[피부장벽강화크림] 더하르나이 시카이드 밤 100ml기획(+앰플5ml*3p+크림5ml*2p)'), NOW(), NOW()),
(32000, 'SALE', (SELECT id FROM product WHERE name = '[피부장벽강화크림] 더하르나이 시카이드 밤 100ml기획(+앰플5ml*3p+크림5ml*2p)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021272522ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[피부장벽강화크림] 더하르나이 시카이드 밤 100ml기획(+앰플5ml*3p+크림5ml*2p)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021272521ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[피부장벽강화크림] 더하르나이 시카이드 밤 100ml기획(+앰플5ml*3p+크림5ml*2p)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[피부장벽강화크림] 더하르나이 시카이드 밤 100ml기획(+앰플5ml*3p+크림5ml*2p)';


-- ================================

-- 상품: 테라로직 레티날 주름탄력 크림 12g+앰플4ml 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('테라로직 레티날 주름탄력 크림 12g+앰플4ml 기획',
 '테라로직 레티날 주름탄력 크림 12g+앰플4ml 기획',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '테라로직'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '테라로직 레티날 주름탄력 크림 12g+앰플4ml 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39000, 'ORIGINAL', (SELECT id FROM product WHERE name = '테라로직 레티날 주름탄력 크림 12g+앰플4ml 기획'), NOW(), NOW()),
(31200, 'SALE', (SELECT id FROM product WHERE name = '테라로직 레티날 주름탄력 크림 12g+앰플4ml 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022164907ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '테라로직 레티날 주름탄력 크림 12g+앰플4ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022164904ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '테라로직 레티날 주름탄력 크림 12g+앰플4ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022164905ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '테라로직 레티날 주름탄력 크림 12g+앰플4ml 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '테라로직 레티날 주름탄력 크림 12g+앰플4ml 기획';


-- ================================

-- 상품: 바이오더마 하이드라비오 젤크림 40ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('바이오더마 하이드라비오 젤크림 40ml',
 '바이오더마 하이드라비오 젤크림 40ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오더마'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 젤크림 40ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(31000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 젤크림 40ml'), NOW(), NOW()),
(31000, 'SALE', (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 젤크림 40ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011780908ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 젤크림 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011780906ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 젤크림 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011780907ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 젤크림 40ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '바이오더마 하이드라비오 젤크림 40ml';


-- ================================

-- 상품: 싸이닉 더 심플 릴리프 수분크림 더블 기획 (80ml+80ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('싸이닉 더 심플 릴리프 수분크림 더블 기획 (80ml+80ml)',
 '싸이닉 더 심플 릴리프 수분크림 더블 기획 (80ml+80ml)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '싸이닉'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '싸이닉 더 심플 릴리프 수분크림 더블 기획 (80ml+80ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(18000, 'ORIGINAL', (SELECT id FROM product WHERE name = '싸이닉 더 심플 릴리프 수분크림 더블 기획 (80ml+80ml)'), NOW(), NOW()),
(14400, 'SALE', (SELECT id FROM product WHERE name = '싸이닉 더 심플 릴리프 수분크림 더블 기획 (80ml+80ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015391312ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '싸이닉 더 심플 릴리프 수분크림 더블 기획 (80ml+80ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015391313ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '싸이닉 더 심플 릴리프 수분크림 더블 기획 (80ml+80ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '싸이닉 더 심플 릴리프 수분크림 더블 기획 (80ml+80ml)';


-- ================================

-- 상품: [1+1] 더마토리 히알샷 베리어 크림 B5 70ml 1+1 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[1+1] 더마토리 히알샷 베리어 크림 B5 70ml 1+1 기획',
 '[1+1] 더마토리 히알샷 베리어 크림 B5 70ml 1+1 기획',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더마토리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[1+1] 더마토리 히알샷 베리어 크림 B5 70ml 1+1 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1+1] 더마토리 히알샷 베리어 크림 B5 70ml 1+1 기획'), NOW(), NOW()),
(30000, 'SALE', (SELECT id FROM product WHERE name = '[1+1] 더마토리 히알샷 베리어 크림 B5 70ml 1+1 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020253710ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[1+1] 더마토리 히알샷 베리어 크림 B5 70ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020253706ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[1+1] 더마토리 히알샷 베리어 크림 B5 70ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020253705ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[1+1] 더마토리 히알샷 베리어 크림 B5 70ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020253703ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[1+1] 더마토리 히알샷 베리어 크림 B5 70ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020253701ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[1+1] 더마토리 히알샷 베리어 크림 B5 70ml 1+1 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[1+1] 더마토리 히알샷 베리어 크림 B5 70ml 1+1 기획';


-- ================================

-- 상품: [수분크림]에스트라 아토베리어365 하이드로 수딩크림 60ml 기획(+하이드로에센스25ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분크림]에스트라 아토베리어365 하이드로 수딩크림 60ml 기획(+하이드로에센스25ml+선크림10ml)',
 '[수분크림]에스트라 아토베리어365 하이드로 수딩크림 60ml 기획(+하이드로에센스25ml+선크림10ml)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에스트라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분크림]에스트라 아토베리어365 하이드로 수딩크림 60ml 기획(+하이드로에센스25ml+선크림10ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분크림]에스트라 아토베리어365 하이드로 수딩크림 60ml 기획(+하이드로에센스25ml+선크림10ml)'), NOW(), NOW()),
(29700, 'SALE', (SELECT id FROM product WHERE name = '[수분크림]에스트라 아토베리어365 하이드로 수딩크림 60ml 기획(+하이드로에센스25ml+선크림10ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020593902ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분크림]에스트라 아토베리어365 하이드로 수딩크림 60ml 기획(+하이드로에센스25ml+선크림10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020593903ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분크림]에스트라 아토베리어365 하이드로 수딩크림 60ml 기획(+하이드로에센스25ml+선크림10ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분크림]에스트라 아토베리어365 하이드로 수딩크림 60ml 기획(+하이드로에센스25ml+선크림10ml)';


-- ================================

-- 상품: [흔적진정] 마몽드 카밍 샷 아줄렌 크림 60ml 기획/단품...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[흔적진정] 마몽드 카밍 샷 아줄렌 크림 60ml 기획/단품',
 '[흔적진정] 마몽드 카밍 샷 아줄렌 크림 60ml 기획/단품',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '마몽드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[기획] 아줄렌 크림 30ml 증정', 29000, (SELECT id FROM product WHERE name = '[흔적진정] 마몽드 카밍 샷 아줄렌 크림 60ml 기획/단품'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[단품]', 29000, (SELECT id FROM product WHERE name = '[흔적진정] 마몽드 카밍 샷 아줄렌 크림 60ml 기획/단품'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[흔적진정] 마몽드 카밍 샷 아줄렌 크림 60ml 기획/단품'), NOW(), NOW()),
(29000, 'SALE', (SELECT id FROM product WHERE name = '[흔적진정] 마몽드 카밍 샷 아줄렌 크림 60ml 기획/단품'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021939112ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[흔적진정] 마몽드 카밍 샷 아줄렌 크림 60ml 기획/단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021939102ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[흔적진정] 마몽드 카밍 샷 아줄렌 크림 60ml 기획/단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021939113ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[흔적진정] 마몽드 카밍 샷 아줄렌 크림 60ml 기획/단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021939114ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[흔적진정] 마몽드 카밍 샷 아줄렌 크림 60ml 기획/단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021939115ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[흔적진정] 마몽드 카밍 샷 아줄렌 크림 60ml 기획/단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021939116ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[흔적진정] 마몽드 카밍 샷 아줄렌 크림 60ml 기획/단품'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[흔적진정] 마몽드 카밍 샷 아줄렌 크림 60ml 기획/단품';


-- ================================

-- 상품: 셀올로지 블루 이레이저 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('셀올로지 블루 이레이저 크림 50ml',
 '셀올로지 블루 이레이저 크림 50ml',
 3.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '셀올로지'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '셀올로지 블루 이레이저 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29800, 'ORIGINAL', (SELECT id FROM product WHERE name = '셀올로지 블루 이레이저 크림 50ml'), NOW(), NOW()),
(28900, 'SALE', (SELECT id FROM product WHERE name = '셀올로지 블루 이레이저 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021913702ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '셀올로지 블루 이레이저 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '셀올로지 블루 이레이저 크림 50ml';


-- ================================

-- 상품: [애프터 시카 밤]SVR 센시파인 뉴트리밤 40ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[애프터 시카 밤]SVR 센시파인 뉴트리밤 40ml',
 '[애프터 시카 밤]SVR 센시파인 뉴트리밤 40ml',
 5.0,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'SVR'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[애프터 시카 밤]SVR 센시파인 뉴트리밤 40ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[애프터 시카 밤]SVR 센시파인 뉴트리밤 40ml'), NOW(), NOW()),
(28800, 'SALE', (SELECT id FROM product WHERE name = '[애프터 시카 밤]SVR 센시파인 뉴트리밤 40ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021933403ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[애프터 시카 밤]SVR 센시파인 뉴트리밤 40ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[애프터 시카 밤]SVR 센시파인 뉴트리밤 40ml';


-- ================================

-- 상품: 토니모리 원더 세라마이드 모찌 수분 크림 300ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('토니모리 원더 세라마이드 모찌 수분 크림 300ml',
 '토니모리 원더 세라마이드 모찌 수분 크림 300ml',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '토니모리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '토니모리 원더 세라마이드 모찌 수분 크림 300ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(15000, 'ORIGINAL', (SELECT id FROM product WHERE name = '토니모리 원더 세라마이드 모찌 수분 크림 300ml'), NOW(), NOW()),
(13500, 'SALE', (SELECT id FROM product WHERE name = '토니모리 원더 세라마이드 모찌 수분 크림 300ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023130001ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '토니모리 원더 세라마이드 모찌 수분 크림 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023130002ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '토니모리 원더 세라마이드 모찌 수분 크림 300ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '토니모리 원더 세라마이드 모찌 수분 크림 300ml';


-- ================================

-- 상품: [모공탄력] 바이오힐 보 프로바이오덤 콜라겐 리모델링 크림 기획세트 [단품/증정기획]...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[모공탄력] 바이오힐 보 프로바이오덤 콜라겐 리모델링 크림 기획세트 [단품/증정기획]',
 '[모공탄력] 바이오힐 보 프로바이오덤 콜라겐 리모델링 크림 기획세트 [단품/증정기획]',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오힐보'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[모공탄력] 바이오힐 보 프로바이오덤 콜라겐 리모델링 크림 기획세트 [단품/증정기획]'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[모공탄력] 바이오힐 보 프로바이오덤 콜라겐 리모델링 크림 기획세트 [단품/증정기획]'), NOW(), NOW()),
(28500, 'SALE', (SELECT id FROM product WHERE name = '[모공탄력] 바이오힐 보 프로바이오덤 콜라겐 리모델링 크림 기획세트 [단품/증정기획]'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020430807ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[모공탄력] 바이오힐 보 프로바이오덤 콜라겐 리모델링 크림 기획세트 [단품/증정기획]'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020430805ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[모공탄력] 바이오힐 보 프로바이오덤 콜라겐 리모델링 크림 기획세트 [단품/증정기획]'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020430808ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[모공탄력] 바이오힐 보 프로바이오덤 콜라겐 리모델링 크림 기획세트 [단품/증정기획]'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020430809ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[모공탄력] 바이오힐 보 프로바이오덤 콜라겐 리모델링 크림 기획세트 [단품/증정기획]'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020430804ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[모공탄력] 바이오힐 보 프로바이오덤 콜라겐 리모델링 크림 기획세트 [단품/증정기획]'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[모공탄력] 바이오힐 보 프로바이오덤 콜라겐 리모델링 크림 기획세트 [단품/증정기획]';


-- ================================

-- 상품: [3초 자신광] 샤이샤이샤이 리포좀 리페어 밀키 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[3초 자신광] 샤이샤이샤이 리포좀 리페어 밀키 크림 50ml',
 '[3초 자신광] 샤이샤이샤이 리포좀 리페어 밀키 크림 50ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '샤이샤이샤이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[3초 자신광] 샤이샤이샤이 리포좀 리페어 밀키 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[3초 자신광] 샤이샤이샤이 리포좀 리페어 밀키 크림 50ml'), NOW(), NOW()),
(28000, 'SALE', (SELECT id FROM product WHERE name = '[3초 자신광] 샤이샤이샤이 리포좀 리페어 밀키 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021361524ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[3초 자신광] 샤이샤이샤이 리포좀 리페어 밀키 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021361521ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[3초 자신광] 샤이샤이샤이 리포좀 리페어 밀키 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021361517ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[3초 자신광] 샤이샤이샤이 리포좀 리페어 밀키 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021361518ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[3초 자신광] 샤이샤이샤이 리포좀 리페어 밀키 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021361519ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[3초 자신광] 샤이샤이샤이 리포좀 리페어 밀키 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021361516ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[3초 자신광] 샤이샤이샤이 리포좀 리페어 밀키 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[3초 자신광] 샤이샤이샤이 리포좀 리페어 밀키 크림 50ml';


-- ================================

-- 상품: [모공크림]비긴스 바이 정샘물 포어 타이트닝 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[모공크림]비긴스 바이 정샘물 포어 타이트닝 크림 50ml',
 '[모공크림]비긴스 바이 정샘물 포어 타이트닝 크림 50ml',
 4.5,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비긴스 바이 정샘물'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[모공크림]비긴스 바이 정샘물 포어 타이트닝 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[모공크림]비긴스 바이 정샘물 포어 타이트닝 크림 50ml'), NOW(), NOW()),
(28000, 'SALE', (SELECT id FROM product WHERE name = '[모공크림]비긴스 바이 정샘물 포어 타이트닝 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022449113ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[모공크림]비긴스 바이 정샘물 포어 타이트닝 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022449104ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[모공크림]비긴스 바이 정샘물 포어 타이트닝 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022449105ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[모공크림]비긴스 바이 정샘물 포어 타이트닝 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022449106ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[모공크림]비긴스 바이 정샘물 포어 타이트닝 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[모공크림]비긴스 바이 정샘물 포어 타이트닝 크림 50ml';


-- ================================

-- 상품: [수분진정/광채캡슐크림] 션리 다시마 클레이즈드 크림 50g...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분진정/광채캡슐크림] 션리 다시마 클레이즈드 크림 50g',
 '[수분진정/광채캡슐크림] 션리 다시마 클레이즈드 크림 50g',
 5.0,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '션리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분진정/광채캡슐크림] 션리 다시마 클레이즈드 크림 50g'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분진정/광채캡슐크림] 션리 다시마 클레이즈드 크림 50g'), NOW(), NOW()),
(28000, 'SALE', (SELECT id FROM product WHERE name = '[수분진정/광채캡슐크림] 션리 다시마 클레이즈드 크림 50g'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023333702ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분진정/광채캡슐크림] 션리 다시마 클레이즈드 크림 50g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023333701ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분진정/광채캡슐크림] 션리 다시마 클레이즈드 크림 50g'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분진정/광채캡슐크림] 션리 다시마 클레이즈드 크림 50g';


-- ================================

-- 상품: [단독기획] 파티온 노스카나인 트러블 크림 45ml 기획(+20ml+세럼15ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[단독기획] 파티온 노스카나인 트러블 크림 45ml 기획(+20ml+세럼15ml)',
 '[단독기획] 파티온 노스카나인 트러블 크림 45ml 기획(+20ml+세럼15ml)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '파티온'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[단독기획] 파티온 노스카나인 트러블 크림 45ml 기획(+20ml+세럼15ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(45000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독기획] 파티온 노스카나인 트러블 크림 45ml 기획(+20ml+세럼15ml)'), NOW(), NOW()),
(27900, 'SALE', (SELECT id FROM product WHERE name = '[단독기획] 파티온 노스카나인 트러블 크림 45ml 기획(+20ml+세럼15ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021961003ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[단독기획] 파티온 노스카나인 트러블 크림 45ml 기획(+20ml+세럼15ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021961004ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[단독기획] 파티온 노스카나인 트러블 크림 45ml 기획(+20ml+세럼15ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021961005ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[단독기획] 파티온 노스카나인 트러블 크림 45ml 기획(+20ml+세럼15ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[단독기획] 파티온 노스카나인 트러블 크림 45ml 기획(+20ml+세럼15ml)';


-- ================================

-- 상품: [흔적케어크림] 더마펌 수딩 리페어 토닝 크림 R4 50ml 기획 (+30ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[흔적케어크림] 더마펌 수딩 리페어 토닝 크림 R4 50ml 기획 (+30ml)',
 '[흔적케어크림] 더마펌 수딩 리페어 토닝 크림 R4 50ml 기획 (+30ml)',
 5.0,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더마펌'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[흔적케어크림] 더마펌 수딩 리페어 토닝 크림 R4 50ml 기획 (+30ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[흔적케어크림] 더마펌 수딩 리페어 토닝 크림 R4 50ml 기획 (+30ml)'), NOW(), NOW()),
(27300, 'SALE', (SELECT id FROM product WHERE name = '[흔적케어크림] 더마펌 수딩 리페어 토닝 크림 R4 50ml 기획 (+30ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021332318ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[흔적케어크림] 더마펌 수딩 리페어 토닝 크림 R4 50ml 기획 (+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021332319ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[흔적케어크림] 더마펌 수딩 리페어 토닝 크림 R4 50ml 기획 (+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021332320ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[흔적케어크림] 더마펌 수딩 리페어 토닝 크림 R4 50ml 기획 (+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021332321ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[흔적케어크림] 더마펌 수딩 리페어 토닝 크림 R4 50ml 기획 (+30ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[흔적케어크림] 더마펌 수딩 리페어 토닝 크림 R4 50ml 기획 (+30ml)';


-- ================================

-- 상품: [잡티흔적케어/광채 PDRN] 로벡틴 비타 더블 토닝 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[잡티흔적케어/광채 PDRN] 로벡틴 비타 더블 토닝 크림 50ml',
 '[잡티흔적케어/광채 PDRN] 로벡틴 비타 더블 토닝 크림 50ml',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '로벡틴'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[잡티흔적케어/광채 PDRN] 로벡틴 비타 더블 토닝 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(36000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[잡티흔적케어/광채 PDRN] 로벡틴 비타 더블 토닝 크림 50ml'), NOW(), NOW()),
(27000, 'SALE', (SELECT id FROM product WHERE name = '[잡티흔적케어/광채 PDRN] 로벡틴 비타 더블 토닝 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022518847ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[잡티흔적케어/광채 PDRN] 로벡틴 비타 더블 토닝 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022518845ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[잡티흔적케어/광채 PDRN] 로벡틴 비타 더블 토닝 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022518846ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[잡티흔적케어/광채 PDRN] 로벡틴 비타 더블 토닝 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022518848ko.png?l=ko', 4, (SELECT id FROM product WHERE name = '[잡티흔적케어/광채 PDRN] 로벡틴 비타 더블 토닝 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022518849ko.png?l=ko', 5, (SELECT id FROM product WHERE name = '[잡티흔적케어/광채 PDRN] 로벡틴 비타 더블 토닝 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022518843ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[잡티흔적케어/광채 PDRN] 로벡틴 비타 더블 토닝 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[잡티흔적케어/광채 PDRN] 로벡틴 비타 더블 토닝 크림 50ml';


-- ================================

-- 상품: [모공축소] 풀리 그린 토마토 크림 90ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[모공축소] 풀리 그린 토마토 크림 90ml',
 '[모공축소] 풀리 그린 토마토 크림 90ml',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '풀리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[모공축소] 풀리 그린 토마토 크림 90ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[모공축소] 풀리 그린 토마토 크림 90ml'), NOW(), NOW()),
(26800, 'SALE', (SELECT id FROM product WHERE name = '[모공축소] 풀리 그린 토마토 크림 90ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022424306ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[모공축소] 풀리 그린 토마토 크림 90ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022424303ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[모공축소] 풀리 그린 토마토 크림 90ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022424301ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[모공축소] 풀리 그린 토마토 크림 90ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[모공축소] 풀리 그린 토마토 크림 90ml';


-- ================================

-- 상품: 바이오더마 하이드라비오 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('바이오더마 하이드라비오 크림 50ml',
 '바이오더마 하이드라비오 크림 50ml',
 4.6,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오더마'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 크림 50ml'), NOW(), NOW()),
(26400, 'SALE', (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011780708ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011780706ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011780707ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '바이오더마 하이드라비오 크림 50ml';


-- ================================

-- 상품: [한혜진PICK]CKD 레티노콜라겐 저분자 300 크림 1+1 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[한혜진PICK]CKD 레티노콜라겐 저분자 300 크림 1+1 기획',
 '[한혜진PICK]CKD 레티노콜라겐 저분자 300 크림 1+1 기획',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'CKD'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[한혜진PICK]CKD 레티노콜라겐 저분자 300 크림 1+1 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[한혜진PICK]CKD 레티노콜라겐 저분자 300 크림 1+1 기획'), NOW(), NOW()),
(25900, 'SALE', (SELECT id FROM product WHERE name = '[한혜진PICK]CKD 레티노콜라겐 저분자 300 크림 1+1 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016887105ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[한혜진PICK]CKD 레티노콜라겐 저분자 300 크림 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016887106ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[한혜진PICK]CKD 레티노콜라겐 저분자 300 크림 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016887104ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[한혜진PICK]CKD 레티노콜라겐 저분자 300 크림 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016887103ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[한혜진PICK]CKD 레티노콜라겐 저분자 300 크림 1+1 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[한혜진PICK]CKD 레티노콜라겐 저분자 300 크림 1+1 기획';


-- ================================

-- 상품: [대용량] 피캄 카토 크림 80ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[대용량] 피캄 카토 크림 80ml',
 '[대용량] 피캄 카토 크림 80ml',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '피캄'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[대용량] 피캄 카토 크림 80ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32500, 'ORIGINAL', (SELECT id FROM product WHERE name = '[대용량] 피캄 카토 크림 80ml'), NOW(), NOW()),
(25900, 'SALE', (SELECT id FROM product WHERE name = '[대용량] 피캄 카토 크림 80ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017002503ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[대용량] 피캄 카토 크림 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017002509ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[대용량] 피캄 카토 크림 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017002508ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[대용량] 피캄 카토 크림 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017002507ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[대용량] 피캄 카토 크림 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017002506ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[대용량] 피캄 카토 크림 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017002505ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[대용량] 피캄 카토 크림 80ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[대용량] 피캄 카토 크림 80ml';


-- ================================

-- 상품: [7겹보습크림] 닥터자르트 세라마이딘 울트라 모이스처라이징 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[7겹보습크림] 닥터자르트 세라마이딘 울트라 모이스처라이징 크림 50ml',
 '[7겹보습크림] 닥터자르트 세라마이딘 울트라 모이스처라이징 크림 50ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터자르트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[7겹보습크림] 닥터자르트 세라마이딘 울트라 모이스처라이징 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(51000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[7겹보습크림] 닥터자르트 세라마이딘 울트라 모이스처라이징 크림 50ml'), NOW(), NOW()),
(25500, 'SALE', (SELECT id FROM product WHERE name = '[7겹보습크림] 닥터자르트 세라마이딘 울트라 모이스처라이징 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017802608ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[7겹보습크림] 닥터자르트 세라마이딘 울트라 모이스처라이징 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017802602ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[7겹보습크림] 닥터자르트 세라마이딘 울트라 모이스처라이징 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[7겹보습크림] 닥터자르트 세라마이딘 울트라 모이스처라이징 크림 50ml';


-- ================================

-- 상품: 키엘 울트라 훼이셜 크림 28ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('키엘 울트라 훼이셜 크림 28ml',
 '키엘 울트라 훼이셜 크림 28ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '키엘'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('28ml', 25230, (SELECT id FROM product WHERE name = '키엘 울트라 훼이셜 크림 28ml'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('28ml 기획세트', 25230, (SELECT id FROM product WHERE name = '키엘 울트라 훼이셜 크림 28ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '키엘 울트라 훼이셜 크림 28ml'), NOW(), NOW()),
(25230, 'SALE', (SELECT id FROM product WHERE name = '키엘 울트라 훼이셜 크림 28ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021416621ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '키엘 울트라 훼이셜 크림 28ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021416619ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '키엘 울트라 훼이셜 크림 28ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021416614ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '키엘 울트라 훼이셜 크림 28ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021416603ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '키엘 울트라 훼이셜 크림 28ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021416601ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '키엘 울트라 훼이셜 크림 28ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '키엘 울트라 훼이셜 크림 28ml';


-- ================================

-- 상품: [만능 시카밤] 프라나롬 시카롬 리페어 밤 40ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[만능 시카밤] 프라나롬 시카롬 리페어 밤 40ml',
 '[만능 시카밤] 프라나롬 시카롬 리페어 밤 40ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '프라나롬'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[만능 시카밤] 프라나롬 시카롬 리페어 밤 40ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(31000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[만능 시카밤] 프라나롬 시카롬 리페어 밤 40ml'), NOW(), NOW()),
(25110, 'SALE', (SELECT id FROM product WHERE name = '[만능 시카밤] 프라나롬 시카롬 리페어 밤 40ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021353505ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[만능 시카밤] 프라나롬 시카롬 리페어 밤 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021353502ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[만능 시카밤] 프라나롬 시카롬 리페어 밤 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021353503ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[만능 시카밤] 프라나롬 시카롬 리페어 밤 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021353501ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[만능 시카밤] 프라나롬 시카롬 리페어 밤 40ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[만능 시카밤] 프라나롬 시카롬 리페어 밤 40ml';


-- ================================

-- 상품: [장벽탄력] 지피덤 셀트리온 EGF 스킨 베리어 하이드레이팅 수분크림 80ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[장벽탄력] 지피덤 셀트리온 EGF 스킨 베리어 하이드레이팅 수분크림 80ml',
 '[장벽탄력] 지피덤 셀트리온 EGF 스킨 베리어 하이드레이팅 수분크림 80ml',
 5.0,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '지피덤'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[장벽탄력] 지피덤 셀트리온 EGF 스킨 베리어 하이드레이팅 수분크림 80ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[장벽탄력] 지피덤 셀트리온 EGF 스킨 베리어 하이드레이팅 수분크림 80ml'), NOW(), NOW()),
(24840, 'SALE', (SELECT id FROM product WHERE name = '[장벽탄력] 지피덤 셀트리온 EGF 스킨 베리어 하이드레이팅 수분크림 80ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023034411ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[장벽탄력] 지피덤 셀트리온 EGF 스킨 베리어 하이드레이팅 수분크림 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023034406ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[장벽탄력] 지피덤 셀트리온 EGF 스킨 베리어 하이드레이팅 수분크림 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023034407ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[장벽탄력] 지피덤 셀트리온 EGF 스킨 베리어 하이드레이팅 수분크림 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023034404ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[장벽탄력] 지피덤 셀트리온 EGF 스킨 베리어 하이드레이팅 수분크림 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023034410ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[장벽탄력] 지피덤 셀트리온 EGF 스킨 베리어 하이드레이팅 수분크림 80ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[장벽탄력] 지피덤 셀트리온 EGF 스킨 베리어 하이드레이팅 수분크림 80ml';


-- ================================

-- 상품: [손상/흔적 리페어] 아벤느 시칼파트 플러스 블레미쉬 크림 40ml 기획 (+오 떼르말 5...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[손상/흔적 리페어] 아벤느 시칼파트 플러스 블레미쉬 크림 40ml 기획 (+오 떼르말 50ml)',
 '[손상/흔적 리페어] 아벤느 시칼파트 플러스 블레미쉬 크림 40ml 기획 (+오 떼르말 50ml)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아벤느'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[손상/흔적 리페어] 아벤느 시칼파트 플러스 블레미쉬 크림 40ml 기획 (+오 떼르말 50ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[손상/흔적 리페어] 아벤느 시칼파트 플러스 블레미쉬 크림 40ml 기획 (+오 떼르말 50ml)'), NOW(), NOW()),
(24700, 'SALE', (SELECT id FROM product WHERE name = '[손상/흔적 리페어] 아벤느 시칼파트 플러스 블레미쉬 크림 40ml 기획 (+오 떼르말 50ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022483928ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[손상/흔적 리페어] 아벤느 시칼파트 플러스 블레미쉬 크림 40ml 기획 (+오 떼르말 50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022483936ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[손상/흔적 리페어] 아벤느 시칼파트 플러스 블레미쉬 크림 40ml 기획 (+오 떼르말 50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022483935ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[손상/흔적 리페어] 아벤느 시칼파트 플러스 블레미쉬 크림 40ml 기획 (+오 떼르말 50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022483934ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[손상/흔적 리페어] 아벤느 시칼파트 플러스 블레미쉬 크림 40ml 기획 (+오 떼르말 50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022483929ko.png?l=ko', 5, (SELECT id FROM product WHERE name = '[손상/흔적 리페어] 아벤느 시칼파트 플러스 블레미쉬 크림 40ml 기획 (+오 떼르말 50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022483927ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[손상/흔적 리페어] 아벤느 시칼파트 플러스 블레미쉬 크림 40ml 기획 (+오 떼르말 50ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[손상/흔적 리페어] 아벤느 시칼파트 플러스 블레미쉬 크림 40ml 기획 (+오 떼르말 50ml)';


-- ================================

-- 상품: [보습장벽크림] 유세린 우레아 리페어 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[보습장벽크림] 유세린 우레아 리페어 크림 50ml',
 '[보습장벽크림] 유세린 우레아 리페어 크림 50ml',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유세린'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[보습장벽크림] 유세린 우레아 리페어 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[보습장벽크림] 유세린 우레아 리페어 크림 50ml'), NOW(), NOW()),
(24500, 'SALE', (SELECT id FROM product WHERE name = '[보습장벽크림] 유세린 우레아 리페어 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014710909ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[보습장벽크림] 유세린 우레아 리페어 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[보습장벽크림] 유세린 우레아 리페어 크림 50ml';


-- ================================

-- 상품: [보습탄력] 아비브 부활초 크림 뉴트리션 튜브 75ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[보습탄력] 아비브 부활초 크림 뉴트리션 튜브 75ml',
 '[보습탄력] 아비브 부활초 크림 뉴트리션 튜브 75ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아비브'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[보습탄력] 아비브 부활초 크림 뉴트리션 튜브 75ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[보습탄력] 아비브 부활초 크림 뉴트리션 튜브 75ml'), NOW(), NOW()),
(24500, 'SALE', (SELECT id FROM product WHERE name = '[보습탄력] 아비브 부활초 크림 뉴트리션 튜브 75ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014840912ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[보습탄력] 아비브 부활초 크림 뉴트리션 튜브 75ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014840907ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[보습탄력] 아비브 부활초 크림 뉴트리션 튜브 75ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[보습탄력] 아비브 부활초 크림 뉴트리션 튜브 75ml';


-- ================================

-- 상품: [EGF판테놀/장벽] 마일드랩 블루센텔라 더마 리페어크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[EGF판테놀/장벽] 마일드랩 블루센텔라 더마 리페어크림 50ml',
 '[EGF판테놀/장벽] 마일드랩 블루센텔라 더마 리페어크림 50ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '마일드랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[EGF판테놀/장벽] 마일드랩 블루센텔라 더마 리페어크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[EGF판테놀/장벽] 마일드랩 블루센텔라 더마 리페어크림 50ml'), NOW(), NOW()),
(24000, 'SALE', (SELECT id FROM product WHERE name = '[EGF판테놀/장벽] 마일드랩 블루센텔라 더마 리페어크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018227322ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[EGF판테놀/장벽] 마일드랩 블루센텔라 더마 리페어크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018227321ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[EGF판테놀/장벽] 마일드랩 블루센텔라 더마 리페어크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018227317ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[EGF판테놀/장벽] 마일드랩 블루센텔라 더마 리페어크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018227307ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[EGF판테놀/장벽] 마일드랩 블루센텔라 더마 리페어크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018227305ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[EGF판테놀/장벽] 마일드랩 블루센텔라 더마 리페어크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018227304ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[EGF판테놀/장벽] 마일드랩 블루센텔라 더마 리페어크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[EGF판테놀/장벽] 마일드랩 블루센텔라 더마 리페어크림 50ml';


-- ================================

-- 상품: 루트리 오디베리 5중 모공 리프팅 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('루트리 오디베리 5중 모공 리프팅 크림 50ml',
 '루트리 오디베리 5중 모공 리프팅 크림 50ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '루트리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '루트리 오디베리 5중 모공 리프팅 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28900, 'ORIGINAL', (SELECT id FROM product WHERE name = '루트리 오디베리 5중 모공 리프팅 크림 50ml'), NOW(), NOW()),
(23800, 'SALE', (SELECT id FROM product WHERE name = '루트리 오디베리 5중 모공 리프팅 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017215707ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '루트리 오디베리 5중 모공 리프팅 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017215709ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '루트리 오디베리 5중 모공 리프팅 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017215701ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '루트리 오디베리 5중 모공 리프팅 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '루트리 오디베리 5중 모공 리프팅 크림 50ml';


-- ================================

-- 상품: [보습광채] 코스알엑스 어드벤스드 스네일 92 올인원 크림 100g...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[보습광채] 코스알엑스 어드벤스드 스네일 92 올인원 크림 100g',
 '[보습광채] 코스알엑스 어드벤스드 스네일 92 올인원 크림 100g',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '코스알엑스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('튜브타입', 23000, (SELECT id FROM product WHERE name = '[보습광채] 코스알엑스 어드벤스드 스네일 92 올인원 크림 100g'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('자타입', 23000, (SELECT id FROM product WHERE name = '[보습광채] 코스알엑스 어드벤스드 스네일 92 올인원 크림 100g'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[보습광채] 코스알엑스 어드벤스드 스네일 92 올인원 크림 100g'), NOW(), NOW()),
(23000, 'SALE', (SELECT id FROM product WHERE name = '[보습광채] 코스알엑스 어드벤스드 스네일 92 올인원 크림 100g'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022518010ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[보습광채] 코스알엑스 어드벤스드 스네일 92 올인원 크림 100g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022518011ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[보습광채] 코스알엑스 어드벤스드 스네일 92 올인원 크림 100g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022518012ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[보습광채] 코스알엑스 어드벤스드 스네일 92 올인원 크림 100g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022518003ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[보습광채] 코스알엑스 어드벤스드 스네일 92 올인원 크림 100g'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[보습광채] 코스알엑스 어드벤스드 스네일 92 올인원 크림 100g';


-- ================================

-- 상품: [수분크림] 바이오힐 보 히알셀 하이드라 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분크림] 바이오힐 보 히알셀 하이드라 크림 50ml',
 '[수분크림] 바이오힐 보 히알셀 하이드라 크림 50ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오힐보'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분크림] 바이오힐 보 히알셀 하이드라 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분크림] 바이오힐 보 히알셀 하이드라 크림 50ml'), NOW(), NOW()),
(22500, 'SALE', (SELECT id FROM product WHERE name = '[수분크림] 바이오힐 보 히알셀 하이드라 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020841713ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분크림] 바이오힐 보 히알셀 하이드라 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020841705ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분크림] 바이오힐 보 히알셀 하이드라 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020841704ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분크림] 바이오힐 보 히알셀 하이드라 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020841714ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[수분크림] 바이오힐 보 히알셀 하이드라 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020841712ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[수분크림] 바이오힐 보 히알셀 하이드라 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020841710ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[수분크림] 바이오힐 보 히알셀 하이드라 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분크림] 바이오힐 보 히알셀 하이드라 크림 50ml';


-- ================================

-- 상품: [여드름 피부 적합] 반코르 덱스판테놀크림 아데노신 닥터 60ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[여드름 피부 적합] 반코르 덱스판테놀크림 아데노신 닥터 60ml',
 '[여드름 피부 적합] 반코르 덱스판테놀크림 아데노신 닥터 60ml',
 4.5,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '반코르'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[여드름 피부 적합] 반코르 덱스판테놀크림 아데노신 닥터 60ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(22500, 'ORIGINAL', (SELECT id FROM product WHERE name = '[여드름 피부 적합] 반코르 덱스판테놀크림 아데노신 닥터 60ml'), NOW(), NOW()),
(22500, 'SALE', (SELECT id FROM product WHERE name = '[여드름 피부 적합] 반코르 덱스판테놀크림 아데노신 닥터 60ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021340911ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[여드름 피부 적합] 반코르 덱스판테놀크림 아데노신 닥터 60ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021340902ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[여드름 피부 적합] 반코르 덱스판테놀크림 아데노신 닥터 60ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[여드름 피부 적합] 반코르 덱스판테놀크림 아데노신 닥터 60ml';


-- ================================

-- 상품: [톤업캡슐] 이니스프리 비타민C 캡슐 크림 50ml 기획 (+20ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[톤업캡슐] 이니스프리 비타민C 캡슐 크림 50ml 기획 (+20ml)',
 '[톤업캡슐] 이니스프리 비타민C 캡슐 크림 50ml 기획 (+20ml)',
 4.6,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '이니스프리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[톤업캡슐] 이니스프리 비타민C 캡슐 크림 50ml 기획 (+20ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[톤업캡슐] 이니스프리 비타민C 캡슐 크림 50ml 기획 (+20ml)'), NOW(), NOW()),
(22400, 'SALE', (SELECT id FROM product WHERE name = '[톤업캡슐] 이니스프리 비타민C 캡슐 크림 50ml 기획 (+20ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022169817ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[톤업캡슐] 이니스프리 비타민C 캡슐 크림 50ml 기획 (+20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022169818ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[톤업캡슐] 이니스프리 비타민C 캡슐 크림 50ml 기획 (+20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022169819ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[톤업캡슐] 이니스프리 비타민C 캡슐 크림 50ml 기획 (+20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022169820ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[톤업캡슐] 이니스프리 비타민C 캡슐 크림 50ml 기획 (+20ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[톤업캡슐] 이니스프리 비타민C 캡슐 크림 50ml 기획 (+20ml)';


-- ================================

-- 상품: [속건조/민감보습]비건이펙트 청보리 수분크림 50g...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[속건조/민감보습]비건이펙트 청보리 수분크림 50g',
 '[속건조/민감보습]비건이펙트 청보리 수분크림 50g',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비건이펙트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[속건조/민감보습]비건이펙트 청보리 수분크림 50g'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[속건조/민감보습]비건이펙트 청보리 수분크림 50g'), NOW(), NOW()),
(21600, 'SALE', (SELECT id FROM product WHERE name = '[속건조/민감보습]비건이펙트 청보리 수분크림 50g'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017199422ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[속건조/민감보습]비건이펙트 청보리 수분크림 50g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017199420ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[속건조/민감보습]비건이펙트 청보리 수분크림 50g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017199421ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[속건조/민감보습]비건이펙트 청보리 수분크림 50g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017199417ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[속건조/민감보습]비건이펙트 청보리 수분크림 50g'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[속건조/민감보습]비건이펙트 청보리 수분크림 50g';


-- ================================

-- 상품: 피지오겔 DMT 페이셜 보습장벽 크림 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('피지오겔 DMT 페이셜 보습장벽 크림 150ml',
 '피지오겔 DMT 페이셜 보습장벽 크림 150ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '피지오겔'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '피지오겔 DMT 페이셜 보습장벽 크림 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(47500, 'ORIGINAL', (SELECT id FROM product WHERE name = '피지오겔 DMT 페이셜 보습장벽 크림 150ml'), NOW(), NOW()),
(20830, 'SALE', (SELECT id FROM product WHERE name = '피지오겔 DMT 페이셜 보습장벽 크림 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001288111ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '피지오겔 DMT 페이셜 보습장벽 크림 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001288110ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '피지오겔 DMT 페이셜 보습장벽 크림 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '피지오겔 DMT 페이셜 보습장벽 크림 150ml';


-- ================================

-- 상품: 김정문알로에 큐어 인텐시브 2X 크림 50g...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('김정문알로에 큐어 인텐시브 2X 크림 50g',
 '김정문알로에 큐어 인텐시브 2X 크림 50g',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '큐어'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '김정문알로에 큐어 인텐시브 2X 크림 50g'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(20000, 'ORIGINAL', (SELECT id FROM product WHERE name = '김정문알로에 큐어 인텐시브 2X 크림 50g'), NOW(), NOW()),
(20000, 'SALE', (SELECT id FROM product WHERE name = '김정문알로에 큐어 인텐시브 2X 크림 50g'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020938001ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '김정문알로에 큐어 인텐시브 2X 크림 50g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020938003ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '김정문알로에 큐어 인텐시브 2X 크림 50g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020938002ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '김정문알로에 큐어 인텐시브 2X 크림 50g'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '김정문알로에 큐어 인텐시브 2X 크림 50g';


-- ================================

-- 상품: [YoungK PICK] 파파레서피 블레미쉬 크림 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[YoungK PICK] 파파레서피 블레미쉬 크림 100ml',
 '[YoungK PICK] 파파레서피 블레미쉬 크림 100ml',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '파파레서피'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[YoungK PICK] 파파레서피 블레미쉬 크림 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[YoungK PICK] 파파레서피 블레미쉬 크림 100ml'), NOW(), NOW()),
(19950, 'SALE', (SELECT id FROM product WHERE name = '[YoungK PICK] 파파레서피 블레미쉬 크림 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020700310ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[YoungK PICK] 파파레서피 블레미쉬 크림 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020700309ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[YoungK PICK] 파파레서피 블레미쉬 크림 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020700307ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[YoungK PICK] 파파레서피 블레미쉬 크림 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020700308ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[YoungK PICK] 파파레서피 블레미쉬 크림 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[YoungK PICK] 파파레서피 블레미쉬 크림 100ml';


-- ================================

-- 상품: 닥터멜락신 아쿠아 이온 플라즈마 수분 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('닥터멜락신 아쿠아 이온 플라즈마 수분 크림 50ml',
 '닥터멜락신 아쿠아 이온 플라즈마 수분 크림 50ml',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터멜락신'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '닥터멜락신 아쿠아 이온 플라즈마 수분 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(22900, 'ORIGINAL', (SELECT id FROM product WHERE name = '닥터멜락신 아쿠아 이온 플라즈마 수분 크림 50ml'), NOW(), NOW()),
(19800, 'SALE', (SELECT id FROM product WHERE name = '닥터멜락신 아쿠아 이온 플라즈마 수분 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019765911ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '닥터멜락신 아쿠아 이온 플라즈마 수분 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019765907ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '닥터멜락신 아쿠아 이온 플라즈마 수분 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019765908ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '닥터멜락신 아쿠아 이온 플라즈마 수분 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019765910ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '닥터멜락신 아쿠아 이온 플라즈마 수분 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '닥터멜락신 아쿠아 이온 플라즈마 수분 크림 50ml';


-- ================================

-- 상품: [케로피콜라보/150+150ml]비욘드 엔젤아쿠아 수분진정크림 150ml 1+1 기획 (체...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[케로피콜라보/150+150ml]비욘드 엔젤아쿠아 수분진정크림 150ml 1+1 기획 (체크 파우치 증정)',
 '[케로피콜라보/150+150ml]비욘드 엔젤아쿠아 수분진정크림 150ml 1+1 기획 (체크 파우치 증정)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비욘드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[케로피콜라보/150+150ml]비욘드 엔젤아쿠아 수분진정크림 150ml 1+1 기획 (체크 파우치 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[케로피콜라보/150+150ml]비욘드 엔젤아쿠아 수분진정크림 150ml 1+1 기획 (체크 파우치 증정)'), NOW(), NOW()),
(19760, 'SALE', (SELECT id FROM product WHERE name = '[케로피콜라보/150+150ml]비욘드 엔젤아쿠아 수분진정크림 150ml 1+1 기획 (체크 파우치 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022282407ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[케로피콜라보/150+150ml]비욘드 엔젤아쿠아 수분진정크림 150ml 1+1 기획 (체크 파우치 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022282403ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[케로피콜라보/150+150ml]비욘드 엔젤아쿠아 수분진정크림 150ml 1+1 기획 (체크 파우치 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022282404ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[케로피콜라보/150+150ml]비욘드 엔젤아쿠아 수분진정크림 150ml 1+1 기획 (체크 파우치 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022282405ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[케로피콜라보/150+150ml]비욘드 엔젤아쿠아 수분진정크림 150ml 1+1 기획 (체크 파우치 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022282406ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[케로피콜라보/150+150ml]비욘드 엔젤아쿠아 수분진정크림 150ml 1+1 기획 (체크 파우치 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[케로피콜라보/150+150ml]비욘드 엔젤아쿠아 수분진정크림 150ml 1+1 기획 (체크 파우치 증정)';


-- ================================

-- 상품: DR다룸 베리어 크림 75ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('DR다룸 베리어 크림 75ml',
 'DR다룸 베리어 크림 75ml',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '다룸'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = 'DR다룸 베리어 크림 75ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = 'DR다룸 베리어 크림 75ml'), NOW(), NOW()),
(19600, 'SALE', (SELECT id FROM product WHERE name = 'DR다룸 베리어 크림 75ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014171203ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = 'DR다룸 베리어 크림 75ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = 'DR다룸 베리어 크림 75ml';


-- ================================

-- 상품: [수분진정] 라운드랩 포 맨 자작나무 수분 크림 75ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분진정] 라운드랩 포 맨 자작나무 수분 크림 75ml',
 '[수분진정] 라운드랩 포 맨 자작나무 수분 크림 75ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라운드랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분진정] 라운드랩 포 맨 자작나무 수분 크림 75ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분진정] 라운드랩 포 맨 자작나무 수분 크림 75ml'), NOW(), NOW()),
(19500, 'SALE', (SELECT id FROM product WHERE name = '[수분진정] 라운드랩 포 맨 자작나무 수분 크림 75ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016349617ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분진정] 라운드랩 포 맨 자작나무 수분 크림 75ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016349618ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분진정] 라운드랩 포 맨 자작나무 수분 크림 75ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분진정] 라운드랩 포 맨 자작나무 수분 크림 75ml';


-- ================================

-- 상품: [쿨링진정/수분홀딩] 허스텔러 원더 베지 하이드레이팅 젤 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[쿨링진정/수분홀딩] 허스텔러 원더 베지 하이드레이팅 젤 크림 50ml',
 '[쿨링진정/수분홀딩] 허스텔러 원더 베지 하이드레이팅 젤 크림 50ml',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '허스텔러'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[쿨링진정/수분홀딩] 허스텔러 원더 베지 하이드레이팅 젤 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[쿨링진정/수분홀딩] 허스텔러 원더 베지 하이드레이팅 젤 크림 50ml'), NOW(), NOW()),
(19500, 'SALE', (SELECT id FROM product WHERE name = '[쿨링진정/수분홀딩] 허스텔러 원더 베지 하이드레이팅 젤 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019978314ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[쿨링진정/수분홀딩] 허스텔러 원더 베지 하이드레이팅 젤 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019978313ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[쿨링진정/수분홀딩] 허스텔러 원더 베지 하이드레이팅 젤 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019978310ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[쿨링진정/수분홀딩] 허스텔러 원더 베지 하이드레이팅 젤 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019978309ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[쿨링진정/수분홀딩] 허스텔러 원더 베지 하이드레이팅 젤 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[쿨링진정/수분홀딩] 허스텔러 원더 베지 하이드레이팅 젤 크림 50ml';


-- ================================

-- 상품: [색소침착/미백] 마일드랩 딥 멜라케어 스팟 트리트먼트 오인트겔 20ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[색소침착/미백] 마일드랩 딥 멜라케어 스팟 트리트먼트 오인트겔 20ml',
 '[색소침착/미백] 마일드랩 딥 멜라케어 스팟 트리트먼트 오인트겔 20ml',
 4.6,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '마일드랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[색소침착/미백] 마일드랩 딥 멜라케어 스팟 트리트먼트 오인트겔 20ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[색소침착/미백] 마일드랩 딥 멜라케어 스팟 트리트먼트 오인트겔 20ml'), NOW(), NOW()),
(19500, 'SALE', (SELECT id FROM product WHERE name = '[색소침착/미백] 마일드랩 딥 멜라케어 스팟 트리트먼트 오인트겔 20ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021019612ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[색소침착/미백] 마일드랩 딥 멜라케어 스팟 트리트먼트 오인트겔 20ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021019611ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[색소침착/미백] 마일드랩 딥 멜라케어 스팟 트리트먼트 오인트겔 20ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021019609ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[색소침착/미백] 마일드랩 딥 멜라케어 스팟 트리트먼트 오인트겔 20ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021019604ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[색소침착/미백] 마일드랩 딥 멜라케어 스팟 트리트먼트 오인트겔 20ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021019603ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[색소침착/미백] 마일드랩 딥 멜라케어 스팟 트리트먼트 오인트겔 20ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[색소침착/미백] 마일드랩 딥 멜라케어 스팟 트리트먼트 오인트겔 20ml';


-- ================================

-- 상품: 바이오더마 아토덤 인텐시브 밤 75ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('바이오더마 아토덤 인텐시브 밤 75ml',
 '바이오더마 아토덤 인텐시브 밤 75ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오더마'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '바이오더마 아토덤 인텐시브 밤 75ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(19000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바이오더마 아토덤 인텐시브 밤 75ml'), NOW(), NOW()),
(19000, 'SALE', (SELECT id FROM product WHERE name = '바이오더마 아토덤 인텐시브 밤 75ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014395816ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바이오더마 아토덤 인텐시브 밤 75ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014395815ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '바이오더마 아토덤 인텐시브 밤 75ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014395814ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '바이오더마 아토덤 인텐시브 밤 75ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '바이오더마 아토덤 인텐시브 밤 75ml';


-- ================================

-- 상품: [손상/장벽 리페어] 아벤느 시칼파트 플러스 SOS 리페어 크림 40ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[손상/장벽 리페어] 아벤느 시칼파트 플러스 SOS 리페어 크림 40ml',
 '[손상/장벽 리페어] 아벤느 시칼파트 플러스 SOS 리페어 크림 40ml',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아벤느'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[손상/장벽 리페어] 아벤느 시칼파트 플러스 SOS 리페어 크림 40ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[손상/장벽 리페어] 아벤느 시칼파트 플러스 SOS 리페어 크림 40ml'), NOW(), NOW()),
(18900, 'SALE', (SELECT id FROM product WHERE name = '[손상/장벽 리페어] 아벤느 시칼파트 플러스 SOS 리페어 크림 40ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013567216ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[손상/장벽 리페어] 아벤느 시칼파트 플러스 SOS 리페어 크림 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013567220ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[손상/장벽 리페어] 아벤느 시칼파트 플러스 SOS 리페어 크림 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013567219ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[손상/장벽 리페어] 아벤느 시칼파트 플러스 SOS 리페어 크림 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013567218ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[손상/장벽 리페어] 아벤느 시칼파트 플러스 SOS 리페어 크림 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013567217ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[손상/장벽 리페어] 아벤느 시칼파트 플러스 SOS 리페어 크림 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013567215ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[손상/장벽 리페어] 아벤느 시칼파트 플러스 SOS 리페어 크림 40ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[손상/장벽 리페어] 아벤느 시칼파트 플러스 SOS 리페어 크림 40ml';


-- ================================

-- 상품: [트러블부위 진정케어] 피캄 센텔라 트러블 스팟 15ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[트러블부위 진정케어] 피캄 센텔라 트러블 스팟 15ml',
 '[트러블부위 진정케어] 피캄 센텔라 트러블 스팟 15ml',
 4.5,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '피캄'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[트러블부위 진정케어] 피캄 센텔라 트러블 스팟 15ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24800, 'ORIGINAL', (SELECT id FROM product WHERE name = '[트러블부위 진정케어] 피캄 센텔라 트러블 스팟 15ml'), NOW(), NOW()),
(18900, 'SALE', (SELECT id FROM product WHERE name = '[트러블부위 진정케어] 피캄 센텔라 트러블 스팟 15ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020631201ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[트러블부위 진정케어] 피캄 센텔라 트러블 스팟 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020631205ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[트러블부위 진정케어] 피캄 센텔라 트러블 스팟 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020631204ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[트러블부위 진정케어] 피캄 센텔라 트러블 스팟 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020631203ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[트러블부위 진정케어] 피캄 센텔라 트러블 스팟 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020631202ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[트러블부위 진정케어] 피캄 센텔라 트러블 스팟 15ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[트러블부위 진정케어] 피캄 센텔라 트러블 스팟 15ml';


-- ================================

-- 상품: [NEW] 브링그린 사철쑥카밍EX수분크림 100mL...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW] 브링그린 사철쑥카밍EX수분크림 100mL',
 '[NEW] 브링그린 사철쑥카밍EX수분크림 100mL',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '브링그린'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW] 브링그린 사철쑥카밍EX수분크림 100mL'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(21000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW] 브링그린 사철쑥카밍EX수분크림 100mL'), NOW(), NOW()),
(18900, 'SALE', (SELECT id FROM product WHERE name = '[NEW] 브링그린 사철쑥카밍EX수분크림 100mL'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021499112ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW] 브링그린 사철쑥카밍EX수분크림 100mL'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021499111ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW] 브링그린 사철쑥카밍EX수분크림 100mL'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021499113ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW] 브링그린 사철쑥카밍EX수분크림 100mL'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021499114ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[NEW] 브링그린 사철쑥카밍EX수분크림 100mL'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021499110ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[NEW] 브링그린 사철쑥카밍EX수분크림 100mL'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW] 브링그린 사철쑥카밍EX수분크림 100mL';


-- ================================

-- 상품: [리뷰이벤트] 더마팩토리 레티날 300ppm크림 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[리뷰이벤트] 더마팩토리 레티날 300ppm크림 30ml',
 '[리뷰이벤트] 더마팩토리 레티날 300ppm크림 30ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더마팩토리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 레티날 300ppm크림 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(9000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 레티날 300ppm크림 30ml'), NOW(), NOW()),
(8550, 'SALE', (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 레티날 300ppm크림 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022825906ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 레티날 300ppm크림 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022825904ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 레티날 300ppm크림 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022825903ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 레티날 300ppm크림 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022825902ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 레티날 300ppm크림 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022825901ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 레티날 300ppm크림 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[리뷰이벤트] 더마팩토리 레티날 300ppm크림 30ml';


-- ================================

-- 상품: [의약외품/스팟케어템] 파티온 센테카솔 연고 10g (센텔라정량추출물)(티트리향)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[의약외품/스팟케어템] 파티온 센테카솔 연고 10g (센텔라정량추출물)(티트리향)',
 '[의약외품/스팟케어템] 파티온 센테카솔 연고 10g (센텔라정량추출물)(티트리향)',
 4.6,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '파티온'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[의약외품/스팟케어템] 파티온 센테카솔 연고 10g (센텔라정량추출물)(티트리향)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(17000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[의약외품/스팟케어템] 파티온 센테카솔 연고 10g (센텔라정량추출물)(티트리향)'), NOW(), NOW()),
(17000, 'SALE', (SELECT id FROM product WHERE name = '[의약외품/스팟케어템] 파티온 센테카솔 연고 10g (센텔라정량추출물)(티트리향)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021033302ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[의약외품/스팟케어템] 파티온 센테카솔 연고 10g (센텔라정량추출물)(티트리향)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021033303ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[의약외품/스팟케어템] 파티온 센테카솔 연고 10g (센텔라정량추출물)(티트리향)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[의약외품/스팟케어템] 파티온 센테카솔 연고 10g (센텔라정량추출물)(티트리향)';


-- ================================

-- 상품: [리뷰이벤트] 더마팩토리 트라넥삼산 6% 크림 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[리뷰이벤트] 더마팩토리 트라넥삼산 6% 크림 30ml',
 '[리뷰이벤트] 더마팩토리 트라넥삼산 6% 크림 30ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더마팩토리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 트라넥삼산 6% 크림 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(8000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 트라넥삼산 6% 크림 30ml'), NOW(), NOW()),
(7600, 'SALE', (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 트라넥삼산 6% 크림 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022825706ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 트라넥삼산 6% 크림 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022825704ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 트라넥삼산 6% 크림 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022825703ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 트라넥삼산 6% 크림 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022825702ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 트라넥삼산 6% 크림 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022825701ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 트라넥삼산 6% 크림 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[리뷰이벤트] 더마팩토리 트라넥삼산 6% 크림 30ml';


-- ================================

-- 상품: 더랩바이블랑두 저분자 히알루론산 카밍+ 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('더랩바이블랑두 저분자 히알루론산 카밍+ 크림 50ml',
 '더랩바이블랑두 저분자 히알루론산 카밍+ 크림 50ml',
 4.6,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더랩바이블랑두'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '더랩바이블랑두 저분자 히알루론산 카밍+ 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '더랩바이블랑두 저분자 히알루론산 카밍+ 크림 50ml'), NOW(), NOW()),
(16500, 'SALE', (SELECT id FROM product WHERE name = '더랩바이블랑두 저분자 히알루론산 카밍+ 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013534008ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '더랩바이블랑두 저분자 히알루론산 카밍+ 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013534010ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '더랩바이블랑두 저분자 히알루론산 카밍+ 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013534009ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '더랩바이블랑두 저분자 히알루론산 카밍+ 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '더랩바이블랑두 저분자 히알루론산 카밍+ 크림 50ml';


-- ================================

-- 상품: 더마픽스 리얼 콜라겐 텐션업 멀티스틱밤...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('더마픽스 리얼 콜라겐 텐션업 멀티스틱밤',
 '더마픽스 리얼 콜라겐 텐션업 멀티스틱밤',
 4.5,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더마픽스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '더마픽스 리얼 콜라겐 텐션업 멀티스틱밤'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(20000, 'ORIGINAL', (SELECT id FROM product WHERE name = '더마픽스 리얼 콜라겐 텐션업 멀티스틱밤'), NOW(), NOW()),
(16000, 'SALE', (SELECT id FROM product WHERE name = '더마픽스 리얼 콜라겐 텐션업 멀티스틱밤'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015433002ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '더마픽스 리얼 콜라겐 텐션업 멀티스틱밤'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '더마픽스 리얼 콜라겐 텐션업 멀티스틱밤';


-- ================================

-- 상품: [수분부스팅/7중히알루론산] 셀퓨전씨 포스트 알파 아쿠아포린 크림 60ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분부스팅/7중히알루론산] 셀퓨전씨 포스트 알파 아쿠아포린 크림 60ml',
 '[수분부스팅/7중히알루론산] 셀퓨전씨 포스트 알파 아쿠아포린 크림 60ml',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '셀퓨전씨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분부스팅/7중히알루론산] 셀퓨전씨 포스트 알파 아쿠아포린 크림 60ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분부스팅/7중히알루론산] 셀퓨전씨 포스트 알파 아쿠아포린 크림 60ml'), NOW(), NOW()),
(15500, 'SALE', (SELECT id FROM product WHERE name = '[수분부스팅/7중히알루론산] 셀퓨전씨 포스트 알파 아쿠아포린 크림 60ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014102808ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분부스팅/7중히알루론산] 셀퓨전씨 포스트 알파 아쿠아포린 크림 60ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014102811ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[수분부스팅/7중히알루론산] 셀퓨전씨 포스트 알파 아쿠아포린 크림 60ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014102810ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분부스팅/7중히알루론산] 셀퓨전씨 포스트 알파 아쿠아포린 크림 60ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분부스팅/7중히알루론산] 셀퓨전씨 포스트 알파 아쿠아포린 크림 60ml';


-- ================================

-- 상품: [에이든팍 PICK] 다슈 보이 파란 수분초 수분크림 150ml 기획 (+수분크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[에이든팍 PICK] 다슈 보이 파란 수분초 수분크림 150ml 기획 (+수분크림 50ml)',
 '[에이든팍 PICK] 다슈 보이 파란 수분초 수분크림 150ml 기획 (+수분크림 50ml)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '다슈'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[에이든팍 PICK] 다슈 보이 파란 수분초 수분크림 150ml 기획 (+수분크림 50ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[에이든팍 PICK] 다슈 보이 파란 수분초 수분크림 150ml 기획 (+수분크림 50ml)'), NOW(), NOW()),
(14800, 'SALE', (SELECT id FROM product WHERE name = '[에이든팍 PICK] 다슈 보이 파란 수분초 수분크림 150ml 기획 (+수분크림 50ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020416003ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[에이든팍 PICK] 다슈 보이 파란 수분초 수분크림 150ml 기획 (+수분크림 50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020416001ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[에이든팍 PICK] 다슈 보이 파란 수분초 수분크림 150ml 기획 (+수분크림 50ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[에이든팍 PICK] 다슈 보이 파란 수분초 수분크림 150ml 기획 (+수분크림 50ml)';


-- ================================

-- 상품: 이즈앤트리 히아루론산 아쿠아 젤 크림 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('이즈앤트리 히아루론산 아쿠아 젤 크림 100ml',
 '이즈앤트리 히아루론산 아쿠아 젤 크림 100ml',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '이즈앤트리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '이즈앤트리 히아루론산 아쿠아 젤 크림 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(20000, 'ORIGINAL', (SELECT id FROM product WHERE name = '이즈앤트리 히아루론산 아쿠아 젤 크림 100ml'), NOW(), NOW()),
(12900, 'SALE', (SELECT id FROM product WHERE name = '이즈앤트리 히아루론산 아쿠아 젤 크림 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014913810ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '이즈앤트리 히아루론산 아쿠아 젤 크림 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014913811ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '이즈앤트리 히아루론산 아쿠아 젤 크림 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014913812ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '이즈앤트리 히아루론산 아쿠아 젤 크림 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014913808ko.png?l=ko', 4, (SELECT id FROM product WHERE name = '이즈앤트리 히아루론산 아쿠아 젤 크림 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '이즈앤트리 히아루론산 아쿠아 젤 크림 100ml';


-- ================================

-- 상품: [도운 PICK] 파파레서피 마데케어 연고 33g...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[도운 PICK] 파파레서피 마데케어 연고 33g',
 '[도운 PICK] 파파레서피 마데케어 연고 33g',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '파파레서피'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[도운 PICK] 파파레서피 마데케어 연고 33g'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(22000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[도운 PICK] 파파레서피 마데케어 연고 33g'), NOW(), NOW()),
(12320, 'SALE', (SELECT id FROM product WHERE name = '[도운 PICK] 파파레서피 마데케어 연고 33g'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020700111ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[도운 PICK] 파파레서피 마데케어 연고 33g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020700109ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[도운 PICK] 파파레서피 마데케어 연고 33g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020700106ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[도운 PICK] 파파레서피 마데케어 연고 33g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020700107ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[도운 PICK] 파파레서피 마데케어 연고 33g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020700108ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[도운 PICK] 파파레서피 마데케어 연고 33g'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[도운 PICK] 파파레서피 마데케어 연고 33g';


-- ================================

-- 상품: [화잘먹/엑소좀 진정크림] 리브엠 시카좀 카밍 워터 젤크림 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[화잘먹/엑소좀 진정크림] 리브엠 시카좀 카밍 워터 젤크림 100ml',
 '[화잘먹/엑소좀 진정크림] 리브엠 시카좀 카밍 워터 젤크림 100ml',
 5.0,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '리브엠'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[화잘먹/엑소좀 진정크림] 리브엠 시카좀 카밍 워터 젤크림 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(12900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[화잘먹/엑소좀 진정크림] 리브엠 시카좀 카밍 워터 젤크림 100ml'), NOW(), NOW()),
(12300, 'SALE', (SELECT id FROM product WHERE name = '[화잘먹/엑소좀 진정크림] 리브엠 시카좀 카밍 워터 젤크림 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023273009ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[화잘먹/엑소좀 진정크림] 리브엠 시카좀 카밍 워터 젤크림 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023273001ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[화잘먹/엑소좀 진정크림] 리브엠 시카좀 카밍 워터 젤크림 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023273008ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[화잘먹/엑소좀 진정크림] 리브엠 시카좀 카밍 워터 젤크림 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023273006ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[화잘먹/엑소좀 진정크림] 리브엠 시카좀 카밍 워터 젤크림 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023273005ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[화잘먹/엑소좀 진정크림] 리브엠 시카좀 카밍 워터 젤크림 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023273004ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[화잘먹/엑소좀 진정크림] 리브엠 시카좀 카밍 워터 젤크림 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[화잘먹/엑소좀 진정크림] 리브엠 시카좀 카밍 워터 젤크림 100ml';


-- ================================

-- 상품: [화잘먹/엑소좀 수분크림] 리브엠 워터핏 8중 수분착붙 크림 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[화잘먹/엑소좀 수분크림] 리브엠 워터핏 8중 수분착붙 크림 100ml',
 '[화잘먹/엑소좀 수분크림] 리브엠 워터핏 8중 수분착붙 크림 100ml',
 5.0,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '리브엠'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[화잘먹/엑소좀 수분크림] 리브엠 워터핏 8중 수분착붙 크림 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(12900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[화잘먹/엑소좀 수분크림] 리브엠 워터핏 8중 수분착붙 크림 100ml'), NOW(), NOW()),
(12300, 'SALE', (SELECT id FROM product WHERE name = '[화잘먹/엑소좀 수분크림] 리브엠 워터핏 8중 수분착붙 크림 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023273114ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[화잘먹/엑소좀 수분크림] 리브엠 워터핏 8중 수분착붙 크림 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023273107ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[화잘먹/엑소좀 수분크림] 리브엠 워터핏 8중 수분착붙 크림 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023273113ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[화잘먹/엑소좀 수분크림] 리브엠 워터핏 8중 수분착붙 크림 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023273111ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[화잘먹/엑소좀 수분크림] 리브엠 워터핏 8중 수분착붙 크림 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023273110ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[화잘먹/엑소좀 수분크림] 리브엠 워터핏 8중 수분착붙 크림 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023273109ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[화잘먹/엑소좀 수분크림] 리브엠 워터핏 8중 수분착붙 크림 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[화잘먹/엑소좀 수분크림] 리브엠 워터핏 8중 수분착붙 크림 100ml';


-- ================================

-- 상품: [붉은피부진정/속보습] 에딧비 진정 톡 시카 어성초 크림 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[붉은피부진정/속보습] 에딧비 진정 톡 시카 어성초 크림 100ml',
 '[붉은피부진정/속보습] 에딧비 진정 톡 시카 어성초 크림 100ml',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에딧비'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[붉은피부진정/속보습] 에딧비 진정 톡 시카 어성초 크림 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[붉은피부진정/속보습] 에딧비 진정 톡 시카 어성초 크림 100ml'), NOW(), NOW()),
(12000, 'SALE', (SELECT id FROM product WHERE name = '[붉은피부진정/속보습] 에딧비 진정 톡 시카 어성초 크림 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020805508ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[붉은피부진정/속보습] 에딧비 진정 톡 시카 어성초 크림 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020805507ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[붉은피부진정/속보습] 에딧비 진정 톡 시카 어성초 크림 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020805510ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[붉은피부진정/속보습] 에딧비 진정 톡 시카 어성초 크림 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020805509ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[붉은피부진정/속보습] 에딧비 진정 톡 시카 어성초 크림 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020805502ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[붉은피부진정/속보습] 에딧비 진정 톡 시카 어성초 크림 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020805503ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[붉은피부진정/속보습] 에딧비 진정 톡 시카 어성초 크림 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[붉은피부진정/속보습] 에딧비 진정 톡 시카 어성초 크림 100ml';


-- ================================

-- 상품: 아크네스 모이스처 크림 60ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아크네스 모이스처 크림 60ml',
 '아크네스 모이스처 크림 60ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아크네스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아크네스 모이스처 크림 60ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(18000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아크네스 모이스처 크림 60ml'), NOW(), NOW()),
(10800, 'SALE', (SELECT id FROM product WHERE name = '아크네스 모이스처 크림 60ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015081813ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아크네스 모이스처 크림 60ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015081812ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아크네스 모이스처 크림 60ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015081810ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아크네스 모이스처 크림 60ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아크네스 모이스처 크림 60ml';


-- ================================

-- 상품: [고보습광채크림] 하다라보 고쿠쥰 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[고보습광채크림] 하다라보 고쿠쥰 크림 50ml',
 '[고보습광채크림] 하다라보 고쿠쥰 크림 50ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '하다라보'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[고보습광채크림] 하다라보 고쿠쥰 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(21000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[고보습광채크림] 하다라보 고쿠쥰 크림 50ml'), NOW(), NOW()),
(10500, 'SALE', (SELECT id FROM product WHERE name = '[고보습광채크림] 하다라보 고쿠쥰 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014491810ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[고보습광채크림] 하다라보 고쿠쥰 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014491809ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[고보습광채크림] 하다라보 고쿠쥰 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014491808ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[고보습광채크림] 하다라보 고쿠쥰 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014491807ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[고보습광채크림] 하다라보 고쿠쥰 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014491806ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[고보습광채크림] 하다라보 고쿠쥰 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[고보습광채크림] 하다라보 고쿠쥰 크림 50ml';


-- ================================

-- 상품: [리뷰이벤트] 더마팩토리 바쿠치올 1% 크림 30g...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[리뷰이벤트] 더마팩토리 바쿠치올 1% 크림 30g',
 '[리뷰이벤트] 더마팩토리 바쿠치올 1% 크림 30g',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더마팩토리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 바쿠치올 1% 크림 30g'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(8000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 바쿠치올 1% 크림 30g'), NOW(), NOW()),
(7600, 'SALE', (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 바쿠치올 1% 크림 30g'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022825506ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 바쿠치올 1% 크림 30g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022825504ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 바쿠치올 1% 크림 30g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022825503ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 바쿠치올 1% 크림 30g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022825502ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 바쿠치올 1% 크림 30g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022825501ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 바쿠치올 1% 크림 30g'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[리뷰이벤트] 더마팩토리 바쿠치올 1% 크림 30g';


-- ================================

-- 상품: [닥터이아소] 트리플 엠 하이드레이팅 크림...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[닥터이아소] 트리플 엠 하이드레이팅 크림',
 '[닥터이아소] 트리플 엠 하이드레이팅 크림',
 4.6,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '이아소'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[닥터이아소] 트리플 엠 하이드레이팅 크림'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[닥터이아소] 트리플 엠 하이드레이팅 크림'), NOW(), NOW()),
(33000, 'SALE', (SELECT id FROM product WHERE name = '[닥터이아소] 트리플 엠 하이드레이팅 크림'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0000/A00000000601401ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[닥터이아소] 트리플 엠 하이드레이팅 크림'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0000/A00000000601402ko.jpeg?l=ko', 2, (SELECT id FROM product WHERE name = '[닥터이아소] 트리플 엠 하이드레이팅 크림'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[닥터이아소] 트리플 엠 하이드레이팅 크림';


-- ================================

-- 상품: 불독 오리지널 모이스처라이저 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('불독 오리지널 모이스처라이저 100ml',
 '불독 오리지널 모이스처라이저 100ml',
 4.6,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '불독'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '불독 오리지널 모이스처라이저 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '불독 오리지널 모이스처라이저 100ml'), NOW(), NOW()),
(32000, 'SALE', (SELECT id FROM product WHERE name = '불독 오리지널 모이스처라이저 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0000/A00000000708809ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '불독 오리지널 모이스처라이저 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0000/A00000000708808ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '불독 오리지널 모이스처라이저 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0000/A00000000708807ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '불독 오리지널 모이스처라이저 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '불독 오리지널 모이스처라이저 100ml';


-- ================================

-- 상품: [고보습나이트크림] 하다라보 고쿠쥰 퍼펙트 젤 100g...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[고보습나이트크림] 하다라보 고쿠쥰 퍼펙트 젤 100g',
 '[고보습나이트크림] 하다라보 고쿠쥰 퍼펙트 젤 100g',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '하다라보'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[고보습나이트크림] 하다라보 고쿠쥰 퍼펙트 젤 100g'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[고보습나이트크림] 하다라보 고쿠쥰 퍼펙트 젤 100g'), NOW(), NOW()),
(38000, 'SALE', (SELECT id FROM product WHERE name = '[고보습나이트크림] 하다라보 고쿠쥰 퍼펙트 젤 100g'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0000/A00000000775016ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[고보습나이트크림] 하다라보 고쿠쥰 퍼펙트 젤 100g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0000/A00000000775015ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[고보습나이트크림] 하다라보 고쿠쥰 퍼펙트 젤 100g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0000/A00000000775014ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[고보습나이트크림] 하다라보 고쿠쥰 퍼펙트 젤 100g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0000/A00000000775013ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[고보습나이트크림] 하다라보 고쿠쥰 퍼펙트 젤 100g'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[고보습나이트크림] 하다라보 고쿠쥰 퍼펙트 젤 100g';


-- ================================

-- 상품: [수분크림] 유세린 아쿠아포린 액티브 크림 포 드라이 스킨 50ml 건성피부용...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분크림] 유세린 아쿠아포린 액티브 크림 포 드라이 스킨 50ml 건성피부용',
 '[수분크림] 유세린 아쿠아포린 액티브 크림 포 드라이 스킨 50ml 건성피부용',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유세린'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분크림] 유세린 아쿠아포린 액티브 크림 포 드라이 스킨 50ml 건성피부용'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(42000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분크림] 유세린 아쿠아포린 액티브 크림 포 드라이 스킨 50ml 건성피부용'), NOW(), NOW()),
(29400, 'SALE', (SELECT id FROM product WHERE name = '[수분크림] 유세린 아쿠아포린 액티브 크림 포 드라이 스킨 50ml 건성피부용'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001262111ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분크림] 유세린 아쿠아포린 액티브 크림 포 드라이 스킨 50ml 건성피부용'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001262110ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분크림] 유세린 아쿠아포린 액티브 크림 포 드라이 스킨 50ml 건성피부용'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분크림] 유세린 아쿠아포린 액티브 크림 포 드라이 스킨 50ml 건성피부용';


-- ================================

-- 상품: [수분크림] 유세린 아쿠아포린 액티브 포 노멀 투 컴비네이션 스킨 50ml 복합성피부용...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분크림] 유세린 아쿠아포린 액티브 포 노멀 투 컴비네이션 스킨 50ml 복합성피부용',
 '[수분크림] 유세린 아쿠아포린 액티브 포 노멀 투 컴비네이션 스킨 50ml 복합성피부용',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유세린'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분크림] 유세린 아쿠아포린 액티브 포 노멀 투 컴비네이션 스킨 50ml 복합성피부용'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(42000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분크림] 유세린 아쿠아포린 액티브 포 노멀 투 컴비네이션 스킨 50ml 복합성피부용'), NOW(), NOW()),
(29400, 'SALE', (SELECT id FROM product WHERE name = '[수분크림] 유세린 아쿠아포린 액티브 포 노멀 투 컴비네이션 스킨 50ml 복합성피부용'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001538911ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분크림] 유세린 아쿠아포린 액티브 포 노멀 투 컴비네이션 스킨 50ml 복합성피부용'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001538910ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분크림] 유세린 아쿠아포린 액티브 포 노멀 투 컴비네이션 스킨 50ml 복합성피부용'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분크림] 유세린 아쿠아포린 액티브 포 노멀 투 컴비네이션 스킨 50ml 복합성피부용';


-- ================================

-- 상품: 유세린 볼륨리프팅 나이트 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('유세린 볼륨리프팅 나이트 크림 50ml',
 '유세린 볼륨리프팅 나이트 크림 50ml',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유세린'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '유세린 볼륨리프팅 나이트 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(56000, 'ORIGINAL', (SELECT id FROM product WHERE name = '유세린 볼륨리프팅 나이트 크림 50ml'), NOW(), NOW()),
(37500, 'SALE', (SELECT id FROM product WHERE name = '유세린 볼륨리프팅 나이트 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001680808ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '유세린 볼륨리프팅 나이트 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001680809ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '유세린 볼륨리프팅 나이트 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '유세린 볼륨리프팅 나이트 크림 50ml';


-- ================================

-- 상품: 유세린 볼륨리프팅 데이크림 포 드라이스킨 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('유세린 볼륨리프팅 데이크림 포 드라이스킨 50ml',
 '유세린 볼륨리프팅 데이크림 포 드라이스킨 50ml',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유세린'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '유세린 볼륨리프팅 데이크림 포 드라이스킨 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(52000, 'ORIGINAL', (SELECT id FROM product WHERE name = '유세린 볼륨리프팅 데이크림 포 드라이스킨 50ml'), NOW(), NOW()),
(35900, 'SALE', (SELECT id FROM product WHERE name = '유세린 볼륨리프팅 데이크림 포 드라이스킨 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001680908ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '유세린 볼륨리프팅 데이크림 포 드라이스킨 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001680909ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '유세린 볼륨리프팅 데이크림 포 드라이스킨 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '유세린 볼륨리프팅 데이크림 포 드라이스킨 50ml';


-- ================================

-- 상품: [2600만개 판매] 유세린 하이알루론 3X 나이트크림 50ML...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[2600만개 판매] 유세린 하이알루론 3X 나이트크림 50ML',
 '[2600만개 판매] 유세린 하이알루론 3X 나이트크림 50ML',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유세린'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[2600만개 판매] 유세린 하이알루론 3X 나이트크림 50ML'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(68000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[2600만개 판매] 유세린 하이알루론 3X 나이트크림 50ML'), NOW(), NOW()),
(68000, 'SALE', (SELECT id FROM product WHERE name = '[2600만개 판매] 유세린 하이알루론 3X 나이트크림 50ML'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011217231ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[2600만개 판매] 유세린 하이알루론 3X 나이트크림 50ML'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011217232ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[2600만개 판매] 유세린 하이알루론 3X 나이트크림 50ML'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011217230ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[2600만개 판매] 유세린 하이알루론 3X 나이트크림 50ML'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011217229ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[2600만개 판매] 유세린 하이알루론 3X 나이트크림 50ML'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011217234ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[2600만개 판매] 유세린 하이알루론 3X 나이트크림 50ML'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[2600만개 판매] 유세린 하이알루론 3X 나이트크림 50ML';


-- ================================

-- 상품: 달팡 하이드라스킨 리치 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('달팡 하이드라스킨 리치 크림 50ml',
 '달팡 하이드라스킨 리치 크림 50ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '달팡'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '달팡 하이드라스킨 리치 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(72000, 'ORIGINAL', (SELECT id FROM product WHERE name = '달팡 하이드라스킨 리치 크림 50ml'), NOW(), NOW()),
(61200, 'SALE', (SELECT id FROM product WHERE name = '달팡 하이드라스킨 리치 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011549932ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '달팡 하이드라스킨 리치 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011549933ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '달팡 하이드라스킨 리치 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '달팡 하이드라스킨 리치 크림 50ml';


-- ================================

-- 상품: 달팡 하이드라스킨 라이트 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('달팡 하이드라스킨 라이트 크림 50ml',
 '달팡 하이드라스킨 라이트 크림 50ml',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '달팡'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '달팡 하이드라스킨 라이트 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(72000, 'ORIGINAL', (SELECT id FROM product WHERE name = '달팡 하이드라스킨 라이트 크림 50ml'), NOW(), NOW()),
(61200, 'SALE', (SELECT id FROM product WHERE name = '달팡 하이드라스킨 라이트 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011550232ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '달팡 하이드라스킨 라이트 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011550233ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '달팡 하이드라스킨 라이트 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '달팡 하이드라스킨 라이트 크림 50ml';


-- ================================

-- 상품: [끝장크림] 시카고 시카 피니쉬 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[끝장크림] 시카고 시카 피니쉬 크림 50ml',
 '[끝장크림] 시카고 시카 피니쉬 크림 50ml',
 4.6,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '시카고'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[끝장크림] 시카고 시카 피니쉬 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(43000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[끝장크림] 시카고 시카 피니쉬 크림 50ml'), NOW(), NOW()),
(30100, 'SALE', (SELECT id FROM product WHERE name = '[끝장크림] 시카고 시카 피니쉬 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011600409ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[끝장크림] 시카고 시카 피니쉬 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011600410ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[끝장크림] 시카고 시카 피니쉬 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011600408ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[끝장크림] 시카고 시카 피니쉬 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011600407ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[끝장크림] 시카고 시카 피니쉬 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[끝장크림] 시카고 시카 피니쉬 크림 50ml';


-- ================================

-- 상품: 유리아쥬 오 떼르말 워터 크림 40ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('유리아쥬 오 떼르말 워터 크림 40ml',
 '유리아쥬 오 떼르말 워터 크림 40ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유리아쥬'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '유리아쥬 오 떼르말 워터 크림 40ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '유리아쥬 오 떼르말 워터 크림 40ml'), NOW(), NOW()),
(24000, 'SALE', (SELECT id FROM product WHERE name = '유리아쥬 오 떼르말 워터 크림 40ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011603216ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '유리아쥬 오 떼르말 워터 크림 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011603215ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '유리아쥬 오 떼르말 워터 크림 40ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '유리아쥬 오 떼르말 워터 크림 40ml';


-- ================================

-- 상품: 엠브리올리스 레 크렘 콘센트레 75ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('엠브리올리스 레 크렘 콘센트레 75ml',
 '엠브리올리스 레 크렘 콘센트레 75ml',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '엠브리올리스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '엠브리올리스 레 크렘 콘센트레 75ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(49000, 'ORIGINAL', (SELECT id FROM product WHERE name = '엠브리올리스 레 크렘 콘센트레 75ml'), NOW(), NOW()),
(34300, 'SALE', (SELECT id FROM product WHERE name = '엠브리올리스 레 크렘 콘센트레 75ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011762404ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '엠브리올리스 레 크렘 콘센트레 75ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '엠브리올리스 레 크렘 콘센트레 75ml';


-- ================================

-- 상품: [수분크림1+1] 유세린 아쿠아포린 액티브 리치크림 건성피부용 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분크림1+1] 유세린 아쿠아포린 액티브 리치크림 건성피부용 50ml',
 '[수분크림1+1] 유세린 아쿠아포린 액티브 리치크림 건성피부용 50ml',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유세린'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분크림1+1] 유세린 아쿠아포린 액티브 리치크림 건성피부용 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(42000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분크림1+1] 유세린 아쿠아포린 액티브 리치크림 건성피부용 50ml'), NOW(), NOW()),
(37800, 'SALE', (SELECT id FROM product WHERE name = '[수분크림1+1] 유세린 아쿠아포린 액티브 리치크림 건성피부용 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011879725ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분크림1+1] 유세린 아쿠아포린 액티브 리치크림 건성피부용 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011879726ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분크림1+1] 유세린 아쿠아포린 액티브 리치크림 건성피부용 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011879718ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분크림1+1] 유세린 아쿠아포린 액티브 리치크림 건성피부용 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011879719ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[수분크림1+1] 유세린 아쿠아포린 액티브 리치크림 건성피부용 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분크림1+1] 유세린 아쿠아포린 액티브 리치크림 건성피부용 50ml';


-- ================================

-- 상품: [수분크림1+1] 유세린 아쿠아포린 액티브 라이트크림 복합성용 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분크림1+1] 유세린 아쿠아포린 액티브 라이트크림 복합성용 50ml',
 '[수분크림1+1] 유세린 아쿠아포린 액티브 라이트크림 복합성용 50ml',
 4.6,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유세린'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분크림1+1] 유세린 아쿠아포린 액티브 라이트크림 복합성용 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(42000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분크림1+1] 유세린 아쿠아포린 액티브 라이트크림 복합성용 50ml'), NOW(), NOW()),
(37800, 'SALE', (SELECT id FROM product WHERE name = '[수분크림1+1] 유세린 아쿠아포린 액티브 라이트크림 복합성용 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011879822ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분크림1+1] 유세린 아쿠아포린 액티브 라이트크림 복합성용 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011879823ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분크림1+1] 유세린 아쿠아포린 액티브 라이트크림 복합성용 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011879817ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분크림1+1] 유세린 아쿠아포린 액티브 라이트크림 복합성용 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011879818ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[수분크림1+1] 유세린 아쿠아포린 액티브 라이트크림 복합성용 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011879824ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[수분크림1+1] 유세린 아쿠아포린 액티브 라이트크림 복합성용 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분크림1+1] 유세린 아쿠아포린 액티브 라이트크림 복합성용 50ml';


-- ================================

-- 상품: [트러블상처연고/의약외품] 셀퓨전씨 포스트알파 센테카솔연고 40ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[트러블상처연고/의약외품] 셀퓨전씨 포스트알파 센테카솔연고 40ml',
 '[트러블상처연고/의약외품] 셀퓨전씨 포스트알파 센테카솔연고 40ml',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '셀퓨전씨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[트러블상처연고/의약외품] 셀퓨전씨 포스트알파 센테카솔연고 40ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[트러블상처연고/의약외품] 셀퓨전씨 포스트알파 센테카솔연고 40ml'), NOW(), NOW()),
(38000, 'SALE', (SELECT id FROM product WHERE name = '[트러블상처연고/의약외품] 셀퓨전씨 포스트알파 센테카솔연고 40ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011983906ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[트러블상처연고/의약외품] 셀퓨전씨 포스트알파 센테카솔연고 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011983905ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[트러블상처연고/의약외품] 셀퓨전씨 포스트알파 센테카솔연고 40ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[트러블상처연고/의약외품] 셀퓨전씨 포스트알파 센테카솔연고 40ml';


-- ================================

-- 상품: [응급진정/스팟케어]로벡틴 시카케어 스팟 밤 40ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[응급진정/스팟케어]로벡틴 시카케어 스팟 밤 40ml',
 '[응급진정/스팟케어]로벡틴 시카케어 스팟 밤 40ml',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '로벡틴'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[응급진정/스팟케어]로벡틴 시카케어 스팟 밤 40ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[응급진정/스팟케어]로벡틴 시카케어 스팟 밤 40ml'), NOW(), NOW()),
(18900, 'SALE', (SELECT id FROM product WHERE name = '[응급진정/스팟케어]로벡틴 시카케어 스팟 밤 40ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012193414ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[응급진정/스팟케어]로벡틴 시카케어 스팟 밤 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012193415ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[응급진정/스팟케어]로벡틴 시카케어 스팟 밤 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012193416ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[응급진정/스팟케어]로벡틴 시카케어 스팟 밤 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012193417ko.png?l=ko', 4, (SELECT id FROM product WHERE name = '[응급진정/스팟케어]로벡틴 시카케어 스팟 밤 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012193418ko.png?l=ko', 5, (SELECT id FROM product WHERE name = '[응급진정/스팟케어]로벡틴 시카케어 스팟 밤 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012193411ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[응급진정/스팟케어]로벡틴 시카케어 스팟 밤 40ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[응급진정/스팟케어]로벡틴 시카케어 스팟 밤 40ml';


-- ================================

-- 상품: 유리아쥬 오 떼르말 워터 젤크림 40ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('유리아쥬 오 떼르말 워터 젤크림 40ml',
 '유리아쥬 오 떼르말 워터 젤크림 40ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유리아쥬'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '유리아쥬 오 떼르말 워터 젤크림 40ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '유리아쥬 오 떼르말 워터 젤크림 40ml'), NOW(), NOW()),
(24000, 'SALE', (SELECT id FROM product WHERE name = '유리아쥬 오 떼르말 워터 젤크림 40ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012501219ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '유리아쥬 오 떼르말 워터 젤크림 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012501220ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '유리아쥬 오 떼르말 워터 젤크림 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012501218ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '유리아쥬 오 떼르말 워터 젤크림 40ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '유리아쥬 오 떼르말 워터 젤크림 40ml';


-- ================================

-- 상품: [장벽크림] 유세린 울트라 센서티브 리페어 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[장벽크림] 유세린 울트라 센서티브 리페어 크림 50ml',
 '[장벽크림] 유세린 울트라 센서티브 리페어 크림 50ml',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유세린'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[장벽크림] 유세린 울트라 센서티브 리페어 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[장벽크림] 유세린 울트라 센서티브 리페어 크림 50ml'), NOW(), NOW()),
(35000, 'SALE', (SELECT id FROM product WHERE name = '[장벽크림] 유세린 울트라 센서티브 리페어 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012647016ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[장벽크림] 유세린 울트라 센서티브 리페어 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012647017ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[장벽크림] 유세린 울트라 센서티브 리페어 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[장벽크림] 유세린 울트라 센서티브 리페어 크림 50ml';


-- ================================

-- 상품: [장벽크림] 유세린 울트라 센시티브 리페어 젤 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[장벽크림] 유세린 울트라 센시티브 리페어 젤 크림 50ml',
 '[장벽크림] 유세린 울트라 센시티브 리페어 젤 크림 50ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유세린'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[장벽크림] 유세린 울트라 센시티브 리페어 젤 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[장벽크림] 유세린 울트라 센시티브 리페어 젤 크림 50ml'), NOW(), NOW()),
(35000, 'SALE', (SELECT id FROM product WHERE name = '[장벽크림] 유세린 울트라 센시티브 리페어 젤 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012647110ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[장벽크림] 유세린 울트라 센시티브 리페어 젤 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[장벽크림] 유세린 울트라 센시티브 리페어 젤 크림 50ml';


-- ================================

-- 상품: 에르쯔틴 리제너레이티브 실트 크림 50g...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('에르쯔틴 리제너레이티브 실트 크림 50g',
 '에르쯔틴 리제너레이티브 실트 크림 50g',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에르쯔틴'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '에르쯔틴 리제너레이티브 실트 크림 50g'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(45000, 'ORIGINAL', (SELECT id FROM product WHERE name = '에르쯔틴 리제너레이티브 실트 크림 50g'), NOW(), NOW()),
(45000, 'SALE', (SELECT id FROM product WHERE name = '에르쯔틴 리제너레이티브 실트 크림 50g'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012808417ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '에르쯔틴 리제너레이티브 실트 크림 50g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012808418ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '에르쯔틴 리제너레이티브 실트 크림 50g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012808419ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '에르쯔틴 리제너레이티브 실트 크림 50g'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '에르쯔틴 리제너레이티브 실트 크림 50g';


-- ================================

-- 상품: 닥터자르트 컨트롤에이 티트리먼트 모이스처라이저 50ml (티트리 약산성 보습크림)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('닥터자르트 컨트롤에이 티트리먼트 모이스처라이저 50ml (티트리 약산성 보습크림)',
 '닥터자르트 컨트롤에이 티트리먼트 모이스처라이저 50ml (티트리 약산성 보습크림)',
 4.6,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터자르트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '닥터자르트 컨트롤에이 티트리먼트 모이스처라이저 50ml (티트리 약산성 보습크림)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(34000, 'ORIGINAL', (SELECT id FROM product WHERE name = '닥터자르트 컨트롤에이 티트리먼트 모이스처라이저 50ml (티트리 약산성 보습크림)'), NOW(), NOW()),
(34000, 'SALE', (SELECT id FROM product WHERE name = '닥터자르트 컨트롤에이 티트리먼트 모이스처라이저 50ml (티트리 약산성 보습크림)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012811007ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '닥터자르트 컨트롤에이 티트리먼트 모이스처라이저 50ml (티트리 약산성 보습크림)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012811005ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '닥터자르트 컨트롤에이 티트리먼트 모이스처라이저 50ml (티트리 약산성 보습크림)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '닥터자르트 컨트롤에이 티트리먼트 모이스처라이저 50ml (티트리 약산성 보습크림)';


-- ================================

-- 상품: 아임프롬 머그워트 크림 50g...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아임프롬 머그워트 크림 50g',
 '아임프롬 머그워트 크림 50g',
 4.6,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아임프롬'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아임프롬 머그워트 크림 50g'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아임프롬 머그워트 크림 50g'), NOW(), NOW()),
(25600, 'SALE', (SELECT id FROM product WHERE name = '아임프롬 머그워트 크림 50g'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012865606ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아임프롬 머그워트 크림 50g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012865604ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아임프롬 머그워트 크림 50g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012865605ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아임프롬 머그워트 크림 50g'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아임프롬 머그워트 크림 50g';


-- ================================

-- 상품: 코스알엑스 풀핏 프로폴리스 라이트 크림 65ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('코스알엑스 풀핏 프로폴리스 라이트 크림 65ml',
 '코스알엑스 풀핏 프로폴리스 라이트 크림 65ml',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '코스알엑스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '코스알엑스 풀핏 프로폴리스 라이트 크림 65ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '코스알엑스 풀핏 프로폴리스 라이트 크림 65ml'), NOW(), NOW()),
(15300, 'SALE', (SELECT id FROM product WHERE name = '코스알엑스 풀핏 프로폴리스 라이트 크림 65ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012957506ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '코스알엑스 풀핏 프로폴리스 라이트 크림 65ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012957508ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '코스알엑스 풀핏 프로폴리스 라이트 크림 65ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012957505ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '코스알엑스 풀핏 프로폴리스 라이트 크림 65ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012957503ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '코스알엑스 풀핏 프로폴리스 라이트 크림 65ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '코스알엑스 풀핏 프로폴리스 라이트 크림 65ml';


-- ================================

-- 상품: 엠도씨 울트라 수분 크림 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('엠도씨 울트라 수분 크림 100ml',
 '엠도씨 울트라 수분 크림 100ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '엠도씨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '엠도씨 울트라 수분 크림 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '엠도씨 울트라 수분 크림 100ml'), NOW(), NOW()),
(18400, 'SALE', (SELECT id FROM product WHERE name = '엠도씨 울트라 수분 크림 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013716202ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '엠도씨 울트라 수분 크림 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '엠도씨 울트라 수분 크림 100ml';


-- ================================

-- 상품: [43만개 판매/민감피부 구원템] 로벡틴 카밍 연꽃수 크림 60ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[43만개 판매/민감피부 구원템] 로벡틴 카밍 연꽃수 크림 60ml',
 '[43만개 판매/민감피부 구원템] 로벡틴 카밍 연꽃수 크림 60ml',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '로벡틴'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[43만개 판매/민감피부 구원템] 로벡틴 카밍 연꽃수 크림 60ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[43만개 판매/민감피부 구원템] 로벡틴 카밍 연꽃수 크림 60ml'), NOW(), NOW()),
(19200, 'SALE', (SELECT id FROM product WHERE name = '[43만개 판매/민감피부 구원템] 로벡틴 카밍 연꽃수 크림 60ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013748224ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[43만개 판매/민감피부 구원템] 로벡틴 카밍 연꽃수 크림 60ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013748222ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[43만개 판매/민감피부 구원템] 로벡틴 카밍 연꽃수 크림 60ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013748223ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[43만개 판매/민감피부 구원템] 로벡틴 카밍 연꽃수 크림 60ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013748225ko.png?l=ko', 4, (SELECT id FROM product WHERE name = '[43만개 판매/민감피부 구원템] 로벡틴 카밍 연꽃수 크림 60ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013748226ko.png?l=ko', 5, (SELECT id FROM product WHERE name = '[43만개 판매/민감피부 구원템] 로벡틴 카밍 연꽃수 크림 60ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013748227ko.png?l=ko', 6, (SELECT id FROM product WHERE name = '[43만개 판매/민감피부 구원템] 로벡틴 카밍 연꽃수 크림 60ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[43만개 판매/민감피부 구원템] 로벡틴 카밍 연꽃수 크림 60ml';


-- ================================

-- 상품: 비오템 옴므 아쿠아파워 72H 수분 젤 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('비오템 옴므 아쿠아파워 72H 수분 젤 크림 50ml',
 '비오템 옴므 아쿠아파워 72H 수분 젤 크림 50ml',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비오템'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '비오템 옴므 아쿠아파워 72H 수분 젤 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(137000, 'ORIGINAL', (SELECT id FROM product WHERE name = '비오템 옴므 아쿠아파워 72H 수분 젤 크림 50ml'), NOW(), NOW()),
(116450, 'SALE', (SELECT id FROM product WHERE name = '비오템 옴므 아쿠아파워 72H 수분 젤 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013783909ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '비오템 옴므 아쿠아파워 72H 수분 젤 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013783905ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '비오템 옴므 아쿠아파워 72H 수분 젤 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '비오템 옴므 아쿠아파워 72H 수분 젤 크림 50ml';


-- ================================

-- 상품: [온가족 페이스&바디크림] 유리아쥬 제모스 끄렘 400ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[온가족 페이스&바디크림] 유리아쥬 제모스 끄렘 400ml',
 '[온가족 페이스&바디크림] 유리아쥬 제모스 끄렘 400ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유리아쥬'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[온가족 페이스&바디크림] 유리아쥬 제모스 끄렘 400ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(48000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[온가족 페이스&바디크림] 유리아쥬 제모스 끄렘 400ml'), NOW(), NOW()),
(40800, 'SALE', (SELECT id FROM product WHERE name = '[온가족 페이스&바디크림] 유리아쥬 제모스 끄렘 400ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014166215ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[온가족 페이스&바디크림] 유리아쥬 제모스 끄렘 400ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014166216ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[온가족 페이스&바디크림] 유리아쥬 제모스 끄렘 400ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014166214ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[온가족 페이스&바디크림] 유리아쥬 제모스 끄렘 400ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[온가족 페이스&바디크림] 유리아쥬 제모스 끄렘 400ml';


-- ================================

-- 상품: 더랩바이블랑두 저분자 히알루론산 카밍+ 크림 80ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('더랩바이블랑두 저분자 히알루론산 카밍+ 크림 80ml',
 '더랩바이블랑두 저분자 히알루론산 카밍+ 크림 80ml',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더랩바이블랑두'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '더랩바이블랑두 저분자 히알루론산 카밍+ 크림 80ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '더랩바이블랑두 저분자 히알루론산 카밍+ 크림 80ml'), NOW(), NOW()),
(35000, 'SALE', (SELECT id FROM product WHERE name = '더랩바이블랑두 저분자 히알루론산 카밍+ 크림 80ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014273706ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '더랩바이블랑두 저분자 히알루론산 카밍+ 크림 80ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '더랩바이블랑두 저분자 히알루론산 카밍+ 크림 80ml';


-- ================================

-- 상품: 바이오더마 아토덤 인텐시브 밤 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('바이오더마 아토덤 인텐시브 밤 200ml',
 '바이오더마 아토덤 인텐시브 밤 200ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오더마'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '바이오더마 아토덤 인텐시브 밤 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바이오더마 아토덤 인텐시브 밤 200ml'), NOW(), NOW()),
(33000, 'SALE', (SELECT id FROM product WHERE name = '바이오더마 아토덤 인텐시브 밤 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014395924ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바이오더마 아토덤 인텐시브 밤 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014395919ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '바이오더마 아토덤 인텐시브 밤 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014395925ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '바이오더마 아토덤 인텐시브 밤 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014395923ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '바이오더마 아토덤 인텐시브 밤 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '바이오더마 아토덤 인텐시브 밤 200ml';


-- ================================

-- 상품: 프리메라 알파인 베리 워터리 수딩 젤 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('프리메라 알파인 베리 워터리 수딩 젤 크림 50ml',
 '프리메라 알파인 베리 워터리 수딩 젤 크림 50ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '프리메라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '프리메라 알파인 베리 워터리 수딩 젤 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(41000, 'ORIGINAL', (SELECT id FROM product WHERE name = '프리메라 알파인 베리 워터리 수딩 젤 크림 50ml'), NOW(), NOW()),
(41000, 'SALE', (SELECT id FROM product WHERE name = '프리메라 알파인 베리 워터리 수딩 젤 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014411006ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '프리메라 알파인 베리 워터리 수딩 젤 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014411017ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '프리메라 알파인 베리 워터리 수딩 젤 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014411007ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '프리메라 알파인 베리 워터리 수딩 젤 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014411005ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '프리메라 알파인 베리 워터리 수딩 젤 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014411004ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '프리메라 알파인 베리 워터리 수딩 젤 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014411003ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '프리메라 알파인 베리 워터리 수딩 젤 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '프리메라 알파인 베리 워터리 수딩 젤 크림 50ml';


-- ================================

-- 상품: 애즈이즈투비 아쿠아 부스팅 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('애즈이즈투비 아쿠아 부스팅 크림 50ml',
 '애즈이즈투비 아쿠아 부스팅 크림 50ml',
 4.5,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '애즈이즈투비'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '애즈이즈투비 아쿠아 부스팅 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '애즈이즈투비 아쿠아 부스팅 크림 50ml'), NOW(), NOW()),
(32000, 'SALE', (SELECT id FROM product WHERE name = '애즈이즈투비 아쿠아 부스팅 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014412001ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '애즈이즈투비 아쿠아 부스팅 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014412002ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '애즈이즈투비 아쿠아 부스팅 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '애즈이즈투비 아쿠아 부스팅 크림 50ml';


-- ================================

-- 상품: [수분진정] 아크웰 리얼 아쿠아 밸런싱 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분진정] 아크웰 리얼 아쿠아 밸런싱 크림 50ml',
 '[수분진정] 아크웰 리얼 아쿠아 밸런싱 크림 50ml',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아크웰'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분진정] 아크웰 리얼 아쿠아 밸런싱 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분진정] 아크웰 리얼 아쿠아 밸런싱 크림 50ml'), NOW(), NOW()),
(19000, 'SALE', (SELECT id FROM product WHERE name = '[수분진정] 아크웰 리얼 아쿠아 밸런싱 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014480813ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분진정] 아크웰 리얼 아쿠아 밸런싱 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014480815ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분진정] 아크웰 리얼 아쿠아 밸런싱 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014480810ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분진정] 아크웰 리얼 아쿠아 밸런싱 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014480807ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[수분진정] 아크웰 리얼 아쿠아 밸런싱 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분진정] 아크웰 리얼 아쿠아 밸런싱 크림 50ml';


-- ================================

-- 상품: [레티날0.05%] 닥터디퍼런트 비타리프트 에이 20g...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[레티날0.05%] 닥터디퍼런트 비타리프트 에이 20g',
 '[레티날0.05%] 닥터디퍼런트 비타리프트 에이 20g',
 4.6,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터디퍼런트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[레티날0.05%] 닥터디퍼런트 비타리프트 에이 20g'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(42000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[레티날0.05%] 닥터디퍼런트 비타리프트 에이 20g'), NOW(), NOW()),
(31030, 'SALE', (SELECT id FROM product WHERE name = '[레티날0.05%] 닥터디퍼런트 비타리프트 에이 20g'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014528519ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[레티날0.05%] 닥터디퍼런트 비타리프트 에이 20g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014528518ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[레티날0.05%] 닥터디퍼런트 비타리프트 에이 20g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014528516ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[레티날0.05%] 닥터디퍼런트 비타리프트 에이 20g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014528513ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[레티날0.05%] 닥터디퍼런트 비타리프트 에이 20g'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[레티날0.05%] 닥터디퍼런트 비타리프트 에이 20g';


-- ================================

-- 상품: [레티날0.1%] 닥터디퍼런트 비타리프트 에이 포르테 20g...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[레티날0.1%] 닥터디퍼런트 비타리프트 에이 포르테 20g',
 '[레티날0.1%] 닥터디퍼런트 비타리프트 에이 포르테 20g',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터디퍼런트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[레티날0.1%] 닥터디퍼런트 비타리프트 에이 포르테 20g'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(52000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[레티날0.1%] 닥터디퍼런트 비타리프트 에이 포르테 20g'), NOW(), NOW()),
(52000, 'SALE', (SELECT id FROM product WHERE name = '[레티날0.1%] 닥터디퍼런트 비타리프트 에이 포르테 20g'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014528630ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[레티날0.1%] 닥터디퍼런트 비타리프트 에이 포르테 20g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014528629ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[레티날0.1%] 닥터디퍼런트 비타리프트 에이 포르테 20g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014528628ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[레티날0.1%] 닥터디퍼런트 비타리프트 에이 포르테 20g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014528627ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[레티날0.1%] 닥터디퍼런트 비타리프트 에이 포르테 20g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014528626ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[레티날0.1%] 닥터디퍼런트 비타리프트 에이 포르테 20g'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[레티날0.1%] 닥터디퍼런트 비타리프트 에이 포르테 20g';


-- ================================

-- 상품: [세라마이드/장벽크림] 닥터디퍼런트 311 모이스처라이저 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[세라마이드/장벽크림] 닥터디퍼런트 311 모이스처라이저 100ml',
 '[세라마이드/장벽크림] 닥터디퍼런트 311 모이스처라이저 100ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터디퍼런트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[세라마이드/장벽크림] 닥터디퍼런트 311 모이스처라이저 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[세라마이드/장벽크림] 닥터디퍼런트 311 모이스처라이저 100ml'), NOW(), NOW()),
(35000, 'SALE', (SELECT id FROM product WHERE name = '[세라마이드/장벽크림] 닥터디퍼런트 311 모이스처라이저 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014533103ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[세라마이드/장벽크림] 닥터디퍼런트 311 모이스처라이저 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014533102ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[세라마이드/장벽크림] 닥터디퍼런트 311 모이스처라이저 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[세라마이드/장벽크림] 닥터디퍼런트 311 모이스처라이저 100ml';


-- ================================

-- 상품: [탄력/보습크림] 닥터디퍼런트 131 모이스처라이저 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[탄력/보습크림] 닥터디퍼런트 131 모이스처라이저 100ml',
 '[탄력/보습크림] 닥터디퍼런트 131 모이스처라이저 100ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터디퍼런트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[탄력/보습크림] 닥터디퍼런트 131 모이스처라이저 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(42000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[탄력/보습크림] 닥터디퍼런트 131 모이스처라이저 100ml'), NOW(), NOW()),
(42000, 'SALE', (SELECT id FROM product WHERE name = '[탄력/보습크림] 닥터디퍼런트 131 모이스처라이저 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014533203ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[탄력/보습크림] 닥터디퍼런트 131 모이스처라이저 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014533202ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[탄력/보습크림] 닥터디퍼런트 131 모이스처라이저 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[탄력/보습크림] 닥터디퍼런트 131 모이스처라이저 100ml';


-- ================================

-- 상품: [속수분크림] 라운드랩 자작나무 수분 크림 80ml 기획 (+20ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[속수분크림] 라운드랩 자작나무 수분 크림 80ml 기획 (+20ml)',
 '[속수분크림] 라운드랩 자작나무 수분 크림 80ml 기획 (+20ml)',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라운드랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[속수분크림] 라운드랩 자작나무 수분 크림 80ml 기획 (+20ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[속수분크림] 라운드랩 자작나무 수분 크림 80ml 기획 (+20ml)'), NOW(), NOW()),
(32000, 'SALE', (SELECT id FROM product WHERE name = '[속수분크림] 라운드랩 자작나무 수분 크림 80ml 기획 (+20ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014557931ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[속수분크림] 라운드랩 자작나무 수분 크림 80ml 기획 (+20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014557930ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[속수분크림] 라운드랩 자작나무 수분 크림 80ml 기획 (+20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014557923ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[속수분크림] 라운드랩 자작나무 수분 크림 80ml 기획 (+20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014557929ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[속수분크림] 라운드랩 자작나무 수분 크림 80ml 기획 (+20ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[속수분크림] 라운드랩 자작나무 수분 크림 80ml 기획 (+20ml)';


-- ================================

-- 상품: [트러블케어] 닥터디퍼런트 비타아크날 TX 나이트 크림 20g...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[트러블케어] 닥터디퍼런트 비타아크날 TX 나이트 크림 20g',
 '[트러블케어] 닥터디퍼런트 비타아크날 TX 나이트 크림 20g',
 4.6,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터디퍼런트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[트러블케어] 닥터디퍼런트 비타아크날 TX 나이트 크림 20g'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[트러블케어] 닥터디퍼런트 비타아크날 TX 나이트 크림 20g'), NOW(), NOW()),
(38000, 'SALE', (SELECT id FROM product WHERE name = '[트러블케어] 닥터디퍼런트 비타아크날 TX 나이트 크림 20g'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014677208ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[트러블케어] 닥터디퍼런트 비타아크날 TX 나이트 크림 20g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014677210ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[트러블케어] 닥터디퍼런트 비타아크날 TX 나이트 크림 20g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014677209ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[트러블케어] 닥터디퍼런트 비타아크날 TX 나이트 크림 20g'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[트러블케어] 닥터디퍼런트 비타아크날 TX 나이트 크림 20g';


-- ================================

-- 상품: [진정보습/피부장벽] 키노닉스 원더 레미디 세라마이드 고보습 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[진정보습/피부장벽] 키노닉스 원더 레미디 세라마이드 고보습 크림 50ml',
 '[진정보습/피부장벽] 키노닉스 원더 레미디 세라마이드 고보습 크림 50ml',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '키노닉스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[진정보습/피부장벽] 키노닉스 원더 레미디 세라마이드 고보습 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(34000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[진정보습/피부장벽] 키노닉스 원더 레미디 세라마이드 고보습 크림 50ml'), NOW(), NOW()),
(13900, 'SALE', (SELECT id FROM product WHERE name = '[진정보습/피부장벽] 키노닉스 원더 레미디 세라마이드 고보습 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014708709ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[진정보습/피부장벽] 키노닉스 원더 레미디 세라마이드 고보습 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014708710ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[진정보습/피부장벽] 키노닉스 원더 레미디 세라마이드 고보습 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014708708ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[진정보습/피부장벽] 키노닉스 원더 레미디 세라마이드 고보습 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[진정보습/피부장벽] 키노닉스 원더 레미디 세라마이드 고보습 크림 50ml';


-- ================================

-- 상품: [피부장벽/진정] 닥터디퍼런트 시카 메탈 크림 50g...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[피부장벽/진정] 닥터디퍼런트 시카 메탈 크림 50g',
 '[피부장벽/진정] 닥터디퍼런트 시카 메탈 크림 50g',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터디퍼런트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[피부장벽/진정] 닥터디퍼런트 시카 메탈 크림 50g'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(45000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[피부장벽/진정] 닥터디퍼런트 시카 메탈 크림 50g'), NOW(), NOW()),
(31500, 'SALE', (SELECT id FROM product WHERE name = '[피부장벽/진정] 닥터디퍼런트 시카 메탈 크림 50g'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014711907ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[피부장벽/진정] 닥터디퍼런트 시카 메탈 크림 50g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014711910ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[피부장벽/진정] 닥터디퍼런트 시카 메탈 크림 50g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014711904ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[피부장벽/진정] 닥터디퍼런트 시카 메탈 크림 50g'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[피부장벽/진정] 닥터디퍼런트 시카 메탈 크림 50g';


-- ================================

-- 상품: [멀티보습밤] 닥터지 더모이스처 배리어 D 멀티밤 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[멀티보습밤] 닥터지 더모이스처 배리어 D 멀티밤 50ml',
 '[멀티보습밤] 닥터지 더모이스처 배리어 D 멀티밤 50ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터지'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[멀티보습밤] 닥터지 더모이스처 배리어 D 멀티밤 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[멀티보습밤] 닥터지 더모이스처 배리어 D 멀티밤 50ml'), NOW(), NOW()),
(29000, 'SALE', (SELECT id FROM product WHERE name = '[멀티보습밤] 닥터지 더모이스처 배리어 D 멀티밤 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014713005ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[멀티보습밤] 닥터지 더모이스처 배리어 D 멀티밤 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014713004ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[멀티보습밤] 닥터지 더모이스처 배리어 D 멀티밤 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014713006ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[멀티보습밤] 닥터지 더모이스처 배리어 D 멀티밤 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[멀티보습밤] 닥터지 더모이스처 배리어 D 멀티밤 50ml';


-- ================================

-- 상품: 생블랑쉬 바이탈부스트크림 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('생블랑쉬 바이탈부스트크림 30ml',
 '생블랑쉬 바이탈부스트크림 30ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '생블랑쉬'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '생블랑쉬 바이탈부스트크림 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(27000, 'ORIGINAL', (SELECT id FROM product WHERE name = '생블랑쉬 바이탈부스트크림 30ml'), NOW(), NOW()),
(27000, 'SALE', (SELECT id FROM product WHERE name = '생블랑쉬 바이탈부스트크림 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014716401ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '생블랑쉬 바이탈부스트크림 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014716402ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '생블랑쉬 바이탈부스트크림 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '생블랑쉬 바이탈부스트크림 30ml';


-- ================================

-- 상품: 땡큐파머 강화교동쌀 맑음 젤안에 크림80ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('땡큐파머 강화교동쌀 맑음 젤안에 크림80ml',
 '땡큐파머 강화교동쌀 맑음 젤안에 크림80ml',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '땡큐파머'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '땡큐파머 강화교동쌀 맑음 젤안에 크림80ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(34000, 'ORIGINAL', (SELECT id FROM product WHERE name = '땡큐파머 강화교동쌀 맑음 젤안에 크림80ml'), NOW(), NOW()),
(23800, 'SALE', (SELECT id FROM product WHERE name = '땡큐파머 강화교동쌀 맑음 젤안에 크림80ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014735720ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '땡큐파머 강화교동쌀 맑음 젤안에 크림80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014735721ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '땡큐파머 강화교동쌀 맑음 젤안에 크림80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014735722ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '땡큐파머 강화교동쌀 맑음 젤안에 크림80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014735724ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '땡큐파머 강화교동쌀 맑음 젤안에 크림80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014735723ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '땡큐파머 강화교동쌀 맑음 젤안에 크림80ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '땡큐파머 강화교동쌀 맑음 젤안에 크림80ml';


-- ================================

-- 상품: 휘게 릴리프 캐모마일 크림 85g...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('휘게 릴리프 캐모마일 크림 85g',
 '휘게 릴리프 캐모마일 크림 85g',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '휘게'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '휘게 릴리프 캐모마일 크림 85g'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(20000, 'ORIGINAL', (SELECT id FROM product WHERE name = '휘게 릴리프 캐모마일 크림 85g'), NOW(), NOW()),
(11800, 'SALE', (SELECT id FROM product WHERE name = '휘게 릴리프 캐모마일 크림 85g'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014906403ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '휘게 릴리프 캐모마일 크림 85g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014906405ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '휘게 릴리프 캐모마일 크림 85g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014906404ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '휘게 릴리프 캐모마일 크림 85g'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '휘게 릴리프 캐모마일 크림 85g';


-- ================================

-- 상품: 땡큐파머 트루워터 딥 모이스처크림 EX 80ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('땡큐파머 트루워터 딥 모이스처크림 EX 80ml',
 '땡큐파머 트루워터 딥 모이스처크림 EX 80ml',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '땡큐파머'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '땡큐파머 트루워터 딥 모이스처크림 EX 80ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '땡큐파머 트루워터 딥 모이스처크림 EX 80ml'), NOW(), NOW()),
(19600, 'SALE', (SELECT id FROM product WHERE name = '땡큐파머 트루워터 딥 모이스처크림 EX 80ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014911807ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '땡큐파머 트루워터 딥 모이스처크림 EX 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014911808ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '땡큐파머 트루워터 딥 모이스처크림 EX 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014911809ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '땡큐파머 트루워터 딥 모이스처크림 EX 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014911810ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '땡큐파머 트루워터 딥 모이스처크림 EX 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014911811ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '땡큐파머 트루워터 딥 모이스처크림 EX 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014911812ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '땡큐파머 트루워터 딥 모이스처크림 EX 80ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '땡큐파머 트루워터 딥 모이스처크림 EX 80ml';


-- ================================

-- 상품: 바이오더마 세비엄 센서티브 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('바이오더마 세비엄 센서티브 30ml',
 '바이오더마 세비엄 센서티브 30ml',
 4.6,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오더마'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '바이오더마 세비엄 센서티브 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바이오더마 세비엄 센서티브 30ml'), NOW(), NOW()),
(24000, 'SALE', (SELECT id FROM product WHERE name = '바이오더마 세비엄 센서티브 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014971707ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바이오더마 세비엄 센서티브 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014971705ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '바이오더마 세비엄 센서티브 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014971706ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '바이오더마 세비엄 센서티브 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014971708ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '바이오더마 세비엄 센서티브 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '바이오더마 세비엄 센서티브 30ml';


-- ================================

-- 상품: 바이오더마 아토덤 인텐시브 젤 크림 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('바이오더마 아토덤 인텐시브 젤 크림 200ml',
 '바이오더마 아토덤 인텐시브 젤 크림 200ml',
 4.6,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오더마'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '바이오더마 아토덤 인텐시브 젤 크림 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바이오더마 아토덤 인텐시브 젤 크림 200ml'), NOW(), NOW()),
(23100, 'SALE', (SELECT id FROM product WHERE name = '바이오더마 아토덤 인텐시브 젤 크림 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014981017ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바이오더마 아토덤 인텐시브 젤 크림 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014981018ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '바이오더마 아토덤 인텐시브 젤 크림 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '바이오더마 아토덤 인텐시브 젤 크림 200ml';


-- ================================

-- 상품: 에스테덤 셀룰러 워터 크림 50ml (주름개선기능성)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('에스테덤 셀룰러 워터 크림 50ml (주름개선기능성)',
 '에스테덤 셀룰러 워터 크림 50ml (주름개선기능성)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에스테덤'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '에스테덤 셀룰러 워터 크림 50ml (주름개선기능성)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(59000, 'ORIGINAL', (SELECT id FROM product WHERE name = '에스테덤 셀룰러 워터 크림 50ml (주름개선기능성)'), NOW(), NOW()),
(59000, 'SALE', (SELECT id FROM product WHERE name = '에스테덤 셀룰러 워터 크림 50ml (주름개선기능성)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014988240ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '에스테덤 셀룰러 워터 크림 50ml (주름개선기능성)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014988237ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '에스테덤 셀룰러 워터 크림 50ml (주름개선기능성)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014988238ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '에스테덤 셀룰러 워터 크림 50ml (주름개선기능성)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '에스테덤 셀룰러 워터 크림 50ml (주름개선기능성)';


-- ================================

-- 상품: 마녀공장 비피다 바이옴 아쿠아 배리어 크림 80ml 증정기획 (+20mlx2ea)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('마녀공장 비피다 바이옴 아쿠아 배리어 크림 80ml 증정기획 (+20mlx2ea)',
 '마녀공장 비피다 바이옴 아쿠아 배리어 크림 80ml 증정기획 (+20mlx2ea)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '마녀공장'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '마녀공장 비피다 바이옴 아쿠아 배리어 크림 80ml 증정기획 (+20mlx2ea)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24500, 'ORIGINAL', (SELECT id FROM product WHERE name = '마녀공장 비피다 바이옴 아쿠아 배리어 크림 80ml 증정기획 (+20mlx2ea)'), NOW(), NOW()),
(24500, 'SALE', (SELECT id FROM product WHERE name = '마녀공장 비피다 바이옴 아쿠아 배리어 크림 80ml 증정기획 (+20mlx2ea)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015009409ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '마녀공장 비피다 바이옴 아쿠아 배리어 크림 80ml 증정기획 (+20mlx2ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015009410ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '마녀공장 비피다 바이옴 아쿠아 배리어 크림 80ml 증정기획 (+20mlx2ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015009407ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '마녀공장 비피다 바이옴 아쿠아 배리어 크림 80ml 증정기획 (+20mlx2ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015009408ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '마녀공장 비피다 바이옴 아쿠아 배리어 크림 80ml 증정기획 (+20mlx2ea)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '마녀공장 비피다 바이옴 아쿠아 배리어 크림 80ml 증정기획 (+20mlx2ea)';


-- ================================

-- 상품: 아크네스 스팟 클리어 크림 패치 18g...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아크네스 스팟 클리어 크림 패치 18g',
 '아크네스 스팟 클리어 크림 패치 18g',
 4.5,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아크네스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아크네스 스팟 클리어 크림 패치 18g'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(15000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아크네스 스팟 클리어 크림 패치 18g'), NOW(), NOW()),
(15000, 'SALE', (SELECT id FROM product WHERE name = '아크네스 스팟 클리어 크림 패치 18g'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015081707ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아크네스 스팟 클리어 크림 패치 18g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015081706ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아크네스 스팟 클리어 크림 패치 18g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015081705ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아크네스 스팟 클리어 크림 패치 18g'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아크네스 스팟 클리어 크림 패치 18g';


-- ================================

-- 상품: [수분크림] 에스트라 아토베리어365 하이드로 수딩크림 60ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분크림] 에스트라 아토베리어365 하이드로 수딩크림 60ml',
 '[수분크림] 에스트라 아토베리어365 하이드로 수딩크림 60ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에스트라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분크림] 에스트라 아토베리어365 하이드로 수딩크림 60ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분크림] 에스트라 아토베리어365 하이드로 수딩크림 60ml'), NOW(), NOW()),
(29700, 'SALE', (SELECT id FROM product WHERE name = '[수분크림] 에스트라 아토베리어365 하이드로 수딩크림 60ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015089008ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분크림] 에스트라 아토베리어365 하이드로 수딩크림 60ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015089011ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분크림] 에스트라 아토베리어365 하이드로 수딩크림 60ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분크림] 에스트라 아토베리어365 하이드로 수딩크림 60ml';


-- ================================

-- 상품: 달팡 인트랄 수딩 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('달팡 인트랄 수딩 크림 50ml',
 '달팡 인트랄 수딩 크림 50ml',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '달팡'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '달팡 인트랄 수딩 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(86000, 'ORIGINAL', (SELECT id FROM product WHERE name = '달팡 인트랄 수딩 크림 50ml'), NOW(), NOW()),
(73100, 'SALE', (SELECT id FROM product WHERE name = '달팡 인트랄 수딩 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015183116ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '달팡 인트랄 수딩 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015183117ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '달팡 인트랄 수딩 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '달팡 인트랄 수딩 크림 50ml';


-- ================================

-- 상품: [SOS 손상개선크림] 유리아쥬 배리어덤 시카 크림 40ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[SOS 손상개선크림] 유리아쥬 배리어덤 시카 크림 40ml',
 '[SOS 손상개선크림] 유리아쥬 배리어덤 시카 크림 40ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유리아쥬'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[SOS 손상개선크림] 유리아쥬 배리어덤 시카 크림 40ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[SOS 손상개선크림] 유리아쥬 배리어덤 시카 크림 40ml'), NOW(), NOW()),
(24000, 'SALE', (SELECT id FROM product WHERE name = '[SOS 손상개선크림] 유리아쥬 배리어덤 시카 크림 40ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015258012ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[SOS 손상개선크림] 유리아쥬 배리어덤 시카 크림 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015258013ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[SOS 손상개선크림] 유리아쥬 배리어덤 시카 크림 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015258011ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[SOS 손상개선크림] 유리아쥬 배리어덤 시카 크림 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015258010ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[SOS 손상개선크림] 유리아쥬 배리어덤 시카 크림 40ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[SOS 손상개선크림] 유리아쥬 배리어덤 시카 크림 40ml';


-- ================================

-- 상품: [2주 톤업] 라네즈 래디언씨 크림 30ml 기획 (+7+7ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[2주 톤업] 라네즈 래디언씨 크림 30ml 기획 (+7+7ml)',
 '[2주 톤업] 라네즈 래디언씨 크림 30ml 기획 (+7+7ml)',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라네즈'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[2주 톤업] 라네즈 래디언씨 크림 30ml 기획 (+7+7ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[2주 톤업] 라네즈 래디언씨 크림 30ml 기획 (+7+7ml)'), NOW(), NOW()),
(32000, 'SALE', (SELECT id FROM product WHERE name = '[2주 톤업] 라네즈 래디언씨 크림 30ml 기획 (+7+7ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015387414ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[2주 톤업] 라네즈 래디언씨 크림 30ml 기획 (+7+7ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015387415ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[2주 톤업] 라네즈 래디언씨 크림 30ml 기획 (+7+7ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015387411ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[2주 톤업] 라네즈 래디언씨 크림 30ml 기획 (+7+7ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015387407ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[2주 톤업] 라네즈 래디언씨 크림 30ml 기획 (+7+7ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[2주 톤업] 라네즈 래디언씨 크림 30ml 기획 (+7+7ml)';


-- ================================

-- 상품: 가히 아쿠아밤...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('가히 아쿠아밤',
 '가히 아쿠아밤',
 4.6,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '가히'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '가히 아쿠아밤'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35100, 'ORIGINAL', (SELECT id FROM product WHERE name = '가히 아쿠아밤'), NOW(), NOW()),
(35100, 'SALE', (SELECT id FROM product WHERE name = '가히 아쿠아밤'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015499405ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '가히 아쿠아밤'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015499409ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '가히 아쿠아밤'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '가히 아쿠아밤';


-- ================================

-- 상품: 가히 아이밤...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('가히 아이밤',
 '가히 아이밤',
 4.6,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '가히'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '가히 아이밤'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(37800, 'ORIGINAL', (SELECT id FROM product WHERE name = '가히 아이밤'), NOW(), NOW()),
(37800, 'SALE', (SELECT id FROM product WHERE name = '가히 아이밤'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015499605ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '가히 아이밤'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015499604ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '가히 아이밤'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '가히 아이밤';


-- ================================

-- 상품: AHC 에이치 멜라루트 크림 (본품50ml+10ml 증정)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('AHC 에이치 멜라루트 크림 (본품50ml+10ml 증정)',
 'AHC 에이치 멜라루트 크림 (본품50ml+10ml 증정)',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'AHC'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = 'AHC 에이치 멜라루트 크림 (본품50ml+10ml 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39000, 'ORIGINAL', (SELECT id FROM product WHERE name = 'AHC 에이치 멜라루트 크림 (본품50ml+10ml 증정)'), NOW(), NOW()),
(29390, 'SALE', (SELECT id FROM product WHERE name = 'AHC 에이치 멜라루트 크림 (본품50ml+10ml 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015532006ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = 'AHC 에이치 멜라루트 크림 (본품50ml+10ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015532009ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = 'AHC 에이치 멜라루트 크림 (본품50ml+10ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015532008ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = 'AHC 에이치 멜라루트 크림 (본품50ml+10ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015532007ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = 'AHC 에이치 멜라루트 크림 (본품50ml+10ml 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = 'AHC 에이치 멜라루트 크림 (본품50ml+10ml 증정)';


-- ================================

-- 상품: [속보습/보송피부결] 더말로지카 딥모이스춰 스킨 스무딩 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[속보습/보송피부결] 더말로지카 딥모이스춰 스킨 스무딩 크림 50ml',
 '[속보습/보송피부결] 더말로지카 딥모이스춰 스킨 스무딩 크림 50ml',
 4.6,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더말로지카'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[속보습/보송피부결] 더말로지카 딥모이스춰 스킨 스무딩 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(61000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[속보습/보송피부결] 더말로지카 딥모이스춰 스킨 스무딩 크림 50ml'), NOW(), NOW()),
(46000, 'SALE', (SELECT id FROM product WHERE name = '[속보습/보송피부결] 더말로지카 딥모이스춰 스킨 스무딩 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015535106ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[속보습/보송피부결] 더말로지카 딥모이스춰 스킨 스무딩 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015535104ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[속보습/보송피부결] 더말로지카 딥모이스춰 스킨 스무딩 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015535103ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[속보습/보송피부결] 더말로지카 딥모이스춰 스킨 스무딩 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015535102ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[속보습/보송피부결] 더말로지카 딥모이스춰 스킨 스무딩 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015535101ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[속보습/보송피부결] 더말로지카 딥모이스춰 스킨 스무딩 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[속보습/보송피부결] 더말로지카 딥모이스춰 스킨 스무딩 크림 50ml';


-- ================================

-- 상품: 헤이네이처 어성초 크림 80g...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('헤이네이처 어성초 크림 80g',
 '헤이네이처 어성초 크림 80g',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '헤이네이처'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '헤이네이처 어성초 크림 80g'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '헤이네이처 어성초 크림 80g'), NOW(), NOW()),
(28000, 'SALE', (SELECT id FROM product WHERE name = '헤이네이처 어성초 크림 80g'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015614609ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '헤이네이처 어성초 크림 80g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015614610ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '헤이네이처 어성초 크림 80g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015614607ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '헤이네이처 어성초 크림 80g'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '헤이네이처 어성초 크림 80g';


-- ================================

-- 상품: 바비브라운 비타민 인리치드 페이스 베이스...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('바비브라운 비타민 인리치드 페이스 베이스',
 '바비브라운 비타민 인리치드 페이스 베이스',
 5.0,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바비브라운'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '바비브라운 비타민 인리치드 페이스 베이스'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(108000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바비브라운 비타민 인리치드 페이스 베이스'), NOW(), NOW()),
(108000, 'SALE', (SELECT id FROM product WHERE name = '바비브라운 비타민 인리치드 페이스 베이스'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015683603ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바비브라운 비타민 인리치드 페이스 베이스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015683607ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '바비브라운 비타민 인리치드 페이스 베이스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015683606ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '바비브라운 비타민 인리치드 페이스 베이스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015683605ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '바비브라운 비타민 인리치드 페이스 베이스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015683604ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '바비브라운 비타민 인리치드 페이스 베이스'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '바비브라운 비타민 인리치드 페이스 베이스';


-- ================================

-- 상품: [100시간밀착보습/민감장벽보호] 셀퓨전씨 약산성 패리어 크림 55ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[100시간밀착보습/민감장벽보호] 셀퓨전씨 약산성 패리어 크림 55ml',
 '[100시간밀착보습/민감장벽보호] 셀퓨전씨 약산성 패리어 크림 55ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '셀퓨전씨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[100시간밀착보습/민감장벽보호] 셀퓨전씨 약산성 패리어 크림 55ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[100시간밀착보습/민감장벽보호] 셀퓨전씨 약산성 패리어 크림 55ml'), NOW(), NOW()),
(20500, 'SALE', (SELECT id FROM product WHERE name = '[100시간밀착보습/민감장벽보호] 셀퓨전씨 약산성 패리어 크림 55ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015748406ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[100시간밀착보습/민감장벽보호] 셀퓨전씨 약산성 패리어 크림 55ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015748409ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[100시간밀착보습/민감장벽보호] 셀퓨전씨 약산성 패리어 크림 55ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015748408ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[100시간밀착보습/민감장벽보호] 셀퓨전씨 약산성 패리어 크림 55ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015748407ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[100시간밀착보습/민감장벽보호] 셀퓨전씨 약산성 패리어 크림 55ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[100시간밀착보습/민감장벽보호] 셀퓨전씨 약산성 패리어 크림 55ml';


-- ================================

-- 상품: [엔하이픈 성훈 PICK] 믹순 콩 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[엔하이픈 성훈 PICK] 믹순 콩 크림 50ml',
 '[엔하이픈 성훈 PICK] 믹순 콩 크림 50ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '믹순'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[엔하이픈 성훈 PICK] 믹순 콩 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[엔하이픈 성훈 PICK] 믹순 콩 크림 50ml'), NOW(), NOW()),
(31500, 'SALE', (SELECT id FROM product WHERE name = '[엔하이픈 성훈 PICK] 믹순 콩 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015830817ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[엔하이픈 성훈 PICK] 믹순 콩 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015830815ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[엔하이픈 성훈 PICK] 믹순 콩 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015830814ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[엔하이픈 성훈 PICK] 믹순 콩 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015830813ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[엔하이픈 성훈 PICK] 믹순 콩 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015830812ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[엔하이픈 성훈 PICK] 믹순 콩 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015830811ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[엔하이픈 성훈 PICK] 믹순 콩 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[엔하이픈 성훈 PICK] 믹순 콩 크림 50ml';


-- ================================

-- 상품: 비오템 아쿠아수르스 수분 젤 크림 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('비오템 아쿠아수르스 수분 젤 크림 30ml',
 '비오템 아쿠아수르스 수분 젤 크림 30ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비오템'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '비오템 아쿠아수르스 수분 젤 크림 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(45000, 'ORIGINAL', (SELECT id FROM product WHERE name = '비오템 아쿠아수르스 수분 젤 크림 30ml'), NOW(), NOW()),
(38250, 'SALE', (SELECT id FROM product WHERE name = '비오템 아쿠아수르스 수분 젤 크림 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015836709ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '비오템 아쿠아수르스 수분 젤 크림 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015836705ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '비오템 아쿠아수르스 수분 젤 크림 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '비오템 아쿠아수르스 수분 젤 크림 30ml';


-- ================================

-- 상품: [시카스팟겔] 시카고 시카 스팟 겔 25g...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[시카스팟겔] 시카고 시카 스팟 겔 25g',
 '[시카스팟겔] 시카고 시카 스팟 겔 25g',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '시카고'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[시카스팟겔] 시카고 시카 스팟 겔 25g'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(27000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[시카스팟겔] 시카고 시카 스팟 겔 25g'), NOW(), NOW()),
(18900, 'SALE', (SELECT id FROM product WHERE name = '[시카스팟겔] 시카고 시카 스팟 겔 25g'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015847503ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[시카스팟겔] 시카고 시카 스팟 겔 25g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015847506ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[시카스팟겔] 시카고 시카 스팟 겔 25g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015847505ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[시카스팟겔] 시카고 시카 스팟 겔 25g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015847504ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[시카스팟겔] 시카고 시카 스팟 겔 25g'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[시카스팟겔] 시카고 시카 스팟 겔 25g';


-- ================================

-- 상품: 빌리프 스트레스 슈터 시카 밤 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('빌리프 스트레스 슈터 시카 밤 크림 50ml',
 '빌리프 스트레스 슈터 시카 밤 크림 50ml',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '빌리프'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '빌리프 스트레스 슈터 시카 밤 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(52000, 'ORIGINAL', (SELECT id FROM product WHERE name = '빌리프 스트레스 슈터 시카 밤 크림 50ml'), NOW(), NOW()),
(52000, 'SALE', (SELECT id FROM product WHERE name = '빌리프 스트레스 슈터 시카 밤 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015892009ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '빌리프 스트레스 슈터 시카 밤 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '빌리프 스트레스 슈터 시카 밤 크림 50ml';


-- ================================

-- 상품: 가히 아쿠아밤&아이밤...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('가히 아쿠아밤&아이밤',
 '가히 아쿠아밤&아이밤',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '가히'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '가히 아쿠아밤&아이밤'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(72900, 'ORIGINAL', (SELECT id FROM product WHERE name = '가히 아쿠아밤&아이밤'), NOW(), NOW()),
(36470, 'SALE', (SELECT id FROM product WHERE name = '가히 아쿠아밤&아이밤'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015923107ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '가히 아쿠아밤&아이밤'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015923108ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '가히 아쿠아밤&아이밤'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '가히 아쿠아밤&아이밤';


-- ================================

-- 상품: 밀크터치 글로시 모이스처 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('밀크터치 글로시 모이스처 크림 50ml',
 '밀크터치 글로시 모이스처 크림 50ml',
 4.3,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '밀크터치'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '밀크터치 글로시 모이스처 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(36000, 'ORIGINAL', (SELECT id FROM product WHERE name = '밀크터치 글로시 모이스처 크림 50ml'), NOW(), NOW()),
(14400, 'SALE', (SELECT id FROM product WHERE name = '밀크터치 글로시 모이스처 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015970706ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '밀크터치 글로시 모이스처 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015970707ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '밀크터치 글로시 모이스처 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '밀크터치 글로시 모이스처 크림 50ml';


-- ================================

-- 상품: 바비브라운 엑스트라 리페어 모이스춰 크림 인텐스 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('바비브라운 엑스트라 리페어 모이스춰 크림 인텐스 50ml',
 '바비브라운 엑스트라 리페어 모이스춰 크림 인텐스 50ml',
 5.0,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바비브라운'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '바비브라운 엑스트라 리페어 모이스춰 크림 인텐스 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(179000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바비브라운 엑스트라 리페어 모이스춰 크림 인텐스 50ml'), NOW(), NOW()),
(179000, 'SALE', (SELECT id FROM product WHERE name = '바비브라운 엑스트라 리페어 모이스춰 크림 인텐스 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015974705ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바비브라운 엑스트라 리페어 모이스춰 크림 인텐스 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015974706ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '바비브라운 엑스트라 리페어 모이스춰 크림 인텐스 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015974704ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '바비브라운 엑스트라 리페어 모이스춰 크림 인텐스 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015974703ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '바비브라운 엑스트라 리페어 모이스춰 크림 인텐스 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015974702ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '바비브라운 엑스트라 리페어 모이스춰 크림 인텐스 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '바비브라운 엑스트라 리페어 모이스춰 크림 인텐스 50ml';


-- ================================

-- 상품: 싸이닉 콜라겐 앰플 스틱 더블 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('싸이닉 콜라겐 앰플 스틱 더블 기획',
 '싸이닉 콜라겐 앰플 스틱 더블 기획',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '싸이닉'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '싸이닉 콜라겐 앰플 스틱 더블 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(22000, 'ORIGINAL', (SELECT id FROM product WHERE name = '싸이닉 콜라겐 앰플 스틱 더블 기획'), NOW(), NOW()),
(15990, 'SALE', (SELECT id FROM product WHERE name = '싸이닉 콜라겐 앰플 스틱 더블 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015980204ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '싸이닉 콜라겐 앰플 스틱 더블 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015980206ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '싸이닉 콜라겐 앰플 스틱 더블 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015980205ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '싸이닉 콜라겐 앰플 스틱 더블 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '싸이닉 콜라겐 앰플 스틱 더블 기획';


-- ================================

-- 상품: 소본 그린 시카 더마 리페어 크림 40ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('소본 그린 시카 더마 리페어 크림 40ml',
 '소본 그린 시카 더마 리페어 크림 40ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '소본'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '소본 그린 시카 더마 리페어 크림 40ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '소본 그린 시카 더마 리페어 크림 40ml'), NOW(), NOW()),
(26000, 'SALE', (SELECT id FROM product WHERE name = '소본 그린 시카 더마 리페어 크림 40ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016058409ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '소본 그린 시카 더마 리페어 크림 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016058410ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '소본 그린 시카 더마 리페어 크림 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016058408ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '소본 그린 시카 더마 리페어 크림 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016058407ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '소본 그린 시카 더마 리페어 크림 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016058406ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '소본 그린 시카 더마 리페어 크림 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016058405ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '소본 그린 시카 더마 리페어 크림 40ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '소본 그린 시카 더마 리페어 크림 40ml';


-- ================================

-- 상품: 스킨앤랩 베리어덤 인텐시브 크림 2세대 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('스킨앤랩 베리어덤 인텐시브 크림 2세대 50ml',
 '스킨앤랩 베리어덤 인텐시브 크림 2세대 50ml',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '스킨앤랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '스킨앤랩 베리어덤 인텐시브 크림 2세대 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '스킨앤랩 베리어덤 인텐시브 크림 2세대 50ml'), NOW(), NOW()),
(23000, 'SALE', (SELECT id FROM product WHERE name = '스킨앤랩 베리어덤 인텐시브 크림 2세대 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016073325ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '스킨앤랩 베리어덤 인텐시브 크림 2세대 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016073323ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '스킨앤랩 베리어덤 인텐시브 크림 2세대 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016073322ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '스킨앤랩 베리어덤 인텐시브 크림 2세대 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016073321ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '스킨앤랩 베리어덤 인텐시브 크림 2세대 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016073320ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '스킨앤랩 베리어덤 인텐시브 크림 2세대 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016073319ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '스킨앤랩 베리어덤 인텐시브 크림 2세대 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '스킨앤랩 베리어덤 인텐시브 크림 2세대 50ml';


-- ================================

-- 상품: [온가족 페이스&바디크림] 유리아쥬 제모스 끄렘 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[온가족 페이스&바디크림] 유리아쥬 제모스 끄렘 200ml',
 '[온가족 페이스&바디크림] 유리아쥬 제모스 끄렘 200ml',
 4.6,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유리아쥬'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[온가족 페이스&바디크림] 유리아쥬 제모스 끄렘 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[온가족 페이스&바디크림] 유리아쥬 제모스 끄렘 200ml'), NOW(), NOW()),
(32000, 'SALE', (SELECT id FROM product WHERE name = '[온가족 페이스&바디크림] 유리아쥬 제모스 끄렘 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016144413ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[온가족 페이스&바디크림] 유리아쥬 제모스 끄렘 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016144414ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[온가족 페이스&바디크림] 유리아쥬 제모스 끄렘 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016144412ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[온가족 페이스&바디크림] 유리아쥬 제모스 끄렘 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[온가족 페이스&바디크림] 유리아쥬 제모스 끄렘 200ml';


-- ================================

-- 상품: 스킨1004 마다가스카르 센텔라 수딩 크림 75ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('스킨1004 마다가스카르 센텔라 수딩 크림 75ml',
 '스킨1004 마다가스카르 센텔라 수딩 크림 75ml',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '스킨1004'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '스킨1004 마다가스카르 센텔라 수딩 크림 75ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '스킨1004 마다가스카르 센텔라 수딩 크림 75ml'), NOW(), NOW()),
(19550, 'SALE', (SELECT id FROM product WHERE name = '스킨1004 마다가스카르 센텔라 수딩 크림 75ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016157322ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '스킨1004 마다가스카르 센텔라 수딩 크림 75ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016157323ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '스킨1004 마다가스카르 센텔라 수딩 크림 75ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '스킨1004 마다가스카르 센텔라 수딩 크림 75ml';


-- ================================

-- 상품: 클레어스 리치 모이스트 수딩 크림 80ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('클레어스 리치 모이스트 수딩 크림 80ml',
 '클레어스 리치 모이스트 수딩 크림 80ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '디어클레어스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '클레어스 리치 모이스트 수딩 크림 80ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(22900, 'ORIGINAL', (SELECT id FROM product WHERE name = '클레어스 리치 모이스트 수딩 크림 80ml'), NOW(), NOW()),
(19900, 'SALE', (SELECT id FROM product WHERE name = '클레어스 리치 모이스트 수딩 크림 80ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016162603ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '클레어스 리치 모이스트 수딩 크림 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016162604ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '클레어스 리치 모이스트 수딩 크림 80ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '클레어스 리치 모이스트 수딩 크림 80ml';


-- ================================

-- 상품: [피부장벽/진정] 닥터디퍼런트 시카 메탈 크림 50g(기획/단품)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[피부장벽/진정] 닥터디퍼런트 시카 메탈 크림 50g(기획/단품)',
 '[피부장벽/진정] 닥터디퍼런트 시카 메탈 크림 50g(기획/단품)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터디퍼런트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('시카메탈크림 기획', 31500, (SELECT id FROM product WHERE name = '[피부장벽/진정] 닥터디퍼런트 시카 메탈 크림 50g(기획/단품)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('시카메탈크림 단품', 31500, (SELECT id FROM product WHERE name = '[피부장벽/진정] 닥터디퍼런트 시카 메탈 크림 50g(기획/단품)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(45000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[피부장벽/진정] 닥터디퍼런트 시카 메탈 크림 50g(기획/단품)'), NOW(), NOW()),
(31500, 'SALE', (SELECT id FROM product WHERE name = '[피부장벽/진정] 닥터디퍼런트 시카 메탈 크림 50g(기획/단품)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016235620ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[피부장벽/진정] 닥터디퍼런트 시카 메탈 크림 50g(기획/단품)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016235619ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[피부장벽/진정] 닥터디퍼런트 시카 메탈 크림 50g(기획/단품)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016235615ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[피부장벽/진정] 닥터디퍼런트 시카 메탈 크림 50g(기획/단품)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016235614ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[피부장벽/진정] 닥터디퍼런트 시카 메탈 크림 50g(기획/단품)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016235611ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[피부장벽/진정] 닥터디퍼런트 시카 메탈 크림 50g(기획/단품)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[피부장벽/진정] 닥터디퍼런트 시카 메탈 크림 50g(기획/단품)';


-- ================================

-- 상품: 보나쥬르 비건 그린티 워터크림 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('보나쥬르 비건 그린티 워터크림 100ml',
 '보나쥬르 비건 그린티 워터크림 100ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '보나쥬르'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '보나쥬르 비건 그린티 워터크림 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(16000, 'ORIGINAL', (SELECT id FROM product WHERE name = '보나쥬르 비건 그린티 워터크림 100ml'), NOW(), NOW()),
(14400, 'SALE', (SELECT id FROM product WHERE name = '보나쥬르 비건 그린티 워터크림 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016258924ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '보나쥬르 비건 그린티 워터크림 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016258926ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '보나쥬르 비건 그린티 워터크림 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016258925ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '보나쥬르 비건 그린티 워터크림 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '보나쥬르 비건 그린티 워터크림 100ml';


-- ================================

-- 상품: 록시땅 시어 버터 울트라 리치 페이스 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('록시땅 시어 버터 울트라 리치 페이스 크림 50ml',
 '록시땅 시어 버터 울트라 리치 페이스 크림 50ml',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '록시땅'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '록시땅 시어 버터 울트라 리치 페이스 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(48000, 'ORIGINAL', (SELECT id FROM product WHERE name = '록시땅 시어 버터 울트라 리치 페이스 크림 50ml'), NOW(), NOW()),
(43200, 'SALE', (SELECT id FROM product WHERE name = '록시땅 시어 버터 울트라 리치 페이스 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016310602ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '록시땅 시어 버터 울트라 리치 페이스 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '록시땅 시어 버터 울트라 리치 페이스 크림 50ml';


-- ================================

-- 상품: [민감/진정크림]아벤느 똘레랑스 컨트롤 크림 40ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[민감/진정크림]아벤느 똘레랑스 컨트롤 크림 40ml',
 '[민감/진정크림]아벤느 똘레랑스 컨트롤 크림 40ml',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아벤느'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[민감/진정크림]아벤느 똘레랑스 컨트롤 크림 40ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[민감/진정크림]아벤느 똘레랑스 컨트롤 크림 40ml'), NOW(), NOW()),
(27900, 'SALE', (SELECT id FROM product WHERE name = '[민감/진정크림]아벤느 똘레랑스 컨트롤 크림 40ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016339903ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[민감/진정크림]아벤느 똘레랑스 컨트롤 크림 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016339907ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[민감/진정크림]아벤느 똘레랑스 컨트롤 크림 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016339906ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[민감/진정크림]아벤느 똘레랑스 컨트롤 크림 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016339905ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[민감/진정크림]아벤느 똘레랑스 컨트롤 크림 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016339904ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[민감/진정크림]아벤느 똘레랑스 컨트롤 크림 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016339901ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[민감/진정크림]아벤느 똘레랑스 컨트롤 크림 40ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[민감/진정크림]아벤느 똘레랑스 컨트롤 크림 40ml';


-- ================================

-- 상품: [수분진정] 비플레인 시카테롤 크림 60ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분진정] 비플레인 시카테롤 크림 60ml',
 '[수분진정] 비플레인 시카테롤 크림 60ml',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비플레인'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분진정] 비플레인 시카테롤 크림 60ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분진정] 비플레인 시카테롤 크림 60ml'), NOW(), NOW()),
(28000, 'SALE', (SELECT id FROM product WHERE name = '[수분진정] 비플레인 시카테롤 크림 60ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016368704ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분진정] 비플레인 시카테롤 크림 60ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016368708ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분진정] 비플레인 시카테롤 크림 60ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016368706ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분진정] 비플레인 시카테롤 크림 60ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016368705ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[수분진정] 비플레인 시카테롤 크림 60ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분진정] 비플레인 시카테롤 크림 60ml';


-- ================================

-- 상품: [스팟진정] 비플레인 시카테롤 스팟 트리트먼트 15ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[스팟진정] 비플레인 시카테롤 스팟 트리트먼트 15ml',
 '[스팟진정] 비플레인 시카테롤 스팟 트리트먼트 15ml',
 4.5,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비플레인'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[스팟진정] 비플레인 시카테롤 스팟 트리트먼트 15ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(22000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[스팟진정] 비플레인 시카테롤 스팟 트리트먼트 15ml'), NOW(), NOW()),
(22000, 'SALE', (SELECT id FROM product WHERE name = '[스팟진정] 비플레인 시카테롤 스팟 트리트먼트 15ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016368903ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[스팟진정] 비플레인 시카테롤 스팟 트리트먼트 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016368905ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[스팟진정] 비플레인 시카테롤 스팟 트리트먼트 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016368904ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[스팟진정] 비플레인 시카테롤 스팟 트리트먼트 15ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[스팟진정] 비플레인 시카테롤 스팟 트리트먼트 15ml';


-- ================================

-- 상품: [피부특화 DNA성분] 리쥬란힐러 턴오버 액티브 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[피부특화 DNA성분] 리쥬란힐러 턴오버 액티브 크림 50ml',
 '[피부특화 DNA성분] 리쥬란힐러 턴오버 액티브 크림 50ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '리쥬란'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[피부특화 DNA성분] 리쥬란힐러 턴오버 액티브 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[피부특화 DNA성분] 리쥬란힐러 턴오버 액티브 크림 50ml'), NOW(), NOW()),
(27400, 'SALE', (SELECT id FROM product WHERE name = '[피부특화 DNA성분] 리쥬란힐러 턴오버 액티브 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016420606ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[피부특화 DNA성분] 리쥬란힐러 턴오버 액티브 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016420607ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[피부특화 DNA성분] 리쥬란힐러 턴오버 액티브 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016420605ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[피부특화 DNA성분] 리쥬란힐러 턴오버 액티브 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016420603ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[피부특화 DNA성분] 리쥬란힐러 턴오버 액티브 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[피부특화 DNA성분] 리쥬란힐러 턴오버 액티브 크림 50ml';


-- ================================

-- 상품: 플리프 시카-알로에 프레쉬 수분크림 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('플리프 시카-알로에 프레쉬 수분크림 150ml',
 '플리프 시카-알로에 프레쉬 수분크림 150ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '플리프'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '플리프 시카-알로에 프레쉬 수분크림 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(21000, 'ORIGINAL', (SELECT id FROM product WHERE name = '플리프 시카-알로에 프레쉬 수분크림 150ml'), NOW(), NOW()),
(17500, 'SALE', (SELECT id FROM product WHERE name = '플리프 시카-알로에 프레쉬 수분크림 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016425102ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '플리프 시카-알로에 프레쉬 수분크림 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016425101ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '플리프 시카-알로에 프레쉬 수분크림 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '플리프 시카-알로에 프레쉬 수분크림 150ml';


-- ================================

-- 상품: 비욘드 엔젤아쿠아 시카크림 더블기획(150mlX2입)(비건)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('비욘드 엔젤아쿠아 시카크림 더블기획(150mlX2입)(비건)',
 '비욘드 엔젤아쿠아 시카크림 더블기획(150mlX2입)(비건)',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비욘드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 시카크림 더블기획(150mlX2입)(비건)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 시카크림 더블기획(150mlX2입)(비건)'), NOW(), NOW()),
(19760, 'SALE', (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 시카크림 더블기획(150mlX2입)(비건)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016434210ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 시카크림 더블기획(150mlX2입)(비건)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016434208ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 시카크림 더블기획(150mlX2입)(비건)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016434207ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 시카크림 더블기획(150mlX2입)(비건)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016434206ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 시카크림 더블기획(150mlX2입)(비건)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016434205ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 시카크림 더블기획(150mlX2입)(비건)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016434203ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 시카크림 더블기획(150mlX2입)(비건)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '비욘드 엔젤아쿠아 시카크림 더블기획(150mlX2입)(비건)';


-- ================================

-- 상품: 믹순 콩 스틱 밤 11.5ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('믹순 콩 스틱 밤 11.5ml',
 '믹순 콩 스틱 밤 11.5ml',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '믹순'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '믹순 콩 스틱 밤 11.5ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '믹순 콩 스틱 밤 11.5ml'), NOW(), NOW()),
(29800, 'SALE', (SELECT id FROM product WHERE name = '믹순 콩 스틱 밤 11.5ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016457104ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '믹순 콩 스틱 밤 11.5ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016457105ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '믹순 콩 스틱 밤 11.5ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '믹순 콩 스틱 밤 11.5ml';


-- ================================

-- 상품: 믹순 병풀 스틱 밤 11.5ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('믹순 병풀 스틱 밤 11.5ml',
 '믹순 병풀 스틱 밤 11.5ml',
 4.5,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '믹순'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '믹순 병풀 스틱 밤 11.5ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '믹순 병풀 스틱 밤 11.5ml'), NOW(), NOW()),
(29800, 'SALE', (SELECT id FROM product WHERE name = '믹순 병풀 스틱 밤 11.5ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016457402ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '믹순 병풀 스틱 밤 11.5ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016457403ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '믹순 병풀 스틱 밤 11.5ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '믹순 병풀 스틱 밤 11.5ml';


-- ================================

-- 상품: 어바웃미 숲 진정 수분 크림 80ml (100시간 수분지속 진정크림)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('어바웃미 숲 진정 수분 크림 80ml (100시간 수분지속 진정크림)',
 '어바웃미 숲 진정 수분 크림 80ml (100시간 수분지속 진정크림)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '어바웃미'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '어바웃미 숲 진정 수분 크림 80ml (100시간 수분지속 진정크림)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '어바웃미 숲 진정 수분 크림 80ml (100시간 수분지속 진정크림)'), NOW(), NOW()),
(30000, 'SALE', (SELECT id FROM product WHERE name = '어바웃미 숲 진정 수분 크림 80ml (100시간 수분지속 진정크림)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016461416ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '어바웃미 숲 진정 수분 크림 80ml (100시간 수분지속 진정크림)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016461413ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '어바웃미 숲 진정 수분 크림 80ml (100시간 수분지속 진정크림)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016461411ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '어바웃미 숲 진정 수분 크림 80ml (100시간 수분지속 진정크림)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '어바웃미 숲 진정 수분 크림 80ml (100시간 수분지속 진정크림)';


-- ================================

-- 상품: 엠브리올리스 레 크렘 센시티브 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('엠브리올리스 레 크렘 센시티브 100ml',
 '엠브리올리스 레 크렘 센시티브 100ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '엠브리올리스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '엠브리올리스 레 크렘 센시티브 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(47000, 'ORIGINAL', (SELECT id FROM product WHERE name = '엠브리올리스 레 크렘 센시티브 100ml'), NOW(), NOW()),
(47000, 'SALE', (SELECT id FROM product WHERE name = '엠브리올리스 레 크렘 센시티브 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016462803ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '엠브리올리스 레 크렘 센시티브 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016462804ko.jpeg?l=ko', 2, (SELECT id FROM product WHERE name = '엠브리올리스 레 크렘 센시티브 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '엠브리올리스 레 크렘 센시티브 100ml';


-- ================================

-- 상품: 에스티 로더 리바이탈라이징 수프림+ 유스 파워 크림 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('에스티 로더 리바이탈라이징 수프림+ 유스 파워 크림 30ml',
 '에스티 로더 리바이탈라이징 수프림+ 유스 파워 크림 30ml',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에스티로더'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '에스티 로더 리바이탈라이징 수프림+ 유스 파워 크림 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(120000, 'ORIGINAL', (SELECT id FROM product WHERE name = '에스티 로더 리바이탈라이징 수프림+ 유스 파워 크림 30ml'), NOW(), NOW()),
(102000, 'SALE', (SELECT id FROM product WHERE name = '에스티 로더 리바이탈라이징 수프림+ 유스 파워 크림 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016501709ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '에스티 로더 리바이탈라이징 수프림+ 유스 파워 크림 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '에스티 로더 리바이탈라이징 수프림+ 유스 파워 크림 30ml';


-- ================================

-- 상품: [슬로우에이징]바이오더마 센시비오 디펜시브 리치 40ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[슬로우에이징]바이오더마 센시비오 디펜시브 리치 40ml',
 '[슬로우에이징]바이오더마 센시비오 디펜시브 리치 40ml',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오더마'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[슬로우에이징]바이오더마 센시비오 디펜시브 리치 40ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[슬로우에이징]바이오더마 센시비오 디펜시브 리치 40ml'), NOW(), NOW()),
(21000, 'SALE', (SELECT id FROM product WHERE name = '[슬로우에이징]바이오더마 센시비오 디펜시브 리치 40ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016505506ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[슬로우에이징]바이오더마 센시비오 디펜시브 리치 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016505507ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[슬로우에이징]바이오더마 센시비오 디펜시브 리치 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016505508ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[슬로우에이징]바이오더마 센시비오 디펜시브 리치 40ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[슬로우에이징]바이오더마 센시비오 디펜시브 리치 40ml';


-- ================================

-- 상품: [슬로우에이징]바이오더마 센시비오 디펜시브 40ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[슬로우에이징]바이오더마 센시비오 디펜시브 40ml',
 '[슬로우에이징]바이오더마 센시비오 디펜시브 40ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오더마'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[슬로우에이징]바이오더마 센시비오 디펜시브 40ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[슬로우에이징]바이오더마 센시비오 디펜시브 40ml'), NOW(), NOW()),
(21000, 'SALE', (SELECT id FROM product WHERE name = '[슬로우에이징]바이오더마 센시비오 디펜시브 40ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016505608ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[슬로우에이징]바이오더마 센시비오 디펜시브 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016505609ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[슬로우에이징]바이오더마 센시비오 디펜시브 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016505610ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[슬로우에이징]바이오더마 센시비오 디펜시브 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016505613ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[슬로우에이징]바이오더마 센시비오 디펜시브 40ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[슬로우에이징]바이오더마 센시비오 디펜시브 40ml';


-- ================================

-- 상품: [진정/쿨링] 닥터디퍼런트 시카 메탈 퀵 수딩 크림 50g...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[진정/쿨링] 닥터디퍼런트 시카 메탈 퀵 수딩 크림 50g',
 '[진정/쿨링] 닥터디퍼런트 시카 메탈 퀵 수딩 크림 50g',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터디퍼런트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[진정/쿨링] 닥터디퍼런트 시카 메탈 퀵 수딩 크림 50g'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[진정/쿨링] 닥터디퍼런트 시카 메탈 퀵 수딩 크림 50g'), NOW(), NOW()),
(28000, 'SALE', (SELECT id FROM product WHERE name = '[진정/쿨링] 닥터디퍼런트 시카 메탈 퀵 수딩 크림 50g'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016588710ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[진정/쿨링] 닥터디퍼런트 시카 메탈 퀵 수딩 크림 50g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016588712ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[진정/쿨링] 닥터디퍼런트 시카 메탈 퀵 수딩 크림 50g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016588711ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[진정/쿨링] 닥터디퍼런트 시카 메탈 퀵 수딩 크림 50g'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[진정/쿨링] 닥터디퍼런트 시카 메탈 퀵 수딩 크림 50g';


-- ================================

-- 상품: 씨널스 씨트러스트 카밍 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('씨널스 씨트러스트 카밍 크림 50ml',
 '씨널스 씨트러스트 카밍 크림 50ml',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '씨널스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '씨널스 씨트러스트 카밍 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(27000, 'ORIGINAL', (SELECT id FROM product WHERE name = '씨널스 씨트러스트 카밍 크림 50ml'), NOW(), NOW()),
(27000, 'SALE', (SELECT id FROM product WHERE name = '씨널스 씨트러스트 카밍 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016692201ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '씨널스 씨트러스트 카밍 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016692207ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '씨널스 씨트러스트 카밍 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016692206ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '씨널스 씨트러스트 카밍 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016692205ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '씨널스 씨트러스트 카밍 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016692204ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '씨널스 씨트러스트 카밍 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016692203ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '씨널스 씨트러스트 카밍 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '씨널스 씨트러스트 카밍 크림 50ml';


-- ================================

-- 상품: [1+1 기획] 차앤박(CNP) 아쿠아 수딩 크림 1+1 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[1+1 기획] 차앤박(CNP) 아쿠아 수딩 크림 1+1 기획',
 '[1+1 기획] 차앤박(CNP) 아쿠아 수딩 크림 1+1 기획',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '차앤박'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[1+1 기획] 차앤박(CNP) 아쿠아 수딩 크림 1+1 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(34500, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1+1 기획] 차앤박(CNP) 아쿠아 수딩 크림 1+1 기획'), NOW(), NOW()),
(26400, 'SALE', (SELECT id FROM product WHERE name = '[1+1 기획] 차앤박(CNP) 아쿠아 수딩 크림 1+1 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016717004ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[1+1 기획] 차앤박(CNP) 아쿠아 수딩 크림 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016717002ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[1+1 기획] 차앤박(CNP) 아쿠아 수딩 크림 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016717003ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[1+1 기획] 차앤박(CNP) 아쿠아 수딩 크림 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016717001ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[1+1 기획] 차앤박(CNP) 아쿠아 수딩 크림 1+1 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[1+1 기획] 차앤박(CNP) 아쿠아 수딩 크림 1+1 기획';


-- ================================

-- 상품: 달팡 하이드라스킨 리치/라이트 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('달팡 하이드라스킨 리치/라이트 크림 50ml',
 '달팡 하이드라스킨 리치/라이트 크림 50ml',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '달팡'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '달팡 하이드라스킨 리치/라이트 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(72000, 'ORIGINAL', (SELECT id FROM product WHERE name = '달팡 하이드라스킨 리치/라이트 크림 50ml'), NOW(), NOW()),
(61200, 'SALE', (SELECT id FROM product WHERE name = '달팡 하이드라스킨 리치/라이트 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016783910ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '달팡 하이드라스킨 리치/라이트 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016783911ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '달팡 하이드라스킨 리치/라이트 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '달팡 하이드라스킨 리치/라이트 크림 50ml';


-- ================================

-- 상품: 피지오겔 DMT 포맨 페이셜 크림 80ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('피지오겔 DMT 포맨 페이셜 크림 80ml',
 '피지오겔 DMT 포맨 페이셜 크림 80ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '피지오겔'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '피지오겔 DMT 포맨 페이셜 크림 80ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '피지오겔 DMT 포맨 페이셜 크림 80ml'), NOW(), NOW()),
(30000, 'SALE', (SELECT id FROM product WHERE name = '피지오겔 DMT 포맨 페이셜 크림 80ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016918006ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '피지오겔 DMT 포맨 페이셜 크림 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016918004ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '피지오겔 DMT 포맨 페이셜 크림 80ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '피지오겔 DMT 포맨 페이셜 크림 80ml';


-- ================================

-- 상품: [쿨링/진정] 잇츠스킨 파워10 포뮬라 엘아이 수딩 젤크림 감초줄렌 55ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[쿨링/진정] 잇츠스킨 파워10 포뮬라 엘아이 수딩 젤크림 감초줄렌 55ml',
 '[쿨링/진정] 잇츠스킨 파워10 포뮬라 엘아이 수딩 젤크림 감초줄렌 55ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '잇츠스킨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[쿨링/진정] 잇츠스킨 파워10 포뮬라 엘아이 수딩 젤크림 감초줄렌 55ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[쿨링/진정] 잇츠스킨 파워10 포뮬라 엘아이 수딩 젤크림 감초줄렌 55ml'), NOW(), NOW()),
(17500, 'SALE', (SELECT id FROM product WHERE name = '[쿨링/진정] 잇츠스킨 파워10 포뮬라 엘아이 수딩 젤크림 감초줄렌 55ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017023905ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[쿨링/진정] 잇츠스킨 파워10 포뮬라 엘아이 수딩 젤크림 감초줄렌 55ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017023904ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[쿨링/진정] 잇츠스킨 파워10 포뮬라 엘아이 수딩 젤크림 감초줄렌 55ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017023903ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[쿨링/진정] 잇츠스킨 파워10 포뮬라 엘아이 수딩 젤크림 감초줄렌 55ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[쿨링/진정] 잇츠스킨 파워10 포뮬라 엘아이 수딩 젤크림 감초줄렌 55ml';


-- ================================

-- 상품: 허블룸 콤부차 비건 콜라겐 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('허블룸 콤부차 비건 콜라겐 크림 50ml',
 '허블룸 콤부차 비건 콜라겐 크림 50ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '허블룸'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '허블룸 콤부차 비건 콜라겐 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '허블룸 콤부차 비건 콜라겐 크림 50ml'), NOW(), NOW()),
(38000, 'SALE', (SELECT id FROM product WHERE name = '허블룸 콤부차 비건 콜라겐 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017161508ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '허블룸 콤부차 비건 콜라겐 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017161509ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '허블룸 콤부차 비건 콜라겐 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017161507ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '허블룸 콤부차 비건 콜라겐 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017161506ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '허블룸 콤부차 비건 콜라겐 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '허블룸 콤부차 비건 콜라겐 크림 50ml';


-- ================================

-- 상품: 닥터하스킨 미라클아토 하이드로 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('닥터하스킨 미라클아토 하이드로 크림 50ml',
 '닥터하스킨 미라클아토 하이드로 크림 50ml',
 5.0,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터하스킨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '닥터하스킨 미라클아토 하이드로 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(19800, 'ORIGINAL', (SELECT id FROM product WHERE name = '닥터하스킨 미라클아토 하이드로 크림 50ml'), NOW(), NOW()),
(18810, 'SALE', (SELECT id FROM product WHERE name = '닥터하스킨 미라클아토 하이드로 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017175706ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '닥터하스킨 미라클아토 하이드로 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017175707ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '닥터하스킨 미라클아토 하이드로 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '닥터하스킨 미라클아토 하이드로 크림 50ml';


-- ================================

-- 상품: 울트라브이 이데베논 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('울트라브이 이데베논 크림 50ml',
 '울트라브이 이데베논 크림 50ml',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '울트라브이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '울트라브이 이데베논 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '울트라브이 이데베논 크림 50ml'), NOW(), NOW()),
(28800, 'SALE', (SELECT id FROM product WHERE name = '울트라브이 이데베논 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017204215ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '울트라브이 이데베논 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017204216ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '울트라브이 이데베논 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017204208ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '울트라브이 이데베논 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017204218ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '울트라브이 이데베논 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '울트라브이 이데베논 크림 50ml';


-- ================================

-- 상품: 메디올가 메디 아하 크림 스트롱 1+1 기획(30ml+30ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('메디올가 메디 아하 크림 스트롱 1+1 기획(30ml+30ml)',
 '메디올가 메디 아하 크림 스트롱 1+1 기획(30ml+30ml)',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '메디올가'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '메디올가 메디 아하 크림 스트롱 1+1 기획(30ml+30ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '메디올가 메디 아하 크림 스트롱 1+1 기획(30ml+30ml)'), NOW(), NOW()),
(26000, 'SALE', (SELECT id FROM product WHERE name = '메디올가 메디 아하 크림 스트롱 1+1 기획(30ml+30ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017207214ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '메디올가 메디 아하 크림 스트롱 1+1 기획(30ml+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017207215ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '메디올가 메디 아하 크림 스트롱 1+1 기획(30ml+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017207213ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '메디올가 메디 아하 크림 스트롱 1+1 기획(30ml+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017207212ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '메디올가 메디 아하 크림 스트롱 1+1 기획(30ml+30ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '메디올가 메디 아하 크림 스트롱 1+1 기획(30ml+30ml)';


-- ================================

-- 상품: 메디올가 브라이트닝 크림 플러스 1+1 기획(30ml+30ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('메디올가 브라이트닝 크림 플러스 1+1 기획(30ml+30ml)',
 '메디올가 브라이트닝 크림 플러스 1+1 기획(30ml+30ml)',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '메디올가'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '메디올가 브라이트닝 크림 플러스 1+1 기획(30ml+30ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(27000, 'ORIGINAL', (SELECT id FROM product WHERE name = '메디올가 브라이트닝 크림 플러스 1+1 기획(30ml+30ml)'), NOW(), NOW()),
(27000, 'SALE', (SELECT id FROM product WHERE name = '메디올가 브라이트닝 크림 플러스 1+1 기획(30ml+30ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017207508ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '메디올가 브라이트닝 크림 플러스 1+1 기획(30ml+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017207511ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '메디올가 브라이트닝 크림 플러스 1+1 기획(30ml+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017207510ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '메디올가 브라이트닝 크림 플러스 1+1 기획(30ml+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017207509ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '메디올가 브라이트닝 크림 플러스 1+1 기획(30ml+30ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '메디올가 브라이트닝 크림 플러스 1+1 기획(30ml+30ml)';


-- ================================

-- 상품: 수페 버치 리치 오리진 크림 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('수페 버치 리치 오리진 크림 50ml',
 '수페 버치 리치 오리진 크림 50ml',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '수페'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '수페 버치 리치 오리진 크림 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(36000, 'ORIGINAL', (SELECT id FROM product WHERE name = '수페 버치 리치 오리진 크림 50ml'), NOW(), NOW()),
(36000, 'SALE', (SELECT id FROM product WHERE name = '수페 버치 리치 오리진 크림 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017220705ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '수페 버치 리치 오리진 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017220707ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '수페 버치 리치 오리진 크림 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017220704ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '수페 버치 리치 오리진 크림 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '수페 버치 리치 오리진 크림 50ml';


-- ================================

-- 상품: 차앤박(CNP) 프로폴리스 멀티 앰플밤 1+1 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('차앤박(CNP) 프로폴리스 멀티 앰플밤 1+1 기획',
 '차앤박(CNP) 프로폴리스 멀티 앰플밤 1+1 기획',
 4.7,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '차앤박'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '차앤박(CNP) 프로폴리스 멀티 앰플밤 1+1 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '차앤박(CNP) 프로폴리스 멀티 앰플밤 1+1 기획'), NOW(), NOW()),
(26600, 'SALE', (SELECT id FROM product WHERE name = '차앤박(CNP) 프로폴리스 멀티 앰플밤 1+1 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017247602ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '차앤박(CNP) 프로폴리스 멀티 앰플밤 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017247604ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '차앤박(CNP) 프로폴리스 멀티 앰플밤 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017247603ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '차앤박(CNP) 프로폴리스 멀티 앰플밤 1+1 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '차앤박(CNP) 프로폴리스 멀티 앰플밤 1+1 기획';


-- ================================

-- 상품: [피지40%감소] 라타플랑 미나리 시카트러블 진정 수분크림 75ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[피지40%감소] 라타플랑 미나리 시카트러블 진정 수분크림 75ml',
 '[피지40%감소] 라타플랑 미나리 시카트러블 진정 수분크림 75ml',
 4.9,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라타플랑'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[피지40%감소] 라타플랑 미나리 시카트러블 진정 수분크림 75ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[피지40%감소] 라타플랑 미나리 시카트러블 진정 수분크림 75ml'), NOW(), NOW()),
(24000, 'SALE', (SELECT id FROM product WHERE name = '[피지40%감소] 라타플랑 미나리 시카트러블 진정 수분크림 75ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017305523ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[피지40%감소] 라타플랑 미나리 시카트러블 진정 수분크림 75ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017305522ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[피지40%감소] 라타플랑 미나리 시카트러블 진정 수분크림 75ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017305520ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[피지40%감소] 라타플랑 미나리 시카트러블 진정 수분크림 75ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017305505ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[피지40%감소] 라타플랑 미나리 시카트러블 진정 수분크림 75ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[피지40%감소] 라타플랑 미나리 시카트러블 진정 수분크림 75ml';


-- ================================

-- 상품: 메디큐브 레드 크림 2.0 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('메디큐브 레드 크림 2.0 50ml',
 '메디큐브 레드 크림 2.0 50ml',
 4.8,
 (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '메디큐브'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '메디큐브 레드 크림 2.0 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(34300, 'ORIGINAL', (SELECT id FROM product WHERE name = '메디큐브 레드 크림 2.0 50ml'), NOW(), NOW()),
(34300, 'SALE', (SELECT id FROM product WHERE name = '메디큐브 레드 크림 2.0 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017311602ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '메디큐브 레드 크림 2.0 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017311606ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '메디큐브 레드 크림 2.0 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017311603ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '메디큐브 레드 크림 2.0 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '메디큐브 레드 크림 2.0 50ml';


-- ================================
