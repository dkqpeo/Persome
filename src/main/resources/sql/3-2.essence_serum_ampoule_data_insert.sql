-- 상품: [올영단독/민감트러블] 퍼셀 20억/mL 픽셀바이옴 원액 20ml 더블 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[올영단독/민감트러블] 퍼셀 20억/mL 픽셀바이옴 원액 20ml 더블 기획',
 '[올영단독/민감트러블] 퍼셀 20억/mL 픽셀바이옴 원액 20ml 더블 기획',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '퍼셀'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[올영단독/민감트러블] 퍼셀 20억/mL 픽셀바이옴 원액 20ml 더블 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(56000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[올영단독/민감트러블] 퍼셀 20억/mL 픽셀바이옴 원액 20ml 더블 기획'), NOW(), NOW()),
(34300, 'SALE', (SELECT id FROM product WHERE name = '[올영단독/민감트러블] 퍼셀 20억/mL 픽셀바이옴 원액 20ml 더블 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020955910ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[올영단독/민감트러블] 퍼셀 20억/mL 픽셀바이옴 원액 20ml 더블 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020955905ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[올영단독/민감트러블] 퍼셀 20억/mL 픽셀바이옴 원액 20ml 더블 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020955901ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[올영단독/민감트러블] 퍼셀 20억/mL 픽셀바이옴 원액 20ml 더블 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020955906ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[올영단독/민감트러블] 퍼셀 20억/mL 픽셀바이옴 원액 20ml 더블 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020955904ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[올영단독/민감트러블] 퍼셀 20억/mL 픽셀바이옴 원액 20ml 더블 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020955909ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[올영단독/민감트러블] 퍼셀 20억/mL 픽셀바이옴 원액 20ml 더블 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[올영단독/민감트러블] 퍼셀 20억/mL 픽셀바이옴 원액 20ml 더블 기획';


-- ================================



-- ================================

-- 상품: [9월 올영픽/보습 광채탄력] VT 피디알엔 에센스 100 30ml 더블 기획 (+리들샷 ...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽/보습 광채탄력] VT 피디알엔 에센스 100 30ml 더블 기획 (+리들샷 100 10ml)',
 '[9월 올영픽/보습 광채탄력] VT 피디알엔 에센스 100 30ml 더블 기획 (+리들샷 100 10ml)',
 5.0,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'VT'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9월 올영픽/보습 광채탄력] VT 피디알엔 에센스 100 30ml 더블 기획 (+리들샷 100 10ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(67500, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽/보습 광채탄력] VT 피디알엔 에센스 100 30ml 더블 기획 (+리들샷 100 10ml)'), NOW(), NOW()),
(36500, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽/보습 광채탄력] VT 피디알엔 에센스 100 30ml 더블 기획 (+리들샷 100 10ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023221303ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽/보습 광채탄력] VT 피디알엔 에센스 100 30ml 더블 기획 (+리들샷 100 10ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[9월 올영픽/보습 광채탄력] VT 피디알엔 에센스 100 30ml 더블 기획 (+리들샷 100 10ml)';


-- ================================



-- ================================

-- 상품: [9월 올영픽/1+1+10ml] 메디힐 마데카소사이드 흔적 리페어 세럼 40+40+10mL...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽/1+1+10ml] 메디힐 마데카소사이드 흔적 리페어 세럼 40+40+10mL',
 '[9월 올영픽/1+1+10ml] 메디힐 마데카소사이드 흔적 리페어 세럼 40+40+10mL',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '메디힐'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9월 올영픽/1+1+10ml] 메디힐 마데카소사이드 흔적 리페어 세럼 40+40+10mL'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(36900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽/1+1+10ml] 메디힐 마데카소사이드 흔적 리페어 세럼 40+40+10mL'), NOW(), NOW()),
(22400, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽/1+1+10ml] 메디힐 마데카소사이드 흔적 리페어 세럼 40+40+10mL'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022644978ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽/1+1+10ml] 메디힐 마데카소사이드 흔적 리페어 세럼 40+40+10mL'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022644975ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽/1+1+10ml] 메디힐 마데카소사이드 흔적 리페어 세럼 40+40+10mL'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022644977ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽/1+1+10ml] 메디힐 마데카소사이드 흔적 리페어 세럼 40+40+10mL'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[9월 올영픽/1+1+10ml] 메디힐 마데카소사이드 흔적 리페어 세럼 40+40+10mL';


-- ================================



-- ================================

-- 상품: [9월 올영픽/모공에센스] VT 리들샷 100 에센스 30ml 더블 기획(+피디알엔 에센스...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽/모공에센스] VT 리들샷 100 에센스 30ml 더블 기획(+피디알엔 에센스 100 1.5ml*3ea)',
 '[9월 올영픽/모공에센스] VT 리들샷 100 에센스 30ml 더블 기획(+피디알엔 에센스 100 1.5ml*3ea)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'VT'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9월 올영픽/모공에센스] VT 리들샷 100 에센스 30ml 더블 기획(+피디알엔 에센스 100 1.5ml*3ea)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(31500, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽/모공에센스] VT 리들샷 100 에센스 30ml 더블 기획(+피디알엔 에센스 100 1.5ml*3ea)'), NOW(), NOW()),
(23500, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽/모공에센스] VT 리들샷 100 에센스 30ml 더블 기획(+피디알엔 에센스 100 1.5ml*3ea)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023221203ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽/모공에센스] VT 리들샷 100 에센스 30ml 더블 기획(+피디알엔 에센스 100 1.5ml*3ea)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[9월 올영픽/모공에센스] VT 리들샷 100 에센스 30ml 더블 기획(+피디알엔 에센스 100 1.5ml*3ea)';


-- ================================



-- ================================

-- 상품: [속보습세럼/단독기획] 토리든 다이브인 저분자 히알루론산 세럼 50ml 리필기획(+리필팩 ...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[속보습세럼/단독기획] 토리든 다이브인 저분자 히알루론산 세럼 50ml 리필기획(+리필팩 50ml)',
 '[속보습세럼/단독기획] 토리든 다이브인 저분자 히알루론산 세럼 50ml 리필기획(+리필팩 50ml)',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '토리든'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[속보습세럼/단독기획] 토리든 다이브인 저분자 히알루론산 세럼 50ml 리필기획(+리필팩 50ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(36000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[속보습세럼/단독기획] 토리든 다이브인 저분자 히알루론산 세럼 50ml 리필기획(+리필팩 50ml)'), NOW(), NOW()),
(27000, 'SALE', (SELECT id FROM product WHERE name = '[속보습세럼/단독기획] 토리든 다이브인 저분자 히알루론산 세럼 50ml 리필기획(+리필팩 50ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018926132ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[속보습세럼/단독기획] 토리든 다이브인 저분자 히알루론산 세럼 50ml 리필기획(+리필팩 50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018926126ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[속보습세럼/단독기획] 토리든 다이브인 저분자 히알루론산 세럼 50ml 리필기획(+리필팩 50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018926127ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[속보습세럼/단독기획] 토리든 다이브인 저분자 히알루론산 세럼 50ml 리필기획(+리필팩 50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018926124ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[속보습세럼/단독기획] 토리든 다이브인 저분자 히알루론산 세럼 50ml 리필기획(+리필팩 50ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[속보습세럼/단독기획] 토리든 다이브인 저분자 히알루론산 세럼 50ml 리필기획(+리필팩 50ml)';


-- ================================



-- ================================

-- 상품: [9월 올영픽/대용량 리필기획] 메디큐브 PDRN 핑크 앰플 30ml 리필기획 (본품+리필...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽/대용량 리필기획] 메디큐브 PDRN 핑크 앰플 30ml 리필기획 (본품+리필 50ML+겔패드*2매)',
 '[9월 올영픽/대용량 리필기획] 메디큐브 PDRN 핑크 앰플 30ml 리필기획 (본품+리필 50ML+겔패드*2매)',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '메디큐브'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('본품+리필+겔패드2매입*2EA', 24300, (SELECT id FROM product WHERE name = '[9월 올영픽/대용량 리필기획] 메디큐브 PDRN 핑크 앰플 30ml 리필기획 (본품+리필 50ML+겔패드*2매)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('본품+리필', 24300, (SELECT id FROM product WHERE name = '[9월 올영픽/대용량 리필기획] 메디큐브 PDRN 핑크 앰플 30ml 리필기획 (본품+리필 50ML+겔패드*2매)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(46000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽/대용량 리필기획] 메디큐브 PDRN 핑크 앰플 30ml 리필기획 (본품+리필 50ML+겔패드*2매)'), NOW(), NOW()),
(24300, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽/대용량 리필기획] 메디큐브 PDRN 핑크 앰플 30ml 리필기획 (본품+리필 50ML+겔패드*2매)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022649820ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽/대용량 리필기획] 메디큐브 PDRN 핑크 앰플 30ml 리필기획 (본품+리필 50ML+겔패드*2매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022649817ko.jpeg?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽/대용량 리필기획] 메디큐브 PDRN 핑크 앰플 30ml 리필기획 (본품+리필 50ML+겔패드*2매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022649802ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽/대용량 리필기획] 메디큐브 PDRN 핑크 앰플 30ml 리필기획 (본품+리필 50ML+겔패드*2매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022649804ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[9월 올영픽/대용량 리필기획] 메디큐브 PDRN 핑크 앰플 30ml 리필기획 (본품+리필 50ML+겔패드*2매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022649801ko.png?l=ko', 5, (SELECT id FROM product WHERE name = '[9월 올영픽/대용량 리필기획] 메디큐브 PDRN 핑크 앰플 30ml 리필기획 (본품+리필 50ML+겔패드*2매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022649806ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[9월 올영픽/대용량 리필기획] 메디큐브 PDRN 핑크 앰플 30ml 리필기획 (본품+리필 50ML+겔패드*2매)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[9월 올영픽/대용량 리필기획] 메디큐브 PDRN 핑크 앰플 30ml 리필기획 (본품+리필 50ML+겔패드*2매)';


-- ================================



-- ================================

-- 상품: [9월 올영픽] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30mL 기획세트 (+크림 3...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30mL 기획세트 (+크림 30ml)',
 '[9월 올영픽] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30mL 기획세트 (+크림 30ml)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아누아'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30mL 기획세트 (+크림 30ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30mL 기획세트 (+크림 30ml)'), NOW(), NOW()),
(19600, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30mL 기획세트 (+크림 30ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189412ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30mL 기획세트 (+크림 30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189407ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30mL 기획세트 (+크림 30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189409ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30mL 기획세트 (+크림 30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189404ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30mL 기획세트 (+크림 30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189403ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30mL 기획세트 (+크림 30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189405ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30mL 기획세트 (+크림 30ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[9월 올영픽] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30mL 기획세트 (+크림 30ml)';


-- ================================



-- ================================

-- 상품: [속건조필수템/대용량150ml] 웰라쥬 리얼 히알루로닉 블루 100 앰플 75ml 더블기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[속건조필수템/대용량150ml] 웰라쥬 리얼 히알루로닉 블루 100 앰플 75ml 더블기획',
 '[속건조필수템/대용량150ml] 웰라쥬 리얼 히알루로닉 블루 100 앰플 75ml 더블기획',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '웰라쥬'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[속건조필수템/대용량150ml] 웰라쥬 리얼 히알루로닉 블루 100 앰플 75ml 더블기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(50000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[속건조필수템/대용량150ml] 웰라쥬 리얼 히알루로닉 블루 100 앰플 75ml 더블기획'), NOW(), NOW()),
(30900, 'SALE', (SELECT id FROM product WHERE name = '[속건조필수템/대용량150ml] 웰라쥬 리얼 히알루로닉 블루 100 앰플 75ml 더블기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023188510ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[속건조필수템/대용량150ml] 웰라쥬 리얼 히알루로닉 블루 100 앰플 75ml 더블기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023188511ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[속건조필수템/대용량150ml] 웰라쥬 리얼 히알루로닉 블루 100 앰플 75ml 더블기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023188512ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[속건조필수템/대용량150ml] 웰라쥬 리얼 히알루로닉 블루 100 앰플 75ml 더블기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023188513ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[속건조필수템/대용량150ml] 웰라쥬 리얼 히알루로닉 블루 100 앰플 75ml 더블기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[속건조필수템/대용량150ml] 웰라쥬 리얼 히알루로닉 블루 100 앰플 75ml 더블기획';


-- ================================



-- ================================

-- 상품: [대용량/트러블1등] 파티온 노스카나인 트러블 세럼 50ml 리필 기획(+리필40ml+크림...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[대용량/트러블1등] 파티온 노스카나인 트러블 세럼 50ml 리필 기획(+리필40ml+크림10ml)',
 '[대용량/트러블1등] 파티온 노스카나인 트러블 세럼 50ml 리필 기획(+리필40ml+크림10ml)',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '파티온'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[대용량/트러블1등] 파티온 노스카나인 트러블 세럼 50ml 리필 기획(+리필40ml+크림10ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(54000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[대용량/트러블1등] 파티온 노스카나인 트러블 세럼 50ml 리필 기획(+리필40ml+크림10ml)'), NOW(), NOW()),
(33900, 'SALE', (SELECT id FROM product WHERE name = '[대용량/트러블1등] 파티온 노스카나인 트러블 세럼 50ml 리필 기획(+리필40ml+크림10ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021960906ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[대용량/트러블1등] 파티온 노스카나인 트러블 세럼 50ml 리필 기획(+리필40ml+크림10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021960905ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[대용량/트러블1등] 파티온 노스카나인 트러블 세럼 50ml 리필 기획(+리필40ml+크림10ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[대용량/트러블1등] 파티온 노스카나인 트러블 세럼 50ml 리필 기획(+리필40ml+크림10ml)';


-- ================================



-- ================================

-- 상품: [포켓몬에디션/녹는실리프팅] 성분에디터 실크펩타이드 EGF 하트핏 볼륨 리프팅 앰플 40m...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[포켓몬에디션/녹는실리프팅] 성분에디터 실크펩타이드 EGF 하트핏 볼륨 리프팅 앰플 40ml 더블기획(+키링 파우치)',
 '[포켓몬에디션/녹는실리프팅] 성분에디터 실크펩타이드 EGF 하트핏 볼륨 리프팅 앰플 40ml 더블기획(+키링 파우치)',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '성분에디터'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[포켓몬에디션/녹는실리프팅] 성분에디터 실크펩타이드 EGF 하트핏 볼륨 리프팅 앰플 40ml 더블기획(+키링 파우치)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(43000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[포켓몬에디션/녹는실리프팅] 성분에디터 실크펩타이드 EGF 하트핏 볼륨 리프팅 앰플 40ml 더블기획(+키링 파우치)'), NOW(), NOW()),
(25900, 'SALE', (SELECT id FROM product WHERE name = '[포켓몬에디션/녹는실리프팅] 성분에디터 실크펩타이드 EGF 하트핏 볼륨 리프팅 앰플 40ml 더블기획(+키링 파우치)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023107616ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[포켓몬에디션/녹는실리프팅] 성분에디터 실크펩타이드 EGF 하트핏 볼륨 리프팅 앰플 40ml 더블기획(+키링 파우치)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023107607ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[포켓몬에디션/녹는실리프팅] 성분에디터 실크펩타이드 EGF 하트핏 볼륨 리프팅 앰플 40ml 더블기획(+키링 파우치)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[포켓몬에디션/녹는실리프팅] 성분에디터 실크펩타이드 EGF 하트핏 볼륨 리프팅 앰플 40ml 더블기획(+키링 파우치)';


-- ================================



-- ================================

-- 상품: [9월 올영픽] 바이오더마 하이드라비오 에센스로션 200ml (+안개분사 미스트 증정)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽] 바이오더마 하이드라비오 에센스로션 200ml (+안개분사 미스트 증정)',
 '[9월 올영픽] 바이오더마 하이드라비오 에센스로션 200ml (+안개분사 미스트 증정)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오더마'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9월 올영픽] 바이오더마 하이드라비오 에센스로션 200ml (+안개분사 미스트 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽] 바이오더마 하이드라비오 에센스로션 200ml (+안개분사 미스트 증정)'), NOW(), NOW()),
(23900, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽] 바이오더마 하이드라비오 에센스로션 200ml (+안개분사 미스트 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022608611ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽] 바이오더마 하이드라비오 에센스로션 200ml (+안개분사 미스트 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022608607ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽] 바이오더마 하이드라비오 에센스로션 200ml (+안개분사 미스트 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022608612ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽] 바이오더마 하이드라비오 에센스로션 200ml (+안개분사 미스트 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022608608ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[9월 올영픽] 바이오더마 하이드라비오 에센스로션 200ml (+안개분사 미스트 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[9월 올영픽] 바이오더마 하이드라비오 에센스로션 200ml (+안개분사 미스트 증정)';


-- ================================



-- ================================

-- 상품: [포토카드 증정] 바이오던스 포어 퍼펙팅 콜라겐 펩타이드 세럼 30ml 기획 (+10ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[포토카드 증정] 바이오던스 포어 퍼펙팅 콜라겐 펩타이드 세럼 30ml 기획 (+10ml)',
 '[포토카드 증정] 바이오던스 포어 퍼펙팅 콜라겐 펩타이드 세럼 30ml 기획 (+10ml)',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오던스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[포토카드 증정] 바이오던스 포어 퍼펙팅 콜라겐 펩타이드 세럼 30ml 기획 (+10ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[포토카드 증정] 바이오던스 포어 퍼펙팅 콜라겐 펩타이드 세럼 30ml 기획 (+10ml)'), NOW(), NOW()),
(22700, 'SALE', (SELECT id FROM product WHERE name = '[포토카드 증정] 바이오던스 포어 퍼펙팅 콜라겐 펩타이드 세럼 30ml 기획 (+10ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022858045ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[포토카드 증정] 바이오던스 포어 퍼펙팅 콜라겐 펩타이드 세럼 30ml 기획 (+10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022858044ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[포토카드 증정] 바이오던스 포어 퍼펙팅 콜라겐 펩타이드 세럼 30ml 기획 (+10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022858031ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[포토카드 증정] 바이오던스 포어 퍼펙팅 콜라겐 펩타이드 세럼 30ml 기획 (+10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022858032ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[포토카드 증정] 바이오던스 포어 퍼펙팅 콜라겐 펩타이드 세럼 30ml 기획 (+10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022858033ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[포토카드 증정] 바이오던스 포어 퍼펙팅 콜라겐 펩타이드 세럼 30ml 기획 (+10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022858035ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[포토카드 증정] 바이오던스 포어 퍼펙팅 콜라겐 펩타이드 세럼 30ml 기획 (+10ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[포토카드 증정] 바이오던스 포어 퍼펙팅 콜라겐 펩타이드 세럼 30ml 기획 (+10ml)';


-- ================================



-- ================================

-- 상품: [윤곽앰플] 메디톡스 뉴라덤 코어타임 앰플 15ml [기획(+7ml)/단품]...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[윤곽앰플] 메디톡스 뉴라덤 코어타임 앰플 15ml [기획(+7ml)/단품]',
 '[윤곽앰플] 메디톡스 뉴라덤 코어타임 앰플 15ml [기획(+7ml)/단품]',
 5.0,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '뉴라덤'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[윤곽앰플] 메디톡스 뉴라덤 코어타임 앰플 15ml [기획(+7ml)/단품]'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[윤곽앰플] 메디톡스 뉴라덤 코어타임 앰플 15ml [기획(+7ml)/단품]'), NOW(), NOW()),
(21900, 'SALE', (SELECT id FROM product WHERE name = '[윤곽앰플] 메디톡스 뉴라덤 코어타임 앰플 15ml [기획(+7ml)/단품]'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022329702ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[윤곽앰플] 메디톡스 뉴라덤 코어타임 앰플 15ml [기획(+7ml)/단품]'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022329703ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[윤곽앰플] 메디톡스 뉴라덤 코어타임 앰플 15ml [기획(+7ml)/단품]'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022329701ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[윤곽앰플] 메디톡스 뉴라덤 코어타임 앰플 15ml [기획(+7ml)/단품]'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[윤곽앰플] 메디톡스 뉴라덤 코어타임 앰플 15ml [기획(+7ml)/단품]';


-- ================================



-- ================================

-- 상품: [수분진정] 넘버즈인 1번 판토텐산 액티브업 수딩세럼 50ml 리필기획 (50ml+50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분진정] 넘버즈인 1번 판토텐산 액티브업 수딩세럼 50ml 리필기획 (50ml+50ml)',
 '[수분진정] 넘버즈인 1번 판토텐산 액티브업 수딩세럼 50ml 리필기획 (50ml+50ml)',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '넘버즈인'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분진정] 넘버즈인 1번 판토텐산 액티브업 수딩세럼 50ml 리필기획 (50ml+50ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분진정] 넘버즈인 1번 판토텐산 액티브업 수딩세럼 50ml 리필기획 (50ml+50ml)'), NOW(), NOW()),
(23500, 'SALE', (SELECT id FROM product WHERE name = '[수분진정] 넘버즈인 1번 판토텐산 액티브업 수딩세럼 50ml 리필기획 (50ml+50ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020722528ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분진정] 넘버즈인 1번 판토텐산 액티브업 수딩세럼 50ml 리필기획 (50ml+50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020722519ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분진정] 넘버즈인 1번 판토텐산 액티브업 수딩세럼 50ml 리필기획 (50ml+50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020722518ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분진정] 넘버즈인 1번 판토텐산 액티브업 수딩세럼 50ml 리필기획 (50ml+50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020722520ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[수분진정] 넘버즈인 1번 판토텐산 액티브업 수딩세럼 50ml 리필기획 (50ml+50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020722521ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[수분진정] 넘버즈인 1번 판토텐산 액티브업 수딩세럼 50ml 리필기획 (50ml+50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020722522ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[수분진정] 넘버즈인 1번 판토텐산 액티브업 수딩세럼 50ml 리필기획 (50ml+50ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분진정] 넘버즈인 1번 판토텐산 액티브업 수딩세럼 50ml 리필기획 (50ml+50ml)';


-- ================================



-- ================================

-- 상품: [쿄카PICK/NAD광채세럼] 바이오힐보 NAD 프리즈셀 글로우 파워 세럼 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[쿄카PICK/NAD광채세럼] 바이오힐보 NAD 프리즈셀 글로우 파워 세럼 30ml',
 '[쿄카PICK/NAD광채세럼] 바이오힐보 NAD 프리즈셀 글로우 파워 세럼 30ml',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오힐보'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[쿄카PICK/NAD광채세럼] 바이오힐보 NAD 프리즈셀 글로우 파워 세럼 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[쿄카PICK/NAD광채세럼] 바이오힐보 NAD 프리즈셀 글로우 파워 세럼 30ml'), NOW(), NOW()),
(27300, 'SALE', (SELECT id FROM product WHERE name = '[쿄카PICK/NAD광채세럼] 바이오힐보 NAD 프리즈셀 글로우 파워 세럼 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023388211ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[쿄카PICK/NAD광채세럼] 바이오힐보 NAD 프리즈셀 글로우 파워 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023388209ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[쿄카PICK/NAD광채세럼] 바이오힐보 NAD 프리즈셀 글로우 파워 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023388208ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[쿄카PICK/NAD광채세럼] 바이오힐보 NAD 프리즈셀 글로우 파워 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023388206ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[쿄카PICK/NAD광채세럼] 바이오힐보 NAD 프리즈셀 글로우 파워 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023388202ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[쿄카PICK/NAD광채세럼] 바이오힐보 NAD 프리즈셀 글로우 파워 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023388203ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[쿄카PICK/NAD광채세럼] 바이오힐보 NAD 프리즈셀 글로우 파워 세럼 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[쿄카PICK/NAD광채세럼] 바이오힐보 NAD 프리즈셀 글로우 파워 세럼 30ml';


-- ================================



-- ================================

-- 상품: [보이즈2플래닛 3인 엽서 증정] 브링그린 징크테카 트러블 세럼 (대용량/콜라보/기획)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[보이즈2플래닛 3인 엽서 증정] 브링그린 징크테카 트러블 세럼 (대용량/콜라보/기획)',
 '[보이즈2플래닛 3인 엽서 증정] 브링그린 징크테카 트러블 세럼 (대용량/콜라보/기획)',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '브링그린'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('세럼 50ml+25리필+스팟젤10ml', 28310, (SELECT id FROM product WHERE name = '[보이즈2플래닛 3인 엽서 증정] 브링그린 징크테카 트러블 세럼 (대용량/콜라보/기획)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('세럼 50ml+25리필+패드20매', 28310, (SELECT id FROM product WHERE name = '[보이즈2플래닛 3인 엽서 증정] 브링그린 징크테카 트러블 세럼 (대용량/콜라보/기획)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('세럼 25ml+25리필+플랫파우치', 21240, (SELECT id FROM product WHERE name = '[보이즈2플래닛 3인 엽서 증정] 브링그린 징크테카 트러블 세럼 (대용량/콜라보/기획)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('세럼 1.5mLX10개+미니파우치', 13600, (SELECT id FROM product WHERE name = '[보이즈2플래닛 3인 엽서 증정] 브링그린 징크테카 트러블 세럼 (대용량/콜라보/기획)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(56100, 'ORIGINAL', (SELECT id FROM product WHERE name = '[보이즈2플래닛 3인 엽서 증정] 브링그린 징크테카 트러블 세럼 (대용량/콜라보/기획)'), NOW(), NOW()),
(28310, 'SALE', (SELECT id FROM product WHERE name = '[보이즈2플래닛 3인 엽서 증정] 브링그린 징크테카 트러블 세럼 (대용량/콜라보/기획)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020064654ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[보이즈2플래닛 3인 엽서 증정] 브링그린 징크테카 트러블 세럼 (대용량/콜라보/기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020064652ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[보이즈2플래닛 3인 엽서 증정] 브링그린 징크테카 트러블 세럼 (대용량/콜라보/기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020064653ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[보이즈2플래닛 3인 엽서 증정] 브링그린 징크테카 트러블 세럼 (대용량/콜라보/기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020064648ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[보이즈2플래닛 3인 엽서 증정] 브링그린 징크테카 트러블 세럼 (대용량/콜라보/기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020064646ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[보이즈2플래닛 3인 엽서 증정] 브링그린 징크테카 트러블 세럼 (대용량/콜라보/기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020064633ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[보이즈2플래닛 3인 엽서 증정] 브링그린 징크테카 트러블 세럼 (대용량/콜라보/기획)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[보이즈2플래닛 3인 엽서 증정] 브링그린 징크테카 트러블 세럼 (대용량/콜라보/기획)';


-- ================================



-- ================================

-- 상품: [1+1/깡나PICK] 이니스프리 레티놀 시카 흔적 앰플 30ml 더블 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[1+1/깡나PICK] 이니스프리 레티놀 시카 흔적 앰플 30ml 더블 기획',
 '[1+1/깡나PICK] 이니스프리 레티놀 시카 흔적 앰플 30ml 더블 기획',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '이니스프리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[1+1/깡나PICK] 이니스프리 레티놀 시카 흔적 앰플 30ml 더블 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(52000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1+1/깡나PICK] 이니스프리 레티놀 시카 흔적 앰플 30ml 더블 기획'), NOW(), NOW()),
(29600, 'SALE', (SELECT id FROM product WHERE name = '[1+1/깡나PICK] 이니스프리 레티놀 시카 흔적 앰플 30ml 더블 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023020816ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[1+1/깡나PICK] 이니스프리 레티놀 시카 흔적 앰플 30ml 더블 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023020804ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[1+1/깡나PICK] 이니스프리 레티놀 시카 흔적 앰플 30ml 더블 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023020817ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[1+1/깡나PICK] 이니스프리 레티놀 시카 흔적 앰플 30ml 더블 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023020818ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[1+1/깡나PICK] 이니스프리 레티놀 시카 흔적 앰플 30ml 더블 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023020819ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[1+1/깡나PICK] 이니스프리 레티놀 시카 흔적 앰플 30ml 더블 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023020820ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[1+1/깡나PICK] 이니스프리 레티놀 시카 흔적 앰플 30ml 더블 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[1+1/깡나PICK] 이니스프리 레티놀 시카 흔적 앰플 30ml 더블 기획';


-- ================================



-- ================================

-- 상품: [트러블/모공개선] 셀라딕스 트러블 세범 리밸런싱 RX 131 앰플 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[트러블/모공개선] 셀라딕스 트러블 세범 리밸런싱 RX 131 앰플 30ml',
 '[트러블/모공개선] 셀라딕스 트러블 세범 리밸런싱 RX 131 앰플 30ml',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '셀라딕스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[트러블/모공개선] 셀라딕스 트러블 세범 리밸런싱 RX 131 앰플 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[트러블/모공개선] 셀라딕스 트러블 세범 리밸런싱 RX 131 앰플 30ml'), NOW(), NOW()),
(25400, 'SALE', (SELECT id FROM product WHERE name = '[트러블/모공개선] 셀라딕스 트러블 세범 리밸런싱 RX 131 앰플 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022449404ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[트러블/모공개선] 셀라딕스 트러블 세범 리밸런싱 RX 131 앰플 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022449405ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[트러블/모공개선] 셀라딕스 트러블 세범 리밸런싱 RX 131 앰플 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[트러블/모공개선] 셀라딕스 트러블 세범 리밸런싱 RX 131 앰플 30ml';


-- ================================



-- ================================

-- 상품: [1등 진정세럼] 파넬 시카마누 92세럼 더블기획(30ml+30ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[1등 진정세럼] 파넬 시카마누 92세럼 더블기획(30ml+30ml)',
 '[1등 진정세럼] 파넬 시카마누 92세럼 더블기획(30ml+30ml)',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '파넬'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[1등 진정세럼] 파넬 시카마누 92세럼 더블기획(30ml+30ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(52000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1등 진정세럼] 파넬 시카마누 92세럼 더블기획(30ml+30ml)'), NOW(), NOW()),
(28900, 'SALE', (SELECT id FROM product WHERE name = '[1등 진정세럼] 파넬 시카마누 92세럼 더블기획(30ml+30ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018971323ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[1등 진정세럼] 파넬 시카마누 92세럼 더블기획(30ml+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018971318ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[1등 진정세럼] 파넬 시카마누 92세럼 더블기획(30ml+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018971320ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[1등 진정세럼] 파넬 시카마누 92세럼 더블기획(30ml+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018971315ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[1등 진정세럼] 파넬 시카마누 92세럼 더블기획(30ml+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018971317ko.png?l=ko', 5, (SELECT id FROM product WHERE name = '[1등 진정세럼] 파넬 시카마누 92세럼 더블기획(30ml+30ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[1등 진정세럼] 파넬 시카마누 92세럼 더블기획(30ml+30ml)';


-- ================================



-- ================================

-- 상품: [본품 50%용량 증정/리뷰이벤트] 라로슈포제 시카플라스트 리페어 에센스 30ml 기획 (...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[본품 50%용량 증정/리뷰이벤트] 라로슈포제 시카플라스트 리페어 에센스 30ml 기획 (+7.5ml*2ea)',
 '[본품 50%용량 증정/리뷰이벤트] 라로슈포제 시카플라스트 리페어 에센스 30ml 기획 (+7.5ml*2ea)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라로슈포제'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[본품 50%용량 증정/리뷰이벤트] 라로슈포제 시카플라스트 리페어 에센스 30ml 기획 (+7.5ml*2ea)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(55000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[본품 50%용량 증정/리뷰이벤트] 라로슈포제 시카플라스트 리페어 에센스 30ml 기획 (+7.5ml*2ea)'), NOW(), NOW()),
(44000, 'SALE', (SELECT id FROM product WHERE name = '[본품 50%용량 증정/리뷰이벤트] 라로슈포제 시카플라스트 리페어 에센스 30ml 기획 (+7.5ml*2ea)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023177906ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[본품 50%용량 증정/리뷰이벤트] 라로슈포제 시카플라스트 리페어 에센스 30ml 기획 (+7.5ml*2ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023177903ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[본품 50%용량 증정/리뷰이벤트] 라로슈포제 시카플라스트 리페어 에센스 30ml 기획 (+7.5ml*2ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023177904ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[본품 50%용량 증정/리뷰이벤트] 라로슈포제 시카플라스트 리페어 에센스 30ml 기획 (+7.5ml*2ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023177905ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[본품 50%용량 증정/리뷰이벤트] 라로슈포제 시카플라스트 리페어 에센스 30ml 기획 (+7.5ml*2ea)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[본품 50%용량 증정/리뷰이벤트] 라로슈포제 시카플라스트 리페어 에센스 30ml 기획 (+7.5ml*2ea)';


-- ================================



-- ================================

-- 상품: [NEW][유분잡는 수분세럼] 한율 쑥히알 세럼 40ml 기획(+7ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW][유분잡는 수분세럼] 한율 쑥히알 세럼 40ml 기획(+7ml)',
 '[NEW][유분잡는 수분세럼] 한율 쑥히알 세럼 40ml 기획(+7ml)',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '한율'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW][유분잡는 수분세럼] 한율 쑥히알 세럼 40ml 기획(+7ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW][유분잡는 수분세럼] 한율 쑥히알 세럼 40ml 기획(+7ml)'), NOW(), NOW()),
(19900, 'SALE', (SELECT id FROM product WHERE name = '[NEW][유분잡는 수분세럼] 한율 쑥히알 세럼 40ml 기획(+7ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023183211ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW][유분잡는 수분세럼] 한율 쑥히알 세럼 40ml 기획(+7ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023183204ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW][유분잡는 수분세럼] 한율 쑥히알 세럼 40ml 기획(+7ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023183205ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW][유분잡는 수분세럼] 한율 쑥히알 세럼 40ml 기획(+7ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023183206ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[NEW][유분잡는 수분세럼] 한율 쑥히알 세럼 40ml 기획(+7ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023183207ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[NEW][유분잡는 수분세럼] 한율 쑥히알 세럼 40ml 기획(+7ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023183202ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[NEW][유분잡는 수분세럼] 한율 쑥히알 세럼 40ml 기획(+7ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW][유분잡는 수분세럼] 한율 쑥히알 세럼 40ml 기획(+7ml)';


-- ================================



-- ================================

-- 상품: [화해1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30mL 기획 (+30mL 리필팩...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[화해1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30mL 기획 (+30mL 리필팩)',
 '[화해1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30mL 기획 (+30mL 리필팩)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아누아'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[화해1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30mL 기획 (+30mL 리필팩)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(58500, 'ORIGINAL', (SELECT id FROM product WHERE name = '[화해1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30mL 기획 (+30mL 리필팩)'), NOW(), NOW()),
(29500, 'SALE', (SELECT id FROM product WHERE name = '[화해1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30mL 기획 (+30mL 리필팩)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022269812ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[화해1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30mL 기획 (+30mL 리필팩)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022269801ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[화해1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30mL 기획 (+30mL 리필팩)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022269804ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[화해1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30mL 기획 (+30mL 리필팩)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022269806ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[화해1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30mL 기획 (+30mL 리필팩)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022269805ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[화해1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30mL 기획 (+30mL 리필팩)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022269803ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[화해1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30mL 기획 (+30mL 리필팩)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[화해1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30mL 기획 (+30mL 리필팩)';


-- ================================



-- ================================

-- 상품: [모공+피부결] 넘버즈인 3번 보들보들 결 세럼 80ml 기획(+3번 결 세럼팩)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[모공+피부결] 넘버즈인 3번 보들보들 결 세럼 80ml 기획(+3번 결 세럼팩)',
 '[모공+피부결] 넘버즈인 3번 보들보들 결 세럼 80ml 기획(+3번 결 세럼팩)',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '넘버즈인'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[모공+피부결] 넘버즈인 3번 보들보들 결 세럼 80ml 기획(+3번 결 세럼팩)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[모공+피부결] 넘버즈인 3번 보들보들 결 세럼 80ml 기획(+3번 결 세럼팩)'), NOW(), NOW()),
(25600, 'SALE', (SELECT id FROM product WHERE name = '[모공+피부결] 넘버즈인 3번 보들보들 결 세럼 80ml 기획(+3번 결 세럼팩)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018262707ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[모공+피부결] 넘버즈인 3번 보들보들 결 세럼 80ml 기획(+3번 결 세럼팩)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018262709ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[모공+피부결] 넘버즈인 3번 보들보들 결 세럼 80ml 기획(+3번 결 세럼팩)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018262703ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[모공+피부결] 넘버즈인 3번 보들보들 결 세럼 80ml 기획(+3번 결 세럼팩)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018262704ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[모공+피부결] 넘버즈인 3번 보들보들 결 세럼 80ml 기획(+3번 결 세럼팩)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018262705ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[모공+피부결] 넘버즈인 3번 보들보들 결 세럼 80ml 기획(+3번 결 세럼팩)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018262708ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[모공+피부결] 넘버즈인 3번 보들보들 결 세럼 80ml 기획(+3번 결 세럼팩)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[모공+피부결] 넘버즈인 3번 보들보들 결 세럼 80ml 기획(+3번 결 세럼팩)';


-- ================================



-- ================================

-- 상품: [윈터포토카드증정/흔적진정] 마몽드 카밍 샷 아줄렌 흔적 수분 앰플 50ml 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[윈터포토카드증정/흔적진정] 마몽드 카밍 샷 아줄렌 흔적 수분 앰플 50ml 기획',
 '[윈터포토카드증정/흔적진정] 마몽드 카밍 샷 아줄렌 흔적 수분 앰플 50ml 기획',
 4.6,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '마몽드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[기획] 아줄렌 크림 30ml 증정', 18900, (SELECT id FROM product WHERE name = '[윈터포토카드증정/흔적진정] 마몽드 카밍 샷 아줄렌 흔적 수분 앰플 50ml 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[윈터포토카드증정/흔적진정] 마몽드 카밍 샷 아줄렌 흔적 수분 앰플 50ml 기획'), NOW(), NOW()),
(18900, 'SALE', (SELECT id FROM product WHERE name = '[윈터포토카드증정/흔적진정] 마몽드 카밍 샷 아줄렌 흔적 수분 앰플 50ml 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021938945ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[윈터포토카드증정/흔적진정] 마몽드 카밍 샷 아줄렌 흔적 수분 앰플 50ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021938929ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[윈터포토카드증정/흔적진정] 마몽드 카밍 샷 아줄렌 흔적 수분 앰플 50ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021938930ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[윈터포토카드증정/흔적진정] 마몽드 카밍 샷 아줄렌 흔적 수분 앰플 50ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021938903ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[윈터포토카드증정/흔적진정] 마몽드 카밍 샷 아줄렌 흔적 수분 앰플 50ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021938932ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[윈터포토카드증정/흔적진정] 마몽드 카밍 샷 아줄렌 흔적 수분 앰플 50ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021938933ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[윈터포토카드증정/흔적진정] 마몽드 카밍 샷 아줄렌 흔적 수분 앰플 50ml 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[윈터포토카드증정/흔적진정] 마몽드 카밍 샷 아줄렌 흔적 수분 앰플 50ml 기획';


-- ================================



-- ================================

-- 상품: 브링그린 징크테카 트러블세럼 1.5mlx10ea/ 25+25ml/ 50+25ml 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('브링그린 징크테카 트러블세럼 1.5mlx10ea/ 25+25ml/ 50+25ml 기획',
 '브링그린 징크테카 트러블세럼 1.5mlx10ea/ 25+25ml/ 50+25ml 기획',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '브링그린'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '브링그린 징크테카 트러블세럼 1.5mlx10ea/ 25+25ml/ 50+25ml 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(56100, 'ORIGINAL', (SELECT id FROM product WHERE name = '브링그린 징크테카 트러블세럼 1.5mlx10ea/ 25+25ml/ 50+25ml 기획'), NOW(), NOW()),
(28310, 'SALE', (SELECT id FROM product WHERE name = '브링그린 징크테카 트러블세럼 1.5mlx10ea/ 25+25ml/ 50+25ml 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022651540ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '브링그린 징크테카 트러블세럼 1.5mlx10ea/ 25+25ml/ 50+25ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022651537ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '브링그린 징크테카 트러블세럼 1.5mlx10ea/ 25+25ml/ 50+25ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022651538ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '브링그린 징크테카 트러블세럼 1.5mlx10ea/ 25+25ml/ 50+25ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022651539ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '브링그린 징크테카 트러블세럼 1.5mlx10ea/ 25+25ml/ 50+25ml 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '브링그린 징크테카 트러블세럼 1.5mlx10ea/ 25+25ml/ 50+25ml 기획';


-- ================================



-- ================================

-- 상품: [1+1] 이니스프리 비타민C 캡슐 세럼 30ml 더블 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[1+1] 이니스프리 비타민C 캡슐 세럼 30ml 더블 기획',
 '[1+1] 이니스프리 비타민C 캡슐 세럼 30ml 더블 기획',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '이니스프리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[1+1] 이니스프리 비타민C 캡슐 세럼 30ml 더블 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(49000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1+1] 이니스프리 비타민C 캡슐 세럼 30ml 더블 기획'), NOW(), NOW()),
(29400, 'SALE', (SELECT id FROM product WHERE name = '[1+1] 이니스프리 비타민C 캡슐 세럼 30ml 더블 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023020624ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[1+1] 이니스프리 비타민C 캡슐 세럼 30ml 더블 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023020617ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[1+1] 이니스프리 비타민C 캡슐 세럼 30ml 더블 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023020618ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[1+1] 이니스프리 비타민C 캡슐 세럼 30ml 더블 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023020619ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[1+1] 이니스프리 비타민C 캡슐 세럼 30ml 더블 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023020620ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[1+1] 이니스프리 비타민C 캡슐 세럼 30ml 더블 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023020621ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[1+1] 이니스프리 비타민C 캡슐 세럼 30ml 더블 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[1+1] 이니스프리 비타민C 캡슐 세럼 30ml 더블 기획';


-- ================================



-- ================================

-- 상품: [본품용량증정] 라운드랩 소나무 진정 시카 앰플 30ml 리필 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[본품용량증정] 라운드랩 소나무 진정 시카 앰플 30ml 리필 기획',
 '[본품용량증정] 라운드랩 소나무 진정 시카 앰플 30ml 리필 기획',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라운드랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[본품용량증정] 라운드랩 소나무 진정 시카 앰플 30ml 리필 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(43000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[본품용량증정] 라운드랩 소나무 진정 시카 앰플 30ml 리필 기획'), NOW(), NOW()),
(23800, 'SALE', (SELECT id FROM product WHERE name = '[본품용량증정] 라운드랩 소나무 진정 시카 앰플 30ml 리필 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023217005ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[본품용량증정] 라운드랩 소나무 진정 시카 앰플 30ml 리필 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023217004ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[본품용량증정] 라운드랩 소나무 진정 시카 앰플 30ml 리필 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023217003ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[본품용량증정] 라운드랩 소나무 진정 시카 앰플 30ml 리필 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023217001ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[본품용량증정] 라운드랩 소나무 진정 시카 앰플 30ml 리필 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[본품용량증정] 라운드랩 소나무 진정 시카 앰플 30ml 리필 기획';


-- ================================



-- ================================

-- 상품: [한정수량/오리지널 c-PDRN] 리쥬란 힐러 턴오버 앰플 듀얼 이펙트 30ml+7ml 증...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[한정수량/오리지널 c-PDRN] 리쥬란 힐러 턴오버 앰플 듀얼 이펙트 30ml+7ml 증정 기획',
 '[한정수량/오리지널 c-PDRN] 리쥬란 힐러 턴오버 앰플 듀얼 이펙트 30ml+7ml 증정 기획',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '리쥬란'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('30ml 기획(+7ml)', 49100, (SELECT id FROM product WHERE name = '[한정수량/오리지널 c-PDRN] 리쥬란 힐러 턴오버 앰플 듀얼 이펙트 30ml+7ml 증정 기획'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('30ml 단품', 49100, (SELECT id FROM product WHERE name = '[한정수량/오리지널 c-PDRN] 리쥬란 힐러 턴오버 앰플 듀얼 이펙트 30ml+7ml 증정 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(59000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[한정수량/오리지널 c-PDRN] 리쥬란 힐러 턴오버 앰플 듀얼 이펙트 30ml+7ml 증정 기획'), NOW(), NOW()),
(49100, 'SALE', (SELECT id FROM product WHERE name = '[한정수량/오리지널 c-PDRN] 리쥬란 힐러 턴오버 앰플 듀얼 이펙트 30ml+7ml 증정 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018370716ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[한정수량/오리지널 c-PDRN] 리쥬란 힐러 턴오버 앰플 듀얼 이펙트 30ml+7ml 증정 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018370715ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[한정수량/오리지널 c-PDRN] 리쥬란 힐러 턴오버 앰플 듀얼 이펙트 30ml+7ml 증정 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018370706ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[한정수량/오리지널 c-PDRN] 리쥬란 힐러 턴오버 앰플 듀얼 이펙트 30ml+7ml 증정 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018370703ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[한정수량/오리지널 c-PDRN] 리쥬란 힐러 턴오버 앰플 듀얼 이펙트 30ml+7ml 증정 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018370713ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[한정수량/오리지널 c-PDRN] 리쥬란 힐러 턴오버 앰플 듀얼 이펙트 30ml+7ml 증정 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[한정수량/오리지널 c-PDRN] 리쥬란 힐러 턴오버 앰플 듀얼 이펙트 30ml+7ml 증정 기획';


-- ================================



-- ================================

-- 상품: [퍼프 증정] 넘버즈인 1번 판토텐산 스킨케어100 블러파우더 기획 (+퍼프 1개)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[퍼프 증정] 넘버즈인 1번 판토텐산 스킨케어100 블러파우더 기획 (+퍼프 1개)',
 '[퍼프 증정] 넘버즈인 1번 판토텐산 스킨케어100 블러파우더 기획 (+퍼프 1개)',
 4.6,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '넘버즈인'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('1번 블러파우더 기획(+퍼프1매)', 13800, (SELECT id FROM product WHERE name = '[퍼프 증정] 넘버즈인 1번 판토텐산 스킨케어100 블러파우더 기획 (+퍼프 1개)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(22000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[퍼프 증정] 넘버즈인 1번 판토텐산 스킨케어100 블러파우더 기획 (+퍼프 1개)'), NOW(), NOW()),
(13800, 'SALE', (SELECT id FROM product WHERE name = '[퍼프 증정] 넘버즈인 1번 판토텐산 스킨케어100 블러파우더 기획 (+퍼프 1개)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022839406ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[퍼프 증정] 넘버즈인 1번 판토텐산 스킨케어100 블러파우더 기획 (+퍼프 1개)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022839404ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[퍼프 증정] 넘버즈인 1번 판토텐산 스킨케어100 블러파우더 기획 (+퍼프 1개)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022839405ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[퍼프 증정] 넘버즈인 1번 판토텐산 스킨케어100 블러파우더 기획 (+퍼프 1개)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[퍼프 증정] 넘버즈인 1번 판토텐산 스킨케어100 블러파우더 기획 (+퍼프 1개)';


-- ================================



-- ================================

-- 상품: [50%용량증정]에스트라 아토베리어365 세라-히알 속수분 앰플 30ML+15ML 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[50%용량증정]에스트라 아토베리어365 세라-히알 속수분 앰플 30ML+15ML 기획',
 '[50%용량증정]에스트라 아토베리어365 세라-히알 속수분 앰플 30ML+15ML 기획',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에스트라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[50%용량증정]에스트라 아토베리어365 세라-히알 속수분 앰플 30ML+15ML 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[50%용량증정]에스트라 아토베리어365 세라-히알 속수분 앰플 30ML+15ML 기획'), NOW(), NOW()),
(29700, 'SALE', (SELECT id FROM product WHERE name = '[50%용량증정]에스트라 아토베리어365 세라-히알 속수분 앰플 30ML+15ML 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021732619ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[50%용량증정]에스트라 아토베리어365 세라-히알 속수분 앰플 30ML+15ML 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021732615ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[50%용량증정]에스트라 아토베리어365 세라-히알 속수분 앰플 30ML+15ML 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021732609ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[50%용량증정]에스트라 아토베리어365 세라-히알 속수분 앰플 30ML+15ML 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021732617ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[50%용량증정]에스트라 아토베리어365 세라-히알 속수분 앰플 30ML+15ML 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021732608ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[50%용량증정]에스트라 아토베리어365 세라-히알 속수분 앰플 30ML+15ML 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[50%용량증정]에스트라 아토베리어365 세라-히알 속수분 앰플 30ML+15ML 기획';


-- ================================



-- ================================

-- 상품: 클레어스 블루 EGF 앰플 50ml 기획 (+10ml+카밍크림3g+워터크림3g)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('클레어스 블루 EGF 앰플 50ml 기획 (+10ml+카밍크림3g+워터크림3g)',
 '클레어스 블루 EGF 앰플 50ml 기획 (+10ml+카밍크림3g+워터크림3g)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '디어클레어스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '클레어스 블루 EGF 앰플 50ml 기획 (+10ml+카밍크림3g+워터크림3g)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(59000, 'ORIGINAL', (SELECT id FROM product WHERE name = '클레어스 블루 EGF 앰플 50ml 기획 (+10ml+카밍크림3g+워터크림3g)'), NOW(), NOW()),
(43600, 'SALE', (SELECT id FROM product WHERE name = '클레어스 블루 EGF 앰플 50ml 기획 (+10ml+카밍크림3g+워터크림3g)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022944503ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '클레어스 블루 EGF 앰플 50ml 기획 (+10ml+카밍크림3g+워터크림3g)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '클레어스 블루 EGF 앰플 50ml 기획 (+10ml+카밍크림3g+워터크림3g)';


-- ================================



-- ================================

-- 상품: [광채리프팅PDRN] 리쥬란 턴오버 앰플 듀얼 이펙트 10ml 더블 단독기획(+앰플8ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[광채리프팅PDRN] 리쥬란 턴오버 앰플 듀얼 이펙트 10ml 더블 단독기획(+앰플8ml)',
 '[광채리프팅PDRN] 리쥬란 턴오버 앰플 듀얼 이펙트 10ml 더블 단독기획(+앰플8ml)',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '리쥬란'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[광채리프팅PDRN] 리쥬란 턴오버 앰플 듀얼 이펙트 10ml 더블 단독기획(+앰플8ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(50000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[광채리프팅PDRN] 리쥬란 턴오버 앰플 듀얼 이펙트 10ml 더블 단독기획(+앰플8ml)'), NOW(), NOW()),
(41500, 'SALE', (SELECT id FROM product WHERE name = '[광채리프팅PDRN] 리쥬란 턴오버 앰플 듀얼 이펙트 10ml 더블 단독기획(+앰플8ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021652020ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[광채리프팅PDRN] 리쥬란 턴오버 앰플 듀얼 이펙트 10ml 더블 단독기획(+앰플8ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021652008ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[광채리프팅PDRN] 리쥬란 턴오버 앰플 듀얼 이펙트 10ml 더블 단독기획(+앰플8ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021652009ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[광채리프팅PDRN] 리쥬란 턴오버 앰플 듀얼 이펙트 10ml 더블 단독기획(+앰플8ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[광채리프팅PDRN] 리쥬란 턴오버 앰플 듀얼 이펙트 10ml 더블 단독기획(+앰플8ml)';


-- ================================



-- ================================

-- 상품: [모공탄력] 바이오힐 보 프로바이오덤 콜라겐 리모델링 세럼 30ml [단품/증정기획]...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[모공탄력] 바이오힐 보 프로바이오덤 콜라겐 리모델링 세럼 30ml [단품/증정기획]',
 '[모공탄력] 바이오힐 보 프로바이오덤 콜라겐 리모델링 세럼 30ml [단품/증정기획]',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오힐보'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[모공탄력] 바이오힐 보 프로바이오덤 콜라겐 리모델링 세럼 30ml [단품/증정기획]'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[모공탄력] 바이오힐 보 프로바이오덤 콜라겐 리모델링 세럼 30ml [단품/증정기획]'), NOW(), NOW()),
(22900, 'SALE', (SELECT id FROM product WHERE name = '[모공탄력] 바이오힐 보 프로바이오덤 콜라겐 리모델링 세럼 30ml [단품/증정기획]'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023339005ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[모공탄력] 바이오힐 보 프로바이오덤 콜라겐 리모델링 세럼 30ml [단품/증정기획]'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023339002ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[모공탄력] 바이오힐 보 프로바이오덤 콜라겐 리모델링 세럼 30ml [단품/증정기획]'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023339006ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[모공탄력] 바이오힐 보 프로바이오덤 콜라겐 리모델링 세럼 30ml [단품/증정기획]'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023339003ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[모공탄력] 바이오힐 보 프로바이오덤 콜라겐 리모델링 세럼 30ml [단품/증정기획]'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[모공탄력] 바이오힐 보 프로바이오덤 콜라겐 리모델링 세럼 30ml [단품/증정기획]';


-- ================================



-- ================================

-- 상품: [리뉴얼] 구달 청귤 비타C 잡티케어 세럼 알파 30ml 기획 (+20ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[리뉴얼] 구달 청귤 비타C 잡티케어 세럼 알파 30ml 기획 (+20ml)',
 '[리뉴얼] 구달 청귤 비타C 잡티케어 세럼 알파 30ml 기획 (+20ml)',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '구달'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[리뉴얼] 구달 청귤 비타C 잡티케어 세럼 알파 30ml 기획 (+20ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[리뉴얼] 구달 청귤 비타C 잡티케어 세럼 알파 30ml 기획 (+20ml)'), NOW(), NOW()),
(22400, 'SALE', (SELECT id FROM product WHERE name = '[리뉴얼] 구달 청귤 비타C 잡티케어 세럼 알파 30ml 기획 (+20ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022978911ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[리뉴얼] 구달 청귤 비타C 잡티케어 세럼 알파 30ml 기획 (+20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022978914ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[리뉴얼] 구달 청귤 비타C 잡티케어 세럼 알파 30ml 기획 (+20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022978917ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[리뉴얼] 구달 청귤 비타C 잡티케어 세럼 알파 30ml 기획 (+20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022978908ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[리뉴얼] 구달 청귤 비타C 잡티케어 세럼 알파 30ml 기획 (+20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022978904ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[리뉴얼] 구달 청귤 비타C 잡티케어 세럼 알파 30ml 기획 (+20ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[리뉴얼] 구달 청귤 비타C 잡티케어 세럼 알파 30ml 기획 (+20ml)';


-- ================================



-- ================================

-- 상품: [모공감소/3천원페이백] 마미케어 바다포도 모공앰플 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[모공감소/3천원페이백] 마미케어 바다포도 모공앰플 50ml',
 '[모공감소/3천원페이백] 마미케어 바다포도 모공앰플 50ml',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '마미케어'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[모공감소/3천원페이백] 마미케어 바다포도 모공앰플 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(22000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[모공감소/3천원페이백] 마미케어 바다포도 모공앰플 50ml'), NOW(), NOW()),
(14800, 'SALE', (SELECT id FROM product WHERE name = '[모공감소/3천원페이백] 마미케어 바다포도 모공앰플 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022429541ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[모공감소/3천원페이백] 마미케어 바다포도 모공앰플 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022429533ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[모공감소/3천원페이백] 마미케어 바다포도 모공앰플 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022429531ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[모공감소/3천원페이백] 마미케어 바다포도 모공앰플 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022429506ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[모공감소/3천원페이백] 마미케어 바다포도 모공앰플 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022429540ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[모공감소/3천원페이백] 마미케어 바다포도 모공앰플 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022429532ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[모공감소/3천원페이백] 마미케어 바다포도 모공앰플 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[모공감소/3천원페이백] 마미케어 바다포도 모공앰플 50ml';


-- ================================



-- ================================

-- 상품: [단독기획] 토리든 다이브인 저분자 히알루론산 세럼 50ml 기획(+멀티패드 10매)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[단독기획] 토리든 다이브인 저분자 히알루론산 세럼 50ml 기획(+멀티패드 10매)',
 '[단독기획] 토리든 다이브인 저분자 히알루론산 세럼 50ml 기획(+멀티패드 10매)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '토리든'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[단독기획] 토리든 다이브인 저분자 히알루론산 세럼 50ml 기획(+멀티패드 10매)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(22000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독기획] 토리든 다이브인 저분자 히알루론산 세럼 50ml 기획(+멀티패드 10매)'), NOW(), NOW()),
(16500, 'SALE', (SELECT id FROM product WHERE name = '[단독기획] 토리든 다이브인 저분자 히알루론산 세럼 50ml 기획(+멀티패드 10매)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019032621ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[단독기획] 토리든 다이브인 저분자 히알루론산 세럼 50ml 기획(+멀티패드 10매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019032620ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[단독기획] 토리든 다이브인 저분자 히알루론산 세럼 50ml 기획(+멀티패드 10매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019032619ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[단독기획] 토리든 다이브인 저분자 히알루론산 세럼 50ml 기획(+멀티패드 10매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019032617ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[단독기획] 토리든 다이브인 저분자 히알루론산 세럼 50ml 기획(+멀티패드 10매)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[단독기획] 토리든 다이브인 저분자 히알루론산 세럼 50ml 기획(+멀티패드 10매)';


-- ================================



-- ================================

-- 상품: [NEW/단독기획] 토리든 밸런스풀 시카 컨트롤 세럼 50ml 기획 (+크림 20ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW/단독기획] 토리든 밸런스풀 시카 컨트롤 세럼 50ml 기획 (+크림 20ml)',
 '[NEW/단독기획] 토리든 밸런스풀 시카 컨트롤 세럼 50ml 기획 (+크림 20ml)',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '토리든'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW/단독기획] 토리든 밸런스풀 시카 컨트롤 세럼 50ml 기획 (+크림 20ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW/단독기획] 토리든 밸런스풀 시카 컨트롤 세럼 50ml 기획 (+크림 20ml)'), NOW(), NOW()),
(17250, 'SALE', (SELECT id FROM product WHERE name = '[NEW/단독기획] 토리든 밸런스풀 시카 컨트롤 세럼 50ml 기획 (+크림 20ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022880406ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW/단독기획] 토리든 밸런스풀 시카 컨트롤 세럼 50ml 기획 (+크림 20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022880405ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW/단독기획] 토리든 밸런스풀 시카 컨트롤 세럼 50ml 기획 (+크림 20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022880404ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW/단독기획] 토리든 밸런스풀 시카 컨트롤 세럼 50ml 기획 (+크림 20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022880403ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[NEW/단독기획] 토리든 밸런스풀 시카 컨트롤 세럼 50ml 기획 (+크림 20ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW/단독기획] 토리든 밸런스풀 시카 컨트롤 세럼 50ml 기획 (+크림 20ml)';


-- ================================



-- ================================

-- 상품: 라로슈포제 에빠끌라 세럼 30ml 기획 (+에빠폼 15ml+에빠세럼 3ml+스트레스볼 증정...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('라로슈포제 에빠끌라 세럼 30ml 기획 (+에빠폼 15ml+에빠세럼 3ml+스트레스볼 증정)',
 '라로슈포제 에빠끌라 세럼 30ml 기획 (+에빠폼 15ml+에빠세럼 3ml+스트레스볼 증정)',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라로슈포제'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '라로슈포제 에빠끌라 세럼 30ml 기획 (+에빠폼 15ml+에빠세럼 3ml+스트레스볼 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(50000, 'ORIGINAL', (SELECT id FROM product WHERE name = '라로슈포제 에빠끌라 세럼 30ml 기획 (+에빠폼 15ml+에빠세럼 3ml+스트레스볼 증정)'), NOW(), NOW()),
(45000, 'SALE', (SELECT id FROM product WHERE name = '라로슈포제 에빠끌라 세럼 30ml 기획 (+에빠폼 15ml+에빠세럼 3ml+스트레스볼 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022882304ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '라로슈포제 에빠끌라 세럼 30ml 기획 (+에빠폼 15ml+에빠세럼 3ml+스트레스볼 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022882301ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '라로슈포제 에빠끌라 세럼 30ml 기획 (+에빠폼 15ml+에빠세럼 3ml+스트레스볼 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022882303ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '라로슈포제 에빠끌라 세럼 30ml 기획 (+에빠폼 15ml+에빠세럼 3ml+스트레스볼 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022882302ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '라로슈포제 에빠끌라 세럼 30ml 기획 (+에빠폼 15ml+에빠세럼 3ml+스트레스볼 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '라로슈포제 에빠끌라 세럼 30ml 기획 (+에빠폼 15ml+에빠세럼 3ml+스트레스볼 증정)';


-- ================================



-- ================================

-- 상품: [누적판매 530만]스킨1004 마다가스카르 센텔라 앰플 55ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[누적판매 530만]스킨1004 마다가스카르 센텔라 앰플 55ml',
 '[누적판매 530만]스킨1004 마다가스카르 센텔라 앰플 55ml',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '스킨1004'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[누적판매 530만]스킨1004 마다가스카르 센텔라 앰플 55ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(18000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[누적판매 530만]스킨1004 마다가스카르 센텔라 앰플 55ml'), NOW(), NOW()),
(15300, 'SALE', (SELECT id FROM product WHERE name = '[누적판매 530만]스킨1004 마다가스카르 센텔라 앰플 55ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016158147ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[누적판매 530만]스킨1004 마다가스카르 센텔라 앰플 55ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016158148ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[누적판매 530만]스킨1004 마다가스카르 센텔라 앰플 55ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[누적판매 530만]스킨1004 마다가스카르 센텔라 앰플 55ml';


-- ================================



-- ================================

-- 상품: [광채세럼] 퍼셀 픽셀바이옴 글로우 배리어 세럼 50ml 기획 (+15ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[광채세럼] 퍼셀 픽셀바이옴 글로우 배리어 세럼 50ml 기획 (+15ml)',
 '[광채세럼] 퍼셀 픽셀바이옴 글로우 배리어 세럼 50ml 기획 (+15ml)',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '퍼셀'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[광채세럼] 퍼셀 픽셀바이옴 글로우 배리어 세럼 50ml 기획 (+15ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[광채세럼] 퍼셀 픽셀바이옴 글로우 배리어 세럼 50ml 기획 (+15ml)'), NOW(), NOW()),
(32000, 'SALE', (SELECT id FROM product WHERE name = '[광채세럼] 퍼셀 픽셀바이옴 글로우 배리어 세럼 50ml 기획 (+15ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022909416ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[광채세럼] 퍼셀 픽셀바이옴 글로우 배리어 세럼 50ml 기획 (+15ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022909414ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[광채세럼] 퍼셀 픽셀바이옴 글로우 배리어 세럼 50ml 기획 (+15ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022909413ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[광채세럼] 퍼셀 픽셀바이옴 글로우 배리어 세럼 50ml 기획 (+15ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022909410ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[광채세럼] 퍼셀 픽셀바이옴 글로우 배리어 세럼 50ml 기획 (+15ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022909412ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[광채세럼] 퍼셀 픽셀바이옴 글로우 배리어 세럼 50ml 기획 (+15ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022909403ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[광채세럼] 퍼셀 픽셀바이옴 글로우 배리어 세럼 50ml 기획 (+15ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[광채세럼] 퍼셀 픽셀바이옴 글로우 배리어 세럼 50ml 기획 (+15ml)';


-- ================================



-- ================================

-- 상품: [단독/1+1] 메디힐 PDRN 모공 탄력 세럼 40+40ml 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[단독/1+1] 메디힐 PDRN 모공 탄력 세럼 40+40ml 기획',
 '[단독/1+1] 메디힐 PDRN 모공 탄력 세럼 40+40ml 기획',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '메디힐'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[단독/1+1] 메디힐 PDRN 모공 탄력 세럼 40+40ml 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(36900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독/1+1] 메디힐 PDRN 모공 탄력 세럼 40+40ml 기획'), NOW(), NOW()),
(21900, 'SALE', (SELECT id FROM product WHERE name = '[단독/1+1] 메디힐 PDRN 모공 탄력 세럼 40+40ml 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023217917ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[단독/1+1] 메디힐 PDRN 모공 탄력 세럼 40+40ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023217916ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[단독/1+1] 메디힐 PDRN 모공 탄력 세럼 40+40ml 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[단독/1+1] 메디힐 PDRN 모공 탄력 세럼 40+40ml 기획';


-- ================================



-- ================================

-- 상품: [9월 올영픽/비타민C 앰플] 피지오겔 사이언수티컬즈 데일리뮨 앰플 세럼 20ml + 4m...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽/비타민C 앰플] 피지오겔 사이언수티컬즈 데일리뮨 앰플 세럼 20ml + 4ml + 마스크팩 1매 기획',
 '[9월 올영픽/비타민C 앰플] 피지오겔 사이언수티컬즈 데일리뮨 앰플 세럼 20ml + 4ml + 마스크팩 1매 기획',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '피지오겔'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9월 올영픽/비타민C 앰플] 피지오겔 사이언수티컬즈 데일리뮨 앰플 세럼 20ml + 4ml + 마스크팩 1매 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(45000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽/비타민C 앰플] 피지오겔 사이언수티컬즈 데일리뮨 앰플 세럼 20ml + 4ml + 마스크팩 1매 기획'), NOW(), NOW()),
(39110, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽/비타민C 앰플] 피지오겔 사이언수티컬즈 데일리뮨 앰플 세럼 20ml + 4ml + 마스크팩 1매 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021635812ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽/비타민C 앰플] 피지오겔 사이언수티컬즈 데일리뮨 앰플 세럼 20ml + 4ml + 마스크팩 1매 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021635811ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽/비타민C 앰플] 피지오겔 사이언수티컬즈 데일리뮨 앰플 세럼 20ml + 4ml + 마스크팩 1매 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[9월 올영픽/비타민C 앰플] 피지오겔 사이언수티컬즈 데일리뮨 앰플 세럼 20ml + 4ml + 마스크팩 1매 기획';


-- ================================



-- ================================

-- 상품: 아벤느 이드랑스 에센스-인-로션 200ml 더블 기획 (+클리낭스 클렌징젤 100ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아벤느 이드랑스 에센스-인-로션 200ml 더블 기획 (+클리낭스 클렌징젤 100ml)',
 '아벤느 이드랑스 에센스-인-로션 200ml 더블 기획 (+클리낭스 클렌징젤 100ml)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아벤느'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('+클리낭스젤100ml', 37900, (SELECT id FROM product WHERE name = '아벤느 이드랑스 에센스-인-로션 200ml 더블 기획 (+클리낭스 클렌징젤 100ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(51000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아벤느 이드랑스 에센스-인-로션 200ml 더블 기획 (+클리낭스 클렌징젤 100ml)'), NOW(), NOW()),
(37900, 'SALE', (SELECT id FROM product WHERE name = '아벤느 이드랑스 에센스-인-로션 200ml 더블 기획 (+클리낭스 클렌징젤 100ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022484437ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아벤느 이드랑스 에센스-인-로션 200ml 더블 기획 (+클리낭스 클렌징젤 100ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022484436ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아벤느 이드랑스 에센스-인-로션 200ml 더블 기획 (+클리낭스 클렌징젤 100ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022484433ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아벤느 이드랑스 에센스-인-로션 200ml 더블 기획 (+클리낭스 클렌징젤 100ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022484432ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '아벤느 이드랑스 에센스-인-로션 200ml 더블 기획 (+클리낭스 클렌징젤 100ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022484431ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '아벤느 이드랑스 에센스-인-로션 200ml 더블 기획 (+클리낭스 클렌징젤 100ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022484416ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '아벤느 이드랑스 에센스-인-로션 200ml 더블 기획 (+클리낭스 클렌징젤 100ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아벤느 이드랑스 에센스-인-로션 200ml 더블 기획 (+클리낭스 클렌징젤 100ml)';


-- ================================



-- ================================

-- 상품: 아이오페 레티놀 슈퍼 바운스 세럼 30ml 한정기획 (+20ml+선앰플 20ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아이오페 레티놀 슈퍼 바운스 세럼 30ml 한정기획 (+20ml+선앰플 20ml)',
 '아이오페 레티놀 슈퍼 바운스 세럼 30ml 한정기획 (+20ml+선앰플 20ml)',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이오페'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아이오페 레티놀 슈퍼 바운스 세럼 30ml 한정기획 (+20ml+선앰플 20ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(50000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아이오페 레티놀 슈퍼 바운스 세럼 30ml 한정기획 (+20ml+선앰플 20ml)'), NOW(), NOW()),
(50000, 'SALE', (SELECT id FROM product WHERE name = '아이오페 레티놀 슈퍼 바운스 세럼 30ml 한정기획 (+20ml+선앰플 20ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022468540ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아이오페 레티놀 슈퍼 바운스 세럼 30ml 한정기획 (+20ml+선앰플 20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022468545ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아이오페 레티놀 슈퍼 바운스 세럼 30ml 한정기획 (+20ml+선앰플 20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022468546ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아이오페 레티놀 슈퍼 바운스 세럼 30ml 한정기획 (+20ml+선앰플 20ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아이오페 레티놀 슈퍼 바운스 세럼 30ml 한정기획 (+20ml+선앰플 20ml)';


-- ================================



-- ================================

-- 상품: [이나연 PICK] 아이오페 XMD 스템3 클리니컬 리커버리 세럼 30ml 기획 (+세럼 ...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[이나연 PICK] 아이오페 XMD 스템3 클리니컬 리커버리 세럼 30ml 기획 (+세럼 5ml +크림 5ml)',
 '[이나연 PICK] 아이오페 XMD 스템3 클리니컬 리커버리 세럼 30ml 기획 (+세럼 5ml +크림 5ml)',
 5.0,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이오페'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[이나연 PICK] 아이오페 XMD 스템3 클리니컬 리커버리 세럼 30ml 기획 (+세럼 5ml +크림 5ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(63000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[이나연 PICK] 아이오페 XMD 스템3 클리니컬 리커버리 세럼 30ml 기획 (+세럼 5ml +크림 5ml)'), NOW(), NOW()),
(49900, 'SALE', (SELECT id FROM product WHERE name = '[이나연 PICK] 아이오페 XMD 스템3 클리니컬 리커버리 세럼 30ml 기획 (+세럼 5ml +크림 5ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022949012ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[이나연 PICK] 아이오페 XMD 스템3 클리니컬 리커버리 세럼 30ml 기획 (+세럼 5ml +크림 5ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022949004ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[이나연 PICK] 아이오페 XMD 스템3 클리니컬 리커버리 세럼 30ml 기획 (+세럼 5ml +크림 5ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022949002ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[이나연 PICK] 아이오페 XMD 스템3 클리니컬 리커버리 세럼 30ml 기획 (+세럼 5ml +크림 5ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022949005ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[이나연 PICK] 아이오페 XMD 스템3 클리니컬 리커버리 세럼 30ml 기획 (+세럼 5ml +크림 5ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022949006ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[이나연 PICK] 아이오페 XMD 스템3 클리니컬 리커버리 세럼 30ml 기획 (+세럼 5ml +크림 5ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022949007ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[이나연 PICK] 아이오페 XMD 스템3 클리니컬 리커버리 세럼 30ml 기획 (+세럼 5ml +크림 5ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[이나연 PICK] 아이오페 XMD 스템3 클리니컬 리커버리 세럼 30ml 기획 (+세럼 5ml +크림 5ml)';


-- ================================



-- ================================

-- 상품: 디오디너리 나이아신아마이드 10% + 징크 1% 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('디오디너리 나이아신아마이드 10% + 징크 1% 30ml',
 '디오디너리 나이아신아마이드 10% + 징크 1% 30ml',
 4.6,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '디오디너리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '디오디너리 나이아신아마이드 10% + 징크 1% 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(8700, 'ORIGINAL', (SELECT id FROM product WHERE name = '디오디너리 나이아신아마이드 10% + 징크 1% 30ml'), NOW(), NOW()),
(8700, 'SALE', (SELECT id FROM product WHERE name = '디오디너리 나이아신아마이드 10% + 징크 1% 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015735005ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '디오디너리 나이아신아마이드 10% + 징크 1% 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015735004ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '디오디너리 나이아신아마이드 10% + 징크 1% 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '디오디너리 나이아신아마이드 10% + 징크 1% 30ml';


-- ================================



-- ================================

-- 상품: [포켓몬에디션/3D모공케어] 성분에디터 그린토마토 NMN 포어 리프팅 앰플 40ml 더블기...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[포켓몬에디션/3D모공케어] 성분에디터 그린토마토 NMN 포어 리프팅 앰플 40ml 더블기획 (+키링 파우치)',
 '[포켓몬에디션/3D모공케어] 성분에디터 그린토마토 NMN 포어 리프팅 앰플 40ml 더블기획 (+키링 파우치)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '성분에디터'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[포켓몬에디션/3D모공케어] 성분에디터 그린토마토 NMN 포어 리프팅 앰플 40ml 더블기획 (+키링 파우치)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(36000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[포켓몬에디션/3D모공케어] 성분에디터 그린토마토 NMN 포어 리프팅 앰플 40ml 더블기획 (+키링 파우치)'), NOW(), NOW()),
(22900, 'SALE', (SELECT id FROM product WHERE name = '[포켓몬에디션/3D모공케어] 성분에디터 그린토마토 NMN 포어 리프팅 앰플 40ml 더블기획 (+키링 파우치)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023091416ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[포켓몬에디션/3D모공케어] 성분에디터 그린토마토 NMN 포어 리프팅 앰플 40ml 더블기획 (+키링 파우치)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023091405ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[포켓몬에디션/3D모공케어] 성분에디터 그린토마토 NMN 포어 리프팅 앰플 40ml 더블기획 (+키링 파우치)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[포켓몬에디션/3D모공케어] 성분에디터 그린토마토 NMN 포어 리프팅 앰플 40ml 더블기획 (+키링 파우치)';


-- ================================



-- ================================

-- 상품: [리뷰이벤트] 더마팩토리 나이아신아마이드 20% 세럼 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[리뷰이벤트] 더마팩토리 나이아신아마이드 20% 세럼 30ml',
 '[리뷰이벤트] 더마팩토리 나이아신아마이드 20% 세럼 30ml',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더마팩토리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 나이아신아마이드 20% 세럼 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(6000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 나이아신아마이드 20% 세럼 30ml'), NOW(), NOW()),
(5700, 'SALE', (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 나이아신아마이드 20% 세럼 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022521708ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 나이아신아마이드 20% 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022521706ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 나이아신아마이드 20% 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022521705ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 나이아신아마이드 20% 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022521704ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 나이아신아마이드 20% 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022521703ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 나이아신아마이드 20% 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022521702ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 나이아신아마이드 20% 세럼 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[리뷰이벤트] 더마팩토리 나이아신아마이드 20% 세럼 30ml';


-- ================================



-- ================================

-- 상품: [단독기획] 셀리맥스 더 리얼 노니 에너지 앰플 90ml 기획 (80ml+10ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[단독기획] 셀리맥스 더 리얼 노니 에너지 앰플 90ml 기획 (80ml+10ml)',
 '[단독기획] 셀리맥스 더 리얼 노니 에너지 앰플 90ml 기획 (80ml+10ml)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '셀리맥스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[단독기획] 셀리맥스 더 리얼 노니 에너지 앰플 90ml 기획 (80ml+10ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독기획] 셀리맥스 더 리얼 노니 에너지 앰플 90ml 기획 (80ml+10ml)'), NOW(), NOW()),
(33000, 'SALE', (SELECT id FROM product WHERE name = '[단독기획] 셀리맥스 더 리얼 노니 에너지 앰플 90ml 기획 (80ml+10ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020397125ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[단독기획] 셀리맥스 더 리얼 노니 에너지 앰플 90ml 기획 (80ml+10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020397118ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[단독기획] 셀리맥스 더 리얼 노니 에너지 앰플 90ml 기획 (80ml+10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020397119ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[단독기획] 셀리맥스 더 리얼 노니 에너지 앰플 90ml 기획 (80ml+10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020397117ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[단독기획] 셀리맥스 더 리얼 노니 에너지 앰플 90ml 기획 (80ml+10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020397122ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[단독기획] 셀리맥스 더 리얼 노니 에너지 앰플 90ml 기획 (80ml+10ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[단독기획] 셀리맥스 더 리얼 노니 에너지 앰플 90ml 기획 (80ml+10ml)';


-- ================================



-- ================================

-- 상품: [응급진정세럼] 아이소이 아크니닥터 1st 컨트롤 세럼 40ml 기획 (본품40ml+응급패...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[응급진정세럼] 아이소이 아크니닥터 1st 컨트롤 세럼 40ml 기획 (본품40ml+응급패드 4매)',
 '[응급진정세럼] 아이소이 아크니닥터 1st 컨트롤 세럼 40ml 기획 (본품40ml+응급패드 4매)',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이소이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[응급진정세럼] 아이소이 아크니닥터 1st 컨트롤 세럼 40ml 기획 (본품40ml+응급패드 4매)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[응급진정세럼] 아이소이 아크니닥터 1st 컨트롤 세럼 40ml 기획 (본품40ml+응급패드 4매)'), NOW(), NOW()),
(25600, 'SALE', (SELECT id FROM product WHERE name = '[응급진정세럼] 아이소이 아크니닥터 1st 컨트롤 세럼 40ml 기획 (본품40ml+응급패드 4매)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016662823ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[응급진정세럼] 아이소이 아크니닥터 1st 컨트롤 세럼 40ml 기획 (본품40ml+응급패드 4매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016662819ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[응급진정세럼] 아이소이 아크니닥터 1st 컨트롤 세럼 40ml 기획 (본품40ml+응급패드 4매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016662821ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[응급진정세럼] 아이소이 아크니닥터 1st 컨트롤 세럼 40ml 기획 (본품40ml+응급패드 4매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016662822ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[응급진정세럼] 아이소이 아크니닥터 1st 컨트롤 세럼 40ml 기획 (본품40ml+응급패드 4매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016662824ko.jpeg?l=ko', 5, (SELECT id FROM product WHERE name = '[응급진정세럼] 아이소이 아크니닥터 1st 컨트롤 세럼 40ml 기획 (본품40ml+응급패드 4매)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[응급진정세럼] 아이소이 아크니닥터 1st 컨트롤 세럼 40ml 기획 (본품40ml+응급패드 4매)';


-- ================================



-- ================================

-- 상품: 아누아 복숭아 70 나이아신아마이드 세럼 30ml 2입...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아누아 복숭아 70 나이아신아마이드 세럼 30ml 2입',
 '아누아 복숭아 70 나이아신아마이드 세럼 30ml 2입',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아누아'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아누아 복숭아 70 나이아신아마이드 세럼 30ml 2입'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(54000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아누아 복숭아 70 나이아신아마이드 세럼 30ml 2입'), NOW(), NOW()),
(25000, 'SALE', (SELECT id FROM product WHERE name = '아누아 복숭아 70 나이아신아마이드 세럼 30ml 2입'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021105208ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '아누아 복숭아 70 나이아신아마이드 세럼 30ml 2입'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021105207ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '아누아 복숭아 70 나이아신아마이드 세럼 30ml 2입'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021105202ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아누아 복숭아 70 나이아신아마이드 세럼 30ml 2입'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아누아 복숭아 70 나이아신아마이드 세럼 30ml 2입';


-- ================================



-- ================================

-- 상품: [중요한날하루전] 웰라쥬 원데이키트 7개입 3종 택1 (히알/시카/콜라겐)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[중요한날하루전] 웰라쥬 원데이키트 7개입 3종 택1 (히알/시카/콜라겐)',
 '[중요한날하루전] 웰라쥬 원데이키트 7개입 3종 택1 (히알/시카/콜라겐)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '웰라쥬'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('히알루로닉 7개입', 19800, (SELECT id FROM product WHERE name = '[중요한날하루전] 웰라쥬 원데이키트 7개입 3종 택1 (히알/시카/콜라겐)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('시카카밍 7개입', 39700, (SELECT id FROM product WHERE name = '[중요한날하루전] 웰라쥬 원데이키트 7개입 3종 택1 (히알/시카/콜라겐)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('골드콜라겐 7개입', 22150, (SELECT id FROM product WHERE name = '[중요한날하루전] 웰라쥬 원데이키트 7개입 3종 택1 (히알/시카/콜라겐)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39700, 'ORIGINAL', (SELECT id FROM product WHERE name = '[중요한날하루전] 웰라쥬 원데이키트 7개입 3종 택1 (히알/시카/콜라겐)'), NOW(), NOW()),
(19800, 'SALE', (SELECT id FROM product WHERE name = '[중요한날하루전] 웰라쥬 원데이키트 7개입 3종 택1 (히알/시카/콜라겐)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013871057ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[중요한날하루전] 웰라쥬 원데이키트 7개입 3종 택1 (히알/시카/콜라겐)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013871058ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[중요한날하루전] 웰라쥬 원데이키트 7개입 3종 택1 (히알/시카/콜라겐)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013871059ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[중요한날하루전] 웰라쥬 원데이키트 7개입 3종 택1 (히알/시카/콜라겐)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013871060ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[중요한날하루전] 웰라쥬 원데이키트 7개입 3종 택1 (히알/시카/콜라겐)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013871061ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[중요한날하루전] 웰라쥬 원데이키트 7개입 3종 택1 (히알/시카/콜라겐)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013871062ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[중요한날하루전] 웰라쥬 원데이키트 7개입 3종 택1 (히알/시카/콜라겐)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[중요한날하루전] 웰라쥬 원데이키트 7개입 3종 택1 (히알/시카/콜라겐)';


-- ================================



-- ================================

-- 상품: [결광케어] 코스알엑스 더 6 펩타이드 스킨 부스터 세럼 150ml 기획 (+30mL)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[결광케어] 코스알엑스 더 6 펩타이드 스킨 부스터 세럼 150ml 기획 (+30mL)',
 '[결광케어] 코스알엑스 더 6 펩타이드 스킨 부스터 세럼 150ml 기획 (+30mL)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '코스알엑스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('더 6 펩타이드 세럼 150ml+30ml', 19500, (SELECT id FROM product WHERE name = '[결광케어] 코스알엑스 더 6 펩타이드 스킨 부스터 세럼 150ml 기획 (+30mL)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('더 6 펩타이드 세럼 150ml', 0, (SELECT id FROM product WHERE name = '[결광케어] 코스알엑스 더 6 펩타이드 스킨 부스터 세럼 150ml 기획 (+30mL)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[결광케어] 코스알엑스 더 6 펩타이드 스킨 부스터 세럼 150ml 기획 (+30mL)'), NOW(), NOW()),
(19500, 'SALE', (SELECT id FROM product WHERE name = '[결광케어] 코스알엑스 더 6 펩타이드 스킨 부스터 세럼 150ml 기획 (+30mL)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020407156ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[결광케어] 코스알엑스 더 6 펩타이드 스킨 부스터 세럼 150ml 기획 (+30mL)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020407154ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[결광케어] 코스알엑스 더 6 펩타이드 스킨 부스터 세럼 150ml 기획 (+30mL)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020407153ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[결광케어] 코스알엑스 더 6 펩타이드 스킨 부스터 세럼 150ml 기획 (+30mL)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020407152ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[결광케어] 코스알엑스 더 6 펩타이드 스킨 부스터 세럼 150ml 기획 (+30mL)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020407130ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[결광케어] 코스알엑스 더 6 펩타이드 스킨 부스터 세럼 150ml 기획 (+30mL)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[결광케어] 코스알엑스 더 6 펩타이드 스킨 부스터 세럼 150ml 기획 (+30mL)';


-- ================================



-- ================================

-- 상품: [잡티앰플/대용량]센텔리안24 엑스퍼트 마데카 멜라 캡처 앰플 맥스 45ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[잡티앰플/대용량]센텔리안24 엑스퍼트 마데카 멜라 캡처 앰플 맥스 45ml',
 '[잡티앰플/대용량]센텔리안24 엑스퍼트 마데카 멜라 캡처 앰플 맥스 45ml',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '센텔리안24'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[잡티앰플/대용량]센텔리안24 엑스퍼트 마데카 멜라 캡처 앰플 맥스 45ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(75000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[잡티앰플/대용량]센텔리안24 엑스퍼트 마데카 멜라 캡처 앰플 맥스 45ml'), NOW(), NOW()),
(29900, 'SALE', (SELECT id FROM product WHERE name = '[잡티앰플/대용량]센텔리안24 엑스퍼트 마데카 멜라 캡처 앰플 맥스 45ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019073803ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[잡티앰플/대용량]센텔리안24 엑스퍼트 마데카 멜라 캡처 앰플 맥스 45ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019073802ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[잡티앰플/대용량]센텔리안24 엑스퍼트 마데카 멜라 캡처 앰플 맥스 45ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[잡티앰플/대용량]센텔리안24 엑스퍼트 마데카 멜라 캡처 앰플 맥스 45ml';


-- ================================



-- ================================

-- 상품: [트러블피지완화] 코스알엑스 더 나이아신아마이드 15 세럼 20ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[트러블피지완화] 코스알엑스 더 나이아신아마이드 15 세럼 20ml',
 '[트러블피지완화] 코스알엑스 더 나이아신아마이드 15 세럼 20ml',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '코스알엑스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[트러블피지완화] 코스알엑스 더 나이아신아마이드 15 세럼 20ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[트러블피지완화] 코스알엑스 더 나이아신아마이드 15 세럼 20ml'), NOW(), NOW()),
(23000, 'SALE', (SELECT id FROM product WHERE name = '[트러블피지완화] 코스알엑스 더 나이아신아마이드 15 세럼 20ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018089006ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[트러블피지완화] 코스알엑스 더 나이아신아마이드 15 세럼 20ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018089004ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[트러블피지완화] 코스알엑스 더 나이아신아마이드 15 세럼 20ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018089002ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[트러블피지완화] 코스알엑스 더 나이아신아마이드 15 세럼 20ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[트러블피지완화] 코스알엑스 더 나이아신아마이드 15 세럼 20ml';


-- ================================



-- ================================

-- 상품: [매끈결광/화잘먹수분천재세럼] 에스네이처 아쿠아 스쿠알란 세럼 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[매끈결광/화잘먹수분천재세럼] 에스네이처 아쿠아 스쿠알란 세럼 50ml',
 '[매끈결광/화잘먹수분천재세럼] 에스네이처 아쿠아 스쿠알란 세럼 50ml',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에스네이처'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[매끈결광/화잘먹수분천재세럼] 에스네이처 아쿠아 스쿠알란 세럼 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(21000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[매끈결광/화잘먹수분천재세럼] 에스네이처 아쿠아 스쿠알란 세럼 50ml'), NOW(), NOW()),
(14900, 'SALE', (SELECT id FROM product WHERE name = '[매끈결광/화잘먹수분천재세럼] 에스네이처 아쿠아 스쿠알란 세럼 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017031278ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[매끈결광/화잘먹수분천재세럼] 에스네이처 아쿠아 스쿠알란 세럼 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017031279ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[매끈결광/화잘먹수분천재세럼] 에스네이처 아쿠아 스쿠알란 세럼 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017031280ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[매끈결광/화잘먹수분천재세럼] 에스네이처 아쿠아 스쿠알란 세럼 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017031281ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[매끈결광/화잘먹수분천재세럼] 에스네이처 아쿠아 스쿠알란 세럼 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[매끈결광/화잘먹수분천재세럼] 에스네이처 아쿠아 스쿠알란 세럼 50ml';


-- ================================



-- ================================

-- 상품: [100ml] 더마토리 히알샷 베리어 B5 앰플 50ml 리필기획(+50ml 리필)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[100ml] 더마토리 히알샷 베리어 B5 앰플 50ml 리필기획(+50ml 리필)',
 '[100ml] 더마토리 히알샷 베리어 B5 앰플 50ml 리필기획(+50ml 리필)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더마토리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[100ml] 더마토리 히알샷 베리어 B5 앰플 50ml 리필기획(+50ml 리필)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[100ml] 더마토리 히알샷 베리어 B5 앰플 50ml 리필기획(+50ml 리필)'), NOW(), NOW()),
(35000, 'SALE', (SELECT id FROM product WHERE name = '[100ml] 더마토리 히알샷 베리어 B5 앰플 50ml 리필기획(+50ml 리필)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020246927ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[100ml] 더마토리 히알샷 베리어 B5 앰플 50ml 리필기획(+50ml 리필)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020246929ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[100ml] 더마토리 히알샷 베리어 B5 앰플 50ml 리필기획(+50ml 리필)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020246923ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[100ml] 더마토리 히알샷 베리어 B5 앰플 50ml 리필기획(+50ml 리필)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020246909ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[100ml] 더마토리 히알샷 베리어 B5 앰플 50ml 리필기획(+50ml 리필)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020246906ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[100ml] 더마토리 히알샷 베리어 B5 앰플 50ml 리필기획(+50ml 리필)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[100ml] 더마토리 히알샷 베리어 B5 앰플 50ml 리필기획(+50ml 리필)';


-- ================================



-- ================================

-- 상품: [9월 올영픽] 아렌시아 젤리 세럼 30 50g 기획 3종 (홀리히솝/레드/라이스)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽] 아렌시아 젤리 세럼 30 50g 기획 3종 (홀리히솝/레드/라이스)',
 '[9월 올영픽] 아렌시아 젤리 세럼 30 50g 기획 3종 (홀리히솝/레드/라이스)',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아렌시아'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('(잡티미백) 홀리 히솝 기획(+20g)', 26000, (SELECT id FROM product WHERE name = '[9월 올영픽] 아렌시아 젤리 세럼 30 50g 기획 3종 (홀리히솝/레드/라이스)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('(모공탄력) 레드 기획(+20g)', 25000, (SELECT id FROM product WHERE name = '[9월 올영픽] 아렌시아 젤리 세럼 30 50g 기획 3종 (홀리히솝/레드/라이스)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('(백옥광채) 라이스 뮤신 단품', 25000, (SELECT id FROM product WHERE name = '[9월 올영픽] 아렌시아 젤리 세럼 30 50g 기획 3종 (홀리히솝/레드/라이스)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(42000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽] 아렌시아 젤리 세럼 30 50g 기획 3종 (홀리히솝/레드/라이스)'), NOW(), NOW()),
(26000, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽] 아렌시아 젤리 세럼 30 50g 기획 3종 (홀리히솝/레드/라이스)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023203008ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽] 아렌시아 젤리 세럼 30 50g 기획 3종 (홀리히솝/레드/라이스)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023203007ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽] 아렌시아 젤리 세럼 30 50g 기획 3종 (홀리히솝/레드/라이스)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023203004ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽] 아렌시아 젤리 세럼 30 50g 기획 3종 (홀리히솝/레드/라이스)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023203005ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[9월 올영픽] 아렌시아 젤리 세럼 30 50g 기획 3종 (홀리히솝/레드/라이스)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023203001ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[9월 올영픽] 아렌시아 젤리 세럼 30 50g 기획 3종 (홀리히솝/레드/라이스)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[9월 올영픽] 아렌시아 젤리 세럼 30 50g 기획 3종 (홀리히솝/레드/라이스)';


-- ================================



-- ================================

-- 상품: [전문가 피부결 추천템/속건조 해결사] 로벡틴 아쿠아 에센스 180ml 리필기획(+리필 1...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[전문가 피부결 추천템/속건조 해결사] 로벡틴 아쿠아 에센스 180ml 리필기획(+리필 120ml)',
 '[전문가 피부결 추천템/속건조 해결사] 로벡틴 아쿠아 에센스 180ml 리필기획(+리필 120ml)',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '로벡틴'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[전문가 피부결 추천템/속건조 해결사] 로벡틴 아쿠아 에센스 180ml 리필기획(+리필 120ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[전문가 피부결 추천템/속건조 해결사] 로벡틴 아쿠아 에센스 180ml 리필기획(+리필 120ml)'), NOW(), NOW()),
(25600, 'SALE', (SELECT id FROM product WHERE name = '[전문가 피부결 추천템/속건조 해결사] 로벡틴 아쿠아 에센스 180ml 리필기획(+리필 120ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019070027ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[전문가 피부결 추천템/속건조 해결사] 로벡틴 아쿠아 에센스 180ml 리필기획(+리필 120ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019070026ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[전문가 피부결 추천템/속건조 해결사] 로벡틴 아쿠아 에센스 180ml 리필기획(+리필 120ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019070025ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[전문가 피부결 추천템/속건조 해결사] 로벡틴 아쿠아 에센스 180ml 리필기획(+리필 120ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019070028ko.png?l=ko', 4, (SELECT id FROM product WHERE name = '[전문가 피부결 추천템/속건조 해결사] 로벡틴 아쿠아 에센스 180ml 리필기획(+리필 120ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019070029ko.png?l=ko', 5, (SELECT id FROM product WHERE name = '[전문가 피부결 추천템/속건조 해결사] 로벡틴 아쿠아 에센스 180ml 리필기획(+리필 120ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019070030ko.png?l=ko', 6, (SELECT id FROM product WHERE name = '[전문가 피부결 추천템/속건조 해결사] 로벡틴 아쿠아 에센스 180ml 리필기획(+리필 120ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[전문가 피부결 추천템/속건조 해결사] 로벡틴 아쿠아 에센스 180ml 리필기획(+리필 120ml)';


-- ================================



-- ================================

-- 상품: [9월 올영픽] 라로슈포제 에빠끌라 듀오+ M 에센스 40ml 기획 (+3ml*2 + 시카...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽] 라로슈포제 에빠끌라 듀오+ M 에센스 40ml 기획 (+3ml*2 + 시카밤 3ml*2)',
 '[9월 올영픽] 라로슈포제 에빠끌라 듀오+ M 에센스 40ml 기획 (+3ml*2 + 시카밤 3ml*2)',
 4.6,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라로슈포제'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9월 올영픽] 라로슈포제 에빠끌라 듀오+ M 에센스 40ml 기획 (+3ml*2 + 시카밤 3ml*2)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(34000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽] 라로슈포제 에빠끌라 듀오+ M 에센스 40ml 기획 (+3ml*2 + 시카밤 3ml*2)'), NOW(), NOW()),
(25500, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽] 라로슈포제 에빠끌라 듀오+ M 에센스 40ml 기획 (+3ml*2 + 시카밤 3ml*2)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023175005ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽] 라로슈포제 에빠끌라 듀오+ M 에센스 40ml 기획 (+3ml*2 + 시카밤 3ml*2)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023175001ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽] 라로슈포제 에빠끌라 듀오+ M 에센스 40ml 기획 (+3ml*2 + 시카밤 3ml*2)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023175004ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽] 라로슈포제 에빠끌라 듀오+ M 에센스 40ml 기획 (+3ml*2 + 시카밤 3ml*2)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023175002ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[9월 올영픽] 라로슈포제 에빠끌라 듀오+ M 에센스 40ml 기획 (+3ml*2 + 시카밤 3ml*2)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[9월 올영픽] 라로슈포제 에빠끌라 듀오+ M 에센스 40ml 기획 (+3ml*2 + 시카밤 3ml*2)';


-- ================================



-- ================================

-- 상품: 메디힐 티트리 진정 수분 앰플(50ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('메디힐 티트리 진정 수분 앰플(50ml)',
 '메디힐 티트리 진정 수분 앰플(50ml)',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '메디힐'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '메디힐 티트리 진정 수분 앰플(50ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '메디힐 티트리 진정 수분 앰플(50ml)'), NOW(), NOW()),
(19800, 'SALE', (SELECT id FROM product WHERE name = '메디힐 티트리 진정 수분 앰플(50ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018371413ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '메디힐 티트리 진정 수분 앰플(50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018371414ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '메디힐 티트리 진정 수분 앰플(50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018371404ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '메디힐 티트리 진정 수분 앰플(50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018371403ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '메디힐 티트리 진정 수분 앰플(50ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '메디힐 티트리 진정 수분 앰플(50ml)';


-- ================================



-- ================================

-- 상품: [50%용량증정] 에스트라 에이시카365 흔적진정세럼 pH4.5 40ml 기획 (+세럼 2...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[50%용량증정] 에스트라 에이시카365 흔적진정세럼 pH4.5 40ml 기획 (+세럼 20ml+크림 1ml)',
 '[50%용량증정] 에스트라 에이시카365 흔적진정세럼 pH4.5 40ml 기획 (+세럼 20ml+크림 1ml)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에스트라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[50%용량증정] 에스트라 에이시카365 흔적진정세럼 pH4.5 40ml 기획 (+세럼 20ml+크림 1ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[50%용량증정] 에스트라 에이시카365 흔적진정세럼 pH4.5 40ml 기획 (+세럼 20ml+크림 1ml)'), NOW(), NOW()),
(33900, 'SALE', (SELECT id FROM product WHERE name = '[50%용량증정] 에스트라 에이시카365 흔적진정세럼 pH4.5 40ml 기획 (+세럼 20ml+크림 1ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022283903ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[50%용량증정] 에스트라 에이시카365 흔적진정세럼 pH4.5 40ml 기획 (+세럼 20ml+크림 1ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022283908ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[50%용량증정] 에스트라 에이시카365 흔적진정세럼 pH4.5 40ml 기획 (+세럼 20ml+크림 1ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022283907ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[50%용량증정] 에스트라 에이시카365 흔적진정세럼 pH4.5 40ml 기획 (+세럼 20ml+크림 1ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022283906ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[50%용량증정] 에스트라 에이시카365 흔적진정세럼 pH4.5 40ml 기획 (+세럼 20ml+크림 1ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022283902ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[50%용량증정] 에스트라 에이시카365 흔적진정세럼 pH4.5 40ml 기획 (+세럼 20ml+크림 1ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[50%용량증정] 에스트라 에이시카365 흔적진정세럼 pH4.5 40ml 기획 (+세럼 20ml+크림 1ml)';


-- ================================



-- ================================

-- 상품: [1등레티놀] 아이오페 레티놀 슈퍼 바운스 세럼 30ml 기획 (+세럼 10ml+바이오에센...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[1등레티놀] 아이오페 레티놀 슈퍼 바운스 세럼 30ml 기획 (+세럼 10ml+바이오에센스48ml)',
 '[1등레티놀] 아이오페 레티놀 슈퍼 바운스 세럼 30ml 기획 (+세럼 10ml+바이오에센스48ml)',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이오페'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[1등레티놀] 아이오페 레티놀 슈퍼 바운스 세럼 30ml 기획 (+세럼 10ml+바이오에센스48ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(50000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1등레티놀] 아이오페 레티놀 슈퍼 바운스 세럼 30ml 기획 (+세럼 10ml+바이오에센스48ml)'), NOW(), NOW()),
(50000, 'SALE', (SELECT id FROM product WHERE name = '[1등레티놀] 아이오페 레티놀 슈퍼 바운스 세럼 30ml 기획 (+세럼 10ml+바이오에센스48ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018406029ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[1등레티놀] 아이오페 레티놀 슈퍼 바운스 세럼 30ml 기획 (+세럼 10ml+바이오에센스48ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018406030ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[1등레티놀] 아이오페 레티놀 슈퍼 바운스 세럼 30ml 기획 (+세럼 10ml+바이오에센스48ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018406031ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[1등레티놀] 아이오페 레티놀 슈퍼 바운스 세럼 30ml 기획 (+세럼 10ml+바이오에센스48ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[1등레티놀] 아이오페 레티놀 슈퍼 바운스 세럼 30ml 기획 (+세럼 10ml+바이오에센스48ml)';


-- ================================



-- ================================

-- 상품: [모공쿨링세럼/1+1] 비플레인 녹두 모공 타이트업 세럼 30ml 1+1 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[모공쿨링세럼/1+1] 비플레인 녹두 모공 타이트업 세럼 30ml 1+1 기획',
 '[모공쿨링세럼/1+1] 비플레인 녹두 모공 타이트업 세럼 30ml 1+1 기획',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비플레인'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[모공쿨링세럼/1+1] 비플레인 녹두 모공 타이트업 세럼 30ml 1+1 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[모공쿨링세럼/1+1] 비플레인 녹두 모공 타이트업 세럼 30ml 1+1 기획'), NOW(), NOW()),
(24000, 'SALE', (SELECT id FROM product WHERE name = '[모공쿨링세럼/1+1] 비플레인 녹두 모공 타이트업 세럼 30ml 1+1 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020165832ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[모공쿨링세럼/1+1] 비플레인 녹두 모공 타이트업 세럼 30ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020165835ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[모공쿨링세럼/1+1] 비플레인 녹두 모공 타이트업 세럼 30ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020165840ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[모공쿨링세럼/1+1] 비플레인 녹두 모공 타이트업 세럼 30ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020165841ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[모공쿨링세럼/1+1] 비플레인 녹두 모공 타이트업 세럼 30ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020165842ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[모공쿨링세럼/1+1] 비플레인 녹두 모공 타이트업 세럼 30ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020165843ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[모공쿨링세럼/1+1] 비플레인 녹두 모공 타이트업 세럼 30ml 1+1 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[모공쿨링세럼/1+1] 비플레인 녹두 모공 타이트업 세럼 30ml 1+1 기획';


-- ================================



-- ================================

-- 상품: [채서안PICK/2주모공탄력] 아비브 부활초 비피다 세럼 퍼밍 드롭 50ml 기획 (+30...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[채서안PICK/2주모공탄력] 아비브 부활초 비피다 세럼 퍼밍 드롭 50ml 기획 (+30ml 추가 증정)',
 '[채서안PICK/2주모공탄력] 아비브 부활초 비피다 세럼 퍼밍 드롭 50ml 기획 (+30ml 추가 증정)',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아비브'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[채서안PICK/2주모공탄력] 아비브 부활초 비피다 세럼 퍼밍 드롭 50ml 기획 (+30ml 추가 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[채서안PICK/2주모공탄력] 아비브 부활초 비피다 세럼 퍼밍 드롭 50ml 기획 (+30ml 추가 증정)'), NOW(), NOW()),
(22400, 'SALE', (SELECT id FROM product WHERE name = '[채서안PICK/2주모공탄력] 아비브 부활초 비피다 세럼 퍼밍 드롭 50ml 기획 (+30ml 추가 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019823011ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[채서안PICK/2주모공탄력] 아비브 부활초 비피다 세럼 퍼밍 드롭 50ml 기획 (+30ml 추가 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019823010ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[채서안PICK/2주모공탄력] 아비브 부활초 비피다 세럼 퍼밍 드롭 50ml 기획 (+30ml 추가 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019823008ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[채서안PICK/2주모공탄력] 아비브 부활초 비피다 세럼 퍼밍 드롭 50ml 기획 (+30ml 추가 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[채서안PICK/2주모공탄력] 아비브 부활초 비피다 세럼 퍼밍 드롭 50ml 기획 (+30ml 추가 증정)';


-- ================================



-- ================================

-- 상품: [순수비타민C/잡티앰플] 마미케어 오쏘타민 비타민C 앰플 15ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[순수비타민C/잡티앰플] 마미케어 오쏘타민 비타민C 앰플 15ml',
 '[순수비타민C/잡티앰플] 마미케어 오쏘타민 비타민C 앰플 15ml',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '마미케어'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[순수비타민C/잡티앰플] 마미케어 오쏘타민 비타민C 앰플 15ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[순수비타민C/잡티앰플] 마미케어 오쏘타민 비타민C 앰플 15ml'), NOW(), NOW()),
(29800, 'SALE', (SELECT id FROM product WHERE name = '[순수비타민C/잡티앰플] 마미케어 오쏘타민 비타민C 앰플 15ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023238203ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[순수비타민C/잡티앰플] 마미케어 오쏘타민 비타민C 앰플 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023238202ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[순수비타민C/잡티앰플] 마미케어 오쏘타민 비타민C 앰플 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023238204ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[순수비타민C/잡티앰플] 마미케어 오쏘타민 비타민C 앰플 15ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[순수비타민C/잡티앰플] 마미케어 오쏘타민 비타민C 앰플 15ml';


-- ================================



-- ================================

-- 상품: [민감트러블] 퍼셀 20억/mL 픽셀바이옴 원액 20ml 기획 (+7ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[민감트러블] 퍼셀 20억/mL 픽셀바이옴 원액 20ml 기획 (+7ml)',
 '[민감트러블] 퍼셀 20억/mL 픽셀바이옴 원액 20ml 기획 (+7ml)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '퍼셀'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[민감트러블] 퍼셀 20억/mL 픽셀바이옴 원액 20ml 기획 (+7ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[민감트러블] 퍼셀 20억/mL 픽셀바이옴 원액 20ml 기획 (+7ml)'), NOW(), NOW()),
(28000, 'SALE', (SELECT id FROM product WHERE name = '[민감트러블] 퍼셀 20억/mL 픽셀바이옴 원액 20ml 기획 (+7ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020886013ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[민감트러블] 퍼셀 20억/mL 픽셀바이옴 원액 20ml 기획 (+7ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020886012ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[민감트러블] 퍼셀 20억/mL 픽셀바이옴 원액 20ml 기획 (+7ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020886002ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[민감트러블] 퍼셀 20억/mL 픽셀바이옴 원액 20ml 기획 (+7ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020886003ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[민감트러블] 퍼셀 20억/mL 픽셀바이옴 원액 20ml 기획 (+7ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020886004ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[민감트러블] 퍼셀 20억/mL 픽셀바이옴 원액 20ml 기획 (+7ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020886001ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[민감트러블] 퍼셀 20억/mL 픽셀바이옴 원액 20ml 기획 (+7ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[민감트러블] 퍼셀 20억/mL 픽셀바이옴 원액 20ml 기획 (+7ml)';


-- ================================



-- ================================

-- 상품: [온라인 단독기획]바이오더마 하이드라비오 세럼 더블기획(40ml+40ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[온라인 단독기획]바이오더마 하이드라비오 세럼 더블기획(40ml+40ml)',
 '[온라인 단독기획]바이오더마 하이드라비오 세럼 더블기획(40ml+40ml)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오더마'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[온라인 단독기획]바이오더마 하이드라비오 세럼 더블기획(40ml+40ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(52000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[온라인 단독기획]바이오더마 하이드라비오 세럼 더블기획(40ml+40ml)'), NOW(), NOW()),
(42120, 'SALE', (SELECT id FROM product WHERE name = '[온라인 단독기획]바이오더마 하이드라비오 세럼 더블기획(40ml+40ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015631513ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[온라인 단독기획]바이오더마 하이드라비오 세럼 더블기획(40ml+40ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015631514ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[온라인 단독기획]바이오더마 하이드라비오 세럼 더블기획(40ml+40ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015631515ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[온라인 단독기획]바이오더마 하이드라비오 세럼 더블기획(40ml+40ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015631517ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[온라인 단독기획]바이오더마 하이드라비오 세럼 더블기획(40ml+40ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[온라인 단독기획]바이오더마 하이드라비오 세럼 더블기획(40ml+40ml)';


-- ================================



-- ================================

-- 상품: [9월 올영픽/단독기획] 아누아 TXA 나이아신 흔적 세럼 30ml 2입...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽/단독기획] 아누아 TXA 나이아신 흔적 세럼 30ml 2입',
 '[9월 올영픽/단독기획] 아누아 TXA 나이아신 흔적 세럼 30ml 2입',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아누아'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9월 올영픽/단독기획] 아누아 TXA 나이아신 흔적 세럼 30ml 2입'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(64000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽/단독기획] 아누아 TXA 나이아신 흔적 세럼 30ml 2입'), NOW(), NOW()),
(27500, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽/단독기획] 아누아 TXA 나이아신 흔적 세럼 30ml 2입'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022620109ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽/단독기획] 아누아 TXA 나이아신 흔적 세럼 30ml 2입'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022620106ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽/단독기획] 아누아 TXA 나이아신 흔적 세럼 30ml 2입'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022620107ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽/단독기획] 아누아 TXA 나이아신 흔적 세럼 30ml 2입'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[9월 올영픽/단독기획] 아누아 TXA 나이아신 흔적 세럼 30ml 2입';


-- ================================



-- ================================

-- 상품: [트러블세럼] 에스트라 테라크네365 액티브 세럼 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[트러블세럼] 에스트라 테라크네365 액티브 세럼 30ml',
 '[트러블세럼] 에스트라 테라크네365 액티브 세럼 30ml',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에스트라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[트러블세럼] 에스트라 테라크네365 액티브 세럼 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(42000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[트러블세럼] 에스트라 테라크네365 액티브 세럼 30ml'), NOW(), NOW()),
(42000, 'SALE', (SELECT id FROM product WHERE name = '[트러블세럼] 에스트라 테라크네365 액티브 세럼 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018413302ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[트러블세럼] 에스트라 테라크네365 액티브 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018413303ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[트러블세럼] 에스트라 테라크네365 액티브 세럼 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[트러블세럼] 에스트라 테라크네365 액티브 세럼 30ml';


-- ================================



-- ================================

-- 상품: [한정기획/강력진정세럼] 닥터자르트 시카페어 인텐시브 수딩 리페어 세럼 30ml 1+1 기...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[한정기획/강력진정세럼] 닥터자르트 시카페어 인텐시브 수딩 리페어 세럼 30ml 1+1 기획',
 '[한정기획/강력진정세럼] 닥터자르트 시카페어 인텐시브 수딩 리페어 세럼 30ml 1+1 기획',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터자르트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[한정기획/강력진정세럼] 닥터자르트 시카페어 인텐시브 수딩 리페어 세럼 30ml 1+1 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(49000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[한정기획/강력진정세럼] 닥터자르트 시카페어 인텐시브 수딩 리페어 세럼 30ml 1+1 기획'), NOW(), NOW()),
(41650, 'SALE', (SELECT id FROM product WHERE name = '[한정기획/강력진정세럼] 닥터자르트 시카페어 인텐시브 수딩 리페어 세럼 30ml 1+1 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021858711ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[한정기획/강력진정세럼] 닥터자르트 시카페어 인텐시브 수딩 리페어 세럼 30ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021858706ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[한정기획/강력진정세럼] 닥터자르트 시카페어 인텐시브 수딩 리페어 세럼 30ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021858707ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[한정기획/강력진정세럼] 닥터자르트 시카페어 인텐시브 수딩 리페어 세럼 30ml 1+1 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[한정기획/강력진정세럼] 닥터자르트 시카페어 인텐시브 수딩 리페어 세럼 30ml 1+1 기획';


-- ================================



-- ================================

-- 상품: [로즈PDRN/잡티흔적] 아이소이 브라이트닝 잡티세럼 20ml 기획 (+3ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[로즈PDRN/잡티흔적] 아이소이 브라이트닝 잡티세럼 20ml 기획 (+3ml)',
 '[로즈PDRN/잡티흔적] 아이소이 브라이트닝 잡티세럼 20ml 기획 (+3ml)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이소이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[로즈PDRN/잡티흔적] 아이소이 브라이트닝 잡티세럼 20ml 기획 (+3ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29500, 'ORIGINAL', (SELECT id FROM product WHERE name = '[로즈PDRN/잡티흔적] 아이소이 브라이트닝 잡티세럼 20ml 기획 (+3ml)'), NOW(), NOW()),
(19900, 'SALE', (SELECT id FROM product WHERE name = '[로즈PDRN/잡티흔적] 아이소이 브라이트닝 잡티세럼 20ml 기획 (+3ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022509550ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[로즈PDRN/잡티흔적] 아이소이 브라이트닝 잡티세럼 20ml 기획 (+3ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022509545ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[로즈PDRN/잡티흔적] 아이소이 브라이트닝 잡티세럼 20ml 기획 (+3ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022509548ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[로즈PDRN/잡티흔적] 아이소이 브라이트닝 잡티세럼 20ml 기획 (+3ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022509549ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[로즈PDRN/잡티흔적] 아이소이 브라이트닝 잡티세럼 20ml 기획 (+3ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022509547ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[로즈PDRN/잡티흔적] 아이소이 브라이트닝 잡티세럼 20ml 기획 (+3ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[로즈PDRN/잡티흔적] 아이소이 브라이트닝 잡티세럼 20ml 기획 (+3ml)';


-- ================================



-- ================================

-- 상품: [속수분앰플] 라운드랩 자작나무 수분 앰플 50ml 기획 (+크림 20ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[속수분앰플] 라운드랩 자작나무 수분 앰플 50ml 기획 (+크림 20ml)',
 '[속수분앰플] 라운드랩 자작나무 수분 앰플 50ml 기획 (+크림 20ml)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라운드랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[속수분앰플] 라운드랩 자작나무 수분 앰플 50ml 기획 (+크림 20ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[속수분앰플] 라운드랩 자작나무 수분 앰플 50ml 기획 (+크림 20ml)'), NOW(), NOW()),
(15600, 'SALE', (SELECT id FROM product WHERE name = '[속수분앰플] 라운드랩 자작나무 수분 앰플 50ml 기획 (+크림 20ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019736210ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[속수분앰플] 라운드랩 자작나무 수분 앰플 50ml 기획 (+크림 20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019736204ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[속수분앰플] 라운드랩 자작나무 수분 앰플 50ml 기획 (+크림 20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019736203ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[속수분앰플] 라운드랩 자작나무 수분 앰플 50ml 기획 (+크림 20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019736209ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[속수분앰플] 라운드랩 자작나무 수분 앰플 50ml 기획 (+크림 20ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[속수분앰플] 라운드랩 자작나무 수분 앰플 50ml 기획 (+크림 20ml)';


-- ================================



-- ================================

-- 상품: [잡티청소] 라운드랩 비타 나이아신 잡티 세럼 30ml 기획 (+잡티크림 10ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[잡티청소] 라운드랩 비타 나이아신 잡티 세럼 30ml 기획 (+잡티크림 10ml)',
 '[잡티청소] 라운드랩 비타 나이아신 잡티 세럼 30ml 기획 (+잡티크림 10ml)',
 4.6,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라운드랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[잡티청소] 라운드랩 비타 나이아신 잡티 세럼 30ml 기획 (+잡티크림 10ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[잡티청소] 라운드랩 비타 나이아신 잡티 세럼 30ml 기획 (+잡티크림 10ml)'), NOW(), NOW()),
(19800, 'SALE', (SELECT id FROM product WHERE name = '[잡티청소] 라운드랩 비타 나이아신 잡티 세럼 30ml 기획 (+잡티크림 10ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020416907ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[잡티청소] 라운드랩 비타 나이아신 잡티 세럼 30ml 기획 (+잡티크림 10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020416904ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[잡티청소] 라운드랩 비타 나이아신 잡티 세럼 30ml 기획 (+잡티크림 10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020416901ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[잡티청소] 라운드랩 비타 나이아신 잡티 세럼 30ml 기획 (+잡티크림 10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020416908ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[잡티청소] 라운드랩 비타 나이아신 잡티 세럼 30ml 기획 (+잡티크림 10ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[잡티청소] 라운드랩 비타 나이아신 잡티 세럼 30ml 기획 (+잡티크림 10ml)';


-- ================================



-- ================================

-- 상품: [구매인증이벤트][9월 올영픽/속광탄력] 닥터지 블랙스네일 레티놀 앰플 50ml 기획 (+...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[구매인증이벤트][9월 올영픽/속광탄력] 닥터지 블랙스네일 레티놀 앰플 50ml 기획 (+링클 마스크팩 1매)',
 '[구매인증이벤트][9월 올영픽/속광탄력] 닥터지 블랙스네일 레티놀 앰플 50ml 기획 (+링클 마스크팩 1매)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터지'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[구매인증이벤트][9월 올영픽/속광탄력] 닥터지 블랙스네일 레티놀 앰플 50ml 기획 (+링클 마스크팩 1매)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[구매인증이벤트][9월 올영픽/속광탄력] 닥터지 블랙스네일 레티놀 앰플 50ml 기획 (+링클 마스크팩 1매)'), NOW(), NOW()),
(19200, 'SALE', (SELECT id FROM product WHERE name = '[구매인증이벤트][9월 올영픽/속광탄력] 닥터지 블랙스네일 레티놀 앰플 50ml 기획 (+링클 마스크팩 1매)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023332820ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[구매인증이벤트][9월 올영픽/속광탄력] 닥터지 블랙스네일 레티놀 앰플 50ml 기획 (+링클 마스크팩 1매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023332812ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[구매인증이벤트][9월 올영픽/속광탄력] 닥터지 블랙스네일 레티놀 앰플 50ml 기획 (+링클 마스크팩 1매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023332811ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[구매인증이벤트][9월 올영픽/속광탄력] 닥터지 블랙스네일 레티놀 앰플 50ml 기획 (+링클 마스크팩 1매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023332807ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[구매인증이벤트][9월 올영픽/속광탄력] 닥터지 블랙스네일 레티놀 앰플 50ml 기획 (+링클 마스크팩 1매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023332808ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[구매인증이벤트][9월 올영픽/속광탄력] 닥터지 블랙스네일 레티놀 앰플 50ml 기획 (+링클 마스크팩 1매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023332803ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[구매인증이벤트][9월 올영픽/속광탄력] 닥터지 블랙스네일 레티놀 앰플 50ml 기획 (+링클 마스크팩 1매)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[구매인증이벤트][9월 올영픽/속광탄력] 닥터지 블랙스네일 레티놀 앰플 50ml 기획 (+링클 마스크팩 1매)';


-- ================================



-- ================================

-- 상품: [리뉴얼/1등모공앰플] 성분에디터 그린토마토 NMN 포어 리프팅 앰플 40ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[리뉴얼/1등모공앰플] 성분에디터 그린토마토 NMN 포어 리프팅 앰플 40ml',
 '[리뉴얼/1등모공앰플] 성분에디터 그린토마토 NMN 포어 리프팅 앰플 40ml',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '성분에디터'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[리뉴얼/1등모공앰플] 성분에디터 그린토마토 NMN 포어 리프팅 앰플 40ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[리뉴얼/1등모공앰플] 성분에디터 그린토마토 NMN 포어 리프팅 앰플 40ml'), NOW(), NOW()),
(14900, 'SALE', (SELECT id FROM product WHERE name = '[리뉴얼/1등모공앰플] 성분에디터 그린토마토 NMN 포어 리프팅 앰플 40ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022952216ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[리뉴얼/1등모공앰플] 성분에디터 그린토마토 NMN 포어 리프팅 앰플 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022952215ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[리뉴얼/1등모공앰플] 성분에디터 그린토마토 NMN 포어 리프팅 앰플 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022952217ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[리뉴얼/1등모공앰플] 성분에디터 그린토마토 NMN 포어 리프팅 앰플 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022952218ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[리뉴얼/1등모공앰플] 성분에디터 그린토마토 NMN 포어 리프팅 앰플 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022952219ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[리뉴얼/1등모공앰플] 성분에디터 그린토마토 NMN 포어 리프팅 앰플 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022952220ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[리뉴얼/1등모공앰플] 성분에디터 그린토마토 NMN 포어 리프팅 앰플 40ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[리뉴얼/1등모공앰플] 성분에디터 그린토마토 NMN 포어 리프팅 앰플 40ml';


-- ================================



-- ================================

-- 상품: 바이오더마 하이드라비오 히알루+ 세럼 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('바이오더마 하이드라비오 히알루+ 세럼 30ml',
 '바이오더마 하이드라비오 히알루+ 세럼 30ml',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오더마'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 히알루+ 세럼 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(52000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 히알루+ 세럼 30ml'), NOW(), NOW()),
(39520, 'SALE', (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 히알루+ 세럼 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019920616ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 히알루+ 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019920614ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 히알루+ 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019920615ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 히알루+ 세럼 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '바이오더마 하이드라비오 히알루+ 세럼 30ml';


-- ================================



-- ================================

-- 상품: [쿨링진정] 닥터지 레드 블레미쉬 클리어 히알 시카 수딩 세럼 50ml 2종 (단품/20m...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[쿨링진정] 닥터지 레드 블레미쉬 클리어 히알 시카 수딩 세럼 50ml 2종 (단품/20ml 증정 기획)',
 '[쿨링진정] 닥터지 레드 블레미쉬 클리어 히알 시카 수딩 세럼 50ml 2종 (단품/20ml 증정 기획)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터지'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('70ml (50ml+10ml*2)', 19000, (SELECT id FROM product WHERE name = '[쿨링진정] 닥터지 레드 블레미쉬 클리어 히알 시카 수딩 세럼 50ml 2종 (단품/20ml 증정 기획)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('50ml', 33000, (SELECT id FROM product WHERE name = '[쿨링진정] 닥터지 레드 블레미쉬 클리어 히알 시카 수딩 세럼 50ml 2종 (단품/20ml 증정 기획)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[쿨링진정] 닥터지 레드 블레미쉬 클리어 히알 시카 수딩 세럼 50ml 2종 (단품/20ml 증정 기획)'), NOW(), NOW()),
(19000, 'SALE', (SELECT id FROM product WHERE name = '[쿨링진정] 닥터지 레드 블레미쉬 클리어 히알 시카 수딩 세럼 50ml 2종 (단품/20ml 증정 기획)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022432933ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[쿨링진정] 닥터지 레드 블레미쉬 클리어 히알 시카 수딩 세럼 50ml 2종 (단품/20ml 증정 기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022432934ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[쿨링진정] 닥터지 레드 블레미쉬 클리어 히알 시카 수딩 세럼 50ml 2종 (단품/20ml 증정 기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022432922ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[쿨링진정] 닥터지 레드 블레미쉬 클리어 히알 시카 수딩 세럼 50ml 2종 (단품/20ml 증정 기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022432924ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[쿨링진정] 닥터지 레드 블레미쉬 클리어 히알 시카 수딩 세럼 50ml 2종 (단품/20ml 증정 기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022432929ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[쿨링진정] 닥터지 레드 블레미쉬 클리어 히알 시카 수딩 세럼 50ml 2종 (단품/20ml 증정 기획)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[쿨링진정] 닥터지 레드 블레미쉬 클리어 히알 시카 수딩 세럼 50ml 2종 (단품/20ml 증정 기획)';


-- ================================



-- ================================

-- 상품: [톤업앰플] 퍼셀 880억/mL 글루타치온 플렉서블 리포좀 20ml 기획 (+7ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[톤업앰플] 퍼셀 880억/mL 글루타치온 플렉서블 리포좀 20ml 기획 (+7ml)',
 '[톤업앰플] 퍼셀 880억/mL 글루타치온 플렉서블 리포좀 20ml 기획 (+7ml)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '퍼셀'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[톤업앰플] 퍼셀 880억/mL 글루타치온 플렉서블 리포좀 20ml 기획 (+7ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(27500, 'ORIGINAL', (SELECT id FROM product WHERE name = '[톤업앰플] 퍼셀 880억/mL 글루타치온 플렉서블 리포좀 20ml 기획 (+7ml)'), NOW(), NOW()),
(25000, 'SALE', (SELECT id FROM product WHERE name = '[톤업앰플] 퍼셀 880억/mL 글루타치온 플렉서블 리포좀 20ml 기획 (+7ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021742217ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[톤업앰플] 퍼셀 880억/mL 글루타치온 플렉서블 리포좀 20ml 기획 (+7ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021742216ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[톤업앰플] 퍼셀 880억/mL 글루타치온 플렉서블 리포좀 20ml 기획 (+7ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021742212ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[톤업앰플] 퍼셀 880억/mL 글루타치온 플렉서블 리포좀 20ml 기획 (+7ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021742209ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[톤업앰플] 퍼셀 880억/mL 글루타치온 플렉서블 리포좀 20ml 기획 (+7ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021742210ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[톤업앰플] 퍼셀 880억/mL 글루타치온 플렉서블 리포좀 20ml 기획 (+7ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021742205ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[톤업앰플] 퍼셀 880억/mL 글루타치온 플렉서블 리포좀 20ml 기획 (+7ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[톤업앰플] 퍼셀 880억/mL 글루타치온 플렉서블 리포좀 20ml 기획 (+7ml)';


-- ================================



-- ================================

-- 상품: [화해1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 1ml*10ea...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[화해1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 1ml*10ea',
 '[화해1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 1ml*10ea',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아누아'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[화해1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 1ml*10ea'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(20000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[화해1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 1ml*10ea'), NOW(), NOW()),
(14000, 'SALE', (SELECT id FROM product WHERE name = '[화해1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 1ml*10ea'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021065414ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[화해1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 1ml*10ea'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021065410ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[화해1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 1ml*10ea'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021065407ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[화해1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 1ml*10ea'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021065412ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[화해1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 1ml*10ea'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021065404ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[화해1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 1ml*10ea'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021065408ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[화해1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 1ml*10ea'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[화해1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 1ml*10ea';


-- ================================



-- ================================

-- 상품: [로즈PDRN/잡티흔적] 아이소이 브라이트닝 잡티세럼 더블 기획 20ml*2 (+아이&미간...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[로즈PDRN/잡티흔적] 아이소이 브라이트닝 잡티세럼 더블 기획 20ml*2 (+아이&미간패치 1세트)',
 '[로즈PDRN/잡티흔적] 아이소이 브라이트닝 잡티세럼 더블 기획 20ml*2 (+아이&미간패치 1세트)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이소이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[로즈PDRN/잡티흔적] 아이소이 브라이트닝 잡티세럼 더블 기획 20ml*2 (+아이&미간패치 1세트)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(54000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[로즈PDRN/잡티흔적] 아이소이 브라이트닝 잡티세럼 더블 기획 20ml*2 (+아이&미간패치 1세트)'), NOW(), NOW()),
(36900, 'SALE', (SELECT id FROM product WHERE name = '[로즈PDRN/잡티흔적] 아이소이 브라이트닝 잡티세럼 더블 기획 20ml*2 (+아이&미간패치 1세트)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022321251ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[로즈PDRN/잡티흔적] 아이소이 브라이트닝 잡티세럼 더블 기획 20ml*2 (+아이&미간패치 1세트)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022321248ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[로즈PDRN/잡티흔적] 아이소이 브라이트닝 잡티세럼 더블 기획 20ml*2 (+아이&미간패치 1세트)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022321243ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[로즈PDRN/잡티흔적] 아이소이 브라이트닝 잡티세럼 더블 기획 20ml*2 (+아이&미간패치 1세트)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022321245ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[로즈PDRN/잡티흔적] 아이소이 브라이트닝 잡티세럼 더블 기획 20ml*2 (+아이&미간패치 1세트)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022321247ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[로즈PDRN/잡티흔적] 아이소이 브라이트닝 잡티세럼 더블 기획 20ml*2 (+아이&미간패치 1세트)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[로즈PDRN/잡티흔적] 아이소이 브라이트닝 잡티세럼 더블 기획 20ml*2 (+아이&미간패치 1세트)';


-- ================================



-- ================================

-- 상품: 코스알엑스 풀핏 프로폴리스 라이트 앰플 40ml 1+1 기획 (2405)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('코스알엑스 풀핏 프로폴리스 라이트 앰플 40ml 1+1 기획 (2405)',
 '코스알엑스 풀핏 프로폴리스 라이트 앰플 40ml 1+1 기획 (2405)',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '코스알엑스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('풀핏 프로폴리스 앰플 더블기획', 23560, (SELECT id FROM product WHERE name = '코스알엑스 풀핏 프로폴리스 라이트 앰플 40ml 1+1 기획 (2405)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('풀핏 프로폴리스 앰플 단품', 0, (SELECT id FROM product WHERE name = '코스알엑스 풀핏 프로폴리스 라이트 앰플 40ml 1+1 기획 (2405)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '코스알엑스 풀핏 프로폴리스 라이트 앰플 40ml 1+1 기획 (2405)'), NOW(), NOW()),
(23560, 'SALE', (SELECT id FROM product WHERE name = '코스알엑스 풀핏 프로폴리스 라이트 앰플 40ml 1+1 기획 (2405)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020407509ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '코스알엑스 풀핏 프로폴리스 라이트 앰플 40ml 1+1 기획 (2405)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020407510ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '코스알엑스 풀핏 프로폴리스 라이트 앰플 40ml 1+1 기획 (2405)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020407505ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '코스알엑스 풀핏 프로폴리스 라이트 앰플 40ml 1+1 기획 (2405)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020407503ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '코스알엑스 풀핏 프로폴리스 라이트 앰플 40ml 1+1 기획 (2405)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020407513ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '코스알엑스 풀핏 프로폴리스 라이트 앰플 40ml 1+1 기획 (2405)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020407511ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '코스알엑스 풀핏 프로폴리스 라이트 앰플 40ml 1+1 기획 (2405)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '코스알엑스 풀핏 프로폴리스 라이트 앰플 40ml 1+1 기획 (2405)';


-- ================================



-- ================================

-- 상품: [1등 모공세럼/멜라닌 모공 개선] 필킨X약손명가 포어솔루션 래디언스 세럼 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[1등 모공세럼/멜라닌 모공 개선] 필킨X약손명가 포어솔루션 래디언스 세럼 30ml',
 '[1등 모공세럼/멜라닌 모공 개선] 필킨X약손명가 포어솔루션 래디언스 세럼 30ml',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '필킨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[1등 모공세럼/멜라닌 모공 개선] 필킨X약손명가 포어솔루션 래디언스 세럼 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(48000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1등 모공세럼/멜라닌 모공 개선] 필킨X약손명가 포어솔루션 래디언스 세럼 30ml'), NOW(), NOW()),
(36000, 'SALE', (SELECT id FROM product WHERE name = '[1등 모공세럼/멜라닌 모공 개선] 필킨X약손명가 포어솔루션 래디언스 세럼 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021673406ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[1등 모공세럼/멜라닌 모공 개선] 필킨X약손명가 포어솔루션 래디언스 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021673402ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[1등 모공세럼/멜라닌 모공 개선] 필킨X약손명가 포어솔루션 래디언스 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021673401ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[1등 모공세럼/멜라닌 모공 개선] 필킨X약손명가 포어솔루션 래디언스 세럼 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[1등 모공세럼/멜라닌 모공 개선] 필킨X약손명가 포어솔루션 래디언스 세럼 30ml';


-- ================================



-- ================================

-- 상품: 닥터자르트 컨트롤에이 티트리먼트 수딩 스팟 15ml (티트리 핑크 파우더)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('닥터자르트 컨트롤에이 티트리먼트 수딩 스팟 15ml (티트리 핑크 파우더)',
 '닥터자르트 컨트롤에이 티트리먼트 수딩 스팟 15ml (티트리 핑크 파우더)',
 4.6,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터자르트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '닥터자르트 컨트롤에이 티트리먼트 수딩 스팟 15ml (티트리 핑크 파우더)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '닥터자르트 컨트롤에이 티트리먼트 수딩 스팟 15ml (티트리 핑크 파우더)'), NOW(), NOW()),
(23000, 'SALE', (SELECT id FROM product WHERE name = '닥터자르트 컨트롤에이 티트리먼트 수딩 스팟 15ml (티트리 핑크 파우더)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012852914ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '닥터자르트 컨트롤에이 티트리먼트 수딩 스팟 15ml (티트리 핑크 파우더)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012852918ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '닥터자르트 컨트롤에이 티트리먼트 수딩 스팟 15ml (티트리 핑크 파우더)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012852911ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '닥터자르트 컨트롤에이 티트리먼트 수딩 스팟 15ml (티트리 핑크 파우더)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '닥터자르트 컨트롤에이 티트리먼트 수딩 스팟 15ml (티트리 핑크 파우더)';


-- ================================



-- ================================

-- 상품: [모공탄력] 바이오힐 보 프로바이오덤 콜라겐 리모델링 세럼 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[모공탄력] 바이오힐 보 프로바이오덤 콜라겐 리모델링 세럼 30ml',
 '[모공탄력] 바이오힐 보 프로바이오덤 콜라겐 리모델링 세럼 30ml',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오힐보'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('콜라겐 리모델링 세럼 30ml 단품', 22900, (SELECT id FROM product WHERE name = '[모공탄력] 바이오힐 보 프로바이오덤 콜라겐 리모델링 세럼 30ml'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[더블기획] 세럼30ml본품+30ml본품', 0, (SELECT id FROM product WHERE name = '[모공탄력] 바이오힐 보 프로바이오덤 콜라겐 리모델링 세럼 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[모공탄력] 바이오힐 보 프로바이오덤 콜라겐 리모델링 세럼 30ml'), NOW(), NOW()),
(22900, 'SALE', (SELECT id FROM product WHERE name = '[모공탄력] 바이오힐 보 프로바이오덤 콜라겐 리모델링 세럼 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022501326ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[모공탄력] 바이오힐 보 프로바이오덤 콜라겐 리모델링 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022501325ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[모공탄력] 바이오힐 보 프로바이오덤 콜라겐 리모델링 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022501324ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[모공탄력] 바이오힐 보 프로바이오덤 콜라겐 리모델링 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022501323ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[모공탄력] 바이오힐 보 프로바이오덤 콜라겐 리모델링 세럼 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[모공탄력] 바이오힐 보 프로바이오덤 콜라겐 리모델링 세럼 30ml';


-- ================================



-- ================================

-- 상품: [장벽부스터/더블기획] 마녀공장 비피다 바이옴 콤플렉스 앰플 30ml 2입 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[장벽부스터/더블기획] 마녀공장 비피다 바이옴 콤플렉스 앰플 30ml 2입 기획',
 '[장벽부스터/더블기획] 마녀공장 비피다 바이옴 콤플렉스 앰플 30ml 2입 기획',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '마녀공장'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[장벽부스터/더블기획] 마녀공장 비피다 바이옴 콤플렉스 앰플 30ml 2입 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(43000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[장벽부스터/더블기획] 마녀공장 비피다 바이옴 콤플렉스 앰플 30ml 2입 기획'), NOW(), NOW()),
(22870, 'SALE', (SELECT id FROM product WHERE name = '[장벽부스터/더블기획] 마녀공장 비피다 바이옴 콤플렉스 앰플 30ml 2입 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016659946ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[장벽부스터/더블기획] 마녀공장 비피다 바이옴 콤플렉스 앰플 30ml 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016659937ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[장벽부스터/더블기획] 마녀공장 비피다 바이옴 콤플렉스 앰플 30ml 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016659939ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[장벽부스터/더블기획] 마녀공장 비피다 바이옴 콤플렉스 앰플 30ml 2입 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[장벽부스터/더블기획] 마녀공장 비피다 바이옴 콤플렉스 앰플 30ml 2입 기획';


-- ================================



-- ================================

-- 상품: 달팡 하이드라스킨 세럼 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('달팡 하이드라스킨 세럼 30ml',
 '달팡 하이드라스킨 세럼 30ml',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '달팡'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '달팡 하이드라스킨 세럼 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(83000, 'ORIGINAL', (SELECT id FROM product WHERE name = '달팡 하이드라스킨 세럼 30ml'), NOW(), NOW()),
(70550, 'SALE', (SELECT id FROM product WHERE name = '달팡 하이드라스킨 세럼 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011549618ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '달팡 하이드라스킨 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011549619ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '달팡 하이드라스킨 세럼 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '달팡 하이드라스킨 세럼 30ml';


-- ================================



-- ================================

-- 상품: 에스트라 에이시카 365 세럼pH4.5 40ml 기획(크림10ml+토너25m 증정)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('에스트라 에이시카 365 세럼pH4.5 40ml 기획(크림10ml+토너25m 증정)',
 '에스트라 에이시카 365 세럼pH4.5 40ml 기획(크림10ml+토너25m 증정)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에스트라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('세럼40ml(+크림10ml+토너25ml)', 33900, (SELECT id FROM product WHERE name = '에스트라 에이시카 365 세럼pH4.5 40ml 기획(크림10ml+토너25m 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '에스트라 에이시카 365 세럼pH4.5 40ml 기획(크림10ml+토너25m 증정)'), NOW(), NOW()),
(33900, 'SALE', (SELECT id FROM product WHERE name = '에스트라 에이시카 365 세럼pH4.5 40ml 기획(크림10ml+토너25m 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022886209ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '에스트라 에이시카 365 세럼pH4.5 40ml 기획(크림10ml+토너25m 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022886208ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '에스트라 에이시카 365 세럼pH4.5 40ml 기획(크림10ml+토너25m 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022886206ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '에스트라 에이시카 365 세럼pH4.5 40ml 기획(크림10ml+토너25m 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022886203ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '에스트라 에이시카 365 세럼pH4.5 40ml 기획(크림10ml+토너25m 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022886202ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '에스트라 에이시카 365 세럼pH4.5 40ml 기획(크림10ml+토너25m 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022886201ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '에스트라 에이시카 365 세럼pH4.5 40ml 기획(크림10ml+토너25m 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '에스트라 에이시카 365 세럼pH4.5 40ml 기획(크림10ml+토너25m 증정)';


-- ================================



-- ================================

-- 상품: 디오디너리 레티놀 0.2% 인 스쿠알란 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('디오디너리 레티놀 0.2% 인 스쿠알란 30ml',
 '디오디너리 레티놀 0.2% 인 스쿠알란 30ml',
 4.6,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '디오디너리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '디오디너리 레티놀 0.2% 인 스쿠알란 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(12300, 'ORIGINAL', (SELECT id FROM product WHERE name = '디오디너리 레티놀 0.2% 인 스쿠알란 30ml'), NOW(), NOW()),
(12300, 'SALE', (SELECT id FROM product WHERE name = '디오디너리 레티놀 0.2% 인 스쿠알란 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014996305ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '디오디너리 레티놀 0.2% 인 스쿠알란 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014996304ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '디오디너리 레티놀 0.2% 인 스쿠알란 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '디오디너리 레티놀 0.2% 인 스쿠알란 30ml';


-- ================================



-- ================================

-- 상품: [민낯광채/겉광속쫀] 달바 더블 레이어 리바이탈라이징 세럼 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[민낯광채/겉광속쫀] 달바 더블 레이어 리바이탈라이징 세럼 30ml',
 '[민낯광채/겉광속쫀] 달바 더블 레이어 리바이탈라이징 세럼 30ml',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '달바'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[민낯광채/겉광속쫀] 달바 더블 레이어 리바이탈라이징 세럼 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(62000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[민낯광채/겉광속쫀] 달바 더블 레이어 리바이탈라이징 세럼 30ml'), NOW(), NOW()),
(32900, 'SALE', (SELECT id FROM product WHERE name = '[민낯광채/겉광속쫀] 달바 더블 레이어 리바이탈라이징 세럼 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015922520ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[민낯광채/겉광속쫀] 달바 더블 레이어 리바이탈라이징 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015922519ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[민낯광채/겉광속쫀] 달바 더블 레이어 리바이탈라이징 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015922521ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[민낯광채/겉광속쫀] 달바 더블 레이어 리바이탈라이징 세럼 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[민낯광채/겉광속쫀] 달바 더블 레이어 리바이탈라이징 세럼 30ml';


-- ================================



-- ================================

-- 상품: 토리든 셀메이징 비타C 브라이트닝 앰플 30ml 더블 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('토리든 셀메이징 비타C 브라이트닝 앰플 30ml 더블 기획',
 '토리든 셀메이징 비타C 브라이트닝 앰플 30ml 더블 기획',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '토리든'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '토리든 셀메이징 비타C 브라이트닝 앰플 30ml 더블 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(46000, 'ORIGINAL', (SELECT id FROM product WHERE name = '토리든 셀메이징 비타C 브라이트닝 앰플 30ml 더블 기획'), NOW(), NOW()),
(32200, 'SALE', (SELECT id FROM product WHERE name = '토리든 셀메이징 비타C 브라이트닝 앰플 30ml 더블 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020811308ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '토리든 셀메이징 비타C 브라이트닝 앰플 30ml 더블 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020811304ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '토리든 셀메이징 비타C 브라이트닝 앰플 30ml 더블 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020811309ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '토리든 셀메이징 비타C 브라이트닝 앰플 30ml 더블 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '토리든 셀메이징 비타C 브라이트닝 앰플 30ml 더블 기획';


-- ================================



-- ================================

-- 상품: [차은우PICK] 아비브 어성초 테카 캡슐 세럼 카밍드롭 50+20ml 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[차은우PICK] 아비브 어성초 테카 캡슐 세럼 카밍드롭 50+20ml 기획',
 '[차은우PICK] 아비브 어성초 테카 캡슐 세럼 카밍드롭 50+20ml 기획',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아비브'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[차은우PICK] 아비브 어성초 테카 캡슐 세럼 카밍드롭 50+20ml 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[차은우PICK] 아비브 어성초 테카 캡슐 세럼 카밍드롭 50+20ml 기획'), NOW(), NOW()),
(32000, 'SALE', (SELECT id FROM product WHERE name = '[차은우PICK] 아비브 어성초 테카 캡슐 세럼 카밍드롭 50+20ml 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021954816ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[차은우PICK] 아비브 어성초 테카 캡슐 세럼 카밍드롭 50+20ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021954815ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[차은우PICK] 아비브 어성초 테카 캡슐 세럼 카밍드롭 50+20ml 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[차은우PICK] 아비브 어성초 테카 캡슐 세럼 카밍드롭 50+20ml 기획';


-- ================================



-- ================================

-- 상품: [PDRN] 아이오페 PDRN 카페인 샷 30ml 기획 (+5ml*3ea)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[PDRN] 아이오페 PDRN 카페인 샷 30ml 기획 (+5ml*3ea)',
 '[PDRN] 아이오페 PDRN 카페인 샷 30ml 기획 (+5ml*3ea)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이오페'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[PDRN] 아이오페 PDRN 카페인 샷 30ml 기획 (+5ml*3ea)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(50000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[PDRN] 아이오페 PDRN 카페인 샷 30ml 기획 (+5ml*3ea)'), NOW(), NOW()),
(31500, 'SALE', (SELECT id FROM product WHERE name = '[PDRN] 아이오페 PDRN 카페인 샷 30ml 기획 (+5ml*3ea)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022411013ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[PDRN] 아이오페 PDRN 카페인 샷 30ml 기획 (+5ml*3ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022411006ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[PDRN] 아이오페 PDRN 카페인 샷 30ml 기획 (+5ml*3ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022411005ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[PDRN] 아이오페 PDRN 카페인 샷 30ml 기획 (+5ml*3ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022411004ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[PDRN] 아이오페 PDRN 카페인 샷 30ml 기획 (+5ml*3ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022411003ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[PDRN] 아이오페 PDRN 카페인 샷 30ml 기획 (+5ml*3ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022411002ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[PDRN] 아이오페 PDRN 카페인 샷 30ml 기획 (+5ml*3ea)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[PDRN] 아이오페 PDRN 카페인 샷 30ml 기획 (+5ml*3ea)';


-- ================================



-- ================================

-- 상품: [단독기획] 미샤 타임 레볼루션 나이트리페어 앰플 5X 기획세트 (70ml+10ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[단독기획] 미샤 타임 레볼루션 나이트리페어 앰플 5X 기획세트 (70ml+10ml)',
 '[단독기획] 미샤 타임 레볼루션 나이트리페어 앰플 5X 기획세트 (70ml+10ml)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '미샤'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[단독기획] 미샤 타임 레볼루션 나이트리페어 앰플 5X 기획세트 (70ml+10ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(44000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독기획] 미샤 타임 레볼루션 나이트리페어 앰플 5X 기획세트 (70ml+10ml)'), NOW(), NOW()),
(30800, 'SALE', (SELECT id FROM product WHERE name = '[단독기획] 미샤 타임 레볼루션 나이트리페어 앰플 5X 기획세트 (70ml+10ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017197113ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[단독기획] 미샤 타임 레볼루션 나이트리페어 앰플 5X 기획세트 (70ml+10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017197107ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[단독기획] 미샤 타임 레볼루션 나이트리페어 앰플 5X 기획세트 (70ml+10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017197105ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[단독기획] 미샤 타임 레볼루션 나이트리페어 앰플 5X 기획세트 (70ml+10ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[단독기획] 미샤 타임 레볼루션 나이트리페어 앰플 5X 기획세트 (70ml+10ml)';


-- ================================



-- ================================

-- 상품: [반쪽모공] 한율 보들은행잎 모공핏 세럼 기획 40ml 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[반쪽모공] 한율 보들은행잎 모공핏 세럼 기획 40ml 기획',
 '[반쪽모공] 한율 보들은행잎 모공핏 세럼 기획 40ml 기획',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '한율'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[리필기획]모공핏세럼40+40', 30700, (SELECT id FROM product WHERE name = '[반쪽모공] 한율 보들은행잎 모공핏 세럼 기획 40ml 기획'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[마스크팩기획] 세럼40+7ml+마스크팩', 30700, (SELECT id FROM product WHERE name = '[반쪽모공] 한율 보들은행잎 모공핏 세럼 기획 40ml 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[반쪽모공] 한율 보들은행잎 모공핏 세럼 기획 40ml 기획'), NOW(), NOW()),
(30700, 'SALE', (SELECT id FROM product WHERE name = '[반쪽모공] 한율 보들은행잎 모공핏 세럼 기획 40ml 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020654725ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[반쪽모공] 한율 보들은행잎 모공핏 세럼 기획 40ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020654726ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[반쪽모공] 한율 보들은행잎 모공핏 세럼 기획 40ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020654718ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[반쪽모공] 한율 보들은행잎 모공핏 세럼 기획 40ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020654703ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[반쪽모공] 한율 보들은행잎 모공핏 세럼 기획 40ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020654702ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[반쪽모공] 한율 보들은행잎 모공핏 세럼 기획 40ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020654701ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[반쪽모공] 한율 보들은행잎 모공핏 세럼 기획 40ml 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[반쪽모공] 한율 보들은행잎 모공핏 세럼 기획 40ml 기획';


-- ================================



-- ================================

-- 상품: [NEW] 메디큐브 제로 원데이 엑소좀샷 모공앰플 2000 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW] 메디큐브 제로 원데이 엑소좀샷 모공앰플 2000 30ml',
 '[NEW] 메디큐브 제로 원데이 엑소좀샷 모공앰플 2000 30ml',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '메디큐브'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('제로 원데이 엑소좀샷 모공앰플 2000', 19800, (SELECT id FROM product WHERE name = '[NEW] 메디큐브 제로 원데이 엑소좀샷 모공앰플 2000 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(22000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW] 메디큐브 제로 원데이 엑소좀샷 모공앰플 2000 30ml'), NOW(), NOW()),
(19800, 'SALE', (SELECT id FROM product WHERE name = '[NEW] 메디큐브 제로 원데이 엑소좀샷 모공앰플 2000 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021837712ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW] 메디큐브 제로 원데이 엑소좀샷 모공앰플 2000 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021837711ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW] 메디큐브 제로 원데이 엑소좀샷 모공앰플 2000 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021837710ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW] 메디큐브 제로 원데이 엑소좀샷 모공앰플 2000 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW] 메디큐브 제로 원데이 엑소좀샷 모공앰플 2000 30ml';


-- ================================



-- ================================

-- 상품: 피지오겔 레드수딩 시카밸런스 포어컨트롤 세럼 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('피지오겔 레드수딩 시카밸런스 포어컨트롤 세럼 50ml',
 '피지오겔 레드수딩 시카밸런스 포어컨트롤 세럼 50ml',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '피지오겔'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '피지오겔 레드수딩 시카밸런스 포어컨트롤 세럼 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39500, 'ORIGINAL', (SELECT id FROM product WHERE name = '피지오겔 레드수딩 시카밸런스 포어컨트롤 세럼 50ml'), NOW(), NOW()),
(29900, 'SALE', (SELECT id FROM product WHERE name = '피지오겔 레드수딩 시카밸런스 포어컨트롤 세럼 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020714103ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '피지오겔 레드수딩 시카밸런스 포어컨트롤 세럼 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020714102ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '피지오겔 레드수딩 시카밸런스 포어컨트롤 세럼 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '피지오겔 레드수딩 시카밸런스 포어컨트롤 세럼 50ml';


-- ================================



-- ================================

-- 상품: [한가인pick] 대웅제약 이지듀 기미잡티앰플 12ml+1ml 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[한가인pick] 대웅제약 이지듀 기미잡티앰플 12ml+1ml 기획',
 '[한가인pick] 대웅제약 이지듀 기미잡티앰플 12ml+1ml 기획',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '이지듀'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기미 앰플12ml+1ml', 29890, (SELECT id FROM product WHERE name = '[한가인pick] 대웅제약 이지듀 기미잡티앰플 12ml+1ml 기획'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기미 앰플12ml+기미패치2매', 49000, (SELECT id FROM product WHERE name = '[한가인pick] 대웅제약 이지듀 기미잡티앰플 12ml+1ml 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(49000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[한가인pick] 대웅제약 이지듀 기미잡티앰플 12ml+1ml 기획'), NOW(), NOW()),
(29890, 'SALE', (SELECT id FROM product WHERE name = '[한가인pick] 대웅제약 이지듀 기미잡티앰플 12ml+1ml 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018849314ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[한가인pick] 대웅제약 이지듀 기미잡티앰플 12ml+1ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018849317ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[한가인pick] 대웅제약 이지듀 기미잡티앰플 12ml+1ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018849316ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[한가인pick] 대웅제약 이지듀 기미잡티앰플 12ml+1ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018849315ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[한가인pick] 대웅제약 이지듀 기미잡티앰플 12ml+1ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018849313ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[한가인pick] 대웅제약 이지듀 기미잡티앰플 12ml+1ml 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[한가인pick] 대웅제약 이지듀 기미잡티앰플 12ml+1ml 기획';


-- ================================



-- ================================

-- 상품: [단독기획/대용량] 파티온 노스카나인 트러블 모공탄력 세럼 50ml 기획(+5ml+크림 5...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[단독기획/대용량] 파티온 노스카나인 트러블 모공탄력 세럼 50ml 기획(+5ml+크림 5ml)',
 '[단독기획/대용량] 파티온 노스카나인 트러블 모공탄력 세럼 50ml 기획(+5ml+크림 5ml)',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '파티온'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[단독기획/대용량] 파티온 노스카나인 트러블 모공탄력 세럼 50ml 기획(+5ml+크림 5ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39200, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독기획/대용량] 파티온 노스카나인 트러블 모공탄력 세럼 50ml 기획(+5ml+크림 5ml)'), NOW(), NOW()),
(29800, 'SALE', (SELECT id FROM product WHERE name = '[단독기획/대용량] 파티온 노스카나인 트러블 모공탄력 세럼 50ml 기획(+5ml+크림 5ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021971405ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[단독기획/대용량] 파티온 노스카나인 트러블 모공탄력 세럼 50ml 기획(+5ml+크림 5ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021971407ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[단독기획/대용량] 파티온 노스카나인 트러블 모공탄력 세럼 50ml 기획(+5ml+크림 5ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021971408ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[단독기획/대용량] 파티온 노스카나인 트러블 모공탄력 세럼 50ml 기획(+5ml+크림 5ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[단독기획/대용량] 파티온 노스카나인 트러블 모공탄력 세럼 50ml 기획(+5ml+크림 5ml)';


-- ================================



-- ================================

-- 상품: [1등 모공앰플] 디마르3 시그니처 에스투드 프로텍터 대용량 모공 앰플 170ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[1등 모공앰플] 디마르3 시그니처 에스투드 프로텍터 대용량 모공 앰플 170ml',
 '[1등 모공앰플] 디마르3 시그니처 에스투드 프로텍터 대용량 모공 앰플 170ml',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '디마르3'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[1등 모공앰플] 디마르3 시그니처 에스투드 프로텍터 대용량 모공 앰플 170ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(59900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1등 모공앰플] 디마르3 시그니처 에스투드 프로텍터 대용량 모공 앰플 170ml'), NOW(), NOW()),
(59900, 'SALE', (SELECT id FROM product WHERE name = '[1등 모공앰플] 디마르3 시그니처 에스투드 프로텍터 대용량 모공 앰플 170ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018896804ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[1등 모공앰플] 디마르3 시그니처 에스투드 프로텍터 대용량 모공 앰플 170ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018896801ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[1등 모공앰플] 디마르3 시그니처 에스투드 프로텍터 대용량 모공 앰플 170ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018896805ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[1등 모공앰플] 디마르3 시그니처 에스투드 프로텍터 대용량 모공 앰플 170ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[1등 모공앰플] 디마르3 시그니처 에스투드 프로텍터 대용량 모공 앰플 170ml';


-- ================================



-- ================================

-- 상품: [흔적미백] 메디큐브 연어 PDRN 핑크 앰플 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[흔적미백] 메디큐브 연어 PDRN 핑크 앰플 30ml',
 '[흔적미백] 메디큐브 연어 PDRN 핑크 앰플 30ml',
 4.6,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '메디큐브'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[흔적미백] 메디큐브 연어 PDRN 핑크 앰플 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24800, 'ORIGINAL', (SELECT id FROM product WHERE name = '[흔적미백] 메디큐브 연어 PDRN 핑크 앰플 30ml'), NOW(), NOW()),
(18910, 'SALE', (SELECT id FROM product WHERE name = '[흔적미백] 메디큐브 연어 PDRN 핑크 앰플 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020951522ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[흔적미백] 메디큐브 연어 PDRN 핑크 앰플 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020951511ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[흔적미백] 메디큐브 연어 PDRN 핑크 앰플 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020951512ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[흔적미백] 메디큐브 연어 PDRN 핑크 앰플 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020951525ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[흔적미백] 메디큐브 연어 PDRN 핑크 앰플 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020951528ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[흔적미백] 메디큐브 연어 PDRN 핑크 앰플 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[흔적미백] 메디큐브 연어 PDRN 핑크 앰플 30ml';


-- ================================



-- ================================

-- 상품: [7일잡티개선] 앰플엔 블레미샷 잡티앰플 50ml 1+1 단독기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[7일잡티개선] 앰플엔 블레미샷 잡티앰플 50ml 1+1 단독기획',
 '[7일잡티개선] 앰플엔 블레미샷 잡티앰플 50ml 1+1 단독기획',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '앰플엔'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[7일잡티개선] 앰플엔 블레미샷 잡티앰플 50ml 1+1 단독기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(36000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[7일잡티개선] 앰플엔 블레미샷 잡티앰플 50ml 1+1 단독기획'), NOW(), NOW()),
(28800, 'SALE', (SELECT id FROM product WHERE name = '[7일잡티개선] 앰플엔 블레미샷 잡티앰플 50ml 1+1 단독기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020363925ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[7일잡티개선] 앰플엔 블레미샷 잡티앰플 50ml 1+1 단독기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020363919ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[7일잡티개선] 앰플엔 블레미샷 잡티앰플 50ml 1+1 단독기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020363920ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[7일잡티개선] 앰플엔 블레미샷 잡티앰플 50ml 1+1 단독기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020363924ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[7일잡티개선] 앰플엔 블레미샷 잡티앰플 50ml 1+1 단독기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020363922ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[7일잡티개선] 앰플엔 블레미샷 잡티앰플 50ml 1+1 단독기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[7일잡티개선] 앰플엔 블레미샷 잡티앰플 50ml 1+1 단독기획';


-- ================================



-- ================================

-- 상품: [올영단독] 아임프롬 머그워트 에센스150ml 1+1기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[올영단독] 아임프롬 머그워트 에센스150ml 1+1기획',
 '[올영단독] 아임프롬 머그워트 에센스150ml 1+1기획',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아임프롬'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[올영단독] 아임프롬 머그워트 에센스150ml 1+1기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(36000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[올영단독] 아임프롬 머그워트 에센스150ml 1+1기획'), NOW(), NOW()),
(28800, 'SALE', (SELECT id FROM product WHERE name = '[올영단독] 아임프롬 머그워트 에센스150ml 1+1기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022848408ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[올영단독] 아임프롬 머그워트 에센스150ml 1+1기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022848407ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[올영단독] 아임프롬 머그워트 에센스150ml 1+1기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022848406ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[올영단독] 아임프롬 머그워트 에센스150ml 1+1기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022848405ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[올영단독] 아임프롬 머그워트 에센스150ml 1+1기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022848403ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[올영단독] 아임프롬 머그워트 에센스150ml 1+1기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022848402ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[올영단독] 아임프롬 머그워트 에센스150ml 1+1기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[올영단독] 아임프롬 머그워트 에센스150ml 1+1기획';


-- ================================



-- ================================

-- 상품: [모공흡수] VT 리들샷 300 에센스 30ml 기획 (+리들샷 300 파우치 1ml*3e...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[모공흡수] VT 리들샷 300 에센스 30ml 기획 (+리들샷 300 파우치 1ml*3ea)',
 '[모공흡수] VT 리들샷 300 에센스 30ml 기획 (+리들샷 300 파우치 1ml*3ea)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'VT'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[모공흡수] VT 리들샷 300 에센스 30ml 기획 (+리들샷 300 파우치 1ml*3ea)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[모공흡수] VT 리들샷 300 에센스 30ml 기획 (+리들샷 300 파우치 1ml*3ea)'), NOW(), NOW()),
(18500, 'SALE', (SELECT id FROM product WHERE name = '[모공흡수] VT 리들샷 300 에센스 30ml 기획 (+리들샷 300 파우치 1ml*3ea)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021006811ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[모공흡수] VT 리들샷 300 에센스 30ml 기획 (+리들샷 300 파우치 1ml*3ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021006805ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[모공흡수] VT 리들샷 300 에센스 30ml 기획 (+리들샷 300 파우치 1ml*3ea)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[모공흡수] VT 리들샷 300 에센스 30ml 기획 (+리들샷 300 파우치 1ml*3ea)';


-- ================================



-- ================================

-- 상품: 이니스프리 레티놀 그린티 PDRN 스킨부스터 앰플 25ml 기획 (+20ml + 시카 앰플...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('이니스프리 레티놀 그린티 PDRN 스킨부스터 앰플 25ml 기획 (+20ml + 시카 앰플 5ml)',
 '이니스프리 레티놀 그린티 PDRN 스킨부스터 앰플 25ml 기획 (+20ml + 시카 앰플 5ml)',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '이니스프리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '이니스프리 레티놀 그린티 PDRN 스킨부스터 앰플 25ml 기획 (+20ml + 시카 앰플 5ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(40000, 'ORIGINAL', (SELECT id FROM product WHERE name = '이니스프리 레티놀 그린티 PDRN 스킨부스터 앰플 25ml 기획 (+20ml + 시카 앰플 5ml)'), NOW(), NOW()),
(28230, 'SALE', (SELECT id FROM product WHERE name = '이니스프리 레티놀 그린티 PDRN 스킨부스터 앰플 25ml 기획 (+20ml + 시카 앰플 5ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023291002ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '이니스프리 레티놀 그린티 PDRN 스킨부스터 앰플 25ml 기획 (+20ml + 시카 앰플 5ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023291003ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '이니스프리 레티놀 그린티 PDRN 스킨부스터 앰플 25ml 기획 (+20ml + 시카 앰플 5ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023291004ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '이니스프리 레티놀 그린티 PDRN 스킨부스터 앰플 25ml 기획 (+20ml + 시카 앰플 5ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023291005ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '이니스프리 레티놀 그린티 PDRN 스킨부스터 앰플 25ml 기획 (+20ml + 시카 앰플 5ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023291006ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '이니스프리 레티놀 그린티 PDRN 스킨부스터 앰플 25ml 기획 (+20ml + 시카 앰플 5ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023291007ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '이니스프리 레티놀 그린티 PDRN 스킨부스터 앰플 25ml 기획 (+20ml + 시카 앰플 5ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '이니스프리 레티놀 그린티 PDRN 스킨부스터 앰플 25ml 기획 (+20ml + 시카 앰플 5ml)';


-- ================================



-- ================================

-- 상품: [흔적미백] 넘버즈인 5번 글루타치온C 흔적 앰플 30ml 기획(+패드 6매 증정)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[흔적미백] 넘버즈인 5번 글루타치온C 흔적 앰플 30ml 기획(+패드 6매 증정)',
 '[흔적미백] 넘버즈인 5번 글루타치온C 흔적 앰플 30ml 기획(+패드 6매 증정)',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '넘버즈인'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[흔적미백] 넘버즈인 5번 글루타치온C 흔적 앰플 30ml 기획(+패드 6매 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[흔적미백] 넘버즈인 5번 글루타치온C 흔적 앰플 30ml 기획(+패드 6매 증정)'), NOW(), NOW()),
(19200, 'SALE', (SELECT id FROM product WHERE name = '[흔적미백] 넘버즈인 5번 글루타치온C 흔적 앰플 30ml 기획(+패드 6매 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018406422ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[흔적미백] 넘버즈인 5번 글루타치온C 흔적 앰플 30ml 기획(+패드 6매 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018406414ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[흔적미백] 넘버즈인 5번 글루타치온C 흔적 앰플 30ml 기획(+패드 6매 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018406408ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[흔적미백] 넘버즈인 5번 글루타치온C 흔적 앰플 30ml 기획(+패드 6매 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018406411ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[흔적미백] 넘버즈인 5번 글루타치온C 흔적 앰플 30ml 기획(+패드 6매 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018406406ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[흔적미백] 넘버즈인 5번 글루타치온C 흔적 앰플 30ml 기획(+패드 6매 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018406420ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[흔적미백] 넘버즈인 5번 글루타치온C 흔적 앰플 30ml 기획(+패드 6매 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[흔적미백] 넘버즈인 5번 글루타치온C 흔적 앰플 30ml 기획(+패드 6매 증정)';


-- ================================



-- ================================

-- 상품: [총 110ml/온라인 단독] 더마토리 히알샷 배리어 앰플 비5 100ml 대용량 기획(1...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[총 110ml/온라인 단독] 더마토리 히알샷 배리어 앰플 비5 100ml 대용량 기획(100ml+10ml)',
 '[총 110ml/온라인 단독] 더마토리 히알샷 배리어 앰플 비5 100ml 대용량 기획(100ml+10ml)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더마토리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[총 110ml/온라인 단독] 더마토리 히알샷 배리어 앰플 비5 100ml 대용량 기획(100ml+10ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[총 110ml/온라인 단독] 더마토리 히알샷 배리어 앰플 비5 100ml 대용량 기획(100ml+10ml)'), NOW(), NOW()),
(27900, 'SALE', (SELECT id FROM product WHERE name = '[총 110ml/온라인 단독] 더마토리 히알샷 배리어 앰플 비5 100ml 대용량 기획(100ml+10ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021858602ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[총 110ml/온라인 단독] 더마토리 히알샷 배리어 앰플 비5 100ml 대용량 기획(100ml+10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021858604ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[총 110ml/온라인 단독] 더마토리 히알샷 배리어 앰플 비5 100ml 대용량 기획(100ml+10ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[총 110ml/온라인 단독] 더마토리 히알샷 배리어 앰플 비5 100ml 대용량 기획(100ml+10ml)';


-- ================================



-- ================================

-- 상품: 디오디너리 레티놀 0.5% 인 스쿠알란 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('디오디너리 레티놀 0.5% 인 스쿠알란 30ml',
 '디오디너리 레티놀 0.5% 인 스쿠알란 30ml',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '디오디너리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '디오디너리 레티놀 0.5% 인 스쿠알란 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(13100, 'ORIGINAL', (SELECT id FROM product WHERE name = '디오디너리 레티놀 0.5% 인 스쿠알란 30ml'), NOW(), NOW()),
(13100, 'SALE', (SELECT id FROM product WHERE name = '디오디너리 레티놀 0.5% 인 스쿠알란 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014996605ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '디오디너리 레티놀 0.5% 인 스쿠알란 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014996604ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '디오디너리 레티놀 0.5% 인 스쿠알란 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '디오디너리 레티놀 0.5% 인 스쿠알란 30ml';


-- ================================



-- ================================

-- 상품: [투명미백] 마녀공장 갈락토미 나이아신 투명광채 에센스 30ml + 12ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[투명미백] 마녀공장 갈락토미 나이아신 투명광채 에센스 30ml + 12ml',
 '[투명미백] 마녀공장 갈락토미 나이아신 투명광채 에센스 30ml + 12ml',
 4.6,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '마녀공장'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[투명미백] 마녀공장 갈락토미 나이아신 투명광채 에센스 30ml + 12ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(20000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[투명미백] 마녀공장 갈락토미 나이아신 투명광채 에센스 30ml + 12ml'), NOW(), NOW()),
(13000, 'SALE', (SELECT id FROM product WHERE name = '[투명미백] 마녀공장 갈락토미 나이아신 투명광채 에센스 30ml + 12ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018096312ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[투명미백] 마녀공장 갈락토미 나이아신 투명광채 에센스 30ml + 12ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018096313ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[투명미백] 마녀공장 갈락토미 나이아신 투명광채 에센스 30ml + 12ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018096309ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[투명미백] 마녀공장 갈락토미 나이아신 투명광채 에센스 30ml + 12ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018096311ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[투명미백] 마녀공장 갈락토미 나이아신 투명광채 에센스 30ml + 12ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[투명미백] 마녀공장 갈락토미 나이아신 투명광채 에센스 30ml + 12ml';


-- ================================



-- ================================

-- 상품: [1+1리필기획/잡티흔적세럼] 비긴스 바이 정샘물 핑크 구아바 글루타치온 흔적 세럼 리필 ...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[1+1리필기획/잡티흔적세럼] 비긴스 바이 정샘물 핑크 구아바 글루타치온 흔적 세럼 리필 기획',
 '[1+1리필기획/잡티흔적세럼] 비긴스 바이 정샘물 핑크 구아바 글루타치온 흔적 세럼 리필 기획',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비긴스 바이 정샘물'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('본품 30ml + 리필 30ml', 27300, (SELECT id FROM product WHERE name = '[1+1리필기획/잡티흔적세럼] 비긴스 바이 정샘물 핑크 구아바 글루타치온 흔적 세럼 리필 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(42000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1+1리필기획/잡티흔적세럼] 비긴스 바이 정샘물 핑크 구아바 글루타치온 흔적 세럼 리필 기획'), NOW(), NOW()),
(27300, 'SALE', (SELECT id FROM product WHERE name = '[1+1리필기획/잡티흔적세럼] 비긴스 바이 정샘물 핑크 구아바 글루타치온 흔적 세럼 리필 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023154519ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[1+1리필기획/잡티흔적세럼] 비긴스 바이 정샘물 핑크 구아바 글루타치온 흔적 세럼 리필 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023154518ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[1+1리필기획/잡티흔적세럼] 비긴스 바이 정샘물 핑크 구아바 글루타치온 흔적 세럼 리필 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023154509ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[1+1리필기획/잡티흔적세럼] 비긴스 바이 정샘물 핑크 구아바 글루타치온 흔적 세럼 리필 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023154507ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[1+1리필기획/잡티흔적세럼] 비긴스 바이 정샘물 핑크 구아바 글루타치온 흔적 세럼 리필 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023154505ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[1+1리필기획/잡티흔적세럼] 비긴스 바이 정샘물 핑크 구아바 글루타치온 흔적 세럼 리필 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023154512ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[1+1리필기획/잡티흔적세럼] 비긴스 바이 정샘물 핑크 구아바 글루타치온 흔적 세럼 리필 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[1+1리필기획/잡티흔적세럼] 비긴스 바이 정샘물 핑크 구아바 글루타치온 흔적 세럼 리필 기획';


-- ================================



-- ================================

-- 상품: 제로이드 인텐시브 하이드레이팅 앰플 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('제로이드 인텐시브 하이드레이팅 앰플 30ml',
 '제로이드 인텐시브 하이드레이팅 앰플 30ml',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '제로이드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '제로이드 인텐시브 하이드레이팅 앰플 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '제로이드 인텐시브 하이드레이팅 앰플 30ml'), NOW(), NOW()),
(27000, 'SALE', (SELECT id FROM product WHERE name = '제로이드 인텐시브 하이드레이팅 앰플 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020974613ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '제로이드 인텐시브 하이드레이팅 앰플 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020974609ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '제로이드 인텐시브 하이드레이팅 앰플 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '제로이드 인텐시브 하이드레이팅 앰플 30ml';


-- ================================



-- ================================

-- 상품: 아이오페 비타민C 엑스퍼트 25% 항산화 토닝 앰플 23ml 기획 (+필패드 1매 + 선앰...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아이오페 비타민C 엑스퍼트 25% 항산화 토닝 앰플 23ml 기획 (+필패드 1매 + 선앰플 10ml)',
 '아이오페 비타민C 엑스퍼트 25% 항산화 토닝 앰플 23ml 기획 (+필패드 1매 + 선앰플 10ml)',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이오페'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아이오페 비타민C 엑스퍼트 25% 항산화 토닝 앰플 23ml 기획 (+필패드 1매 + 선앰플 10ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(55000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아이오페 비타민C 엑스퍼트 25% 항산화 토닝 앰플 23ml 기획 (+필패드 1매 + 선앰플 10ml)'), NOW(), NOW()),
(55000, 'SALE', (SELECT id FROM product WHERE name = '아이오페 비타민C 엑스퍼트 25% 항산화 토닝 앰플 23ml 기획 (+필패드 1매 + 선앰플 10ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022286017ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아이오페 비타민C 엑스퍼트 25% 항산화 토닝 앰플 23ml 기획 (+필패드 1매 + 선앰플 10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022286007ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아이오페 비타민C 엑스퍼트 25% 항산화 토닝 앰플 23ml 기획 (+필패드 1매 + 선앰플 10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022286006ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아이오페 비타민C 엑스퍼트 25% 항산화 토닝 앰플 23ml 기획 (+필패드 1매 + 선앰플 10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022286004ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '아이오페 비타민C 엑스퍼트 25% 항산화 토닝 앰플 23ml 기획 (+필패드 1매 + 선앰플 10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022286002ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '아이오페 비타민C 엑스퍼트 25% 항산화 토닝 앰플 23ml 기획 (+필패드 1매 + 선앰플 10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022286001ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '아이오페 비타민C 엑스퍼트 25% 항산화 토닝 앰플 23ml 기획 (+필패드 1매 + 선앰플 10ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아이오페 비타민C 엑스퍼트 25% 항산화 토닝 앰플 23ml 기획 (+필패드 1매 + 선앰플 10ml)';


-- ================================



-- ================================

-- 상품: [리프팅앰플] 퍼셀 82% 하이-도즈 펩타이드 포뮬라 20ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[리프팅앰플] 퍼셀 82% 하이-도즈 펩타이드 포뮬라 20ml',
 '[리프팅앰플] 퍼셀 82% 하이-도즈 펩타이드 포뮬라 20ml',
 4.6,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '퍼셀'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[리프팅앰플] 퍼셀 82% 하이-도즈 펩타이드 포뮬라 20ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(27500, 'ORIGINAL', (SELECT id FROM product WHERE name = '[리프팅앰플] 퍼셀 82% 하이-도즈 펩타이드 포뮬라 20ml'), NOW(), NOW()),
(26500, 'SALE', (SELECT id FROM product WHERE name = '[리프팅앰플] 퍼셀 82% 하이-도즈 펩타이드 포뮬라 20ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021294804ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[리프팅앰플] 퍼셀 82% 하이-도즈 펩타이드 포뮬라 20ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021294806ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[리프팅앰플] 퍼셀 82% 하이-도즈 펩타이드 포뮬라 20ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021294805ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[리프팅앰플] 퍼셀 82% 하이-도즈 펩타이드 포뮬라 20ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[리프팅앰플] 퍼셀 82% 하이-도즈 펩타이드 포뮬라 20ml';


-- ================================



-- ================================

-- 상품: [진정탄력] 차앤박 더마앤서 액티브 부스트 PDRN앰플 30ml 기획 (+15ml 증정)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[진정탄력] 차앤박 더마앤서 액티브 부스트 PDRN앰플 30ml 기획 (+15ml 증정)',
 '[진정탄력] 차앤박 더마앤서 액티브 부스트 PDRN앰플 30ml 기획 (+15ml 증정)',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '차앤박'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[진정탄력] 차앤박 더마앤서 액티브 부스트 PDRN앰플 30ml 기획 (+15ml 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[진정탄력] 차앤박 더마앤서 액티브 부스트 PDRN앰플 30ml 기획 (+15ml 증정)'), NOW(), NOW()),
(26400, 'SALE', (SELECT id FROM product WHERE name = '[진정탄력] 차앤박 더마앤서 액티브 부스트 PDRN앰플 30ml 기획 (+15ml 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020878045ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[진정탄력] 차앤박 더마앤서 액티브 부스트 PDRN앰플 30ml 기획 (+15ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020878046ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[진정탄력] 차앤박 더마앤서 액티브 부스트 PDRN앰플 30ml 기획 (+15ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020878044ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[진정탄력] 차앤박 더마앤서 액티브 부스트 PDRN앰플 30ml 기획 (+15ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020878006ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[진정탄력] 차앤박 더마앤서 액티브 부스트 PDRN앰플 30ml 기획 (+15ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020878007ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[진정탄력] 차앤박 더마앤서 액티브 부스트 PDRN앰플 30ml 기획 (+15ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020878008ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[진정탄력] 차앤박 더마앤서 액티브 부스트 PDRN앰플 30ml 기획 (+15ml 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[진정탄력] 차앤박 더마앤서 액티브 부스트 PDRN앰플 30ml 기획 (+15ml 증정)';


-- ================================



-- ================================

-- 상품: [재구매1위] 앰플엔 세라마이드샷 보습장벽앰플 100ml기획(+10ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[재구매1위] 앰플엔 세라마이드샷 보습장벽앰플 100ml기획(+10ml)',
 '[재구매1위] 앰플엔 세라마이드샷 보습장벽앰플 100ml기획(+10ml)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '앰플엔'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[재구매1위] 앰플엔 세라마이드샷 보습장벽앰플 100ml기획(+10ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(18900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[재구매1위] 앰플엔 세라마이드샷 보습장벽앰플 100ml기획(+10ml)'), NOW(), NOW()),
(17000, 'SALE', (SELECT id FROM product WHERE name = '[재구매1위] 앰플엔 세라마이드샷 보습장벽앰플 100ml기획(+10ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018041059ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[재구매1위] 앰플엔 세라마이드샷 보습장벽앰플 100ml기획(+10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018041050ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[재구매1위] 앰플엔 세라마이드샷 보습장벽앰플 100ml기획(+10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018041051ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[재구매1위] 앰플엔 세라마이드샷 보습장벽앰플 100ml기획(+10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018041057ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[재구매1위] 앰플엔 세라마이드샷 보습장벽앰플 100ml기획(+10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018041056ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[재구매1위] 앰플엔 세라마이드샷 보습장벽앰플 100ml기획(+10ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[재구매1위] 앰플엔 세라마이드샷 보습장벽앰플 100ml기획(+10ml)';


-- ================================



-- ================================

-- 상품: [비타민C 앰플] 피지오겔 사이언수티컬즈 데일리뮨 앰플 세럼 20ml 2입기획 (20ml+...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[비타민C 앰플] 피지오겔 사이언수티컬즈 데일리뮨 앰플 세럼 20ml 2입기획 (20ml+20ml)',
 '[비타민C 앰플] 피지오겔 사이언수티컬즈 데일리뮨 앰플 세럼 20ml 2입기획 (20ml+20ml)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '피지오겔'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[비타민C 앰플] 피지오겔 사이언수티컬즈 데일리뮨 앰플 세럼 20ml 2입기획 (20ml+20ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(78000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[비타민C 앰플] 피지오겔 사이언수티컬즈 데일리뮨 앰플 세럼 20ml 2입기획 (20ml+20ml)'), NOW(), NOW()),
(54000, 'SALE', (SELECT id FROM product WHERE name = '[비타민C 앰플] 피지오겔 사이언수티컬즈 데일리뮨 앰플 세럼 20ml 2입기획 (20ml+20ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022222029ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[비타민C 앰플] 피지오겔 사이언수티컬즈 데일리뮨 앰플 세럼 20ml 2입기획 (20ml+20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022222026ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[비타민C 앰플] 피지오겔 사이언수티컬즈 데일리뮨 앰플 세럼 20ml 2입기획 (20ml+20ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[비타민C 앰플] 피지오겔 사이언수티컬즈 데일리뮨 앰플 세럼 20ml 2입기획 (20ml+20ml)';


-- ================================



-- ================================

-- 상품: 디오디너리 히알루로닉 애시드 2% + B5 60ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('디오디너리 히알루로닉 애시드 2% + B5 60ml',
 '디오디너리 히알루로닉 애시드 2% + B5 60ml',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '디오디너리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '디오디너리 히알루로닉 애시드 2% + B5 60ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '디오디너리 히알루로닉 애시드 2% + B5 60ml'), NOW(), NOW()),
(25000, 'SALE', (SELECT id FROM product WHERE name = '디오디너리 히알루로닉 애시드 2% + B5 60ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020032805ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '디오디너리 히알루로닉 애시드 2% + B5 60ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020032806ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '디오디너리 히알루로닉 애시드 2% + B5 60ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '디오디너리 히알루로닉 애시드 2% + B5 60ml';


-- ================================



-- ================================

-- 상품: [화잘먹/모공탄력] 아렌시아 젤리세럼 레드 스무디 세럼 30 50g 기획 (+20g)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[화잘먹/모공탄력] 아렌시아 젤리세럼 레드 스무디 세럼 30 50g 기획 (+20g)',
 '[화잘먹/모공탄력] 아렌시아 젤리세럼 레드 스무디 세럼 30 50g 기획 (+20g)',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아렌시아'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[화잘먹/모공탄력] 아렌시아 젤리세럼 레드 스무디 세럼 30 50g 기획 (+20g)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(42000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[화잘먹/모공탄력] 아렌시아 젤리세럼 레드 스무디 세럼 30 50g 기획 (+20g)'), NOW(), NOW()),
(25000, 'SALE', (SELECT id FROM product WHERE name = '[화잘먹/모공탄력] 아렌시아 젤리세럼 레드 스무디 세럼 30 50g 기획 (+20g)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022647105ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[화잘먹/모공탄력] 아렌시아 젤리세럼 레드 스무디 세럼 30 50g 기획 (+20g)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022647104ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[화잘먹/모공탄력] 아렌시아 젤리세럼 레드 스무디 세럼 30 50g 기획 (+20g)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022647103ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[화잘먹/모공탄력] 아렌시아 젤리세럼 레드 스무디 세럼 30 50g 기획 (+20g)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[화잘먹/모공탄력] 아렌시아 젤리세럼 레드 스무디 세럼 30 50g 기획 (+20g)';


-- ================================



-- ================================

-- 상품: [피부결/흔적개선] 메디테라피 레티날 스킨 부스터 세럼 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[피부결/흔적개선] 메디테라피 레티날 스킨 부스터 세럼 150ml',
 '[피부결/흔적개선] 메디테라피 레티날 스킨 부스터 세럼 150ml',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '메디테라피'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[피부결/흔적개선] 메디테라피 레티날 스킨 부스터 세럼 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[피부결/흔적개선] 메디테라피 레티날 스킨 부스터 세럼 150ml'), NOW(), NOW()),
(24900, 'SALE', (SELECT id FROM product WHERE name = '[피부결/흔적개선] 메디테라피 레티날 스킨 부스터 세럼 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023106224ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[피부결/흔적개선] 메디테라피 레티날 스킨 부스터 세럼 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023106216ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[피부결/흔적개선] 메디테라피 레티날 스킨 부스터 세럼 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023106217ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[피부결/흔적개선] 메디테라피 레티날 스킨 부스터 세럼 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023106218ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[피부결/흔적개선] 메디테라피 레티날 스킨 부스터 세럼 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023106219ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[피부결/흔적개선] 메디테라피 레티날 스킨 부스터 세럼 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023106220ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[피부결/흔적개선] 메디테라피 레티날 스킨 부스터 세럼 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[피부결/흔적개선] 메디테라피 레티날 스킨 부스터 세럼 150ml';


-- ================================



-- ================================

-- 상품: 잇츠스킨 닥터세이버스 세럼 30ml 5종 택1...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('잇츠스킨 닥터세이버스 세럼 30ml 5종 택1',
 '잇츠스킨 닥터세이버스 세럼 30ml 5종 택1',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '잇츠스킨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('비피다 실키 세럼 30ml', 8900, (SELECT id FROM product WHERE name = '잇츠스킨 닥터세이버스 세럼 30ml 5종 택1'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('비타 글로우 세럼 30ml', 8900, (SELECT id FROM product WHERE name = '잇츠스킨 닥터세이버스 세럼 30ml 5종 택1'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('히알루로닉 하이드로 세럼 30ml', 8900, (SELECT id FROM product WHERE name = '잇츠스킨 닥터세이버스 세럼 30ml 5종 택1'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('시카 컴포트 세럼 30ml', 8900, (SELECT id FROM product WHERE name = '잇츠스킨 닥터세이버스 세럼 30ml 5종 택1'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('피디알엔 리바이탈 세럼 30ml', 8010, (SELECT id FROM product WHERE name = '잇츠스킨 닥터세이버스 세럼 30ml 5종 택1'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(9900, 'ORIGINAL', (SELECT id FROM product WHERE name = '잇츠스킨 닥터세이버스 세럼 30ml 5종 택1'), NOW(), NOW()),
(8900, 'SALE', (SELECT id FROM product WHERE name = '잇츠스킨 닥터세이버스 세럼 30ml 5종 택1'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022931206ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '잇츠스킨 닥터세이버스 세럼 30ml 5종 택1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022931208ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '잇츠스킨 닥터세이버스 세럼 30ml 5종 택1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022931207ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '잇츠스킨 닥터세이버스 세럼 30ml 5종 택1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022931211ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '잇츠스킨 닥터세이버스 세럼 30ml 5종 택1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022931209ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '잇츠스킨 닥터세이버스 세럼 30ml 5종 택1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022931210ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '잇츠스킨 닥터세이버스 세럼 30ml 5종 택1'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '잇츠스킨 닥터세이버스 세럼 30ml 5종 택1';


-- ================================



-- ================================

-- 상품: 라로슈포제 히알루B5 세럼 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('라로슈포제 히알루B5 세럼 30ml',
 '라로슈포제 히알루B5 세럼 30ml',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라로슈포제'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '라로슈포제 히알루B5 세럼 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(56000, 'ORIGINAL', (SELECT id FROM product WHERE name = '라로슈포제 히알루B5 세럼 30ml'), NOW(), NOW()),
(50400, 'SALE', (SELECT id FROM product WHERE name = '라로슈포제 히알루B5 세럼 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011263606ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '라로슈포제 히알루B5 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011263605ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '라로슈포제 히알루B5 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011263607ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '라로슈포제 히알루B5 세럼 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '라로슈포제 히알루B5 세럼 30ml';


-- ================================



-- ================================

-- 상품: 아이오페 레티놀 레티젝션 세럼 30ml 기획(+ 세럼10ml + 크림 15ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아이오페 레티놀 레티젝션 세럼 30ml 기획(+ 세럼10ml + 크림 15ml)',
 '아이오페 레티놀 레티젝션 세럼 30ml 기획(+ 세럼10ml + 크림 15ml)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이오페'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아이오페 레티놀 레티젝션 세럼 30ml 기획(+ 세럼10ml + 크림 15ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(59000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아이오페 레티놀 레티젝션 세럼 30ml 기획(+ 세럼10ml + 크림 15ml)'), NOW(), NOW()),
(49900, 'SALE', (SELECT id FROM product WHERE name = '아이오페 레티놀 레티젝션 세럼 30ml 기획(+ 세럼10ml + 크림 15ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023235711ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아이오페 레티놀 레티젝션 세럼 30ml 기획(+ 세럼10ml + 크림 15ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023235707ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '아이오페 레티놀 레티젝션 세럼 30ml 기획(+ 세럼10ml + 크림 15ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023235706ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '아이오페 레티놀 레티젝션 세럼 30ml 기획(+ 세럼10ml + 크림 15ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023235705ko.png?l=ko', 4, (SELECT id FROM product WHERE name = '아이오페 레티놀 레티젝션 세럼 30ml 기획(+ 세럼10ml + 크림 15ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023235704ko.png?l=ko', 5, (SELECT id FROM product WHERE name = '아이오페 레티놀 레티젝션 세럼 30ml 기획(+ 세럼10ml + 크림 15ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023235703ko.png?l=ko', 6, (SELECT id FROM product WHERE name = '아이오페 레티놀 레티젝션 세럼 30ml 기획(+ 세럼10ml + 크림 15ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아이오페 레티놀 레티젝션 세럼 30ml 기획(+ 세럼10ml + 크림 15ml)';


-- ================================



-- ================================

-- 상품: [화해1위/트러블] 웰라쥬 리얼 시카 카밍 95 트러블 앰플 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[화해1위/트러블] 웰라쥬 리얼 시카 카밍 95 트러블 앰플 50ml',
 '[화해1위/트러블] 웰라쥬 리얼 시카 카밍 95 트러블 앰플 50ml',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '웰라쥬'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[화해1위/트러블] 웰라쥬 리얼 시카 카밍 95 트러블 앰플 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[화해1위/트러블] 웰라쥬 리얼 시카 카밍 95 트러블 앰플 50ml'), NOW(), NOW()),
(24000, 'SALE', (SELECT id FROM product WHERE name = '[화해1위/트러블] 웰라쥬 리얼 시카 카밍 95 트러블 앰플 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019998226ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[화해1위/트러블] 웰라쥬 리얼 시카 카밍 95 트러블 앰플 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019998227ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[화해1위/트러블] 웰라쥬 리얼 시카 카밍 95 트러블 앰플 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019998228ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[화해1위/트러블] 웰라쥬 리얼 시카 카밍 95 트러블 앰플 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[화해1위/트러블] 웰라쥬 리얼 시카 카밍 95 트러블 앰플 50ml';


-- ================================



-- ================================

-- 상품: 설화수 윤조에센스 단품/기획 (30ml~90ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('설화수 윤조에센스 단품/기획 (30ml~90ml)',
 '설화수 윤조에센스 단품/기획 (30ml~90ml)',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '설화수'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('30ml 기획', 49500, (SELECT id FROM product WHERE name = '설화수 윤조에센스 단품/기획 (30ml~90ml)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('30ml 단품', 49500, (SELECT id FROM product WHERE name = '설화수 윤조에센스 단품/기획 (30ml~90ml)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('60ml 단품', 94500, (SELECT id FROM product WHERE name = '설화수 윤조에센스 단품/기획 (30ml~90ml)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[지함보] 90ml 기획', 126000, (SELECT id FROM product WHERE name = '설화수 윤조에센스 단품/기획 (30ml~90ml)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[단품] 90ml 단품', 126000, (SELECT id FROM product WHERE name = '설화수 윤조에센스 단품/기획 (30ml~90ml)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[일반] 90ml 기획', 126000, (SELECT id FROM product WHERE name = '설화수 윤조에센스 단품/기획 (30ml~90ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(55000, 'ORIGINAL', (SELECT id FROM product WHERE name = '설화수 윤조에센스 단품/기획 (30ml~90ml)'), NOW(), NOW()),
(49500, 'SALE', (SELECT id FROM product WHERE name = '설화수 윤조에센스 단품/기획 (30ml~90ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022575008ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '설화수 윤조에센스 단품/기획 (30ml~90ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022575007ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '설화수 윤조에센스 단품/기획 (30ml~90ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022575013ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '설화수 윤조에센스 단품/기획 (30ml~90ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022575012ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '설화수 윤조에센스 단품/기획 (30ml~90ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022575011ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '설화수 윤조에센스 단품/기획 (30ml~90ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022575010ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '설화수 윤조에센스 단품/기획 (30ml~90ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '설화수 윤조에센스 단품/기획 (30ml~90ml)';


-- ================================



-- ================================

-- 상품: 랑콤 제니피끄 세럼 20ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('랑콤 제니피끄 세럼 20ml',
 '랑콤 제니피끄 세럼 20ml',
 5.0,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '랑콤'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('20ml', 49500, (SELECT id FROM product WHERE name = '랑콤 제니피끄 세럼 20ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(55000, 'ORIGINAL', (SELECT id FROM product WHERE name = '랑콤 제니피끄 세럼 20ml'), NOW(), NOW()),
(49500, 'SALE', (SELECT id FROM product WHERE name = '랑콤 제니피끄 세럼 20ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022920118ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '랑콤 제니피끄 세럼 20ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022920119ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '랑콤 제니피끄 세럼 20ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022920103ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '랑콤 제니피끄 세럼 20ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022920104ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '랑콤 제니피끄 세럼 20ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022920105ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '랑콤 제니피끄 세럼 20ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022920106ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '랑콤 제니피끄 세럼 20ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '랑콤 제니피끄 세럼 20ml';


-- ================================



-- ================================

-- 상품: [NEW/단독기획] 숨37 시크릿 에센스 기획 (30ml/80ml/50ml+50ml리필)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW/단독기획] 숨37 시크릿 에센스 기획 (30ml/80ml/50ml+50ml리필)',
 '[NEW/단독기획] 숨37 시크릿 에센스 기획 (30ml/80ml/50ml+50ml리필)',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '숨37'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[단독기획]30ml(+세럼10+크림10)', 23500, (SELECT id FROM product WHERE name = '[NEW/단독기획] 숨37 시크릿 에센스 기획 (30ml/80ml/50ml+50ml리필)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[단독기획]30ml(+에센스12ml)', 23500, (SELECT id FROM product WHERE name = '[NEW/단독기획] 숨37 시크릿 에센스 기획 (30ml/80ml/50ml+50ml리필)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[기획]50ml스포이드형(+50ml리필)', 50900, (SELECT id FROM product WHERE name = '[NEW/단독기획] 숨37 시크릿 에센스 기획 (30ml/80ml/50ml+50ml리필)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[기획]80ml(+세럼+크림+아이크림+폼', 60900, (SELECT id FROM product WHERE name = '[NEW/단독기획] 숨37 시크릿 에센스 기획 (30ml/80ml/50ml+50ml리필)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW/단독기획] 숨37 시크릿 에센스 기획 (30ml/80ml/50ml+50ml리필)'), NOW(), NOW()),
(23500, 'SALE', (SELECT id FROM product WHERE name = '[NEW/단독기획] 숨37 시크릿 에센스 기획 (30ml/80ml/50ml+50ml리필)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020436620ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW/단독기획] 숨37 시크릿 에센스 기획 (30ml/80ml/50ml+50ml리필)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020436621ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW/단독기획] 숨37 시크릿 에센스 기획 (30ml/80ml/50ml+50ml리필)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020436617ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW/단독기획] 숨37 시크릿 에센스 기획 (30ml/80ml/50ml+50ml리필)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020436618ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[NEW/단독기획] 숨37 시크릿 에센스 기획 (30ml/80ml/50ml+50ml리필)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020436604ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[NEW/단독기획] 숨37 시크릿 에센스 기획 (30ml/80ml/50ml+50ml리필)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020436616ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[NEW/단독기획] 숨37 시크릿 에센스 기획 (30ml/80ml/50ml+50ml리필)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW/단독기획] 숨37 시크릿 에센스 기획 (30ml/80ml/50ml+50ml리필)';


-- ================================



-- ================================

-- 상품: [한정수량] 쏘내추럴 올 데이 페이스 프렙 픽서 30ml 기획 (+픽서 35ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[한정수량] 쏘내추럴 올 데이 페이스 프렙 픽서 30ml 기획 (+픽서 35ml)',
 '[한정수량] 쏘내추럴 올 데이 페이스 프렙 픽서 30ml 기획 (+픽서 35ml)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '쏘내추럴'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[한정수량] 쏘내추럴 올 데이 페이스 프렙 픽서 30ml 기획 (+픽서 35ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[한정수량] 쏘내추럴 올 데이 페이스 프렙 픽서 30ml 기획 (+픽서 35ml)'), NOW(), NOW()),
(23400, 'SALE', (SELECT id FROM product WHERE name = '[한정수량] 쏘내추럴 올 데이 페이스 프렙 픽서 30ml 기획 (+픽서 35ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023240409ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[한정수량] 쏘내추럴 올 데이 페이스 프렙 픽서 30ml 기획 (+픽서 35ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023240410ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[한정수량] 쏘내추럴 올 데이 페이스 프렙 픽서 30ml 기획 (+픽서 35ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023240411ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[한정수량] 쏘내추럴 올 데이 페이스 프렙 픽서 30ml 기획 (+픽서 35ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023240412ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[한정수량] 쏘내추럴 올 데이 페이스 프렙 픽서 30ml 기획 (+픽서 35ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023240404ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[한정수량] 쏘내추럴 올 데이 페이스 프렙 픽서 30ml 기획 (+픽서 35ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[한정수량] 쏘내추럴 올 데이 페이스 프렙 픽서 30ml 기획 (+픽서 35ml)';


-- ================================



-- ================================

-- 상품: [기미잡티케어] 센텔리안24 마데카 멜라 캡처 앰플 맥스 15ml 2입 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[기미잡티케어] 센텔리안24 마데카 멜라 캡처 앰플 맥스 15ml 2입 기획',
 '[기미잡티케어] 센텔리안24 마데카 멜라 캡처 앰플 맥스 15ml 2입 기획',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '센텔리안24'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[기미잡티케어] 센텔리안24 마데카 멜라 캡처 앰플 맥스 15ml 2입 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(48000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[기미잡티케어] 센텔리안24 마데카 멜라 캡처 앰플 맥스 15ml 2입 기획'), NOW(), NOW()),
(48000, 'SALE', (SELECT id FROM product WHERE name = '[기미잡티케어] 센텔리안24 마데카 멜라 캡처 앰플 맥스 15ml 2입 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019179812ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[기미잡티케어] 센텔리안24 마데카 멜라 캡처 앰플 맥스 15ml 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019179805ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[기미잡티케어] 센텔리안24 마데카 멜라 캡처 앰플 맥스 15ml 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019179801ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[기미잡티케어] 센텔리안24 마데카 멜라 캡처 앰플 맥스 15ml 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019179803ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[기미잡티케어] 센텔리안24 마데카 멜라 캡처 앰플 맥스 15ml 2입 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[기미잡티케어] 센텔리안24 마데카 멜라 캡처 앰플 맥스 15ml 2입 기획';


-- ================================



-- ================================

-- 상품: [1+1/유리알속광] 차앤박 프로폴리스 에너지 액티브 앰플 30ml 더블기획(2개입)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[1+1/유리알속광] 차앤박 프로폴리스 에너지 액티브 앰플 30ml 더블기획(2개입)',
 '[1+1/유리알속광] 차앤박 프로폴리스 에너지 액티브 앰플 30ml 더블기획(2개입)',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '차앤박'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[1+1/유리알속광] 차앤박 프로폴리스 에너지 액티브 앰플 30ml 더블기획(2개입)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(48000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1+1/유리알속광] 차앤박 프로폴리스 에너지 액티브 앰플 30ml 더블기획(2개입)'), NOW(), NOW()),
(48000, 'SALE', (SELECT id FROM product WHERE name = '[1+1/유리알속광] 차앤박 프로폴리스 에너지 액티브 앰플 30ml 더블기획(2개입)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022560226ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[1+1/유리알속광] 차앤박 프로폴리스 에너지 액티브 앰플 30ml 더블기획(2개입)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022560215ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[1+1/유리알속광] 차앤박 프로폴리스 에너지 액티브 앰플 30ml 더블기획(2개입)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022560203ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[1+1/유리알속광] 차앤박 프로폴리스 에너지 액티브 앰플 30ml 더블기획(2개입)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022560216ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[1+1/유리알속광] 차앤박 프로폴리스 에너지 액티브 앰플 30ml 더블기획(2개입)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[1+1/유리알속광] 차앤박 프로폴리스 에너지 액티브 앰플 30ml 더블기획(2개입)';


-- ================================



-- ================================

-- 상품: [톤업앰플] 코스알엑스 순수비타민C 23 세럼 20g...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[톤업앰플] 코스알엑스 순수비타민C 23 세럼 20g',
 '[톤업앰플] 코스알엑스 순수비타민C 23 세럼 20g',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '코스알엑스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('더 비타민C23 세럼 단품', 23000, (SELECT id FROM product WHERE name = '[톤업앰플] 코스알엑스 순수비타민C 23 세럼 20g'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('더 비타민C23 세럼 더블기획', 0, (SELECT id FROM product WHERE name = '[톤업앰플] 코스알엑스 순수비타민C 23 세럼 20g'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[톤업앰플] 코스알엑스 순수비타민C 23 세럼 20g'), NOW(), NOW()),
(23000, 'SALE', (SELECT id FROM product WHERE name = '[톤업앰플] 코스알엑스 순수비타민C 23 세럼 20g'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020407231ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[톤업앰플] 코스알엑스 순수비타민C 23 세럼 20g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020407232ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[톤업앰플] 코스알엑스 순수비타민C 23 세럼 20g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020407233ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[톤업앰플] 코스알엑스 순수비타민C 23 세럼 20g'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[톤업앰플] 코스알엑스 순수비타민C 23 세럼 20g';


-- ================================



-- ================================

-- 상품: [흔적앰플] 바이오힐 보 판테셀 리페어 시카좀 앰플 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[흔적앰플] 바이오힐 보 판테셀 리페어 시카좀 앰플 30ml',
 '[흔적앰플] 바이오힐 보 판테셀 리페어 시카좀 앰플 30ml',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오힐보'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[흔적앰플] 바이오힐 보 판테셀 리페어 시카좀 앰플 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[흔적앰플] 바이오힐 보 판테셀 리페어 시카좀 앰플 30ml'), NOW(), NOW()),
(23000, 'SALE', (SELECT id FROM product WHERE name = '[흔적앰플] 바이오힐 보 판테셀 리페어 시카좀 앰플 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022448802ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[흔적앰플] 바이오힐 보 판테셀 리페어 시카좀 앰플 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022448805ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[흔적앰플] 바이오힐 보 판테셀 리페어 시카좀 앰플 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022448804ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[흔적앰플] 바이오힐 보 판테셀 리페어 시카좀 앰플 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[흔적앰플] 바이오힐 보 판테셀 리페어 시카좀 앰플 30ml';


-- ================================



-- ================================

-- 상품: [1+1] 메디힐 비타민씨 브라이트닝 세럼 40+40ml 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[1+1] 메디힐 비타민씨 브라이트닝 세럼 40+40ml 기획',
 '[1+1] 메디힐 비타민씨 브라이트닝 세럼 40+40ml 기획',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '메디힐'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[1+1] 메디힐 비타민씨 브라이트닝 세럼 40+40ml 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(36900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1+1] 메디힐 비타민씨 브라이트닝 세럼 40+40ml 기획'), NOW(), NOW()),
(22900, 'SALE', (SELECT id FROM product WHERE name = '[1+1] 메디힐 비타민씨 브라이트닝 세럼 40+40ml 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021361828ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[1+1] 메디힐 비타민씨 브라이트닝 세럼 40+40ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021361826ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[1+1] 메디힐 비타민씨 브라이트닝 세럼 40+40ml 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[1+1] 메디힐 비타민씨 브라이트닝 세럼 40+40ml 기획';


-- ================================



-- ================================

-- 상품: [리뷰이벤트] 나노레시피 바쿠치올 10,000ppm 앰플 10ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[리뷰이벤트] 나노레시피 바쿠치올 10,000ppm 앰플 10ml',
 '[리뷰이벤트] 나노레시피 바쿠치올 10,000ppm 앰플 10ml',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '나노레시피'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[리뷰이벤트] 나노레시피 바쿠치올 10,000ppm 앰플 10ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(10800, 'ORIGINAL', (SELECT id FROM product WHERE name = '[리뷰이벤트] 나노레시피 바쿠치올 10,000ppm 앰플 10ml'), NOW(), NOW()),
(8170, 'SALE', (SELECT id FROM product WHERE name = '[리뷰이벤트] 나노레시피 바쿠치올 10,000ppm 앰플 10ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023296302ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[리뷰이벤트] 나노레시피 바쿠치올 10,000ppm 앰플 10ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023296301ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[리뷰이벤트] 나노레시피 바쿠치올 10,000ppm 앰플 10ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[리뷰이벤트] 나노레시피 바쿠치올 10,000ppm 앰플 10ml';


-- ================================



-- ================================

-- 상품: [추석쇼핑백+앰플9ml증정][이수향 PICK/대한민국 갈색병] 코스메쉐프 흑당고 진액 영양...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[추석쇼핑백+앰플9ml증정][이수향 PICK/대한민국 갈색병] 코스메쉐프 흑당고 진액 영양 주름앰플 30ml_흑당고앰플',
 '[추석쇼핑백+앰플9ml증정][이수향 PICK/대한민국 갈색병] 코스메쉐프 흑당고 진액 영양 주름앰플 30ml_흑당고앰플',
 5.0,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '코스메쉐프'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[추석쇼핑백+앰플9ml증정][이수향 PICK/대한민국 갈색병] 코스메쉐프 흑당고 진액 영양 주름앰플 30ml_흑당고앰플'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(72000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[추석쇼핑백+앰플9ml증정][이수향 PICK/대한민국 갈색병] 코스메쉐프 흑당고 진액 영양 주름앰플 30ml_흑당고앰플'), NOW(), NOW()),
(46460, 'SALE', (SELECT id FROM product WHERE name = '[추석쇼핑백+앰플9ml증정][이수향 PICK/대한민국 갈색병] 코스메쉐프 흑당고 진액 영양 주름앰플 30ml_흑당고앰플'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022889510ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[추석쇼핑백+앰플9ml증정][이수향 PICK/대한민국 갈색병] 코스메쉐프 흑당고 진액 영양 주름앰플 30ml_흑당고앰플'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022889502ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[추석쇼핑백+앰플9ml증정][이수향 PICK/대한민국 갈색병] 코스메쉐프 흑당고 진액 영양 주름앰플 30ml_흑당고앰플'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022889503ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[추석쇼핑백+앰플9ml증정][이수향 PICK/대한민국 갈색병] 코스메쉐프 흑당고 진액 영양 주름앰플 30ml_흑당고앰플'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[추석쇼핑백+앰플9ml증정][이수향 PICK/대한민국 갈색병] 코스메쉐프 흑당고 진액 영양 주름앰플 30ml_흑당고앰플';


-- ================================



-- ================================

-- 상품: 주미소 디판테놀 베리어 장벽세럼 70ml(+크림20ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('주미소 디판테놀 베리어 장벽세럼 70ml(+크림20ml)',
 '주미소 디판테놀 베리어 장벽세럼 70ml(+크림20ml)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '주미소'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '주미소 디판테놀 베리어 장벽세럼 70ml(+크림20ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '주미소 디판테놀 베리어 장벽세럼 70ml(+크림20ml)'), NOW(), NOW()),
(22400, 'SALE', (SELECT id FROM product WHERE name = '주미소 디판테놀 베리어 장벽세럼 70ml(+크림20ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023145304ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '주미소 디판테놀 베리어 장벽세럼 70ml(+크림20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023145303ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '주미소 디판테놀 베리어 장벽세럼 70ml(+크림20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023145302ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '주미소 디판테놀 베리어 장벽세럼 70ml(+크림20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023145301ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '주미소 디판테놀 베리어 장벽세럼 70ml(+크림20ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '주미소 디판테놀 베리어 장벽세럼 70ml(+크림20ml)';


-- ================================



-- ================================

-- 상품: 라로슈포제 에빠끌라 세럼 30ml 기획 (에빠끌라 폼 15ml+유비 톤업 클리어 3ml 증...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('라로슈포제 에빠끌라 세럼 30ml 기획 (에빠끌라 폼 15ml+유비 톤업 클리어 3ml 증정)',
 '라로슈포제 에빠끌라 세럼 30ml 기획 (에빠끌라 폼 15ml+유비 톤업 클리어 3ml 증정)',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라로슈포제'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[기획] 에빠세럼30ml+증정', 45000, (SELECT id FROM product WHERE name = '라로슈포제 에빠끌라 세럼 30ml 기획 (에빠끌라 폼 15ml+유비 톤업 클리어 3ml 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(50000, 'ORIGINAL', (SELECT id FROM product WHERE name = '라로슈포제 에빠끌라 세럼 30ml 기획 (에빠끌라 폼 15ml+유비 톤업 클리어 3ml 증정)'), NOW(), NOW()),
(45000, 'SALE', (SELECT id FROM product WHERE name = '라로슈포제 에빠끌라 세럼 30ml 기획 (에빠끌라 폼 15ml+유비 톤업 클리어 3ml 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021904808ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '라로슈포제 에빠끌라 세럼 30ml 기획 (에빠끌라 폼 15ml+유비 톤업 클리어 3ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021904801ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '라로슈포제 에빠끌라 세럼 30ml 기획 (에빠끌라 폼 15ml+유비 톤업 클리어 3ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021904803ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '라로슈포제 에빠끌라 세럼 30ml 기획 (에빠끌라 폼 15ml+유비 톤업 클리어 3ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021904802ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '라로슈포제 에빠끌라 세럼 30ml 기획 (에빠끌라 폼 15ml+유비 톤업 클리어 3ml 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '라로슈포제 에빠끌라 세럼 30ml 기획 (에빠끌라 폼 15ml+유비 톤업 클리어 3ml 증정)';


-- ================================



-- ================================

-- 상품: [총 120ml 대용량 / 데일리세럼] 오어스 히알루론시카 7초 세럼 인 앰플 105ml ...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[총 120ml 대용량 / 데일리세럼] 오어스 히알루론시카 7초 세럼 인 앰플 105ml 기획(+15ml)',
 '[총 120ml 대용량 / 데일리세럼] 오어스 히알루론시카 7초 세럼 인 앰플 105ml 기획(+15ml)',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '오어스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[총 120ml 대용량 / 데일리세럼] 오어스 히알루론시카 7초 세럼 인 앰플 105ml 기획(+15ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(27000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[총 120ml 대용량 / 데일리세럼] 오어스 히알루론시카 7초 세럼 인 앰플 105ml 기획(+15ml)'), NOW(), NOW()),
(21600, 'SALE', (SELECT id FROM product WHERE name = '[총 120ml 대용량 / 데일리세럼] 오어스 히알루론시카 7초 세럼 인 앰플 105ml 기획(+15ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020035353ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[총 120ml 대용량 / 데일리세럼] 오어스 히알루론시카 7초 세럼 인 앰플 105ml 기획(+15ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020035346ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[총 120ml 대용량 / 데일리세럼] 오어스 히알루론시카 7초 세럼 인 앰플 105ml 기획(+15ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020035344ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[총 120ml 대용량 / 데일리세럼] 오어스 히알루론시카 7초 세럼 인 앰플 105ml 기획(+15ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020035343ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[총 120ml 대용량 / 데일리세럼] 오어스 히알루론시카 7초 세럼 인 앰플 105ml 기획(+15ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020035345ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[총 120ml 대용량 / 데일리세럼] 오어스 히알루론시카 7초 세럼 인 앰플 105ml 기획(+15ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[총 120ml 대용량 / 데일리세럼] 오어스 히알루론시카 7초 세럼 인 앰플 105ml 기획(+15ml)';


-- ================================



-- ================================

-- 상품: [모공PDRN/모공리프팅]리쥬란 더마 힐러 포어 타이트닝 앰플 30ml 한정수량 기획(+앰...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[모공PDRN/모공리프팅]리쥬란 더마 힐러 포어 타이트닝 앰플 30ml 한정수량 기획(+앰플10ml+패드 2매*5ea)',
 '[모공PDRN/모공리프팅]리쥬란 더마 힐러 포어 타이트닝 앰플 30ml 한정수량 기획(+앰플10ml+패드 2매*5ea)',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '리쥬란'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('앰플30ml(앰플10ml+토너패드10매)', 25940, (SELECT id FROM product WHERE name = '[모공PDRN/모공리프팅]리쥬란 더마 힐러 포어 타이트닝 앰플 30ml 한정수량 기획(+앰플10ml+패드 2매*5ea)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('앰플30ml(앰플10ml+토너패드4매)', 27300, (SELECT id FROM product WHERE name = '[모공PDRN/모공리프팅]리쥬란 더마 힐러 포어 타이트닝 앰플 30ml 한정수량 기획(+앰플10ml+패드 2매*5ea)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('더마 힐러 포어 타이트닝 앰플30ml', 27300, (SELECT id FROM product WHERE name = '[모공PDRN/모공리프팅]리쥬란 더마 힐러 포어 타이트닝 앰플 30ml 한정수량 기획(+앰플10ml+패드 2매*5ea)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(47000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[모공PDRN/모공리프팅]리쥬란 더마 힐러 포어 타이트닝 앰플 30ml 한정수량 기획(+앰플10ml+패드 2매*5ea)'), NOW(), NOW()),
(25940, 'SALE', (SELECT id FROM product WHERE name = '[모공PDRN/모공리프팅]리쥬란 더마 힐러 포어 타이트닝 앰플 30ml 한정수량 기획(+앰플10ml+패드 2매*5ea)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023211705ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[모공PDRN/모공리프팅]리쥬란 더마 힐러 포어 타이트닝 앰플 30ml 한정수량 기획(+앰플10ml+패드 2매*5ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023211702ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[모공PDRN/모공리프팅]리쥬란 더마 힐러 포어 타이트닝 앰플 30ml 한정수량 기획(+앰플10ml+패드 2매*5ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023211706ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[모공PDRN/모공리프팅]리쥬란 더마 힐러 포어 타이트닝 앰플 30ml 한정수량 기획(+앰플10ml+패드 2매*5ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023211703ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[모공PDRN/모공리프팅]리쥬란 더마 힐러 포어 타이트닝 앰플 30ml 한정수량 기획(+앰플10ml+패드 2매*5ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023211704ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[모공PDRN/모공리프팅]리쥬란 더마 힐러 포어 타이트닝 앰플 30ml 한정수량 기획(+앰플10ml+패드 2매*5ea)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[모공PDRN/모공리프팅]리쥬란 더마 힐러 포어 타이트닝 앰플 30ml 한정수량 기획(+앰플10ml+패드 2매*5ea)';


-- ================================



-- ================================

-- 상품: [급속모공교정] 바이오힐 보 프로바이오덤 콜라겐 리모델링 딥샷 세럼 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[급속모공교정] 바이오힐 보 프로바이오덤 콜라겐 리모델링 딥샷 세럼 30ml',
 '[급속모공교정] 바이오힐 보 프로바이오덤 콜라겐 리모델링 딥샷 세럼 30ml',
 4.6,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오힐보'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[급속모공교정] 바이오힐 보 프로바이오덤 콜라겐 리모델링 딥샷 세럼 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(34000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[급속모공교정] 바이오힐 보 프로바이오덤 콜라겐 리모델링 딥샷 세럼 30ml'), NOW(), NOW()),
(23800, 'SALE', (SELECT id FROM product WHERE name = '[급속모공교정] 바이오힐 보 프로바이오덤 콜라겐 리모델링 딥샷 세럼 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021073405ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[급속모공교정] 바이오힐 보 프로바이오덤 콜라겐 리모델링 딥샷 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021073406ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[급속모공교정] 바이오힐 보 프로바이오덤 콜라겐 리모델링 딥샷 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021073404ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[급속모공교정] 바이오힐 보 프로바이오덤 콜라겐 리모델링 딥샷 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021073403ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[급속모공교정] 바이오힐 보 프로바이오덤 콜라겐 리모델링 딥샷 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021073402ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[급속모공교정] 바이오힐 보 프로바이오덤 콜라겐 리모델링 딥샷 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021073401ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[급속모공교정] 바이오힐 보 프로바이오덤 콜라겐 리모델링 딥샷 세럼 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[급속모공교정] 바이오힐 보 프로바이오덤 콜라겐 리모델링 딥샷 세럼 30ml';


-- ================================



-- ================================

-- 상품: [국내 유일 특허 c-PDRN] 리쥬란 힐러 턴오버 앰플 듀얼 이펙트 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[국내 유일 특허 c-PDRN] 리쥬란 힐러 턴오버 앰플 듀얼 이펙트 30ml',
 '[국내 유일 특허 c-PDRN] 리쥬란 힐러 턴오버 앰플 듀얼 이펙트 30ml',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '리쥬란'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[국내 유일 특허 c-PDRN] 리쥬란 힐러 턴오버 앰플 듀얼 이펙트 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(59000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[국내 유일 특허 c-PDRN] 리쥬란 힐러 턴오버 앰플 듀얼 이펙트 30ml'), NOW(), NOW()),
(49100, 'SALE', (SELECT id FROM product WHERE name = '[국내 유일 특허 c-PDRN] 리쥬란 힐러 턴오버 앰플 듀얼 이펙트 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016421030ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[국내 유일 특허 c-PDRN] 리쥬란 힐러 턴오버 앰플 듀얼 이펙트 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016421024ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[국내 유일 특허 c-PDRN] 리쥬란 힐러 턴오버 앰플 듀얼 이펙트 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016421029ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[국내 유일 특허 c-PDRN] 리쥬란 힐러 턴오버 앰플 듀얼 이펙트 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[국내 유일 특허 c-PDRN] 리쥬란 힐러 턴오버 앰플 듀얼 이펙트 30ml';


-- ================================



-- ================================

-- 상품: [채서안PICK/3일잡티세럼] 아비브 글루타치온좀 잡티 세럼 비타 드롭 50ml 기획 (+...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[채서안PICK/3일잡티세럼] 아비브 글루타치온좀 잡티 세럼 비타 드롭 50ml 기획 (+20ml)',
 '[채서안PICK/3일잡티세럼] 아비브 글루타치온좀 잡티 세럼 비타 드롭 50ml 기획 (+20ml)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아비브'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[채서안PICK/3일잡티세럼] 아비브 글루타치온좀 잡티 세럼 비타 드롭 50ml 기획 (+20ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[채서안PICK/3일잡티세럼] 아비브 글루타치온좀 잡티 세럼 비타 드롭 50ml 기획 (+20ml)'), NOW(), NOW()),
(22400, 'SALE', (SELECT id FROM product WHERE name = '[채서안PICK/3일잡티세럼] 아비브 글루타치온좀 잡티 세럼 비타 드롭 50ml 기획 (+20ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021955007ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[채서안PICK/3일잡티세럼] 아비브 글루타치온좀 잡티 세럼 비타 드롭 50ml 기획 (+20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021955006ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[채서안PICK/3일잡티세럼] 아비브 글루타치온좀 잡티 세럼 비타 드롭 50ml 기획 (+20ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[채서안PICK/3일잡티세럼] 아비브 글루타치온좀 잡티 세럼 비타 드롭 50ml 기획 (+20ml)';


-- ================================



-- ================================

-- 상품: [민감진정세럼] 유리아쥬 시카 데일리 인텐스 리페어 세럼 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[민감진정세럼] 유리아쥬 시카 데일리 인텐스 리페어 세럼 30ml',
 '[민감진정세럼] 유리아쥬 시카 데일리 인텐스 리페어 세럼 30ml',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유리아쥬'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[민감진정세럼] 유리아쥬 시카 데일리 인텐스 리페어 세럼 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(44000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[민감진정세럼] 유리아쥬 시카 데일리 인텐스 리페어 세럼 30ml'), NOW(), NOW()),
(44000, 'SALE', (SELECT id FROM product WHERE name = '[민감진정세럼] 유리아쥬 시카 데일리 인텐스 리페어 세럼 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021432309ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[민감진정세럼] 유리아쥬 시카 데일리 인텐스 리페어 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021432304ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[민감진정세럼] 유리아쥬 시카 데일리 인텐스 리페어 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021432303ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[민감진정세럼] 유리아쥬 시카 데일리 인텐스 리페어 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021432302ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[민감진정세럼] 유리아쥬 시카 데일리 인텐스 리페어 세럼 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[민감진정세럼] 유리아쥬 시카 데일리 인텐스 리페어 세럼 30ml';


-- ================================



-- ================================

-- 상품: [흔적미백] 넘버즈인 5번 글루타치온C 흔적 앰플 30ml+30ml 듀오기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[흔적미백] 넘버즈인 5번 글루타치온C 흔적 앰플 30ml+30ml 듀오기획',
 '[흔적미백] 넘버즈인 5번 글루타치온C 흔적 앰플 30ml+30ml 듀오기획',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '넘버즈인'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[흔적미백] 넘버즈인 5번 글루타치온C 흔적 앰플 30ml+30ml 듀오기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(46000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[흔적미백] 넘버즈인 5번 글루타치온C 흔적 앰플 30ml+30ml 듀오기획'), NOW(), NOW()),
(46000, 'SALE', (SELECT id FROM product WHERE name = '[흔적미백] 넘버즈인 5번 글루타치온C 흔적 앰플 30ml+30ml 듀오기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018983715ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[흔적미백] 넘버즈인 5번 글루타치온C 흔적 앰플 30ml+30ml 듀오기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018983714ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[흔적미백] 넘버즈인 5번 글루타치온C 흔적 앰플 30ml+30ml 듀오기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018983703ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[흔적미백] 넘버즈인 5번 글루타치온C 흔적 앰플 30ml+30ml 듀오기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018983705ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[흔적미백] 넘버즈인 5번 글루타치온C 흔적 앰플 30ml+30ml 듀오기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018983706ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[흔적미백] 넘버즈인 5번 글루타치온C 흔적 앰플 30ml+30ml 듀오기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018983712ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[흔적미백] 넘버즈인 5번 글루타치온C 흔적 앰플 30ml+30ml 듀오기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[흔적미백] 넘버즈인 5번 글루타치온C 흔적 앰플 30ml+30ml 듀오기획';


-- ================================



-- ================================

-- 상품: [리뷰이벤트] 더마팩토리 EGF 앰플 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[리뷰이벤트] 더마팩토리 EGF 앰플 30ml',
 '[리뷰이벤트] 더마팩토리 EGF 앰플 30ml',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더마팩토리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 EGF 앰플 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(46000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 EGF 앰플 30ml'), NOW(), NOW()),
(43700, 'SALE', (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 EGF 앰플 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022825306ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 EGF 앰플 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022825304ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 EGF 앰플 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022825303ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 EGF 앰플 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022825302ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 EGF 앰플 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022825301ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 EGF 앰플 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[리뷰이벤트] 더마팩토리 EGF 앰플 30ml';


-- ================================



-- ================================

-- 상품: [1+1 잡티미백앰플] 아떼 멜레이저 프로그래밍 앰플 듀오기획/단품...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[1+1 잡티미백앰플] 아떼 멜레이저 프로그래밍 앰플 듀오기획/단품',
 '[1+1 잡티미백앰플] 아떼 멜레이저 프로그래밍 앰플 듀오기획/단품',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아떼'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('앰플 단품', 23240, (SELECT id FROM product WHERE name = '[1+1 잡티미백앰플] 아떼 멜레이저 프로그래밍 앰플 듀오기획/단품'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('앰플 2입 기획', 42560, (SELECT id FROM product WHERE name = '[1+1 잡티미백앰플] 아떼 멜레이저 프로그래밍 앰플 듀오기획/단품'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1+1 잡티미백앰플] 아떼 멜레이저 프로그래밍 앰플 듀오기획/단품'), NOW(), NOW()),
(23240, 'SALE', (SELECT id FROM product WHERE name = '[1+1 잡티미백앰플] 아떼 멜레이저 프로그래밍 앰플 듀오기획/단품'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022484518ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[1+1 잡티미백앰플] 아떼 멜레이저 프로그래밍 앰플 듀오기획/단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022484515ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[1+1 잡티미백앰플] 아떼 멜레이저 프로그래밍 앰플 듀오기획/단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022484516ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[1+1 잡티미백앰플] 아떼 멜레이저 프로그래밍 앰플 듀오기획/단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022484505ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[1+1 잡티미백앰플] 아떼 멜레이저 프로그래밍 앰플 듀오기획/단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022484504ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[1+1 잡티미백앰플] 아떼 멜레이저 프로그래밍 앰플 듀오기획/단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022484503ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[1+1 잡티미백앰플] 아떼 멜레이저 프로그래밍 앰플 듀오기획/단품'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[1+1 잡티미백앰플] 아떼 멜레이저 프로그래밍 앰플 듀오기획/단품';


-- ================================



-- ================================

-- 상품: [1+1 급속모공앰플] 아떼 포어셀 프로그래밍 앰플 듀오 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[1+1 급속모공앰플] 아떼 포어셀 프로그래밍 앰플 듀오 기획',
 '[1+1 급속모공앰플] 아떼 포어셀 프로그래밍 앰플 듀오 기획',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아떼'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('앰플 단품', 23240, (SELECT id FROM product WHERE name = '[1+1 급속모공앰플] 아떼 포어셀 프로그래밍 앰플 듀오 기획'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('앰플 2입 기획', 42560, (SELECT id FROM product WHERE name = '[1+1 급속모공앰플] 아떼 포어셀 프로그래밍 앰플 듀오 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1+1 급속모공앰플] 아떼 포어셀 프로그래밍 앰플 듀오 기획'), NOW(), NOW()),
(23240, 'SALE', (SELECT id FROM product WHERE name = '[1+1 급속모공앰플] 아떼 포어셀 프로그래밍 앰플 듀오 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022584517ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[1+1 급속모공앰플] 아떼 포어셀 프로그래밍 앰플 듀오 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022584514ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[1+1 급속모공앰플] 아떼 포어셀 프로그래밍 앰플 듀오 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022584515ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[1+1 급속모공앰플] 아떼 포어셀 프로그래밍 앰플 듀오 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022584507ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[1+1 급속모공앰플] 아떼 포어셀 프로그래밍 앰플 듀오 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022584504ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[1+1 급속모공앰플] 아떼 포어셀 프로그래밍 앰플 듀오 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022584503ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[1+1 급속모공앰플] 아떼 포어셀 프로그래밍 앰플 듀오 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[1+1 급속모공앰플] 아떼 포어셀 프로그래밍 앰플 듀오 기획';


-- ================================



-- ================================

-- 상품: [트러블/과잉피지완화]앰플엔 아크네샷 앰플 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[트러블/과잉피지완화]앰플엔 아크네샷 앰플 30ml',
 '[트러블/과잉피지완화]앰플엔 아크네샷 앰플 30ml',
 4.6,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '앰플엔'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[트러블/과잉피지완화]앰플엔 아크네샷 앰플 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(15900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[트러블/과잉피지완화]앰플엔 아크네샷 앰플 30ml'), NOW(), NOW()),
(12900, 'SALE', (SELECT id FROM product WHERE name = '[트러블/과잉피지완화]앰플엔 아크네샷 앰플 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020687410ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[트러블/과잉피지완화]앰플엔 아크네샷 앰플 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020687407ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[트러블/과잉피지완화]앰플엔 아크네샷 앰플 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020687403ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[트러블/과잉피지완화]앰플엔 아크네샷 앰플 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[트러블/과잉피지완화]앰플엔 아크네샷 앰플 30ml';


-- ================================



-- ================================

-- 상품: [단독기획/나비존케어] 파티온 노스카나인 트러블 모공탄력 세럼 20ml 기획(+5ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[단독기획/나비존케어] 파티온 노스카나인 트러블 모공탄력 세럼 20ml 기획(+5ml)',
 '[단독기획/나비존케어] 파티온 노스카나인 트러블 모공탄력 세럼 20ml 기획(+5ml)',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '파티온'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[단독기획/나비존케어] 파티온 노스카나인 트러블 모공탄력 세럼 20ml 기획(+5ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(20000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독기획/나비존케어] 파티온 노스카나인 트러블 모공탄력 세럼 20ml 기획(+5ml)'), NOW(), NOW()),
(20000, 'SALE', (SELECT id FROM product WHERE name = '[단독기획/나비존케어] 파티온 노스카나인 트러블 모공탄력 세럼 20ml 기획(+5ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021028707ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[단독기획/나비존케어] 파티온 노스카나인 트러블 모공탄력 세럼 20ml 기획(+5ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021028709ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[단독기획/나비존케어] 파티온 노스카나인 트러블 모공탄력 세럼 20ml 기획(+5ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021028708ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[단독기획/나비존케어] 파티온 노스카나인 트러블 모공탄력 세럼 20ml 기획(+5ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[단독기획/나비존케어] 파티온 노스카나인 트러블 모공탄력 세럼 20ml 기획(+5ml)';


-- ================================



-- ================================

-- 상품: [수분광] 메디필 히알루론산 레이어 물톡스 앰플 더블 기획 30ml+30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분광] 메디필 히알루론산 레이어 물톡스 앰플 더블 기획 30ml+30ml',
 '[수분광] 메디필 히알루론산 레이어 물톡스 앰플 더블 기획 30ml+30ml',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '메디필'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분광] 메디필 히알루론산 레이어 물톡스 앰플 더블 기획 30ml+30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(34000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분광] 메디필 히알루론산 레이어 물톡스 앰플 더블 기획 30ml+30ml'), NOW(), NOW()),
(19800, 'SALE', (SELECT id FROM product WHERE name = '[수분광] 메디필 히알루론산 레이어 물톡스 앰플 더블 기획 30ml+30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018976925ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분광] 메디필 히알루론산 레이어 물톡스 앰플 더블 기획 30ml+30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018976917ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분광] 메디필 히알루론산 레이어 물톡스 앰플 더블 기획 30ml+30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018976916ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분광] 메디필 히알루론산 레이어 물톡스 앰플 더블 기획 30ml+30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018976918ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[수분광] 메디필 히알루론산 레이어 물톡스 앰플 더블 기획 30ml+30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분광] 메디필 히알루론산 레이어 물톡스 앰플 더블 기획 30ml+30ml';


-- ================================



-- ================================

-- 상품: [단독기획/추가증정] 셀리맥스 브라이트닝 모공잡티 세럼 30ml 기획(+10ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[단독기획/추가증정] 셀리맥스 브라이트닝 모공잡티 세럼 30ml 기획(+10ml)',
 '[단독기획/추가증정] 셀리맥스 브라이트닝 모공잡티 세럼 30ml 기획(+10ml)',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '셀리맥스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[단독기획/추가증정] 셀리맥스 브라이트닝 모공잡티 세럼 30ml 기획(+10ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(22000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독기획/추가증정] 셀리맥스 브라이트닝 모공잡티 세럼 30ml 기획(+10ml)'), NOW(), NOW()),
(19800, 'SALE', (SELECT id FROM product WHERE name = '[단독기획/추가증정] 셀리맥스 브라이트닝 모공잡티 세럼 30ml 기획(+10ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021894807ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[단독기획/추가증정] 셀리맥스 브라이트닝 모공잡티 세럼 30ml 기획(+10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021894803ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[단독기획/추가증정] 셀리맥스 브라이트닝 모공잡티 세럼 30ml 기획(+10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021894802ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[단독기획/추가증정] 셀리맥스 브라이트닝 모공잡티 세럼 30ml 기획(+10ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[단독기획/추가증정] 셀리맥스 브라이트닝 모공잡티 세럼 30ml 기획(+10ml)';


-- ================================



-- ================================

-- 상품: [수분진정/단독기획] 메이크프렘 히알 인테카 속수분 앰플 40ml 기획(+리필 40ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분진정/단독기획] 메이크프렘 히알 인테카 속수분 앰플 40ml 기획(+리필 40ml)',
 '[수분진정/단독기획] 메이크프렘 히알 인테카 속수분 앰플 40ml 기획(+리필 40ml)',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '메이크프렘'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분진정/단독기획] 메이크프렘 히알 인테카 속수분 앰플 40ml 기획(+리필 40ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분진정/단독기획] 메이크프렘 히알 인테카 속수분 앰플 40ml 기획(+리필 40ml)'), NOW(), NOW()),
(19800, 'SALE', (SELECT id FROM product WHERE name = '[수분진정/단독기획] 메이크프렘 히알 인테카 속수분 앰플 40ml 기획(+리필 40ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022561658ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분진정/단독기획] 메이크프렘 히알 인테카 속수분 앰플 40ml 기획(+리필 40ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022561655ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분진정/단독기획] 메이크프렘 히알 인테카 속수분 앰플 40ml 기획(+리필 40ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022561656ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분진정/단독기획] 메이크프렘 히알 인테카 속수분 앰플 40ml 기획(+리필 40ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022561654ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[수분진정/단독기획] 메이크프렘 히알 인테카 속수분 앰플 40ml 기획(+리필 40ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분진정/단독기획] 메이크프렘 히알 인테카 속수분 앰플 40ml 기획(+리필 40ml)';


-- ================================



-- ================================

-- 상품: [보습광채] 코스알엑스 어드벤스드 스네일 96 뮤신 파워 에센스 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[보습광채] 코스알엑스 어드벤스드 스네일 96 뮤신 파워 에센스 100ml',
 '[보습광채] 코스알엑스 어드벤스드 스네일 96 뮤신 파워 에센스 100ml',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '코스알엑스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[보습광채] 코스알엑스 어드벤스드 스네일 96 뮤신 파워 에센스 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[보습광채] 코스알엑스 어드벤스드 스네일 96 뮤신 파워 에센스 100ml'), NOW(), NOW()),
(19660, 'SALE', (SELECT id FROM product WHERE name = '[보습광채] 코스알엑스 어드벤스드 스네일 96 뮤신 파워 에센스 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0010/A00000010339112ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[보습광채] 코스알엑스 어드벤스드 스네일 96 뮤신 파워 에센스 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0010/A00000010339105ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[보습광채] 코스알엑스 어드벤스드 스네일 96 뮤신 파워 에센스 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0010/A00000010339108ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[보습광채] 코스알엑스 어드벤스드 스네일 96 뮤신 파워 에센스 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0010/A00000010339102ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[보습광채] 코스알엑스 어드벤스드 스네일 96 뮤신 파워 에센스 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[보습광채] 코스알엑스 어드벤스드 스네일 96 뮤신 파워 에센스 100ml';


-- ================================



-- ================================

-- 상품: 코스알엑스 더 히알루론산 3 세럼 20ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('코스알엑스 더 히알루론산 3 세럼 20ml',
 '코스알엑스 더 히알루론산 3 세럼 20ml',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '코스알엑스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '코스알엑스 더 히알루론산 3 세럼 20ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '코스알엑스 더 히알루론산 3 세럼 20ml'), NOW(), NOW()),
(19550, 'SALE', (SELECT id FROM product WHERE name = '코스알엑스 더 히알루론산 3 세럼 20ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018089203ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '코스알엑스 더 히알루론산 3 세럼 20ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018089206ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '코스알엑스 더 히알루론산 3 세럼 20ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018089202ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '코스알엑스 더 히알루론산 3 세럼 20ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '코스알엑스 더 히알루론산 3 세럼 20ml';


-- ================================



-- ================================

-- 상품: 일소 모링가 타이트닝 포어 세럼 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('일소 모링가 타이트닝 포어 세럼 30ml',
 '일소 모링가 타이트닝 포어 세럼 30ml',
 4.5,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '일소'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '일소 모링가 타이트닝 포어 세럼 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(19200, 'ORIGINAL', (SELECT id FROM product WHERE name = '일소 모링가 타이트닝 포어 세럼 30ml'), NOW(), NOW()),
(19200, 'SALE', (SELECT id FROM product WHERE name = '일소 모링가 타이트닝 포어 세럼 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018800507ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '일소 모링가 타이트닝 포어 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018800508ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '일소 모링가 타이트닝 포어 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018800505ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '일소 모링가 타이트닝 포어 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018800504ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '일소 모링가 타이트닝 포어 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018800503ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '일소 모링가 타이트닝 포어 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018800501ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '일소 모링가 타이트닝 포어 세럼 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '일소 모링가 타이트닝 포어 세럼 30ml';


-- ================================



-- ================================

-- 상품: 헤브블루 살몬 PDRN 케어링 센텔라 앰플 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('헤브블루 살몬 PDRN 케어링 센텔라 앰플 30ml',
 '헤브블루 살몬 PDRN 케어링 센텔라 앰플 30ml',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '헤브블루'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '헤브블루 살몬 PDRN 케어링 센텔라 앰플 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39900, 'ORIGINAL', (SELECT id FROM product WHERE name = '헤브블루 살몬 PDRN 케어링 센텔라 앰플 30ml'), NOW(), NOW()),
(39900, 'SALE', (SELECT id FROM product WHERE name = '헤브블루 살몬 PDRN 케어링 센텔라 앰플 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021399008ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '헤브블루 살몬 PDRN 케어링 센텔라 앰플 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021399009ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '헤브블루 살몬 PDRN 케어링 센텔라 앰플 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021399007ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '헤브블루 살몬 PDRN 케어링 센텔라 앰플 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '헤브블루 살몬 PDRN 케어링 센텔라 앰플 30ml';


-- ================================



-- ================================

-- 상품: [한정기획]  피지오겔 사이언수티컬즈 디멜라나이저 토닝 앰플 세럼 20ml + 4ml + ...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[한정기획]  피지오겔 사이언수티컬즈 디멜라나이저 토닝 앰플 세럼 20ml + 4ml + 마스크팩 1매',
 '[한정기획]  피지오겔 사이언수티컬즈 디멜라나이저 토닝 앰플 세럼 20ml + 4ml + 마스크팩 1매',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '피지오겔'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[한정기획]  피지오겔 사이언수티컬즈 디멜라나이저 토닝 앰플 세럼 20ml + 4ml + 마스크팩 1매'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(45000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[한정기획]  피지오겔 사이언수티컬즈 디멜라나이저 토닝 앰플 세럼 20ml + 4ml + 마스크팩 1매'), NOW(), NOW()),
(39900, 'SALE', (SELECT id FROM product WHERE name = '[한정기획]  피지오겔 사이언수티컬즈 디멜라나이저 토닝 앰플 세럼 20ml + 4ml + 마스크팩 1매'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021636006ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[한정기획]  피지오겔 사이언수티컬즈 디멜라나이저 토닝 앰플 세럼 20ml + 4ml + 마스크팩 1매'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021636001ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[한정기획]  피지오겔 사이언수티컬즈 디멜라나이저 토닝 앰플 세럼 20ml + 4ml + 마스크팩 1매'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021636003ko.jpeg?l=ko', 3, (SELECT id FROM product WHERE name = '[한정기획]  피지오겔 사이언수티컬즈 디멜라나이저 토닝 앰플 세럼 20ml + 4ml + 마스크팩 1매'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021636005ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[한정기획]  피지오겔 사이언수티컬즈 디멜라나이저 토닝 앰플 세럼 20ml + 4ml + 마스크팩 1매'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[한정기획]  피지오겔 사이언수티컬즈 디멜라나이저 토닝 앰플 세럼 20ml + 4ml + 마스크팩 1매';


-- ================================



-- ================================

-- 상품: [모공앰플] 아벤느 HAB3 탄력 액티브  안티에이징 세럼 30ml 기획 (+탄력 액티브 ...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[모공앰플] 아벤느 HAB3 탄력 액티브  안티에이징 세럼 30ml 기획 (+탄력 액티브 크림 7ml)',
 '[모공앰플] 아벤느 HAB3 탄력 액티브  안티에이징 세럼 30ml 기획 (+탄력 액티브 크림 7ml)',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아벤느'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[모공앰플] 아벤느 HAB3 탄력 액티브  안티에이징 세럼 30ml 기획 (+탄력 액티브 크림 7ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(55000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[모공앰플] 아벤느 HAB3 탄력 액티브  안티에이징 세럼 30ml 기획 (+탄력 액티브 크림 7ml)'), NOW(), NOW()),
(39900, 'SALE', (SELECT id FROM product WHERE name = '[모공앰플] 아벤느 HAB3 탄력 액티브  안티에이징 세럼 30ml 기획 (+탄력 액티브 크림 7ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022235311ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[모공앰플] 아벤느 HAB3 탄력 액티브  안티에이징 세럼 30ml 기획 (+탄력 액티브 크림 7ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022235310ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[모공앰플] 아벤느 HAB3 탄력 액티브  안티에이징 세럼 30ml 기획 (+탄력 액티브 크림 7ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022235309ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[모공앰플] 아벤느 HAB3 탄력 액티브  안티에이징 세럼 30ml 기획 (+탄력 액티브 크림 7ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022235308ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[모공앰플] 아벤느 HAB3 탄력 액티브  안티에이징 세럼 30ml 기획 (+탄력 액티브 크림 7ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022235305ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[모공앰플] 아벤느 HAB3 탄력 액티브  안티에이징 세럼 30ml 기획 (+탄력 액티브 크림 7ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022235304ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[모공앰플] 아벤느 HAB3 탄력 액티브  안티에이징 세럼 30ml 기획 (+탄력 액티브 크림 7ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[모공앰플] 아벤느 HAB3 탄력 액티브  안티에이징 세럼 30ml 기획 (+탄력 액티브 크림 7ml)';


-- ================================



-- ================================

-- 상품: 아벤느 비타민 액티브 VACg 세럼 30ml 기획 (+비타민 Cg 액티브 크림 2ml*3)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아벤느 비타민 액티브 VACg 세럼 30ml 기획 (+비타민 Cg 액티브 크림 2ml*3) *광채 *항산화',
 '아벤느 비타민 액티브 VACg 세럼 30ml 기획 (+비타민 Cg 액티브 크림 2ml*3) *광채 *항산화',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아벤느'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아벤느 비타민 액티브 VACg 세럼 30ml 기획 (+비타민 Cg 액티브 크림 2ml*3) *광채 *항산화'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(55000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아벤느 비타민 액티브 VACg 세럼 30ml 기획 (+비타민 Cg 액티브 크림 2ml*3) *광채 *항산화'), NOW(), NOW()),
(39900, 'SALE', (SELECT id FROM product WHERE name = '아벤느 비타민 액티브 VACg 세럼 30ml 기획 (+비타민 Cg 액티브 크림 2ml*3) *광채 *항산화'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022517801ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아벤느 비타민 액티브 VACg 세럼 30ml 기획 (+비타민 Cg 액티브 크림 2ml*3) *광채 *항산화'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022517811ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아벤느 비타민 액티브 VACg 세럼 30ml 기획 (+비타민 Cg 액티브 크림 2ml*3) *광채 *항산화'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022517810ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아벤느 비타민 액티브 VACg 세럼 30ml 기획 (+비타민 Cg 액티브 크림 2ml*3) *광채 *항산화'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022517809ko.png?l=ko', 4, (SELECT id FROM product WHERE name = '아벤느 비타민 액티브 VACg 세럼 30ml 기획 (+비타민 Cg 액티브 크림 2ml*3) *광채 *항산화'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022517807ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '아벤느 비타민 액티브 VACg 세럼 30ml 기획 (+비타민 Cg 액티브 크림 2ml*3) *광채 *항산화'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022517806ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '아벤느 비타민 액티브 VACg 세럼 30ml 기획 (+비타민 Cg 액티브 크림 2ml*3) *광채 *항산화'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아벤느 비타민 액티브 VACg 세럼 30ml 기획 (+비타민 Cg 액티브 크림 2ml*3) *광채 *항산화';


-- ================================



-- ================================

-- 상품: [30g+20g] 프리메라 비타티놀 바운시 리프트 세럼 기획/단품...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[30g+20g] 프리메라 비타티놀 바운시 리프트 세럼 기획/단품',
 '[30g+20g] 프리메라 비타티놀 바운시 리프트 세럼 기획/단품',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '프리메라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[30g+20g] 프리메라 비타티놀 바운시 리프트 세럼 기획/단품'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[30g+20g] 프리메라 비타티놀 바운시 리프트 세럼 기획/단품'), NOW(), NOW()),
(39000, 'SALE', (SELECT id FROM product WHERE name = '[30g+20g] 프리메라 비타티놀 바운시 리프트 세럼 기획/단품'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023129313ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[30g+20g] 프리메라 비타티놀 바운시 리프트 세럼 기획/단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023129312ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[30g+20g] 프리메라 비타티놀 바운시 리프트 세럼 기획/단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023129303ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[30g+20g] 프리메라 비타티놀 바운시 리프트 세럼 기획/단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023129302ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[30g+20g] 프리메라 비타티놀 바운시 리프트 세럼 기획/단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023129304ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[30g+20g] 프리메라 비타티놀 바운시 리프트 세럼 기획/단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023129305ko.png?l=ko', 6, (SELECT id FROM product WHERE name = '[30g+20g] 프리메라 비타티놀 바운시 리프트 세럼 기획/단품'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[30g+20g] 프리메라 비타티놀 바운시 리프트 세럼 기획/단품';


-- ================================



-- ================================

-- 상품: [흔적케어/비타민X스피큘] 셀퓨전씨 토닝C 비타 샷 앰플 20g 더블기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[흔적케어/비타민X스피큘] 셀퓨전씨 토닝C 비타 샷 앰플 20g 더블기획',
 '[흔적케어/비타민X스피큘] 셀퓨전씨 토닝C 비타 샷 앰플 20g 더블기획',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '셀퓨전씨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[흔적케어/비타민X스피큘] 셀퓨전씨 토닝C 비타 샷 앰플 20g 더블기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(41000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[흔적케어/비타민X스피큘] 셀퓨전씨 토닝C 비타 샷 앰플 20g 더블기획'), NOW(), NOW()),
(38900, 'SALE', (SELECT id FROM product WHERE name = '[흔적케어/비타민X스피큘] 셀퓨전씨 토닝C 비타 샷 앰플 20g 더블기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021960312ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[흔적케어/비타민X스피큘] 셀퓨전씨 토닝C 비타 샷 앰플 20g 더블기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021960313ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[흔적케어/비타민X스피큘] 셀퓨전씨 토닝C 비타 샷 앰플 20g 더블기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021960311ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[흔적케어/비타민X스피큘] 셀퓨전씨 토닝C 비타 샷 앰플 20g 더블기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021960310ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[흔적케어/비타민X스피큘] 셀퓨전씨 토닝C 비타 샷 앰플 20g 더블기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021960309ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[흔적케어/비타민X스피큘] 셀퓨전씨 토닝C 비타 샷 앰플 20g 더블기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[흔적케어/비타민X스피큘] 셀퓨전씨 토닝C 비타 샷 앰플 20g 더블기획';


-- ================================



-- ================================

-- 상품: [수분탄력에센스] 유리아쥬 글로우업 오 에센스 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분탄력에센스] 유리아쥬 글로우업 오 에센스 100ml',
 '[수분탄력에센스] 유리아쥬 글로우업 오 에센스 100ml',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유리아쥬'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분탄력에센스] 유리아쥬 글로우업 오 에센스 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분탄력에센스] 유리아쥬 글로우업 오 에센스 100ml'), NOW(), NOW()),
(38000, 'SALE', (SELECT id FROM product WHERE name = '[수분탄력에센스] 유리아쥬 글로우업 오 에센스 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017430406ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분탄력에센스] 유리아쥬 글로우업 오 에센스 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017430408ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분탄력에센스] 유리아쥬 글로우업 오 에센스 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017430407ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분탄력에센스] 유리아쥬 글로우업 오 에센스 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017430405ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[수분탄력에센스] 유리아쥬 글로우업 오 에센스 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분탄력에센스] 유리아쥬 글로우업 오 에센스 100ml';


-- ================================



-- ================================

-- 상품: [트러블1등/단독기획] 파티온 노스카나인 트러블 세럼 50ml 기획(+15ml+마스크 1매...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[트러블1등/단독기획] 파티온 노스카나인 트러블 세럼 50ml 기획(+15ml+마스크 1매)',
 '[트러블1등/단독기획] 파티온 노스카나인 트러블 세럼 50ml 기획(+15ml+마스크 1매)',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '파티온'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[트러블1등/단독기획] 파티온 노스카나인 트러블 세럼 50ml 기획(+15ml+마스크 1매)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[트러블1등/단독기획] 파티온 노스카나인 트러블 세럼 50ml 기획(+15ml+마스크 1매)'), NOW(), NOW()),
(38000, 'SALE', (SELECT id FROM product WHERE name = '[트러블1등/단독기획] 파티온 노스카나인 트러블 세럼 50ml 기획(+15ml+마스크 1매)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021971716ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[트러블1등/단독기획] 파티온 노스카나인 트러블 세럼 50ml 기획(+15ml+마스크 1매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021971710ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[트러블1등/단독기획] 파티온 노스카나인 트러블 세럼 50ml 기획(+15ml+마스크 1매)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[트러블1등/단독기획] 파티온 노스카나인 트러블 세럼 50ml 기획(+15ml+마스크 1매)';


-- ================================



-- ================================

-- 상품: [미백/잡티케어] 달바 비타 토닝 캡슐 세럼 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[미백/잡티케어] 달바 비타 토닝 캡슐 세럼 50ml',
 '[미백/잡티케어] 달바 비타 토닝 캡슐 세럼 50ml',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '달바'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[미백/잡티케어] 달바 비타 토닝 캡슐 세럼 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[미백/잡티케어] 달바 비타 토닝 캡슐 세럼 50ml'), NOW(), NOW()),
(38000, 'SALE', (SELECT id FROM product WHERE name = '[미백/잡티케어] 달바 비타 토닝 캡슐 세럼 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022342412ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[미백/잡티케어] 달바 비타 토닝 캡슐 세럼 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022342413ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[미백/잡티케어] 달바 비타 토닝 캡슐 세럼 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022342409ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[미백/잡티케어] 달바 비타 토닝 캡슐 세럼 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022342410ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[미백/잡티케어] 달바 비타 토닝 캡슐 세럼 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022342411ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[미백/잡티케어] 달바 비타 토닝 캡슐 세럼 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[미백/잡티케어] 달바 비타 토닝 캡슐 세럼 50ml';


-- ================================



-- ================================

-- 상품: [집중진정] 라운드랩 소나무 진정 시카 앰플 30ml 기획 (+토너 20ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[집중진정] 라운드랩 소나무 진정 시카 앰플 30ml 기획 (+토너 20ml)',
 '[집중진정] 라운드랩 소나무 진정 시카 앰플 30ml 기획 (+토너 20ml)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라운드랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[집중진정] 라운드랩 소나무 진정 시카 앰플 30ml 기획 (+토너 20ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[집중진정] 라운드랩 소나무 진정 시카 앰플 30ml 기획 (+토너 20ml)'), NOW(), NOW()),
(17900, 'SALE', (SELECT id FROM product WHERE name = '[집중진정] 라운드랩 소나무 진정 시카 앰플 30ml 기획 (+토너 20ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021975106ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[집중진정] 라운드랩 소나무 진정 시카 앰플 30ml 기획 (+토너 20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021975105ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[집중진정] 라운드랩 소나무 진정 시카 앰플 30ml 기획 (+토너 20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021975101ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[집중진정] 라운드랩 소나무 진정 시카 앰플 30ml 기획 (+토너 20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021975103ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[집중진정] 라운드랩 소나무 진정 시카 앰플 30ml 기획 (+토너 20ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[집중진정] 라운드랩 소나무 진정 시카 앰플 30ml 기획 (+토너 20ml)';


-- ================================



-- ================================

-- 상품: 한율 달빛유자C 세럼 30ml 기획 (+20ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('한율 달빛유자C 세럼 30ml 기획 (+20ml)',
 '한율 달빛유자C 세럼 30ml 기획 (+20ml)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '한율'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '한율 달빛유자C 세럼 30ml 기획 (+20ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(37000, 'ORIGINAL', (SELECT id FROM product WHERE name = '한율 달빛유자C 세럼 30ml 기획 (+20ml)'), NOW(), NOW()),
(37000, 'SALE', (SELECT id FROM product WHERE name = '한율 달빛유자C 세럼 30ml 기획 (+20ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020133805ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '한율 달빛유자C 세럼 30ml 기획 (+20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020133804ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '한율 달빛유자C 세럼 30ml 기획 (+20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020133803ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '한율 달빛유자C 세럼 30ml 기획 (+20ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '한율 달빛유자C 세럼 30ml 기획 (+20ml)';


-- ================================



-- ================================

-- 상품: 허블룸 콤부차 플랜트 바이옴 세럼 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('허블룸 콤부차 플랜트 바이옴 세럼 50ml',
 '허블룸 콤부차 플랜트 바이옴 세럼 50ml',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '허블룸'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '허블룸 콤부차 플랜트 바이옴 세럼 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(36000, 'ORIGINAL', (SELECT id FROM product WHERE name = '허블룸 콤부차 플랜트 바이옴 세럼 50ml'), NOW(), NOW()),
(36000, 'SALE', (SELECT id FROM product WHERE name = '허블룸 콤부차 플랜트 바이옴 세럼 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017161610ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '허블룸 콤부차 플랜트 바이옴 세럼 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017161611ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '허블룸 콤부차 플랜트 바이옴 세럼 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017161609ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '허블룸 콤부차 플랜트 바이옴 세럼 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017161608ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '허블룸 콤부차 플랜트 바이옴 세럼 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '허블룸 콤부차 플랜트 바이옴 세럼 50ml';


-- ================================



-- ================================

-- 상품: [항산화 세럼]바이오더마 센시비오 디펜시브 세럼 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[항산화 세럼]바이오더마 센시비오 디펜시브 세럼 30ml',
 '[항산화 세럼]바이오더마 센시비오 디펜시브 세럼 30ml',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오더마'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[항산화 세럼]바이오더마 센시비오 디펜시브 세럼 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(48000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[항산화 세럼]바이오더마 센시비오 디펜시브 세럼 30ml'), NOW(), NOW()),
(36000, 'SALE', (SELECT id FROM product WHERE name = '[항산화 세럼]바이오더마 센시비오 디펜시브 세럼 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018248010ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[항산화 세럼]바이오더마 센시비오 디펜시브 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018248009ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[항산화 세럼]바이오더마 센시비오 디펜시브 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018248003ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[항산화 세럼]바이오더마 센시비오 디펜시브 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018248004ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[항산화 세럼]바이오더마 센시비오 디펜시브 세럼 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[항산화 세럼]바이오더마 센시비오 디펜시브 세럼 30ml';


-- ================================



-- ================================

-- 상품: [가나디 콜라보] 토리든 다이브인 저분자 히알루론산 세럼 50ml 리필 가나디 기획 (+인...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[가나디 콜라보] 토리든 다이브인 저분자 히알루론산 세럼 50ml 리필 가나디 기획 (+인형키링)',
 '[가나디 콜라보] 토리든 다이브인 저분자 히알루론산 세럼 50ml 리필 가나디 기획 (+인형키링)',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '토리든'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[가나디 콜라보] 토리든 다이브인 저분자 히알루론산 세럼 50ml 리필 가나디 기획 (+인형키링)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(36000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[가나디 콜라보] 토리든 다이브인 저분자 히알루론산 세럼 50ml 리필 가나디 기획 (+인형키링)'), NOW(), NOW()),
(36000, 'SALE', (SELECT id FROM product WHERE name = '[가나디 콜라보] 토리든 다이브인 저분자 히알루론산 세럼 50ml 리필 가나디 기획 (+인형키링)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023083408ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[가나디 콜라보] 토리든 다이브인 저분자 히알루론산 세럼 50ml 리필 가나디 기획 (+인형키링)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023083403ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[가나디 콜라보] 토리든 다이브인 저분자 히알루론산 세럼 50ml 리필 가나디 기획 (+인형키링)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023083404ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[가나디 콜라보] 토리든 다이브인 저분자 히알루론산 세럼 50ml 리필 가나디 기획 (+인형키링)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023083405ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[가나디 콜라보] 토리든 다이브인 저분자 히알루론산 세럼 50ml 리필 가나디 기획 (+인형키링)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023083406ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[가나디 콜라보] 토리든 다이브인 저분자 히알루론산 세럼 50ml 리필 가나디 기획 (+인형키링)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[가나디 콜라보] 토리든 다이브인 저분자 히알루론산 세럼 50ml 리필 가나디 기획 (+인형키링)';


-- ================================



-- ================================

-- 상품: 프랭클리 클로저 세럼 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('프랭클리 클로저 세럼 30ml',
 '프랭클리 클로저 세럼 30ml',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '프랭클리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '프랭클리 클로저 세럼 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(10900, 'ORIGINAL', (SELECT id FROM product WHERE name = '프랭클리 클로저 세럼 30ml'), NOW(), NOW()),
(7800, 'SALE', (SELECT id FROM product WHERE name = '프랭클리 클로저 세럼 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017747517ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '프랭클리 클로저 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017747519ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '프랭클리 클로저 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017747516ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '프랭클리 클로저 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017747514ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '프랭클리 클로저 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017747513ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '프랭클리 클로저 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017747520ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '프랭클리 클로저 세럼 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '프랭클리 클로저 세럼 30ml';


-- ================================



-- ================================

-- 상품: [리뷰이벤트] 더마팩토리 PDRN 4% 앰플 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[리뷰이벤트] 더마팩토리 PDRN 4% 앰플 30ml',
 '[리뷰이벤트] 더마팩토리 PDRN 4% 앰플 30ml',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더마팩토리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 PDRN 4% 앰플 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(12000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 PDRN 4% 앰플 30ml'), NOW(), NOW()),
(10830, 'SALE', (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 PDRN 4% 앰플 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022521606ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 PDRN 4% 앰플 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022521604ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 PDRN 4% 앰플 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022521603ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 PDRN 4% 앰플 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022521602ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 PDRN 4% 앰플 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022521601ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[리뷰이벤트] 더마팩토리 PDRN 4% 앰플 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[리뷰이벤트] 더마팩토리 PDRN 4% 앰플 30ml';


-- ================================



-- ================================

-- 상품: [피부진정] 조선미녀 산들녹차세럼 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[피부진정] 조선미녀 산들녹차세럼 30ml',
 '[피부진정] 조선미녀 산들녹차세럼 30ml',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '조선미녀'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[피부진정] 조선미녀 산들녹차세럼 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(17000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[피부진정] 조선미녀 산들녹차세럼 30ml'), NOW(), NOW()),
(17000, 'SALE', (SELECT id FROM product WHERE name = '[피부진정] 조선미녀 산들녹차세럼 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018856907ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[피부진정] 조선미녀 산들녹차세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018856908ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[피부진정] 조선미녀 산들녹차세럼 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[피부진정] 조선미녀 산들녹차세럼 30ml';


-- ================================



-- ================================

-- 상품: [매끈결광/화잘먹 수분천재세럼] 에스네이처 아쿠아 스쿠알란 세럼 50ml 기획 (+50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[매끈결광/화잘먹 수분천재세럼] 에스네이처 아쿠아 스쿠알란 세럼 50ml 기획 (+50ml 리필+수분크림10ml)',
 '[매끈결광/화잘먹 수분천재세럼] 에스네이처 아쿠아 스쿠알란 세럼 50ml 기획 (+50ml 리필+수분크림10ml)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에스네이처'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[매끈결광/화잘먹 수분천재세럼] 에스네이처 아쿠아 스쿠알란 세럼 50ml 기획 (+50ml 리필+수분크림10ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[매끈결광/화잘먹 수분천재세럼] 에스네이처 아쿠아 스쿠알란 세럼 50ml 기획 (+50ml 리필+수분크림10ml)'), NOW(), NOW()),
(35000, 'SALE', (SELECT id FROM product WHERE name = '[매끈결광/화잘먹 수분천재세럼] 에스네이처 아쿠아 스쿠알란 세럼 50ml 기획 (+50ml 리필+수분크림10ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018800491ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[매끈결광/화잘먹 수분천재세럼] 에스네이처 아쿠아 스쿠알란 세럼 50ml 기획 (+50ml 리필+수분크림10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018800466ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[매끈결광/화잘먹 수분천재세럼] 에스네이처 아쿠아 스쿠알란 세럼 50ml 기획 (+50ml 리필+수분크림10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018800467ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[매끈결광/화잘먹 수분천재세럼] 에스네이처 아쿠아 스쿠알란 세럼 50ml 기획 (+50ml 리필+수분크림10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018800468ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[매끈결광/화잘먹 수분천재세럼] 에스네이처 아쿠아 스쿠알란 세럼 50ml 기획 (+50ml 리필+수분크림10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018800469ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[매끈결광/화잘먹 수분천재세럼] 에스네이처 아쿠아 스쿠알란 세럼 50ml 기획 (+50ml 리필+수분크림10ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[매끈결광/화잘먹 수분천재세럼] 에스네이처 아쿠아 스쿠알란 세럼 50ml 기획 (+50ml 리필+수분크림10ml)';


-- ================================



-- ================================

-- 상품: 디오디너리 매트릭실 10% + HA...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('디오디너리 매트릭실 10% + HA',
 '디오디너리 매트릭실 10% + HA',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '디오디너리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '디오디너리 매트릭실 10% + HA'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(16600, 'ORIGINAL', (SELECT id FROM product WHERE name = '디오디너리 매트릭실 10% + HA'), NOW(), NOW()),
(16600, 'SALE', (SELECT id FROM product WHERE name = '디오디너리 매트릭실 10% + HA'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014133304ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '디오디너리 매트릭실 10% + HA'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014133303ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '디오디너리 매트릭실 10% + HA'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '디오디너리 매트릭실 10% + HA';


-- ================================



-- ================================

-- 상품: [화해어워드 1위/모공앰플] 닥터오라클 레티노타이트닝 비타민A 레티놀 앰플 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[화해어워드 1위/모공앰플] 닥터오라클 레티노타이트닝 비타민A 레티놀 앰플 50ml',
 '[화해어워드 1위/모공앰플] 닥터오라클 레티노타이트닝 비타민A 레티놀 앰플 50ml',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터오라클'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[화해어워드 1위/모공앰플] 닥터오라클 레티노타이트닝 비타민A 레티놀 앰플 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(34000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[화해어워드 1위/모공앰플] 닥터오라클 레티노타이트닝 비타민A 레티놀 앰플 50ml'), NOW(), NOW()),
(34000, 'SALE', (SELECT id FROM product WHERE name = '[화해어워드 1위/모공앰플] 닥터오라클 레티노타이트닝 비타민A 레티놀 앰플 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018699723ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[화해어워드 1위/모공앰플] 닥터오라클 레티노타이트닝 비타민A 레티놀 앰플 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018699731ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[화해어워드 1위/모공앰플] 닥터오라클 레티노타이트닝 비타민A 레티놀 앰플 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018699724ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[화해어워드 1위/모공앰플] 닥터오라클 레티노타이트닝 비타민A 레티놀 앰플 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018699725ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[화해어워드 1위/모공앰플] 닥터오라클 레티노타이트닝 비타민A 레티놀 앰플 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018699726ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[화해어워드 1위/모공앰플] 닥터오라클 레티노타이트닝 비타민A 레티놀 앰플 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018699727ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[화해어워드 1위/모공앰플] 닥터오라클 레티노타이트닝 비타민A 레티놀 앰플 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[화해어워드 1위/모공앰플] 닥터오라클 레티노타이트닝 비타민A 레티놀 앰플 50ml';


-- ================================



-- ================================

-- 상품: [수분광채] 넘버즈인 6번 푹잠 마스크팩 세럼 80ml 기획(+4번 SOS 얼음장팩)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분광채] 넘버즈인 6번 푹잠 마스크팩 세럼 80ml 기획(+4번 SOS 얼음장팩)',
 '[수분광채] 넘버즈인 6번 푹잠 마스크팩 세럼 80ml 기획(+4번 SOS 얼음장팩)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '넘버즈인'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분광채] 넘버즈인 6번 푹잠 마스크팩 세럼 80ml 기획(+4번 SOS 얼음장팩)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(34000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분광채] 넘버즈인 6번 푹잠 마스크팩 세럼 80ml 기획(+4번 SOS 얼음장팩)'), NOW(), NOW()),
(34000, 'SALE', (SELECT id FROM product WHERE name = '[수분광채] 넘버즈인 6번 푹잠 마스크팩 세럼 80ml 기획(+4번 SOS 얼음장팩)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018596103ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분광채] 넘버즈인 6번 푹잠 마스크팩 세럼 80ml 기획(+4번 SOS 얼음장팩)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018596102ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분광채] 넘버즈인 6번 푹잠 마스크팩 세럼 80ml 기획(+4번 SOS 얼음장팩)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018596106ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분광채] 넘버즈인 6번 푹잠 마스크팩 세럼 80ml 기획(+4번 SOS 얼음장팩)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018596107ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[수분광채] 넘버즈인 6번 푹잠 마스크팩 세럼 80ml 기획(+4번 SOS 얼음장팩)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018596109ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[수분광채] 넘버즈인 6번 푹잠 마스크팩 세럼 80ml 기획(+4번 SOS 얼음장팩)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018596108ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[수분광채] 넘버즈인 6번 푹잠 마스크팩 세럼 80ml 기획(+4번 SOS 얼음장팩)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분광채] 넘버즈인 6번 푹잠 마스크팩 세럼 80ml 기획(+4번 SOS 얼음장팩)';


-- ================================



-- ================================

-- 상품: [NEW/결광흔적앰플] 구달 청귤 비타C 나이아신아마이드 10 흔적 앰플 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW/결광흔적앰플] 구달 청귤 비타C 나이아신아마이드 10 흔적 앰플 30ml',
 '[NEW/결광흔적앰플] 구달 청귤 비타C 나이아신아마이드 10 흔적 앰플 30ml',
 4.6,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '구달'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW/결광흔적앰플] 구달 청귤 비타C 나이아신아마이드 10 흔적 앰플 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW/결광흔적앰플] 구달 청귤 비타C 나이아신아마이드 10 흔적 앰플 30ml'), NOW(), NOW()),
(32000, 'SALE', (SELECT id FROM product WHERE name = '[NEW/결광흔적앰플] 구달 청귤 비타C 나이아신아마이드 10 흔적 앰플 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022559206ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW/결광흔적앰플] 구달 청귤 비타C 나이아신아마이드 10 흔적 앰플 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022559207ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW/결광흔적앰플] 구달 청귤 비타C 나이아신아마이드 10 흔적 앰플 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022559205ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW/결광흔적앰플] 구달 청귤 비타C 나이아신아마이드 10 흔적 앰플 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022559204ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[NEW/결광흔적앰플] 구달 청귤 비타C 나이아신아마이드 10 흔적 앰플 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022559203ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[NEW/결광흔적앰플] 구달 청귤 비타C 나이아신아마이드 10 흔적 앰플 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW/결광흔적앰플] 구달 청귤 비타C 나이아신아마이드 10 흔적 앰플 30ml';


-- ================================



-- ================================

-- 상품: [모공에센스] VT 리들샷 100 에센스 50ml 기획 (+리들샷300 1ml*3개+PDR...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[모공에센스] VT 리들샷 100 에센스 50ml 기획 (+리들샷300 1ml*3개+PDRN에센스 1.5ml*3ea)',
 '[모공에센스] VT 리들샷 100 에센스 50ml 기획 (+리들샷300 1ml*3개+PDRN에센스 1.5ml*3ea)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'VT'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[모공에센스] VT 리들샷 100 에센스 50ml 기획 (+리들샷300 1ml*3개+PDRN에센스 1.5ml*3ea)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[모공에센스] VT 리들샷 100 에센스 50ml 기획 (+리들샷300 1ml*3개+PDRN에센스 1.5ml*3ea)'), NOW(), NOW()),
(32000, 'SALE', (SELECT id FROM product WHERE name = '[모공에센스] VT 리들샷 100 에센스 50ml 기획 (+리들샷300 1ml*3개+PDRN에센스 1.5ml*3ea)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022948010ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[모공에센스] VT 리들샷 100 에센스 50ml 기획 (+리들샷300 1ml*3개+PDRN에센스 1.5ml*3ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022948004ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[모공에센스] VT 리들샷 100 에센스 50ml 기획 (+리들샷300 1ml*3개+PDRN에센스 1.5ml*3ea)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[모공에센스] VT 리들샷 100 에센스 50ml 기획 (+리들샷300 1ml*3개+PDRN에센스 1.5ml*3ea)';


-- ================================



-- ================================

-- 상품: [엔하이픈 선우 PICK/단독기획] 믹순 콩 에센스 50ml 기획(+병풀 에센스 20ml ...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[엔하이픈 선우 PICK/단독기획] 믹순 콩 에센스 50ml 기획(+병풀 에센스 20ml 증정)',
 '[엔하이픈 선우 PICK/단독기획] 믹순 콩 에센스 50ml 기획(+병풀 에센스 20ml 증정)',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '믹순'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[엔하이픈 선우 PICK/단독기획] 믹순 콩 에센스 50ml 기획(+병풀 에센스 20ml 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[엔하이픈 선우 PICK/단독기획] 믹순 콩 에센스 50ml 기획(+병풀 에센스 20ml 증정)'), NOW(), NOW()),
(31500, 'SALE', (SELECT id FROM product WHERE name = '[엔하이픈 선우 PICK/단독기획] 믹순 콩 에센스 50ml 기획(+병풀 에센스 20ml 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016903512ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[엔하이픈 선우 PICK/단독기획] 믹순 콩 에센스 50ml 기획(+병풀 에센스 20ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016903507ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[엔하이픈 선우 PICK/단독기획] 믹순 콩 에센스 50ml 기획(+병풀 에센스 20ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016903508ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[엔하이픈 선우 PICK/단독기획] 믹순 콩 에센스 50ml 기획(+병풀 에센스 20ml 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[엔하이픈 선우 PICK/단독기획] 믹순 콩 에센스 50ml 기획(+병풀 에센스 20ml 증정)';


-- ================================



-- ================================

-- 상품: [보습 광채탄력] VT 산삼 PDRN 에센스 100 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[보습 광채탄력] VT 산삼 PDRN 에센스 100 30ml',
 '[보습 광채탄력] VT 산삼 PDRN 에센스 100 30ml',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'VT'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('단품(30ml*1개)', 31500, (SELECT id FROM product WHERE name = '[보습 광채탄력] VT 산삼 PDRN 에센스 100 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(45000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[보습 광채탄력] VT 산삼 PDRN 에센스 100 30ml'), NOW(), NOW()),
(31500, 'SALE', (SELECT id FROM product WHERE name = '[보습 광채탄력] VT 산삼 PDRN 에센스 100 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020243719ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[보습 광채탄력] VT 산삼 PDRN 에센스 100 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020243706ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[보습 광채탄력] VT 산삼 PDRN 에센스 100 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[보습 광채탄력] VT 산삼 PDRN 에센스 100 30ml';


-- ================================



-- ================================

-- 상품: 이즈앤트리 어니언 뉴페어 B5 앰플 50ml 기획 (+겔크림 20ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('이즈앤트리 어니언 뉴페어 B5 앰플 50ml 기획 (+겔크림 20ml)',
 '이즈앤트리 어니언 뉴페어 B5 앰플 50ml 기획 (+겔크림 20ml)',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '이즈앤트리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '이즈앤트리 어니언 뉴페어 B5 앰플 50ml 기획 (+겔크림 20ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '이즈앤트리 어니언 뉴페어 B5 앰플 50ml 기획 (+겔크림 20ml)'), NOW(), NOW()),
(14900, 'SALE', (SELECT id FROM product WHERE name = '이즈앤트리 어니언 뉴페어 B5 앰플 50ml 기획 (+겔크림 20ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020813915ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '이즈앤트리 어니언 뉴페어 B5 앰플 50ml 기획 (+겔크림 20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020813916ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '이즈앤트리 어니언 뉴페어 B5 앰플 50ml 기획 (+겔크림 20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020813917ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '이즈앤트리 어니언 뉴페어 B5 앰플 50ml 기획 (+겔크림 20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020813918ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '이즈앤트리 어니언 뉴페어 B5 앰플 50ml 기획 (+겔크림 20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020813914ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '이즈앤트리 어니언 뉴페어 B5 앰플 50ml 기획 (+겔크림 20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020813911ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '이즈앤트리 어니언 뉴페어 B5 앰플 50ml 기획 (+겔크림 20ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '이즈앤트리 어니언 뉴페어 B5 앰플 50ml 기획 (+겔크림 20ml)';


-- ================================



-- ================================

-- 상품: [10ml 소용량] 넘버즈인 3번 블루 바이오 레티놀 모공 리모델링 앰플 소용량 10ml ...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[10ml 소용량] 넘버즈인 3번 블루 바이오 레티놀 모공 리모델링 앰플 소용량 10ml (1ml*10개)',
 '[10ml 소용량] 넘버즈인 3번 블루 바이오 레티놀 모공 리모델링 앰플 소용량 10ml (1ml*10개)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '넘버즈인'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[10ml 소용량] 넘버즈인 3번 블루 바이오 레티놀 모공 리모델링 앰플 소용량 10ml (1ml*10개)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(20000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[10ml 소용량] 넘버즈인 3번 블루 바이오 레티놀 모공 리모델링 앰플 소용량 10ml (1ml*10개)'), NOW(), NOW()),
(9900, 'SALE', (SELECT id FROM product WHERE name = '[10ml 소용량] 넘버즈인 3번 블루 바이오 레티놀 모공 리모델링 앰플 소용량 10ml (1ml*10개)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022724114ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[10ml 소용량] 넘버즈인 3번 블루 바이오 레티놀 모공 리모델링 앰플 소용량 10ml (1ml*10개)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022724113ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[10ml 소용량] 넘버즈인 3번 블루 바이오 레티놀 모공 리모델링 앰플 소용량 10ml (1ml*10개)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022724112ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[10ml 소용량] 넘버즈인 3번 블루 바이오 레티놀 모공 리모델링 앰플 소용량 10ml (1ml*10개)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022724111ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[10ml 소용량] 넘버즈인 3번 블루 바이오 레티놀 모공 리모델링 앰플 소용량 10ml (1ml*10개)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022724110ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[10ml 소용량] 넘버즈인 3번 블루 바이오 레티놀 모공 리모델링 앰플 소용량 10ml (1ml*10개)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[10ml 소용량] 넘버즈인 3번 블루 바이오 레티놀 모공 리모델링 앰플 소용량 10ml (1ml*10개)';


-- ================================



-- ================================

-- 상품: [고순도PDRN/디바이스 시너지템][NEW]메디큐브 에이지알 PDRN 부스터젤 300ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[고순도PDRN/디바이스 시너지템][NEW]메디큐브 에이지알 PDRN 부스터젤 300ml',
 '[고순도PDRN/디바이스 시너지템][NEW]메디큐브 에이지알 PDRN 부스터젤 300ml',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '메디큐브 에이지알'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[고순도PDRN/디바이스 시너지템][NEW]메디큐브 에이지알 PDRN 부스터젤 300ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(18600, 'ORIGINAL', (SELECT id FROM product WHERE name = '[고순도PDRN/디바이스 시너지템][NEW]메디큐브 에이지알 PDRN 부스터젤 300ml'), NOW(), NOW()),
(14730, 'SALE', (SELECT id FROM product WHERE name = '[고순도PDRN/디바이스 시너지템][NEW]메디큐브 에이지알 PDRN 부스터젤 300ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021967701ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[고순도PDRN/디바이스 시너지템][NEW]메디큐브 에이지알 PDRN 부스터젤 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021967703ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[고순도PDRN/디바이스 시너지템][NEW]메디큐브 에이지알 PDRN 부스터젤 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021967702ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[고순도PDRN/디바이스 시너지템][NEW]메디큐브 에이지알 PDRN 부스터젤 300ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[고순도PDRN/디바이스 시너지템][NEW]메디큐브 에이지알 PDRN 부스터젤 300ml';


-- ================================



-- ================================

-- 상품: 디오디너리 히알루로닉 애시드 2% + B5 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('디오디너리 히알루로닉 애시드 2% + B5 30ml',
 '디오디너리 히알루로닉 애시드 2% + B5 30ml',
 4.6,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '디오디너리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '디오디너리 히알루로닉 애시드 2% + B5 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(14200, 'ORIGINAL', (SELECT id FROM product WHERE name = '디오디너리 히알루로닉 애시드 2% + B5 30ml'), NOW(), NOW()),
(14200, 'SALE', (SELECT id FROM product WHERE name = '디오디너리 히알루로닉 애시드 2% + B5 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020031305ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '디오디너리 히알루로닉 애시드 2% + B5 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020031306ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '디오디너리 히알루로닉 애시드 2% + B5 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '디오디너리 히알루로닉 애시드 2% + B5 30ml';


-- ================================



-- ================================

-- 상품: [미백/스피큘] 닥터지 RTX 인투 세럼 비타민샷 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[미백/스피큘] 닥터지 RTX 인투 세럼 비타민샷 50ml',
 '[미백/스피큘] 닥터지 RTX 인투 세럼 비타민샷 50ml',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터지'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[미백/스피큘] 닥터지 RTX 인투 세럼 비타민샷 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(43000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[미백/스피큘] 닥터지 RTX 인투 세럼 비타민샷 50ml'), NOW(), NOW()),
(29900, 'SALE', (SELECT id FROM product WHERE name = '[미백/스피큘] 닥터지 RTX 인투 세럼 비타민샷 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020415412ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[미백/스피큘] 닥터지 RTX 인투 세럼 비타민샷 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020415413ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[미백/스피큘] 닥터지 RTX 인투 세럼 비타민샷 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020415415ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[미백/스피큘] 닥터지 RTX 인투 세럼 비타민샷 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[미백/스피큘] 닥터지 RTX 인투 세럼 비타민샷 50ml';


-- ================================



-- ================================

-- 상품: 디오디너리 레티놀 1% 인 스쿠알란 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('디오디너리 레티놀 1% 인 스쿠알란 30ml',
 '디오디너리 레티놀 1% 인 스쿠알란 30ml',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '디오디너리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '디오디너리 레티놀 1% 인 스쿠알란 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(14100, 'ORIGINAL', (SELECT id FROM product WHERE name = '디오디너리 레티놀 1% 인 스쿠알란 30ml'), NOW(), NOW()),
(14100, 'SALE', (SELECT id FROM product WHERE name = '디오디너리 레티놀 1% 인 스쿠알란 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014997006ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '디오디너리 레티놀 1% 인 스쿠알란 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014997005ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '디오디너리 레티놀 1% 인 스쿠알란 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '디오디너리 레티놀 1% 인 스쿠알란 30ml';


-- ================================



-- ================================

-- 상품: [탄력앰플] 바이오힐 보 프로바이오덤 3D 리프팅 앰플 30ml [단품/증정기획]...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[탄력앰플] 바이오힐 보 프로바이오덤 3D 리프팅 앰플 30ml [단품/증정기획]',
 '[탄력앰플] 바이오힐 보 프로바이오덤 3D 리프팅 앰플 30ml [단품/증정기획]',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오힐보'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[탄력앰플] 바이오힐 보 프로바이오덤 3D 리프팅 앰플 30ml [단품/증정기획]'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[탄력앰플] 바이오힐 보 프로바이오덤 3D 리프팅 앰플 30ml [단품/증정기획]'), NOW(), NOW()),
(35000, 'SALE', (SELECT id FROM product WHERE name = '[탄력앰플] 바이오힐 보 프로바이오덤 3D 리프팅 앰플 30ml [단품/증정기획]'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019833906ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[탄력앰플] 바이오힐 보 프로바이오덤 3D 리프팅 앰플 30ml [단품/증정기획]'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019833904ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[탄력앰플] 바이오힐 보 프로바이오덤 3D 리프팅 앰플 30ml [단품/증정기획]'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019833903ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[탄력앰플] 바이오힐 보 프로바이오덤 3D 리프팅 앰플 30ml [단품/증정기획]'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019833913ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[탄력앰플] 바이오힐 보 프로바이오덤 3D 리프팅 앰플 30ml [단품/증정기획]'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[탄력앰플] 바이오힐 보 프로바이오덤 3D 리프팅 앰플 30ml [단품/증정기획]';


-- ================================



-- ================================

-- 상품: 아누아 어성초 80 수분 진정 앰플 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아누아 어성초 80 수분 진정 앰플 30ml',
 '아누아 어성초 80 수분 진정 앰플 30ml',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아누아'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아누아 어성초 80 수분 진정 앰플 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아누아 어성초 80 수분 진정 앰플 30ml'), NOW(), NOW()),
(29000, 'SALE', (SELECT id FROM product WHERE name = '아누아 어성초 80 수분 진정 앰플 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021077202ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아누아 어성초 80 수분 진정 앰플 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021077201ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아누아 어성초 80 수분 진정 앰플 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021077204ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '아누아 어성초 80 수분 진정 앰플 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021077205ko.png?l=ko', 4, (SELECT id FROM product WHERE name = '아누아 어성초 80 수분 진정 앰플 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021077203ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '아누아 어성초 80 수분 진정 앰플 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아누아 어성초 80 수분 진정 앰플 30ml';


-- ================================



-- ================================

-- 상품: 닥터엘시아 비타민C 부스팅 세럼 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('닥터엘시아 비타민C 부스팅 세럼 30ml',
 '닥터엘시아 비타민C 부스팅 세럼 30ml',
 4.5,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터엘시아'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '닥터엘시아 비타민C 부스팅 세럼 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29000, 'ORIGINAL', (SELECT id FROM product WHERE name = '닥터엘시아 비타민C 부스팅 세럼 30ml'), NOW(), NOW()),
(29000, 'SALE', (SELECT id FROM product WHERE name = '닥터엘시아 비타민C 부스팅 세럼 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022194205ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '닥터엘시아 비타민C 부스팅 세럼 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '닥터엘시아 비타민C 부스팅 세럼 30ml';


-- ================================



-- ================================

-- 상품: [엔하이픈 희승 PICK] 믹순 순디 병풀 에센스 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[엔하이픈 희승 PICK] 믹순 순디 병풀 에센스 100ml',
 '[엔하이픈 희승 PICK] 믹순 순디 병풀 에센스 100ml',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '믹순'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[엔하이픈 희승 PICK] 믹순 순디 병풀 에센스 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[엔하이픈 희승 PICK] 믹순 순디 병풀 에센스 100ml'), NOW(), NOW()),
(28800, 'SALE', (SELECT id FROM product WHERE name = '[엔하이픈 희승 PICK] 믹순 순디 병풀 에센스 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015830918ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[엔하이픈 희승 PICK] 믹순 순디 병풀 에센스 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015830916ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[엔하이픈 희승 PICK] 믹순 순디 병풀 에센스 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015830915ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[엔하이픈 희승 PICK] 믹순 순디 병풀 에센스 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015830914ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[엔하이픈 희승 PICK] 믹순 순디 병풀 에센스 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015830913ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[엔하이픈 희승 PICK] 믹순 순디 병풀 에센스 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[엔하이픈 희승 PICK] 믹순 순디 병풀 에센스 100ml';


-- ================================



-- ================================

-- 상품: [단독기획/리프팅]AHC 프로 샷 콜라 쥬비네이션 리프팅 세럼 40ml 기획 (+아이크림 ...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[단독기획/리프팅]AHC 프로 샷 콜라 쥬비네이션 리프팅 세럼 40ml 기획 (+아이크림 10ml)',
 '[단독기획/리프팅]AHC 프로 샷 콜라 쥬비네이션 리프팅 세럼 40ml 기획 (+아이크림 10ml)',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'AHC'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[단독기획/리프팅]AHC 프로 샷 콜라 쥬비네이션 리프팅 세럼 40ml 기획 (+아이크림 10ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(36000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독기획/리프팅]AHC 프로 샷 콜라 쥬비네이션 리프팅 세럼 40ml 기획 (+아이크림 10ml)'), NOW(), NOW()),
(28800, 'SALE', (SELECT id FROM product WHERE name = '[단독기획/리프팅]AHC 프로 샷 콜라 쥬비네이션 리프팅 세럼 40ml 기획 (+아이크림 10ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020459415ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[단독기획/리프팅]AHC 프로 샷 콜라 쥬비네이션 리프팅 세럼 40ml 기획 (+아이크림 10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020459410ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[단독기획/리프팅]AHC 프로 샷 콜라 쥬비네이션 리프팅 세럼 40ml 기획 (+아이크림 10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020459404ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[단독기획/리프팅]AHC 프로 샷 콜라 쥬비네이션 리프팅 세럼 40ml 기획 (+아이크림 10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020459414ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[단독기획/리프팅]AHC 프로 샷 콜라 쥬비네이션 리프팅 세럼 40ml 기획 (+아이크림 10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020459413ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[단독기획/리프팅]AHC 프로 샷 콜라 쥬비네이션 리프팅 세럼 40ml 기획 (+아이크림 10ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[단독기획/리프팅]AHC 프로 샷 콜라 쥬비네이션 리프팅 세럼 40ml 기획 (+아이크림 10ml)';


-- ================================



-- ================================

-- 상품: [모공+피부결] 넘버즈인 3번 보들보들 결 세럼 50ml 기획 (+15ml 증정)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[모공+피부결] 넘버즈인 3번 보들보들 결 세럼 50ml 기획 (+15ml 증정)',
 '[모공+피부결] 넘버즈인 3번 보들보들 결 세럼 50ml 기획 (+15ml 증정)',
 4.7,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '넘버즈인'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[모공+피부결] 넘버즈인 3번 보들보들 결 세럼 50ml 기획 (+15ml 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[모공+피부결] 넘버즈인 3번 보들보들 결 세럼 50ml 기획 (+15ml 증정)'), NOW(), NOW()),
(30000, 'SALE', (SELECT id FROM product WHERE name = '[모공+피부결] 넘버즈인 3번 보들보들 결 세럼 50ml 기획 (+15ml 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019177408ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[모공+피부결] 넘버즈인 3번 보들보들 결 세럼 50ml 기획 (+15ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019177407ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[모공+피부결] 넘버즈인 3번 보들보들 결 세럼 50ml 기획 (+15ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019177406ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[모공+피부결] 넘버즈인 3번 보들보들 결 세럼 50ml 기획 (+15ml 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[모공+피부결] 넘버즈인 3번 보들보들 결 세럼 50ml 기획 (+15ml 증정)';


-- ================================



-- ================================

-- 상품: 차앤박(CNP) 더마앤서 멜라스팟 브라이트닝 비타C앰플 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('차앤박(CNP) 더마앤서 멜라스팟 브라이트닝 비타C앰플 50ml',
 '차앤박(CNP) 더마앤서 멜라스팟 브라이트닝 비타C앰플 50ml',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '차앤박'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '차앤박(CNP) 더마앤서 멜라스팟 브라이트닝 비타C앰플 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '차앤박(CNP) 더마앤서 멜라스팟 브라이트닝 비타C앰플 50ml'), NOW(), NOW()),
(28500, 'SALE', (SELECT id FROM product WHERE name = '차앤박(CNP) 더마앤서 멜라스팟 브라이트닝 비타C앰플 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020390604ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '차앤박(CNP) 더마앤서 멜라스팟 브라이트닝 비타C앰플 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020390602ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '차앤박(CNP) 더마앤서 멜라스팟 브라이트닝 비타C앰플 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020390603ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '차앤박(CNP) 더마앤서 멜라스팟 브라이트닝 비타C앰플 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020390601ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '차앤박(CNP) 더마앤서 멜라스팟 브라이트닝 비타C앰플 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '차앤박(CNP) 더마앤서 멜라스팟 브라이트닝 비타C앰플 50ml';


-- ================================



-- ================================

-- 상품: [인공눈물세럼/미백원액세럼][NEW]메디큐브 PDRN 핑크 원데이 세럼(1.5ml*10ea...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[인공눈물세럼/미백원액세럼][NEW]메디큐브 PDRN 핑크 원데이 세럼(1.5ml*10ea)',
 '[인공눈물세럼/미백원액세럼][NEW]메디큐브 PDRN 핑크 원데이 세럼(1.5ml*10ea)',
 4.9,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '메디큐브'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[인공눈물세럼/미백원액세럼][NEW]메디큐브 PDRN 핑크 원데이 세럼(1.5ml*10ea)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(21800, 'ORIGINAL', (SELECT id FROM product WHERE name = '[인공눈물세럼/미백원액세럼][NEW]메디큐브 PDRN 핑크 원데이 세럼(1.5ml*10ea)'), NOW(), NOW()),
(13300, 'SALE', (SELECT id FROM product WHERE name = '[인공눈물세럼/미백원액세럼][NEW]메디큐브 PDRN 핑크 원데이 세럼(1.5ml*10ea)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021967603ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[인공눈물세럼/미백원액세럼][NEW]메디큐브 PDRN 핑크 원데이 세럼(1.5ml*10ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021967602ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[인공눈물세럼/미백원액세럼][NEW]메디큐브 PDRN 핑크 원데이 세럼(1.5ml*10ea)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[인공눈물세럼/미백원액세럼][NEW]메디큐브 PDRN 핑크 원데이 세럼(1.5ml*10ea)';


-- ================================



-- ================================

-- 상품: 바이오더마 하이드라비오 세럼 40ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('바이오더마 하이드라비오 세럼 40ml',
 '바이오더마 하이드라비오 세럼 40ml',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오더마'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 세럼 40ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(40000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 세럼 40ml'), NOW(), NOW()),
(28000, 'SALE', (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 세럼 40ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0000/A00000000533615ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 세럼 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0000/A00000000533611ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 세럼 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0000/A00000000533612ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 세럼 40ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0000/A00000000533617ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 세럼 40ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '바이오더마 하이드라비오 세럼 40ml';


-- ================================



-- ================================

-- 상품: 차앤박(CNP) 히알루로닉 더마텐션 세럼 더블용량 기획(30ml+15ml*2EA)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('차앤박(CNP) 히알루로닉 더마텐션 세럼 더블용량 기획(30ml+15ml*2EA)',
 '차앤박(CNP) 히알루로닉 더마텐션 세럼 더블용량 기획(30ml+15ml*2EA)',
 4.8,
 (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '차앤박'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '차앤박(CNP) 히알루로닉 더마텐션 세럼 더블용량 기획(30ml+15ml*2EA)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(41000, 'ORIGINAL', (SELECT id FROM product WHERE name = '차앤박(CNP) 히알루로닉 더마텐션 세럼 더블용량 기획(30ml+15ml*2EA)'), NOW(), NOW()),
(28000, 'SALE', (SELECT id FROM product WHERE name = '차앤박(CNP) 히알루로닉 더마텐션 세럼 더블용량 기획(30ml+15ml*2EA)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015075614ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '차앤박(CNP) 히알루로닉 더마텐션 세럼 더블용량 기획(30ml+15ml*2EA)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015075615ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '차앤박(CNP) 히알루로닉 더마텐션 세럼 더블용량 기획(30ml+15ml*2EA)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015075616ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '차앤박(CNP) 히알루로닉 더마텐션 세럼 더블용량 기획(30ml+15ml*2EA)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015075617ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '차앤박(CNP) 히알루로닉 더마텐션 세럼 더블용량 기획(30ml+15ml*2EA)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015075618ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '차앤박(CNP) 히알루로닉 더마텐션 세럼 더블용량 기획(30ml+15ml*2EA)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015075619ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '차앤박(CNP) 히알루로닉 더마텐션 세럼 더블용량 기획(30ml+15ml*2EA)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '차앤박(CNP) 히알루로닉 더마텐션 세럼 더블용량 기획(30ml+15ml*2EA)';


-- ================================

