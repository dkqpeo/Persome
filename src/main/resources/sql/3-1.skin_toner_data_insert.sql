-- 실행 전 다음 스크립트들을 순서대로 실행해야 합니다:
-- 1. 2.category_data_insert.sql
-- 2. 1.Persome_brand_scrept.sql

-- 기존 데이터 삭제 (필요시)
-- DELETE FROM inventory;
-- DELETE FROM product_img;
-- DELETE FROM product_price;
-- DELETE FROM product_option;
-- DELETE FROM product;

-- 상품: [9월 올영픽] 바이오더마 하이드라비오 토너 500ml 2입 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽] 바이오더마 하이드라비오 토너 500ml 2입 기획',
 '[9월 올영픽] 바이오더마 하이드라비오 토너 500ml 2입 기획',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오더마'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9월 올영픽] 바이오더마 하이드라비오 토너 500ml 2입 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(59000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽] 바이오더마 하이드라비오 토너 500ml 2입 기획'), NOW(), NOW()),
(38710, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽] 바이오더마 하이드라비오 토너 500ml 2입 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023219702ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽] 바이오더마 하이드라비오 토너 500ml 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023219706ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽] 바이오더마 하이드라비오 토너 500ml 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023219705ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽] 바이오더마 하이드라비오 토너 500ml 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023219704ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[9월 올영픽] 바이오더마 하이드라비오 토너 500ml 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023219703ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[9월 올영픽] 바이오더마 하이드라비오 토너 500ml 2입 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[9월 올영픽] 바이오더마 하이드라비오 토너 500ml 2입 기획';


-- ================================

-- 상품: [증량기획] 토리든 다이브인 저분자 히알루론산 토너 300ml 기획(+100ml 추가 증정...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[증량기획] 토리든 다이브인 저분자 히알루론산 토너 300ml 기획(+100ml 추가 증정)',
 '[증량기획] 토리든 다이브인 저분자 히알루론산 토너 300ml 기획(+100ml 추가 증정)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '토리든'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[증량기획] 토리든 다이브인 저분자 히알루론산 토너 300ml 기획(+100ml 추가 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(21000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[증량기획] 토리든 다이브인 저분자 히알루론산 토너 300ml 기획(+100ml 추가 증정)'), NOW(), NOW()),
(15700, 'SALE', (SELECT id FROM product WHERE name = '[증량기획] 토리든 다이브인 저분자 히알루론산 토너 300ml 기획(+100ml 추가 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017026613ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[증량기획] 토리든 다이브인 저분자 히알루론산 토너 300ml 기획(+100ml 추가 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017026611ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[증량기획] 토리든 다이브인 저분자 히알루론산 토너 300ml 기획(+100ml 추가 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017026609ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[증량기획] 토리든 다이브인 저분자 히알루론산 토너 300ml 기획(+100ml 추가 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[증량기획] 토리든 다이브인 저분자 히알루론산 토너 300ml 기획(+100ml 추가 증정)';


-- ================================

-- 상품: [대용량] 아누아 어성초 77 수딩 토너 500ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[대용량] 아누아 어성초 77 수딩 토너 500ml',
 '[대용량] 아누아 어성초 77 수딩 토너 500ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아누아'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[대용량] 아누아 어성초 77 수딩 토너 500ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(45000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[대용량] 아누아 어성초 77 수딩 토너 500ml'), NOW(), NOW()),
(26500, 'SALE', (SELECT id FROM product WHERE name = '[대용량] 아누아 어성초 77 수딩 토너 500ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021113309ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[대용량] 아누아 어성초 77 수딩 토너 500ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021113305ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[대용량] 아누아 어성초 77 수딩 토너 500ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021113306ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[대용량] 아누아 어성초 77 수딩 토너 500ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021113307ko.png?l=ko', 4, (SELECT id FROM product WHERE name = '[대용량] 아누아 어성초 77 수딩 토너 500ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021113303ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[대용량] 아누아 어성초 77 수딩 토너 500ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[대용량] 아누아 어성초 77 수딩 토너 500ml';


-- ================================

-- 상품: [첫수분토너] 웰라쥬 리얼 히알루로닉 100 토너 300ml 기획 (+화장솜 60매)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[첫수분토너] 웰라쥬 리얼 히알루로닉 100 토너 300ml 기획 (+화장솜 60매)',
 '[첫수분토너] 웰라쥬 리얼 히알루로닉 100 토너 300ml 기획 (+화장솜 60매)',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '웰라쥬'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[첫수분토너] 웰라쥬 리얼 히알루로닉 100 토너 300ml 기획 (+화장솜 60매)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[첫수분토너] 웰라쥬 리얼 히알루로닉 100 토너 300ml 기획 (+화장솜 60매)'), NOW(), NOW()),
(28000, 'SALE', (SELECT id FROM product WHERE name = '[첫수분토너] 웰라쥬 리얼 히알루로닉 100 토너 300ml 기획 (+화장솜 60매)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018887439ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[첫수분토너] 웰라쥬 리얼 히알루로닉 100 토너 300ml 기획 (+화장솜 60매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018887440ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[첫수분토너] 웰라쥬 리얼 히알루로닉 100 토너 300ml 기획 (+화장솜 60매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018887441ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[첫수분토너] 웰라쥬 리얼 히알루로닉 100 토너 300ml 기획 (+화장솜 60매)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[첫수분토너] 웰라쥬 리얼 히알루로닉 100 토너 300ml 기획 (+화장솜 60매)';


-- ================================

-- 상품: [피지쓱싹] 브링그린 티트리시카수딩토너 250mL/500mL 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[피지쓱싹] 브링그린 티트리시카수딩토너 250mL/500mL 기획',
 '[피지쓱싹] 브링그린 티트리시카수딩토너 250mL/500mL 기획',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '브링그린'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('토너250ml+ 헤어스크런치', 12150, (SELECT id FROM product WHERE name = '[피지쓱싹] 브링그린 티트리시카수딩토너 250mL/500mL 기획'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('토너500ml+피지처방키트3개입', 17900, (SELECT id FROM product WHERE name = '[피지쓱싹] 브링그린 티트리시카수딩토너 250mL/500mL 기획'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('토너500ml+트러블세럼3ml', 17900, (SELECT id FROM product WHERE name = '[피지쓱싹] 브링그린 티트리시카수딩토너 250mL/500mL 기획'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('토너500ml+ 화장솜 60매', 0, (SELECT id FROM product WHERE name = '[피지쓱싹] 브링그린 티트리시카수딩토너 250mL/500mL 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(15000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[피지쓱싹] 브링그린 티트리시카수딩토너 250mL/500mL 기획'), NOW(), NOW()),
(12150, 'SALE', (SELECT id FROM product WHERE name = '[피지쓱싹] 브링그린 티트리시카수딩토너 250mL/500mL 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018918127ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[피지쓱싹] 브링그린 티트리시카수딩토너 250mL/500mL 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018918117ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[피지쓱싹] 브링그린 티트리시카수딩토너 250mL/500mL 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018918125ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[피지쓱싹] 브링그린 티트리시카수딩토너 250mL/500mL 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018918121ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[피지쓱싹] 브링그린 티트리시카수딩토너 250mL/500mL 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018918112ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[피지쓱싹] 브링그린 티트리시카수딩토너 250mL/500mL 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[피지쓱싹] 브링그린 티트리시카수딩토너 250mL/500mL 기획';


-- ================================

-- 상품: [모공개선/탄력광채] 넘버즈인 3번 결광가득 에센스 토너 300ml 대용량 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[모공개선/탄력광채] 넘버즈인 3번 결광가득 에센스 토너 300ml 대용량 기획',
 '[모공개선/탄력광채] 넘버즈인 3번 결광가득 에센스 토너 300ml 대용량 기획',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '넘버즈인'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[모공개선/탄력광채] 넘버즈인 3번 결광가득 에센스 토너 300ml 대용량 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[모공개선/탄력광채] 넘버즈인 3번 결광가득 에센스 토너 300ml 대용량 기획'), NOW(), NOW()),
(21850, 'SALE', (SELECT id FROM product WHERE name = '[모공개선/탄력광채] 넘버즈인 3번 결광가득 에센스 토너 300ml 대용량 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017358912ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[모공개선/탄력광채] 넘버즈인 3번 결광가득 에센스 토너 300ml 대용량 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017358910ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[모공개선/탄력광채] 넘버즈인 3번 결광가득 에센스 토너 300ml 대용량 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017358903ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[모공개선/탄력광채] 넘버즈인 3번 결광가득 에센스 토너 300ml 대용량 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017358909ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[모공개선/탄력광채] 넘버즈인 3번 결광가득 에센스 토너 300ml 대용량 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017358908ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[모공개선/탄력광채] 넘버즈인 3번 결광가득 에센스 토너 300ml 대용량 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[모공개선/탄력광채] 넘버즈인 3번 결광가득 에센스 토너 300ml 대용량 기획';


-- ================================

-- 상품: [9월 올영픽]피지오겔 DMT 에센스 인 토너 200ml (+DMT크림 10ml*2)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽]피지오겔 DMT 에센스 인 토너 200ml (+DMT크림 10ml*2)',
 '[9월 올영픽]피지오겔 DMT 에센스 인 토너 200ml (+DMT크림 10ml*2)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '피지오겔'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9월 올영픽]피지오겔 DMT 에센스 인 토너 200ml (+DMT크림 10ml*2)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽]피지오겔 DMT 에센스 인 토너 200ml (+DMT크림 10ml*2)'), NOW(), NOW()),
(21660, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽]피지오겔 DMT 에센스 인 토너 200ml (+DMT크림 10ml*2)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023218807ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽]피지오겔 DMT 에센스 인 토너 200ml (+DMT크림 10ml*2)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023218808ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽]피지오겔 DMT 에센스 인 토너 200ml (+DMT크림 10ml*2)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023218806ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽]피지오겔 DMT 에센스 인 토너 200ml (+DMT크림 10ml*2)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[9월 올영픽]피지오겔 DMT 에센스 인 토너 200ml (+DMT크림 10ml*2)';


-- ================================

-- 상품: [9월 올영픽] 아누아 피디알엔 100 히알루론산 부스터 토너 250ml 기획세트 (+40...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽] 아누아 피디알엔 100 히알루론산 부스터 토너 250ml 기획세트 (+40ml)',
 '[9월 올영픽] 아누아 피디알엔 100 히알루론산 부스터 토너 250ml 기획세트 (+40ml)',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아누아'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 피디알엔 100 히알루론산 부스터 토너 250ml 기획세트 (+40ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 피디알엔 100 히알루론산 부스터 토너 250ml 기획세트 (+40ml)'), NOW(), NOW()),
(15900, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 피디알엔 100 히알루론산 부스터 토너 250ml 기획세트 (+40ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189112ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 피디알엔 100 히알루론산 부스터 토너 250ml 기획세트 (+40ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189110ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 피디알엔 100 히알루론산 부스터 토너 250ml 기획세트 (+40ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189103ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 피디알엔 100 히알루론산 부스터 토너 250ml 기획세트 (+40ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189104ko.png?l=ko', 4, (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 피디알엔 100 히알루론산 부스터 토너 250ml 기획세트 (+40ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189105ko.png?l=ko', 5, (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 피디알엔 100 히알루론산 부스터 토너 250ml 기획세트 (+40ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189106ko.png?l=ko', 6, (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 피디알엔 100 히알루론산 부스터 토너 250ml 기획세트 (+40ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[9월 올영픽] 아누아 피디알엔 100 히알루론산 부스터 토너 250ml 기획세트 (+40ml)';


-- ================================

-- 상품: [9월 올영픽] 아누아 어성초 77 수딩 토너 250ml 기획 (+로션 100ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽] 아누아 어성초 77 수딩 토너 250ml 기획 (+로션 100ml)',
 '[9월 올영픽] 아누아 어성초 77 수딩 토너 250ml 기획 (+로션 100ml)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아누아'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 어성초 77 수딩 토너 250ml 기획 (+로션 100ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 어성초 77 수딩 토너 250ml 기획 (+로션 100ml)'), NOW(), NOW()),
(19900, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 어성초 77 수딩 토너 250ml 기획 (+로션 100ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021635008ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 어성초 77 수딩 토너 250ml 기획 (+로션 100ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021635009ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 어성초 77 수딩 토너 250ml 기획 (+로션 100ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021635007ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 어성초 77 수딩 토너 250ml 기획 (+로션 100ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021635001ko.png?l=ko', 4, (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 어성초 77 수딩 토너 250ml 기획 (+로션 100ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021635004ko.png?l=ko', 5, (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 어성초 77 수딩 토너 250ml 기획 (+로션 100ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[9월 올영픽] 아누아 어성초 77 수딩 토너 250ml 기획 (+로션 100ml)';


-- ================================

-- 상품: [수분진정] 아비브 어성초 카밍 토너 스킨부스터 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분진정] 아비브 어성초 카밍 토너 스킨부스터 200ml',
 '[수분진정] 아비브 어성초 카밍 토너 스킨부스터 200ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아비브'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분진정] 아비브 어성초 카밍 토너 스킨부스터 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분진정] 아비브 어성초 카밍 토너 스킨부스터 200ml'), NOW(), NOW()),
(16100, 'SALE', (SELECT id FROM product WHERE name = '[수분진정] 아비브 어성초 카밍 토너 스킨부스터 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014658915ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분진정] 아비브 어성초 카밍 토너 스킨부스터 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014658910ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분진정] 아비브 어성초 카밍 토너 스킨부스터 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분진정] 아비브 어성초 카밍 토너 스킨부스터 200ml';


-- ================================

-- 상품: 에스트라 에이시카365 수분토너 pH4.5 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('에스트라 에이시카365 수분토너 pH4.5 200ml',
 '에스트라 에이시카365 수분토너 pH4.5 200ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에스트라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '에스트라 에이시카365 수분토너 pH4.5 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '에스트라 에이시카365 수분토너 pH4.5 200ml'), NOW(), NOW()),
(24900, 'SALE', (SELECT id FROM product WHERE name = '에스트라 에이시카365 수분토너 pH4.5 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021854909ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '에스트라 에이시카365 수분토너 pH4.5 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021854901ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '에스트라 에이시카365 수분토너 pH4.5 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '에스트라 에이시카365 수분토너 pH4.5 200ml';


-- ================================

-- 상품: [속보습] 더랩바이블랑두 저분자 히알루론산 딥 토너 200ml + 50ml 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[속보습] 더랩바이블랑두 저분자 히알루론산 딥 토너 200ml + 50ml 기획',
 '[속보습] 더랩바이블랑두 저분자 히알루론산 딥 토너 200ml + 50ml 기획',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더랩바이블랑두'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[속보습] 더랩바이블랑두 저분자 히알루론산 딥 토너 200ml + 50ml 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[속보습] 더랩바이블랑두 저분자 히알루론산 딥 토너 200ml + 50ml 기획'), NOW(), NOW()),
(15990, 'SALE', (SELECT id FROM product WHERE name = '[속보습] 더랩바이블랑두 저분자 히알루론산 딥 토너 200ml + 50ml 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018948817ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[속보습] 더랩바이블랑두 저분자 히알루론산 딥 토너 200ml + 50ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018948816ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[속보습] 더랩바이블랑두 저분자 히알루론산 딥 토너 200ml + 50ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018948813ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[속보습] 더랩바이블랑두 저분자 히알루론산 딥 토너 200ml + 50ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018948812ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[속보습] 더랩바이블랑두 저분자 히알루론산 딥 토너 200ml + 50ml 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[속보습] 더랩바이블랑두 저분자 히알루론산 딥 토너 200ml + 50ml 기획';


-- ================================

-- 상품: [단독기획/속건조해결] 파티온 포도당 하이드로 에센스토너 300ml 더블 기획(2개입)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[단독기획/속건조해결] 파티온 포도당 하이드로 에센스토너 300ml 더블 기획(2개입)',
 '[단독기획/속건조해결] 파티온 포도당 하이드로 에센스토너 300ml 더블 기획(2개입)',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '파티온'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[단독기획/속건조해결] 파티온 포도당 하이드로 에센스토너 300ml 더블 기획(2개입)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독기획/속건조해결] 파티온 포도당 하이드로 에센스토너 300ml 더블 기획(2개입)'), NOW(), NOW()),
(24900, 'SALE', (SELECT id FROM product WHERE name = '[단독기획/속건조해결] 파티온 포도당 하이드로 에센스토너 300ml 더블 기획(2개입)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022284909ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[단독기획/속건조해결] 파티온 포도당 하이드로 에센스토너 300ml 더블 기획(2개입)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022284907ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[단독기획/속건조해결] 파티온 포도당 하이드로 에센스토너 300ml 더블 기획(2개입)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[단독기획/속건조해결] 파티온 포도당 하이드로 에센스토너 300ml 더블 기획(2개입)';


-- ================================

-- 상품: [한정] 라운드랩 1025 독도 토너 300ml 기획 (+100ml+늘어나는 스킨 패드 3...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[한정] 라운드랩 1025 독도 토너 300ml 기획 (+100ml+늘어나는 스킨 패드 30매)',
 '[한정] 라운드랩 1025 독도 토너 300ml 기획 (+100ml+늘어나는 스킨 패드 30매)',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라운드랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[한정] 라운드랩 1025 독도 토너 300ml 기획 (+100ml+늘어나는 스킨 패드 30매)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[한정] 라운드랩 1025 독도 토너 300ml 기획 (+100ml+늘어나는 스킨 패드 30매)'), NOW(), NOW()),
(20900, 'SALE', (SELECT id FROM product WHERE name = '[한정] 라운드랩 1025 독도 토너 300ml 기획 (+100ml+늘어나는 스킨 패드 30매)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023251307ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[한정] 라운드랩 1025 독도 토너 300ml 기획 (+100ml+늘어나는 스킨 패드 30매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023251305ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[한정] 라운드랩 1025 독도 토너 300ml 기획 (+100ml+늘어나는 스킨 패드 30매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023251304ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[한정] 라운드랩 1025 독도 토너 300ml 기획 (+100ml+늘어나는 스킨 패드 30매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023251301ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[한정] 라운드랩 1025 독도 토너 300ml 기획 (+100ml+늘어나는 스킨 패드 30매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023251303ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[한정] 라운드랩 1025 독도 토너 300ml 기획 (+100ml+늘어나는 스킨 패드 30매)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[한정] 라운드랩 1025 독도 토너 300ml 기획 (+100ml+늘어나는 스킨 패드 30매)';


-- ================================

-- 상품: [속보습] 닥터지 더모이스처 배리어 D 리퀴드 토너 200ml 기획 (+100ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[속보습] 닥터지 더모이스처 배리어 D 리퀴드 토너 200ml 기획 (+100ml)',
 '[속보습] 닥터지 더모이스처 배리어 D 리퀴드 토너 200ml 기획 (+100ml)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터지'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[속보습] 닥터지 더모이스처 배리어 D 리퀴드 토너 200ml 기획 (+100ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(31000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[속보습] 닥터지 더모이스처 배리어 D 리퀴드 토너 200ml 기획 (+100ml)'), NOW(), NOW()),
(31000, 'SALE', (SELECT id FROM product WHERE name = '[속보습] 닥터지 더모이스처 배리어 D 리퀴드 토너 200ml 기획 (+100ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019887404ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[속보습] 닥터지 더모이스처 배리어 D 리퀴드 토너 200ml 기획 (+100ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019887403ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[속보습] 닥터지 더모이스처 배리어 D 리퀴드 토너 200ml 기획 (+100ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019887405ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[속보습] 닥터지 더모이스처 배리어 D 리퀴드 토너 200ml 기획 (+100ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019887406ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[속보습] 닥터지 더모이스처 배리어 D 리퀴드 토너 200ml 기획 (+100ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[속보습] 닥터지 더모이스처 배리어 D 리퀴드 토너 200ml 기획 (+100ml)';


-- ================================

-- 상품: [1등토너] 라운드랩 1025 독도 토너 200ml 기획 (+50ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[1등토너] 라운드랩 1025 독도 토너 200ml 기획 (+50ml)',
 '[1등토너] 라운드랩 1025 독도 토너 200ml 기획 (+50ml)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라운드랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[1등토너] 라운드랩 1025 독도 토너 200ml 기획 (+50ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(15000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1등토너] 라운드랩 1025 독도 토너 200ml 기획 (+50ml)'), NOW(), NOW()),
(13500, 'SALE', (SELECT id FROM product WHERE name = '[1등토너] 라운드랩 1025 독도 토너 200ml 기획 (+50ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013216233ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[1등토너] 라운드랩 1025 독도 토너 200ml 기획 (+50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013216229ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[1등토너] 라운드랩 1025 독도 토너 200ml 기획 (+50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013216230ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[1등토너] 라운드랩 1025 독도 토너 200ml 기획 (+50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013216227ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[1등토너] 라운드랩 1025 독도 토너 200ml 기획 (+50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013216231ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[1등토너] 라운드랩 1025 독도 토너 200ml 기획 (+50ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[1등토너] 라운드랩 1025 독도 토너 200ml 기획 (+50ml)';


-- ================================

-- 상품: [온라인단독] 브링그린 티트리시카수딩 토너 & 크림 세트...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[온라인단독] 브링그린 티트리시카수딩 토너 & 크림 세트',
 '[온라인단독] 브링그린 티트리시카수딩 토너 & 크림 세트',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '브링그린'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[온라인단독] 브링그린 티트리시카수딩 토너 & 크림 세트'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(34000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[온라인단독] 브링그린 티트리시카수딩 토너 & 크림 세트'), NOW(), NOW()),
(18450, 'SALE', (SELECT id FROM product WHERE name = '[온라인단독] 브링그린 티트리시카수딩 토너 & 크림 세트'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018899002ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[온라인단독] 브링그린 티트리시카수딩 토너 & 크림 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018899004ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[온라인단독] 브링그린 티트리시카수딩 토너 & 크림 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018899003ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[온라인단독] 브링그린 티트리시카수딩 토너 & 크림 세트'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[온라인단독] 브링그린 티트리시카수딩 토너 & 크림 세트';


-- ================================

-- 상품: [바르는각질제거제]폴라초이스 스킨퍼펙팅 바하 리퀴드 118ml 기획 (+바하 리퀴드 30m...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[바르는각질제거제]폴라초이스 스킨퍼펙팅 바하 리퀴드 118ml 기획 (+바하 리퀴드 30ml)',
 '[바르는각질제거제]폴라초이스 스킨퍼펙팅 바하 리퀴드 118ml 기획 (+바하 리퀴드 30ml)',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '폴라초이스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[바르는각질제거제]폴라초이스 스킨퍼펙팅 바하 리퀴드 118ml 기획 (+바하 리퀴드 30ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[바르는각질제거제]폴라초이스 스킨퍼펙팅 바하 리퀴드 118ml 기획 (+바하 리퀴드 30ml)'), NOW(), NOW()),
(28000, 'SALE', (SELECT id FROM product WHERE name = '[바르는각질제거제]폴라초이스 스킨퍼펙팅 바하 리퀴드 118ml 기획 (+바하 리퀴드 30ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021055014ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[바르는각질제거제]폴라초이스 스킨퍼펙팅 바하 리퀴드 118ml 기획 (+바하 리퀴드 30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021055008ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[바르는각질제거제]폴라초이스 스킨퍼펙팅 바하 리퀴드 118ml 기획 (+바하 리퀴드 30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021055007ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[바르는각질제거제]폴라초이스 스킨퍼펙팅 바하 리퀴드 118ml 기획 (+바하 리퀴드 30ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[바르는각질제거제]폴라초이스 스킨퍼펙팅 바하 리퀴드 118ml 기획 (+바하 리퀴드 30ml)';


-- ================================

-- 상품: [대용량/총500ml] 마녀공장 비피다 바이옴 앰플 토너 400ml+100ml 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[대용량/총500ml] 마녀공장 비피다 바이옴 앰플 토너 400ml+100ml 기획',
 '[대용량/총500ml] 마녀공장 비피다 바이옴 앰플 토너 400ml+100ml 기획',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '마녀공장'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[대용량/총500ml] 마녀공장 비피다 바이옴 앰플 토너 400ml+100ml 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[대용량/총500ml] 마녀공장 비피다 바이옴 앰플 토너 400ml+100ml 기획'), NOW(), NOW()),
(17500, 'SALE', (SELECT id FROM product WHERE name = '[대용량/총500ml] 마녀공장 비피다 바이옴 앰플 토너 400ml+100ml 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014828522ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[대용량/총500ml] 마녀공장 비피다 바이옴 앰플 토너 400ml+100ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014828521ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[대용량/총500ml] 마녀공장 비피다 바이옴 앰플 토너 400ml+100ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014828517ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[대용량/총500ml] 마녀공장 비피다 바이옴 앰플 토너 400ml+100ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014828519ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[대용량/총500ml] 마녀공장 비피다 바이옴 앰플 토너 400ml+100ml 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[대용량/총500ml] 마녀공장 비피다 바이옴 앰플 토너 400ml+100ml 기획';


-- ================================

-- 상품: 랩시리즈 데일리 레스큐 워터로션 200ml 기획세트 (+워터로션 30ml*2)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('랩시리즈 데일리 레스큐 워터로션 200ml 기획세트 (+워터로션 30ml*2)',
 '랩시리즈 데일리 레스큐 워터로션 200ml 기획세트 (+워터로션 30ml*2)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '랩시리즈'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '랩시리즈 데일리 레스큐 워터로션 200ml 기획세트 (+워터로션 30ml*2)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(62000, 'ORIGINAL', (SELECT id FROM product WHERE name = '랩시리즈 데일리 레스큐 워터로션 200ml 기획세트 (+워터로션 30ml*2)'), NOW(), NOW()),
(52700, 'SALE', (SELECT id FROM product WHERE name = '랩시리즈 데일리 레스큐 워터로션 200ml 기획세트 (+워터로션 30ml*2)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019982411ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '랩시리즈 데일리 레스큐 워터로션 200ml 기획세트 (+워터로션 30ml*2)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019982406ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '랩시리즈 데일리 레스큐 워터로션 200ml 기획세트 (+워터로션 30ml*2)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '랩시리즈 데일리 레스큐 워터로션 200ml 기획세트 (+워터로션 30ml*2)';


-- ================================

-- 상품: 랩시리즈 클리어 LS 세범 컨트롤 매티파잉 에센스 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('랩시리즈 클리어 LS 세범 컨트롤 매티파잉 에센스 200ml',
 '랩시리즈 클리어 LS 세범 컨트롤 매티파잉 에센스 200ml',
 0.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '랩시리즈'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '랩시리즈 클리어 LS 세범 컨트롤 매티파잉 에센스 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(61000, 'ORIGINAL', (SELECT id FROM product WHERE name = '랩시리즈 클리어 LS 세범 컨트롤 매티파잉 에센스 200ml'), NOW(), NOW()),
(51850, 'SALE', (SELECT id FROM product WHERE name = '랩시리즈 클리어 LS 세범 컨트롤 매티파잉 에센스 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022549201ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '랩시리즈 클리어 LS 세범 컨트롤 매티파잉 에센스 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022549203ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '랩시리즈 클리어 LS 세범 컨트롤 매티파잉 에센스 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022549202ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '랩시리즈 클리어 LS 세범 컨트롤 매티파잉 에센스 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '랩시리즈 클리어 LS 세범 컨트롤 매티파잉 에센스 200ml';


-- ================================

-- 상품: [수분진정/화해1위] 에스네이처 아쿠아 오아시스 토너 300ml 기획 (+젤크림 30ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분진정/화해1위] 에스네이처 아쿠아 오아시스 토너 300ml 기획 (+젤크림 30ml)',
 '[수분진정/화해1위] 에스네이처 아쿠아 오아시스 토너 300ml 기획 (+젤크림 30ml)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에스네이처'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분진정/화해1위] 에스네이처 아쿠아 오아시스 토너 300ml 기획 (+젤크림 30ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분진정/화해1위] 에스네이처 아쿠아 오아시스 토너 300ml 기획 (+젤크림 30ml)'), NOW(), NOW()),
(24000, 'SALE', (SELECT id FROM product WHERE name = '[수분진정/화해1위] 에스네이처 아쿠아 오아시스 토너 300ml 기획 (+젤크림 30ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021317196ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분진정/화해1위] 에스네이처 아쿠아 오아시스 토너 300ml 기획 (+젤크림 30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021317189ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분진정/화해1위] 에스네이처 아쿠아 오아시스 토너 300ml 기획 (+젤크림 30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021317185ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분진정/화해1위] 에스네이처 아쿠아 오아시스 토너 300ml 기획 (+젤크림 30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021317187ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[수분진정/화해1위] 에스네이처 아쿠아 오아시스 토너 300ml 기획 (+젤크림 30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021317186ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[수분진정/화해1위] 에스네이처 아쿠아 오아시스 토너 300ml 기획 (+젤크림 30ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분진정/화해1위] 에스네이처 아쿠아 오아시스 토너 300ml 기획 (+젤크림 30ml)';


-- ================================

-- 상품: 라로슈포제 시카플라스트 B5 스프레이 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('라로슈포제 시카플라스트 B5 스프레이 100ml',
 '라로슈포제 시카플라스트 B5 스프레이 100ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라로슈포제'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '라로슈포제 시카플라스트 B5 스프레이 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '라로슈포제 시카플라스트 B5 스프레이 100ml'), NOW(), NOW()),
(22500, 'SALE', (SELECT id FROM product WHERE name = '라로슈포제 시카플라스트 B5 스프레이 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018002403ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '라로슈포제 시카플라스트 B5 스프레이 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018002402ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '라로슈포제 시카플라스트 B5 스프레이 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018002404ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '라로슈포제 시카플라스트 B5 스프레이 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '라로슈포제 시카플라스트 B5 스프레이 100ml';


-- ================================

-- 상품: 라로슈포제 똘러리앙 울트라 로션 400ML (대용량)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('라로슈포제 똘러리앙 울트라 로션 400ML (대용량)',
 '라로슈포제 똘러리앙 울트라 로션 400ML (대용량)',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라로슈포제'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '라로슈포제 똘러리앙 울트라 로션 400ML (대용량)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(49000, 'ORIGINAL', (SELECT id FROM product WHERE name = '라로슈포제 똘러리앙 울트라 로션 400ML (대용량)'), NOW(), NOW()),
(44100, 'SALE', (SELECT id FROM product WHERE name = '라로슈포제 똘러리앙 울트라 로션 400ML (대용량)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013934803ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '라로슈포제 똘러리앙 울트라 로션 400ML (대용량)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013934804ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '라로슈포제 똘러리앙 울트라 로션 400ML (대용량)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '라로슈포제 똘러리앙 울트라 로션 400ML (대용량)';


-- ================================

-- 상품: AHC 허브솔루션 위치하젤 토너 500ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('AHC 허브솔루션 위치하젤 토너 500ml',
 'AHC 허브솔루션 위치하젤 토너 500ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'AHC'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[토너]_위치하젤', 15000, (SELECT id FROM product WHERE name = 'AHC 허브솔루션 위치하젤 토너 500ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(15000, 'ORIGINAL', (SELECT id FROM product WHERE name = 'AHC 허브솔루션 위치하젤 토너 500ml'), NOW(), NOW()),
(15000, 'SALE', (SELECT id FROM product WHERE name = 'AHC 허브솔루션 위치하젤 토너 500ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016535501ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = 'AHC 허브솔루션 위치하젤 토너 500ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = 'AHC 허브솔루션 위치하젤 토너 500ml';


-- ================================

-- 상품: [민감진정] 라운드랩 소나무 진정 시카 토너 250ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[민감진정] 라운드랩 소나무 진정 시카 토너 250ml',
 '[민감진정] 라운드랩 소나무 진정 시카 토너 250ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라운드랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[민감진정] 라운드랩 소나무 진정 시카 토너 250ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[민감진정] 라운드랩 소나무 진정 시카 토너 250ml'), NOW(), NOW()),
(19900, 'SALE', (SELECT id FROM product WHERE name = '[민감진정] 라운드랩 소나무 진정 시카 토너 250ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018479001ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[민감진정] 라운드랩 소나무 진정 시카 토너 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018479006ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[민감진정] 라운드랩 소나무 진정 시카 토너 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018479005ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[민감진정] 라운드랩 소나무 진정 시카 토너 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018479004ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[민감진정] 라운드랩 소나무 진정 시카 토너 250ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[민감진정] 라운드랩 소나무 진정 시카 토너 250ml';


-- ================================

-- 상품: 에스트라 테라크네365 하이드로 액티브 토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('에스트라 테라크네365 하이드로 액티브 토너 200ml',
 '에스트라 테라크네365 하이드로 액티브 토너 200ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에스트라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '에스트라 테라크네365 하이드로 액티브 토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '에스트라 테라크네365 하이드로 액티브 토너 200ml'), NOW(), NOW()),
(30000, 'SALE', (SELECT id FROM product WHERE name = '에스트라 테라크네365 하이드로 액티브 토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018268602ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '에스트라 테라크네365 하이드로 액티브 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018268603ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '에스트라 테라크네365 하이드로 액티브 토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '에스트라 테라크네365 하이드로 액티브 토너 200ml';


-- ================================

-- 상품: [증정기획/대용량] 토리든 다이브인 저분자 히알루론산 토너 500ml 기획 (+화장솜 60...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[증정기획/대용량] 토리든 다이브인 저분자 히알루론산 토너 500ml 기획 (+화장솜 60매 증정)',
 '[증정기획/대용량] 토리든 다이브인 저분자 히알루론산 토너 500ml 기획 (+화장솜 60매 증정)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '토리든'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[증정기획/대용량] 토리든 다이브인 저분자 히알루론산 토너 500ml 기획 (+화장솜 60매 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[증정기획/대용량] 토리든 다이브인 저분자 히알루론산 토너 500ml 기획 (+화장솜 60매 증정)'), NOW(), NOW()),
(29000, 'SALE', (SELECT id FROM product WHERE name = '[증정기획/대용량] 토리든 다이브인 저분자 히알루론산 토너 500ml 기획 (+화장솜 60매 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018047415ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[증정기획/대용량] 토리든 다이브인 저분자 히알루론산 토너 500ml 기획 (+화장솜 60매 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018047411ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[증정기획/대용량] 토리든 다이브인 저분자 히알루론산 토너 500ml 기획 (+화장솜 60매 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018047408ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[증정기획/대용량] 토리든 다이브인 저분자 히알루론산 토너 500ml 기획 (+화장솜 60매 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[증정기획/대용량] 토리든 다이브인 저분자 히알루론산 토너 500ml 기획 (+화장솜 60매 증정)';

-- ================================

-- 상품: [단독 리필기획] 구달 어성초 히알루론 수딩 토너 350ml 리필 기획 (+350ml 리필...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[단독 리필기획] 구달 어성초 히알루론 수딩 토너 350ml 리필 기획 (+350ml 리필)',
 '[단독 리필기획] 구달 어성초 히알루론 수딩 토너 350ml 리필 기획 (+350ml 리필)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '구달'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[단독 리필기획] 구달 어성초 히알루론 수딩 토너 350ml 리필 기획 (+350ml 리필)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독 리필기획] 구달 어성초 히알루론 수딩 토너 350ml 리필 기획 (+350ml 리필)'), NOW(), NOW()),
(32000, 'SALE', (SELECT id FROM product WHERE name = '[단독 리필기획] 구달 어성초 히알루론 수딩 토너 350ml 리필 기획 (+350ml 리필)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020165011ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[단독 리필기획] 구달 어성초 히알루론 수딩 토너 350ml 리필 기획 (+350ml 리필)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020165016ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[단독 리필기획] 구달 어성초 히알루론 수딩 토너 350ml 리필 기획 (+350ml 리필)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020165014ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[단독 리필기획] 구달 어성초 히알루론 수딩 토너 350ml 리필 기획 (+350ml 리필)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[단독 리필기획] 구달 어성초 히알루론 수딩 토너 350ml 리필 기획 (+350ml 리필)';


-- ================================

-- 상품: [흔적미백]메디큐브 PDRN 핑크 시카 수딩 토너 250ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[흔적미백]메디큐브 PDRN 핑크 시카 수딩 토너 250ml',
 '[흔적미백]메디큐브 PDRN 핑크 시카 수딩 토너 250ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '메디큐브'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[흔적미백]메디큐브 PDRN 핑크 시카 수딩 토너 250ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26500, 'ORIGINAL', (SELECT id FROM product WHERE name = '[흔적미백]메디큐브 PDRN 핑크 시카 수딩 토너 250ml'), NOW(), NOW()),
(14250, 'SALE', (SELECT id FROM product WHERE name = '[흔적미백]메디큐브 PDRN 핑크 시카 수딩 토너 250ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021349201ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[흔적미백]메디큐브 PDRN 핑크 시카 수딩 토너 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021349204ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[흔적미백]메디큐브 PDRN 핑크 시카 수딩 토너 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021349208ko.jpeg?l=ko', 3, (SELECT id FROM product WHERE name = '[흔적미백]메디큐브 PDRN 핑크 시카 수딩 토너 250ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[흔적미백]메디큐브 PDRN 핑크 시카 수딩 토너 250ml';


-- ================================

-- 상품: [미백/잡티케어] 달바 비타 토닝 세럼 토너 180ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[미백/잡티케어] 달바 비타 토닝 세럼 토너 180ml',
 '[미백/잡티케어] 달바 비타 토닝 세럼 토너 180ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '달바'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[미백/잡티케어] 달바 비타 토닝 세럼 토너 180ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[미백/잡티케어] 달바 비타 토닝 세럼 토너 180ml'), NOW(), NOW()),
(29900, 'SALE', (SELECT id FROM product WHERE name = '[미백/잡티케어] 달바 비타 토닝 세럼 토너 180ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022342507ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[미백/잡티케어] 달바 비타 토닝 세럼 토너 180ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022342508ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[미백/잡티케어] 달바 비타 토닝 세럼 토너 180ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022342509ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[미백/잡티케어] 달바 비타 토닝 세럼 토너 180ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022342510ko.png?l=ko', 4, (SELECT id FROM product WHERE name = '[미백/잡티케어] 달바 비타 토닝 세럼 토너 180ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[미백/잡티케어] 달바 비타 토닝 세럼 토너 180ml';


-- ================================

-- 상품: [수분장벽토너]유리아쥬 제모스 토너 250ml 2입 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분장벽토너]유리아쥬 제모스 토너 250ml 2입 기획',
 '[수분장벽토너]유리아쥬 제모스 토너 250ml 2입 기획',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유리아쥬'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분장벽토너]유리아쥬 제모스 토너 250ml 2입 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(56000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분장벽토너]유리아쥬 제모스 토너 250ml 2입 기획'), NOW(), NOW()),
(29800, 'SALE', (SELECT id FROM product WHERE name = '[수분장벽토너]유리아쥬 제모스 토너 250ml 2입 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022321907ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분장벽토너]유리아쥬 제모스 토너 250ml 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022321904ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분장벽토너]유리아쥬 제모스 토너 250ml 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022321903ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분장벽토너]유리아쥬 제모스 토너 250ml 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022321902ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[수분장벽토너]유리아쥬 제모스 토너 250ml 2입 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분장벽토너]유리아쥬 제모스 토너 250ml 2입 기획';


-- ================================

-- 상품: [NCT 재민PICK] 이즈앤트리 초저분자 히아루론산 토너 300ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NCT 재민PICK] 이즈앤트리 초저분자 히아루론산 토너 300ml',
 '[NCT 재민PICK] 이즈앤트리 초저분자 히아루론산 토너 300ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '이즈앤트리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NCT 재민PICK] 이즈앤트리 초저분자 히아루론산 토너 300ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(21000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NCT 재민PICK] 이즈앤트리 초저분자 히아루론산 토너 300ml'), NOW(), NOW()),
(13900, 'SALE', (SELECT id FROM product WHERE name = '[NCT 재민PICK] 이즈앤트리 초저분자 히아루론산 토너 300ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019710211ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NCT 재민PICK] 이즈앤트리 초저분자 히아루론산 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019710212ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NCT 재민PICK] 이즈앤트리 초저분자 히아루론산 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019710213ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NCT 재민PICK] 이즈앤트리 초저분자 히아루론산 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019710209ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[NCT 재민PICK] 이즈앤트리 초저분자 히아루론산 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019710207ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[NCT 재민PICK] 이즈앤트리 초저분자 히아루론산 토너 300ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NCT 재민PICK] 이즈앤트리 초저분자 히아루론산 토너 300ml';


-- ================================

-- 상품: 바이오더마 하이드라비오 토너 250ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('바이오더마 하이드라비오 토너 250ml',
 '바이오더마 하이드라비오 토너 250ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오더마'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 토너 250ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 토너 250ml'), NOW(), NOW()),
(29000, 'SALE', (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 토너 250ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0000/A00000000443410ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 토너 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0000/A00000000443416ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 토너 250ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '바이오더마 하이드라비오 토너 250ml';


-- ================================

-- 상품: 클럽맨피노드 오리지날 에프터쉐이브로션 370ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('클럽맨피노드 오리지날 에프터쉐이브로션 370ml',
 '클럽맨피노드 오리지날 에프터쉐이브로션 370ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '클럽맨피노드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '클럽맨피노드 오리지날 에프터쉐이브로션 370ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29000, 'ORIGINAL', (SELECT id FROM product WHERE name = '클럽맨피노드 오리지날 에프터쉐이브로션 370ml'), NOW(), NOW()),
(29000, 'SALE', (SELECT id FROM product WHERE name = '클럽맨피노드 오리지날 에프터쉐이브로션 370ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015437503ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '클럽맨피노드 오리지날 에프터쉐이브로션 370ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '클럽맨피노드 오리지날 에프터쉐이브로션 370ml';


-- ================================

-- 상품: [저자극 로즈 토너]눅스 베리로즈 리프레쉬 토너 200ml 기획(+ 멀티 플로럴 오일 10...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[저자극 로즈 토너]눅스 베리로즈 리프레쉬 토너 200ml 기획(+ 멀티 플로럴 오일 10ml)',
 '[저자극 로즈 토너]눅스 베리로즈 리프레쉬 토너 200ml 기획(+ 멀티 플로럴 오일 10ml)',
 4.3,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '눅스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[저자극 로즈 토너]눅스 베리로즈 리프레쉬 토너 200ml 기획(+ 멀티 플로럴 오일 10ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[저자극 로즈 토너]눅스 베리로즈 리프레쉬 토너 200ml 기획(+ 멀티 플로럴 오일 10ml)'), NOW(), NOW()),
(26400, 'SALE', (SELECT id FROM product WHERE name = '[저자극 로즈 토너]눅스 베리로즈 리프레쉬 토너 200ml 기획(+ 멀티 플로럴 오일 10ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021871603ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[저자극 로즈 토너]눅스 베리로즈 리프레쉬 토너 200ml 기획(+ 멀티 플로럴 오일 10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021871605ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[저자극 로즈 토너]눅스 베리로즈 리프레쉬 토너 200ml 기획(+ 멀티 플로럴 오일 10ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021871604ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[저자극 로즈 토너]눅스 베리로즈 리프레쉬 토너 200ml 기획(+ 멀티 플로럴 오일 10ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[저자극 로즈 토너]눅스 베리로즈 리프레쉬 토너 200ml 기획(+ 멀티 플로럴 오일 10ml)';


-- ================================

-- 상품: 피지오겔 시카밸런스 포맨 카밍 토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('피지오겔 시카밸런스 포맨 카밍 토너 200ml',
 '피지오겔 시카밸런스 포맨 카밍 토너 200ml',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '피지오겔'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '피지오겔 시카밸런스 포맨 카밍 토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '피지오겔 시카밸런스 포맨 카밍 토너 200ml'), NOW(), NOW()),
(25900, 'SALE', (SELECT id FROM product WHERE name = '피지오겔 시카밸런스 포맨 카밍 토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020539101ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '피지오겔 시카밸런스 포맨 카밍 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020539102ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '피지오겔 시카밸런스 포맨 카밍 토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '피지오겔 시카밸런스 포맨 카밍 토너 200ml';


-- ================================

-- 상품: [쿨링진정]넘버즈인 1번 진정 맑게담은 청초토너 300ml 리필기획(+300ml 증정)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[쿨링진정]넘버즈인 1번 진정 맑게담은 청초토너 300ml 리필기획(+300ml 증정)',
 '[쿨링진정]넘버즈인 1번 진정 맑게담은 청초토너 300ml 리필기획(+300ml 증정)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '넘버즈인'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[쿨링진정]넘버즈인 1번 진정 맑게담은 청초토너 300ml 리필기획(+300ml 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(40000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[쿨링진정]넘버즈인 1번 진정 맑게담은 청초토너 300ml 리필기획(+300ml 증정)'), NOW(), NOW()),
(25650, 'SALE', (SELECT id FROM product WHERE name = '[쿨링진정]넘버즈인 1번 진정 맑게담은 청초토너 300ml 리필기획(+300ml 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019039516ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[쿨링진정]넘버즈인 1번 진정 맑게담은 청초토너 300ml 리필기획(+300ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019039517ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[쿨링진정]넘버즈인 1번 진정 맑게담은 청초토너 300ml 리필기획(+300ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019039512ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[쿨링진정]넘버즈인 1번 진정 맑게담은 청초토너 300ml 리필기획(+300ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019039513ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[쿨링진정]넘버즈인 1번 진정 맑게담은 청초토너 300ml 리필기획(+300ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019039514ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[쿨링진정]넘버즈인 1번 진정 맑게담은 청초토너 300ml 리필기획(+300ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019039515ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[쿨링진정]넘버즈인 1번 진정 맑게담은 청초토너 300ml 리필기획(+300ml 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[쿨링진정]넘버즈인 1번 진정 맑게담은 청초토너 300ml 리필기획(+300ml 증정)';


-- ================================

-- 상품: [대용량/수분광] 마몽드 플로라 글로우 로즈 워터 토너 500ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[대용량/수분광] 마몽드 플로라 글로우 로즈 워터 토너 500ml',
 '[대용량/수분광] 마몽드 플로라 글로우 로즈 워터 토너 500ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '마몽드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[대용량/수분광] 마몽드 플로라 글로우 로즈 워터 토너 500ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[대용량/수분광] 마몽드 플로라 글로우 로즈 워터 토너 500ml'), NOW(), NOW()),
(25000, 'SALE', (SELECT id FROM product WHERE name = '[대용량/수분광] 마몽드 플로라 글로우 로즈 워터 토너 500ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022142406ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[대용량/수분광] 마몽드 플로라 글로우 로즈 워터 토너 500ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022142404ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[대용량/수분광] 마몽드 플로라 글로우 로즈 워터 토너 500ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022142401ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[대용량/수분광] 마몽드 플로라 글로우 로즈 워터 토너 500ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022142405ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[대용량/수분광] 마몽드 플로라 글로우 로즈 워터 토너 500ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[대용량/수분광] 마몽드 플로라 글로우 로즈 워터 토너 500ml';


-- ================================

-- 상품: [1+1] 유세린 더모퓨리파이어 토너 더블 기획 (200ml+200ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[1+1] 유세린 더모퓨리파이어 토너 더블 기획 (200ml+200ml)',
 '[1+1] 유세린 더모퓨리파이어 토너 더블 기획 (200ml+200ml)',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유세린'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[1+1] 유세린 더모퓨리파이어 토너 더블 기획 (200ml+200ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1+1] 유세린 더모퓨리파이어 토너 더블 기획 (200ml+200ml)'), NOW(), NOW()),
(24700, 'SALE', (SELECT id FROM product WHERE name = '[1+1] 유세린 더모퓨리파이어 토너 더블 기획 (200ml+200ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020534001ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[1+1] 유세린 더모퓨리파이어 토너 더블 기획 (200ml+200ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020534003ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[1+1] 유세린 더모퓨리파이어 토너 더블 기획 (200ml+200ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020534002ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[1+1] 유세린 더모퓨리파이어 토너 더블 기획 (200ml+200ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[1+1] 유세린 더모퓨리파이어 토너 더블 기획 (200ml+200ml)';


-- ================================

-- 상품: [각질쓱삭/피지케어] 비플레인 녹두 모공 클리어링 라하 토너 265ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[각질쓱삭/피지케어] 비플레인 녹두 모공 클리어링 라하 토너 265ml',
 '[각질쓱삭/피지케어] 비플레인 녹두 모공 클리어링 라하 토너 265ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비플레인'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[각질쓱삭/피지케어] 비플레인 녹두 모공 클리어링 라하 토너 265ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[각질쓱삭/피지케어] 비플레인 녹두 모공 클리어링 라하 토너 265ml'), NOW(), NOW()),
(24000, 'SALE', (SELECT id FROM product WHERE name = '[각질쓱삭/피지케어] 비플레인 녹두 모공 클리어링 라하 토너 265ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021290804ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[각질쓱삭/피지케어] 비플레인 녹두 모공 클리어링 라하 토너 265ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021290805ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[각질쓱삭/피지케어] 비플레인 녹두 모공 클리어링 라하 토너 265ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[각질쓱삭/피지케어] 비플레인 녹두 모공 클리어링 라하 토너 265ml';


-- ================================

-- 상품: 더바디샵 티트리 오일 20ML...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('더바디샵 티트리 오일 20ML',
 '더바디샵 티트리 오일 20ML',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더바디샵'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '더바디샵 티트리 오일 20ML'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '더바디샵 티트리 오일 20ML'), NOW(), NOW()),
(23750, 'SALE', (SELECT id FROM product WHERE name = '더바디샵 티트리 오일 20ML'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020641901ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '더바디샵 티트리 오일 20ML'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020641903ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '더바디샵 티트리 오일 20ML'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020641902ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '더바디샵 티트리 오일 20ML'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '더바디샵 티트리 오일 20ML';


-- ================================

-- 상품: 리얼베리어 익스트림 에센스 토너 라이트 300ml 기획 (+라이트 크림 25ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('리얼베리어 익스트림 에센스 토너 라이트 300ml 기획 (+라이트 크림 25ml)',
 '리얼베리어 익스트림 에센스 토너 라이트 300ml 기획 (+라이트 크림 25ml)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '리얼베리어'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '리얼베리어 익스트림 에센스 토너 라이트 300ml 기획 (+라이트 크림 25ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '리얼베리어 익스트림 에센스 토너 라이트 300ml 기획 (+라이트 크림 25ml)'), NOW(), NOW()),
(23000, 'SALE', (SELECT id FROM product WHERE name = '리얼베리어 익스트림 에센스 토너 라이트 300ml 기획 (+라이트 크림 25ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019984702ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '리얼베리어 익스트림 에센스 토너 라이트 300ml 기획 (+라이트 크림 25ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019984703ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '리얼베리어 익스트림 에센스 토너 라이트 300ml 기획 (+라이트 크림 25ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019984701ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '리얼베리어 익스트림 에센스 토너 라이트 300ml 기획 (+라이트 크림 25ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '리얼베리어 익스트림 에센스 토너 라이트 300ml 기획 (+라이트 크림 25ml)';


-- ================================

-- 상품: 피지오겔 레드수딩 시카밸런스 토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('피지오겔 레드수딩 시카밸런스 토너 200ml',
 '피지오겔 레드수딩 시카밸런스 토너 200ml',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '피지오겔'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '피지오겔 레드수딩 시카밸런스 토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '피지오겔 레드수딩 시카밸런스 토너 200ml'), NOW(), NOW()),
(22400, 'SALE', (SELECT id FROM product WHERE name = '피지오겔 레드수딩 시카밸런스 토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016421108ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '피지오겔 레드수딩 시카밸런스 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016421107ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '피지오겔 레드수딩 시카밸런스 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016421101ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '피지오겔 레드수딩 시카밸런스 토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '피지오겔 레드수딩 시카밸런스 토너 200ml';


-- ================================

-- 상품: 썸바이미 아하 바하 파하 30 데이즈 미라클 토너 기획세트 (150ml+30ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('썸바이미 아하 바하 파하 30 데이즈 미라클 토너 기획세트 (150ml+30ml)',
 '썸바이미 아하 바하 파하 30 데이즈 미라클 토너 기획세트 (150ml+30ml)',
 4.6,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '썸바이미'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '썸바이미 아하 바하 파하 30 데이즈 미라클 토너 기획세트 (150ml+30ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(21600, 'ORIGINAL', (SELECT id FROM product WHERE name = '썸바이미 아하 바하 파하 30 데이즈 미라클 토너 기획세트 (150ml+30ml)'), NOW(), NOW()),
(21600, 'SALE', (SELECT id FROM product WHERE name = '썸바이미 아하 바하 파하 30 데이즈 미라클 토너 기획세트 (150ml+30ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021657408ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '썸바이미 아하 바하 파하 30 데이즈 미라클 토너 기획세트 (150ml+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021657409ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '썸바이미 아하 바하 파하 30 데이즈 미라클 토너 기획세트 (150ml+30ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '썸바이미 아하 바하 파하 30 데이즈 미라클 토너 기획세트 (150ml+30ml)';


-- ================================

-- 상품: 바이오던스 퍼스트 시너지 토너 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('바이오던스 퍼스트 시너지 토너 150ml',
 '바이오던스 퍼스트 시너지 토너 150ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오던스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '바이오던스 퍼스트 시너지 토너 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바이오던스 퍼스트 시너지 토너 150ml'), NOW(), NOW()),
(21500, 'SALE', (SELECT id FROM product WHERE name = '바이오던스 퍼스트 시너지 토너 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021403401ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바이오던스 퍼스트 시너지 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021403404ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '바이오던스 퍼스트 시너지 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021403403ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '바이오던스 퍼스트 시너지 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021403402ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '바이오던스 퍼스트 시너지 토너 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '바이오던스 퍼스트 시너지 토너 150ml';


-- ================================

-- 상품: 클럽맨리저브 브랜디스파이스 에프터쉐이브 177ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('클럽맨리저브 브랜디스파이스 에프터쉐이브 177ml',
 '클럽맨리저브 브랜디스파이스 에프터쉐이브 177ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '클럽맨피노드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '클럽맨리저브 브랜디스파이스 에프터쉐이브 177ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(20000, 'ORIGINAL', (SELECT id FROM product WHERE name = '클럽맨리저브 브랜디스파이스 에프터쉐이브 177ml'), NOW(), NOW()),
(20000, 'SALE', (SELECT id FROM product WHERE name = '클럽맨리저브 브랜디스파이스 에프터쉐이브 177ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012449902ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '클럽맨리저브 브랜디스파이스 에프터쉐이브 177ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '클럽맨리저브 브랜디스파이스 에프터쉐이브 177ml';


-- ================================

-- 상품: 클럽맨피노드 오리지날 에프터쉐이브로션 177ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('클럽맨피노드 오리지날 에프터쉐이브로션 177ml',
 '클럽맨피노드 오리지날 에프터쉐이브로션 177ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '클럽맨피노드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '클럽맨피노드 오리지날 에프터쉐이브로션 177ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(20000, 'ORIGINAL', (SELECT id FROM product WHERE name = '클럽맨피노드 오리지날 에프터쉐이브로션 177ml'), NOW(), NOW()),
(20000, 'SALE', (SELECT id FROM product WHERE name = '클럽맨피노드 오리지날 에프터쉐이브로션 177ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012450703ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '클럽맨피노드 오리지날 에프터쉐이브로션 177ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '클럽맨피노드 오리지날 에프터쉐이브로션 177ml';


-- ================================

-- 상품: [탄력토너] 바이오힐 보 프로바이오덤 3D 리프팅 에센셜 토너 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[탄력토너] 바이오힐 보 프로바이오덤 3D 리프팅 에센셜 토너 150ml',
 '[탄력토너] 바이오힐 보 프로바이오덤 3D 리프팅 에센셜 토너 150ml',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오힐보'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[탄력토너] 바이오힐 보 프로바이오덤 3D 리프팅 에센셜 토너 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[탄력토너] 바이오힐 보 프로바이오덤 3D 리프팅 에센셜 토너 150ml'), NOW(), NOW()),
(19900, 'SALE', (SELECT id FROM product WHERE name = '[탄력토너] 바이오힐 보 프로바이오덤 3D 리프팅 에센셜 토너 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020320705ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[탄력토너] 바이오힐 보 프로바이오덤 3D 리프팅 에센셜 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020320703ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[탄력토너] 바이오힐 보 프로바이오덤 3D 리프팅 에센셜 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020320702ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[탄력토너] 바이오힐 보 프로바이오덤 3D 리프팅 에센셜 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020320704ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[탄력토너] 바이오힐 보 프로바이오덤 3D 리프팅 에센셜 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020320701ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[탄력토너] 바이오힐 보 프로바이오덤 3D 리프팅 에센셜 토너 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[탄력토너] 바이오힐 보 프로바이오덤 3D 리프팅 에센셜 토너 150ml';


-- ================================

-- 상품: [결정돈토너] 정샘물 에센셜 물 토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[결정돈토너] 정샘물 에센셜 물 토너 200ml',
 '[결정돈토너] 정샘물 에센셜 물 토너 200ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '정샘물'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[결정돈토너] 정샘물 에센셜 물 토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[결정돈토너] 정샘물 에센셜 물 토너 200ml'), NOW(), NOW()),
(19550, 'SALE', (SELECT id FROM product WHERE name = '[결정돈토너] 정샘물 에센셜 물 토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022947006ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[결정돈토너] 정샘물 에센셜 물 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022947002ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[결정돈토너] 정샘물 에센셜 물 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022947001ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[결정돈토너] 정샘물 에센셜 물 토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[결정돈토너] 정샘물 에센셜 물 토너 200ml';


-- ================================

-- 상품: 브링그린 대나무히알루수분토너 500mL...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('브링그린 대나무히알루수분토너 500mL',
 '브링그린 대나무히알루수분토너 500mL',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '브링그린'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '브링그린 대나무히알루수분토너 500mL'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(27000, 'ORIGINAL', (SELECT id FROM product WHERE name = '브링그린 대나무히알루수분토너 500mL'), NOW(), NOW()),
(18900, 'SALE', (SELECT id FROM product WHERE name = '브링그린 대나무히알루수분토너 500mL'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018804812ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '브링그린 대나무히알루수분토너 500mL'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018804813ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '브링그린 대나무히알루수분토너 500mL'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018804816ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '브링그린 대나무히알루수분토너 500mL'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018804817ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '브링그린 대나무히알루수분토너 500mL'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '브링그린 대나무히알루수분토너 500mL';


-- ================================

-- 상품: [약산성/저자극] 파티온 노스카나인 트러블 클리어 토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[약산성/저자극] 파티온 노스카나인 트러블 클리어 토너 200ml',
 '[약산성/저자극] 파티온 노스카나인 트러블 클리어 토너 200ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '파티온'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[약산성/저자극] 파티온 노스카나인 트러블 클리어 토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[약산성/저자극] 파티온 노스카나인 트러블 클리어 토너 200ml'), NOW(), NOW()),
(18400, 'SALE', (SELECT id FROM product WHERE name = '[약산성/저자극] 파티온 노스카나인 트러블 클리어 토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018278703ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[약산성/저자극] 파티온 노스카나인 트러블 클리어 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018278701ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[약산성/저자극] 파티온 노스카나인 트러블 클리어 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018278707ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[약산성/저자극] 파티온 노스카나인 트러블 클리어 토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[약산성/저자극] 파티온 노스카나인 트러블 클리어 토너 200ml';


-- ================================

-- 상품: 셀라딕스 트러블 쿨 카밍 131 토너 300ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('셀라딕스 트러블 쿨 카밍 131 토너 300ml',
 '셀라딕스 트러블 쿨 카밍 131 토너 300ml',
 4.5,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '셀라딕스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '셀라딕스 트러블 쿨 카밍 131 토너 300ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(18300, 'ORIGINAL', (SELECT id FROM product WHERE name = '셀라딕스 트러블 쿨 카밍 131 토너 300ml'), NOW(), NOW()),
(18300, 'SALE', (SELECT id FROM product WHERE name = '셀라딕스 트러블 쿨 카밍 131 토너 300ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022945601ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '셀라딕스 트러블 쿨 카밍 131 토너 300ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '셀라딕스 트러블 쿨 카밍 131 토너 300ml';


-- ================================

-- 상품: [모공속광] 이니스프리 레티놀 그린티 PDRN 스킨부스터 토너 170ml 기획 (+50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[모공속광] 이니스프리 레티놀 그린티 PDRN 스킨부스터 토너 170ml 기획 (+50ml)',
 '[모공속광] 이니스프리 레티놀 그린티 PDRN 스킨부스터 토너 170ml 기획 (+50ml)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '이니스프리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[모공속광] 이니스프리 레티놀 그린티 PDRN 스킨부스터 토너 170ml 기획 (+50ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[모공속광] 이니스프리 레티놀 그린티 PDRN 스킨부스터 토너 170ml 기획 (+50ml)'), NOW(), NOW()),
(18000, 'SALE', (SELECT id FROM product WHERE name = '[모공속광] 이니스프리 레티놀 그린티 PDRN 스킨부스터 토너 170ml 기획 (+50ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022225015ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[모공속광] 이니스프리 레티놀 그린티 PDRN 스킨부스터 토너 170ml 기획 (+50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022225010ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[모공속광] 이니스프리 레티놀 그린티 PDRN 스킨부스터 토너 170ml 기획 (+50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022225011ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[모공속광] 이니스프리 레티놀 그린티 PDRN 스킨부스터 토너 170ml 기획 (+50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022225012ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[모공속광] 이니스프리 레티놀 그린티 PDRN 스킨부스터 토너 170ml 기획 (+50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022225013ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[모공속광] 이니스프리 레티놀 그린티 PDRN 스킨부스터 토너 170ml 기획 (+50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022225014ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[모공속광] 이니스프리 레티놀 그린티 PDRN 스킨부스터 토너 170ml 기획 (+50ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[모공속광] 이니스프리 레티놀 그린티 PDRN 스킨부스터 토너 170ml 기획 (+50ml)';


-- ================================

-- 상품: [모공PDRN/피부결리셋]리쥬란 더마 힐러 포어 타이트닝 토너 패드 220ml(60매)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[모공PDRN/피부결리셋]리쥬란 더마 힐러 포어 타이트닝 토너 패드 220ml(60매)',
 '[모공PDRN/피부결리셋]리쥬란 더마 힐러 포어 타이트닝 토너 패드 220ml(60매)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '리쥬란'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[모공PDRN/피부결리셋]리쥬란 더마 힐러 포어 타이트닝 토너 패드 220ml(60매)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(31000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[모공PDRN/피부결리셋]리쥬란 더마 힐러 포어 타이트닝 토너 패드 220ml(60매)'), NOW(), NOW()),
(17900, 'SALE', (SELECT id FROM product WHERE name = '[모공PDRN/피부결리셋]리쥬란 더마 힐러 포어 타이트닝 토너 패드 220ml(60매)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022202405ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[모공PDRN/피부결리셋]리쥬란 더마 힐러 포어 타이트닝 토너 패드 220ml(60매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022202402ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[모공PDRN/피부결리셋]리쥬란 더마 힐러 포어 타이트닝 토너 패드 220ml(60매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022202403ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[모공PDRN/피부결리셋]리쥬란 더마 힐러 포어 타이트닝 토너 패드 220ml(60매)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[모공PDRN/피부결리셋]리쥬란 더마 힐러 포어 타이트닝 토너 패드 220ml(60매)';


-- ================================

-- 상품: 스킨1004 마다가스카르 센텔라 토닝토너 210ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('스킨1004 마다가스카르 센텔라 토닝토너 210ml',
 '스킨1004 마다가스카르 센텔라 토닝토너 210ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '스킨1004'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '스킨1004 마다가스카르 센텔라 토닝토너 210ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(21000, 'ORIGINAL', (SELECT id FROM product WHERE name = '스킨1004 마다가스카르 센텔라 토닝토너 210ml'), NOW(), NOW()),
(17850, 'SALE', (SELECT id FROM product WHERE name = '스킨1004 마다가스카르 센텔라 토닝토너 210ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016157122ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '스킨1004 마다가스카르 센텔라 토닝토너 210ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016157123ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '스킨1004 마다가스카르 센텔라 토닝토너 210ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '스킨1004 마다가스카르 센텔라 토닝토너 210ml';


-- ================================

-- 상품: [NEW/리뉴얼] 셀리맥스 더 리얼 노니 수분 밸런싱 토너 320ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW/리뉴얼] 셀리맥스 더 리얼 노니 수분 밸런싱 토너 320ml',
 '[NEW/리뉴얼] 셀리맥스 더 리얼 노니 수분 밸런싱 토너 320ml',
 4.5,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '셀리맥스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW/리뉴얼] 셀리맥스 더 리얼 노니 수분 밸런싱 토너 320ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW/리뉴얼] 셀리맥스 더 리얼 노니 수분 밸런싱 토너 320ml'), NOW(), NOW()),
(17600, 'SALE', (SELECT id FROM product WHERE name = '[NEW/리뉴얼] 셀리맥스 더 리얼 노니 수분 밸런싱 토너 320ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021279202ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW/리뉴얼] 셀리맥스 더 리얼 노니 수분 밸런싱 토너 320ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021279203ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW/리뉴얼] 셀리맥스 더 리얼 노니 수분 밸런싱 토너 320ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021279201ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW/리뉴얼] 셀리맥스 더 리얼 노니 수분 밸런싱 토너 320ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW/리뉴얼] 셀리맥스 더 리얼 노니 수분 밸런싱 토너 320ml';


-- ================================

-- 상품: [증량기획] 김정문알로에 큐어 알로에 워터 젤리 토너 기획 세트 500ml+50ml [젤리...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[증량기획] 김정문알로에 큐어 알로에 워터 젤리 토너 기획 세트 500ml+50ml [젤리토너]',
 '[증량기획] 김정문알로에 큐어 알로에 워터 젤리 토너 기획 세트 500ml+50ml [젤리토너]',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '큐어'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[증량기획] 김정문알로에 큐어 알로에 워터 젤리 토너 기획 세트 500ml+50ml [젤리토너]'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[증량기획] 김정문알로에 큐어 알로에 워터 젤리 토너 기획 세트 500ml+50ml [젤리토너]'), NOW(), NOW()),
(17200, 'SALE', (SELECT id FROM product WHERE name = '[증량기획] 김정문알로에 큐어 알로에 워터 젤리 토너 기획 세트 500ml+50ml [젤리토너]'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016638318ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[증량기획] 김정문알로에 큐어 알로에 워터 젤리 토너 기획 세트 500ml+50ml [젤리토너]'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016638313ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[증량기획] 김정문알로에 큐어 알로에 워터 젤리 토너 기획 세트 500ml+50ml [젤리토너]'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016638314ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[증량기획] 김정문알로에 큐어 알로에 워터 젤리 토너 기획 세트 500ml+50ml [젤리토너]'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[증량기획] 김정문알로에 큐어 알로에 워터 젤리 토너 기획 세트 500ml+50ml [젤리토너]';


-- ================================

-- 상품: [NEW] 아누아 피디알엔 100 히알루론산 부스터 토너 250ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW] 아누아 피디알엔 100 히알루론산 부스터 토너 250ml',
 '[NEW] 아누아 피디알엔 100 히알루론산 부스터 토너 250ml',
 0.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아누아'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW] 아누아 피디알엔 100 히알루론산 부스터 토너 250ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW] 아누아 피디알엔 100 히알루론산 부스터 토너 250ml'), NOW(), NOW()),
(15900, 'SALE', (SELECT id FROM product WHERE name = '[NEW] 아누아 피디알엔 100 히알루론산 부스터 토너 250ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023258402ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW] 아누아 피디알엔 100 히알루론산 부스터 토너 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023258403ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW] 아누아 피디알엔 100 히알루론산 부스터 토너 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023258404ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW] 아누아 피디알엔 100 히알루론산 부스터 토너 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023258405ko.png?l=ko', 4, (SELECT id FROM product WHERE name = '[NEW] 아누아 피디알엔 100 히알루론산 부스터 토너 250ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW] 아누아 피디알엔 100 히알루론산 부스터 토너 250ml';


-- ================================

-- 상품: 식물나라 어린녹차 촉촉 진정토너 500mL...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('식물나라 어린녹차 촉촉 진정토너 500mL',
 '식물나라 어린녹차 촉촉 진정토너 500mL',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '식물나라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '식물나라 어린녹차 촉촉 진정토너 500mL'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(15800, 'ORIGINAL', (SELECT id FROM product WHERE name = '식물나라 어린녹차 촉촉 진정토너 500mL'), NOW(), NOW()),
(15800, 'SALE', (SELECT id FROM product WHERE name = '식물나라 어린녹차 촉촉 진정토너 500mL'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020317103ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '식물나라 어린녹차 촉촉 진정토너 500mL'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020317104ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '식물나라 어린녹차 촉촉 진정토너 500mL'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020317102ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '식물나라 어린녹차 촉촉 진정토너 500mL'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '식물나라 어린녹차 촉촉 진정토너 500mL';


-- ================================

-- 상품: 토니모리 원더 세라마이드 모찌 토너 500ml 기획 (+100ml +크림 30ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('토니모리 원더 세라마이드 모찌 토너 500ml 기획 (+100ml +크림 30ml)',
 '토니모리 원더 세라마이드 모찌 토너 500ml 기획 (+100ml +크림 30ml)',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '토니모리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '토니모리 원더 세라마이드 모찌 토너 500ml 기획 (+100ml +크림 30ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(17000, 'ORIGINAL', (SELECT id FROM product WHERE name = '토니모리 원더 세라마이드 모찌 토너 500ml 기획 (+100ml +크림 30ml)'), NOW(), NOW()),
(15300, 'SALE', (SELECT id FROM product WHERE name = '토니모리 원더 세라마이드 모찌 토너 500ml 기획 (+100ml +크림 30ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022408612ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '토니모리 원더 세라마이드 모찌 토너 500ml 기획 (+100ml +크림 30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022408613ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '토니모리 원더 세라마이드 모찌 토너 500ml 기획 (+100ml +크림 30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022408614ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '토니모리 원더 세라마이드 모찌 토너 500ml 기획 (+100ml +크림 30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022408615ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '토니모리 원더 세라마이드 모찌 토너 500ml 기획 (+100ml +크림 30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022408616ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '토니모리 원더 세라마이드 모찌 토너 500ml 기획 (+100ml +크림 30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022408617ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '토니모리 원더 세라마이드 모찌 토너 500ml 기획 (+100ml +크림 30ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '토니모리 원더 세라마이드 모찌 토너 500ml 기획 (+100ml +크림 30ml)';


-- ================================

-- 상품: [톤/결개선] 원씽 나이아신아마이드 10% 토너 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[톤/결개선] 원씽 나이아신아마이드 10% 토너 150ml',
 '[톤/결개선] 원씽 나이아신아마이드 10% 토너 150ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '원씽'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[톤/결개선] 원씽 나이아신아마이드 10% 토너 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(14900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[톤/결개선] 원씽 나이아신아마이드 10% 토너 150ml'), NOW(), NOW()),
(13400, 'SALE', (SELECT id FROM product WHERE name = '[톤/결개선] 원씽 나이아신아마이드 10% 토너 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015832205ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[톤/결개선] 원씽 나이아신아마이드 10% 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015832206ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[톤/결개선] 원씽 나이아신아마이드 10% 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015832204ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[톤/결개선] 원씽 나이아신아마이드 10% 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015832203ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[톤/결개선] 원씽 나이아신아마이드 10% 토너 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[톤/결개선] 원씽 나이아신아마이드 10% 토너 150ml';


-- ================================

-- 상품: [1등토너]라운드랩 1025 독도 토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[1등토너]라운드랩 1025 독도 토너 200ml',
 '[1등토너]라운드랩 1025 독도 토너 200ml',
 4.6,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라운드랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[1등토너]라운드랩 1025 독도 토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(15000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1등토너]라운드랩 1025 독도 토너 200ml'), NOW(), NOW()),
(12900, 'SALE', (SELECT id FROM product WHERE name = '[1등토너]라운드랩 1025 독도 토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012550713ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[1등토너]라운드랩 1025 독도 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012550711ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[1등토너]라운드랩 1025 독도 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012550712ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[1등토너]라운드랩 1025 독도 토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[1등토너]라운드랩 1025 독도 토너 200ml';


-- ================================

-- 상품: [광채부스팅] VT 피디알엔 토너 250ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[광채부스팅] VT 피디알엔 토너 250ml',
 '[광채부스팅] VT 피디알엔 토너 250ml',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'VT'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[광채부스팅] VT 피디알엔 토너 250ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[광채부스팅] VT 피디알엔 토너 250ml'), NOW(), NOW()),
(12500, 'SALE', (SELECT id FROM product WHERE name = '[광채부스팅] VT 피디알엔 토너 250ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023302001ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[광채부스팅] VT 피디알엔 토너 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023302002ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[광채부스팅] VT 피디알엔 토너 250ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[광채부스팅] VT 피디알엔 토너 250ml';


-- ================================

-- 상품: [피지쓱싹] 브링그린 티트리시카수딩토너 250mL...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[피지쓱싹] 브링그린 티트리시카수딩토너 250mL',
 '[피지쓱싹] 브링그린 티트리시카수딩토너 250mL',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '브링그린'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('토너 250mL+헤어스크런치', 12150, (SELECT id FROM product WHERE name = '[피지쓱싹] 브링그린 티트리시카수딩토너 250mL'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('토너 250mL', 0, (SELECT id FROM product WHERE name = '[피지쓱싹] 브링그린 티트리시카수딩토너 250mL'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(15000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[피지쓱싹] 브링그린 티트리시카수딩토너 250mL'), NOW(), NOW()),
(12150, 'SALE', (SELECT id FROM product WHERE name = '[피지쓱싹] 브링그린 티트리시카수딩토너 250mL'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018510905ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[피지쓱싹] 브링그린 티트리시카수딩토너 250mL'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018510904ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[피지쓱싹] 브링그린 티트리시카수딩토너 250mL'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018510903ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[피지쓱싹] 브링그린 티트리시카수딩토너 250mL'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[피지쓱싹] 브링그린 티트리시카수딩토너 250mL';


-- ================================

-- 상품: [에센스토너] 하다라보 고쿠쥰 로션170ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[에센스토너] 하다라보 고쿠쥰 로션170ml',
 '[에센스토너] 하다라보 고쿠쥰 로션170ml',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '하다라보'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[에센스토너] 하다라보 고쿠쥰 로션170ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(17000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[에센스토너] 하다라보 고쿠쥰 로션170ml'), NOW(), NOW()),
(11900, 'SALE', (SELECT id FROM product WHERE name = '[에센스토너] 하다라보 고쿠쥰 로션170ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014455119ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[에센스토너] 하다라보 고쿠쥰 로션170ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014455116ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[에센스토너] 하다라보 고쿠쥰 로션170ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[에센스토너] 하다라보 고쿠쥰 로션170ml';


-- ================================

-- 상품: [수분진정/붉은기완화] 원씽 병풀 추출물 토너 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분진정/붉은기완화] 원씽 병풀 추출물 토너 150ml',
 '[수분진정/붉은기완화] 원씽 병풀 추출물 토너 150ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '원씽'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분진정/붉은기완화] 원씽 병풀 추출물 토너 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(11500, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분진정/붉은기완화] 원씽 병풀 추출물 토너 150ml'), NOW(), NOW()),
(11500, 'SALE', (SELECT id FROM product WHERE name = '[수분진정/붉은기완화] 원씽 병풀 추출물 토너 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015454008ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분진정/붉은기완화] 원씽 병풀 추출물 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015454007ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[수분진정/붉은기완화] 원씽 병풀 추출물 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015454005ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분진정/붉은기완화] 원씽 병풀 추출물 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015454004ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[수분진정/붉은기완화] 원씽 병풀 추출물 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015454003ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[수분진정/붉은기완화] 원씽 병풀 추출물 토너 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분진정/붉은기완화] 원씽 병풀 추출물 토너 150ml';


-- ================================

-- 상품: 식물나라 뽀얀쌀 맑은톤 토너 500mL...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('식물나라 뽀얀쌀 맑은톤 토너 500mL',
 '식물나라 뽀얀쌀 맑은톤 토너 500mL',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '식물나라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '식물나라 뽀얀쌀 맑은톤 토너 500mL'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(15800, 'ORIGINAL', (SELECT id FROM product WHERE name = '식물나라 뽀얀쌀 맑은톤 토너 500mL'), NOW(), NOW()),
(10800, 'SALE', (SELECT id FROM product WHERE name = '식물나라 뽀얀쌀 맑은톤 토너 500mL'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020317003ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '식물나라 뽀얀쌀 맑은톤 토너 500mL'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020317004ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '식물나라 뽀얀쌀 맑은톤 토너 500mL'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020317002ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '식물나라 뽀얀쌀 맑은톤 토너 500mL'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '식물나라 뽀얀쌀 맑은톤 토너 500mL';


-- ================================

-- 상품: 바이오더마 센시비오 토너 250ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('바이오더마 센시비오 토너 250ml',
 '바이오더마 센시비오 토너 250ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오더마'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '바이오더마 센시비오 토너 250ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바이오더마 센시비오 토너 250ml'), NOW(), NOW()),
(29000, 'SALE', (SELECT id FROM product WHERE name = '바이오더마 센시비오 토너 250ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0000/A00000000283908ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바이오더마 센시비오 토너 250ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '바이오더마 센시비오 토너 250ml';


-- ================================

-- 상품: [저자극 유분케어] 유세린 더모퓨리파이어 오일컨트롤 토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[저자극 유분케어] 유세린 더모퓨리파이어 오일컨트롤 토너 200ml',
 '[저자극 유분케어] 유세린 더모퓨리파이어 오일컨트롤 토너 200ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유세린'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[저자극 유분케어] 유세린 더모퓨리파이어 오일컨트롤 토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[저자극 유분케어] 유세린 더모퓨리파이어 오일컨트롤 토너 200ml'), NOW(), NOW()),
(26000, 'SALE', (SELECT id FROM product WHERE name = '[저자극 유분케어] 유세린 더모퓨리파이어 오일컨트롤 토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0000/A00000000576608ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[저자극 유분케어] 유세린 더모퓨리파이어 오일컨트롤 토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[저자극 유분케어] 유세린 더모퓨리파이어 오일컨트롤 토너 200ml';


-- ================================

-- 상품: 엠도씨 릴리프 토닉 위드 애프터셰이브 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('엠도씨 릴리프 토닉 위드 애프터셰이브 150ml',
 '엠도씨 릴리프 토닉 위드 애프터셰이브 150ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '엠도씨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '엠도씨 릴리프 토닉 위드 애프터셰이브 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(20000, 'ORIGINAL', (SELECT id FROM product WHERE name = '엠도씨 릴리프 토닉 위드 애프터셰이브 150ml'), NOW(), NOW()),
(20000, 'SALE', (SELECT id FROM product WHERE name = '엠도씨 릴리프 토닉 위드 애프터셰이브 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001108403ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '엠도씨 릴리프 토닉 위드 애프터셰이브 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001108401ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '엠도씨 릴리프 토닉 위드 애프터셰이브 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '엠도씨 릴리프 토닉 위드 애프터셰이브 150ml';


-- ================================

-- 상품: 엠도씨 세붐 스트라이크 토너 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('엠도씨 세붐 스트라이크 토너 150ml',
 '엠도씨 세붐 스트라이크 토너 150ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '엠도씨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '엠도씨 세붐 스트라이크 토너 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(18000, 'ORIGINAL', (SELECT id FROM product WHERE name = '엠도씨 세붐 스트라이크 토너 150ml'), NOW(), NOW()),
(15300, 'SALE', (SELECT id FROM product WHERE name = '엠도씨 세붐 스트라이크 토너 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001108504ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '엠도씨 세붐 스트라이크 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001108501ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '엠도씨 세붐 스트라이크 토너 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '엠도씨 세붐 스트라이크 토너 150ml';


-- ================================

-- 상품: 라끄베르 옴므 리차지 애프터쉐이브 185ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('라끄베르 옴므 리차지 애프터쉐이브 185ml',
 '라끄베르 옴므 리차지 애프터쉐이브 185ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라끄베르'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 애프터쉐이브 185ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(16000, 'ORIGINAL', (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 애프터쉐이브 185ml'), NOW(), NOW()),
(12000, 'SALE', (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 애프터쉐이브 185ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001675102ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 애프터쉐이브 185ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '라끄베르 옴므 리차지 애프터쉐이브 185ml';


-- ================================

-- 상품: [수분장벽토너] 유리아쥬 제모스 토너 250ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분장벽토너] 유리아쥬 제모스 토너 250ml',
 '[수분장벽토너] 유리아쥬 제모스 토너 250ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유리아쥬'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분장벽토너] 유리아쥬 제모스 토너 250ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분장벽토너] 유리아쥬 제모스 토너 250ml'), NOW(), NOW()),
(19900, 'SALE', (SELECT id FROM product WHERE name = '[수분장벽토너] 유리아쥬 제모스 토너 250ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001687325ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분장벽토너] 유리아쥬 제모스 토너 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001687326ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분장벽토너] 유리아쥬 제모스 토너 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001687324ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분장벽토너] 유리아쥬 제모스 토너 250ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분장벽토너] 유리아쥬 제모스 토너 250ml';


-- ================================

-- 상품: 크리니크 안티-블레미쉬 솔루션 클래리파잉 로션 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('크리니크 안티-블레미쉬 솔루션 클래리파잉 로션 200ml',
 '크리니크 안티-블레미쉬 솔루션 클래리파잉 로션 200ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '크리니크'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '크리니크 안티-블레미쉬 솔루션 클래리파잉 로션 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(44000, 'ORIGINAL', (SELECT id FROM product WHERE name = '크리니크 안티-블레미쉬 솔루션 클래리파잉 로션 200ml'), NOW(), NOW()),
(37400, 'SALE', (SELECT id FROM product WHERE name = '크리니크 안티-블레미쉬 솔루션 클래리파잉 로션 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0010/A00000010414402ko.jpeg?l=ko', 1, (SELECT id FROM product WHERE name = '크리니크 안티-블레미쉬 솔루션 클래리파잉 로션 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '크리니크 안티-블레미쉬 솔루션 클래리파잉 로션 200ml';


-- ================================

-- 상품: 크리니크 클래리파잉 로션 투와이스 어 데이 엑스폴리에이터 3 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('크리니크 클래리파잉 로션 투와이스 어 데이 엑스폴리에이터 3 200ml',
 '크리니크 클래리파잉 로션 투와이스 어 데이 엑스폴리에이터 3 200ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '크리니크'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '크리니크 클래리파잉 로션 투와이스 어 데이 엑스폴리에이터 3 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(43000, 'ORIGINAL', (SELECT id FROM product WHERE name = '크리니크 클래리파잉 로션 투와이스 어 데이 엑스폴리에이터 3 200ml'), NOW(), NOW()),
(36550, 'SALE', (SELECT id FROM product WHERE name = '크리니크 클래리파잉 로션 투와이스 어 데이 엑스폴리에이터 3 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0010/A00000010416903ko.jpeg?l=ko', 1, (SELECT id FROM product WHERE name = '크리니크 클래리파잉 로션 투와이스 어 데이 엑스폴리에이터 3 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '크리니크 클래리파잉 로션 투와이스 어 데이 엑스폴리에이터 3 200ml';


-- ================================

-- 상품: 크리니크 포 맨 워터리 모이스춰 로션 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('크리니크 포 맨 워터리 모이스춰 로션 200ml',
 '크리니크 포 맨 워터리 모이스춰 로션 200ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '크리니크'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '크리니크 포 맨 워터리 모이스춰 로션 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(50000, 'ORIGINAL', (SELECT id FROM product WHERE name = '크리니크 포 맨 워터리 모이스춰 로션 200ml'), NOW(), NOW()),
(42500, 'SALE', (SELECT id FROM product WHERE name = '크리니크 포 맨 워터리 모이스춰 로션 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0010/A00000010497002ko.jpeg?l=ko', 1, (SELECT id FROM product WHERE name = '크리니크 포 맨 워터리 모이스춰 로션 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '크리니크 포 맨 워터리 모이스춰 로션 200ml';


-- ================================

-- 상품: 크리니크 포 맨 엑스폴리에이팅 토닉 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('크리니크 포 맨 엑스폴리에이팅 토닉 200ml',
 '크리니크 포 맨 엑스폴리에이팅 토닉 200ml',
 4.6,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '크리니크'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '크리니크 포 맨 엑스폴리에이팅 토닉 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(43000, 'ORIGINAL', (SELECT id FROM product WHERE name = '크리니크 포 맨 엑스폴리에이팅 토닉 200ml'), NOW(), NOW()),
(36550, 'SALE', (SELECT id FROM product WHERE name = '크리니크 포 맨 엑스폴리에이팅 토닉 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0010/A00000010497602ko.jpeg?l=ko', 1, (SELECT id FROM product WHERE name = '크리니크 포 맨 엑스폴리에이팅 토닉 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '크리니크 포 맨 엑스폴리에이팅 토닉 200ml';


-- ================================

-- 상품: 셀린저 리얼 토너 씨벅톤 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('셀린저 리얼 토너 씨벅톤 200ml',
 '셀린저 리얼 토너 씨벅톤 200ml',
 4.4,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '셀린저'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '셀린저 리얼 토너 씨벅톤 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(10000, 'ORIGINAL', (SELECT id FROM product WHERE name = '셀린저 리얼 토너 씨벅톤 200ml'), NOW(), NOW()),
(7000, 'SALE', (SELECT id FROM product WHERE name = '셀린저 리얼 토너 씨벅톤 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011300805ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '셀린저 리얼 토너 씨벅톤 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '셀린저 리얼 토너 씨벅톤 200ml';


-- ================================

-- 상품: 셀린저 리얼 토너 카렌듈라 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('셀린저 리얼 토너 카렌듈라 200ml',
 '셀린저 리얼 토너 카렌듈라 200ml',
 4.5,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '셀린저'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '셀린저 리얼 토너 카렌듈라 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(10000, 'ORIGINAL', (SELECT id FROM product WHERE name = '셀린저 리얼 토너 카렌듈라 200ml'), NOW(), NOW()),
(7000, 'SALE', (SELECT id FROM product WHERE name = '셀린저 리얼 토너 카렌듈라 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011300904ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '셀린저 리얼 토너 카렌듈라 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '셀린저 리얼 토너 카렌듈라 200ml';


-- ================================

-- 상품: 셀린저 리얼 토너 티트리 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('셀린저 리얼 토너 티트리 200ml',
 '셀린저 리얼 토너 티트리 200ml',
 4.4,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '셀린저'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '셀린저 리얼 토너 티트리 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(10000, 'ORIGINAL', (SELECT id FROM product WHERE name = '셀린저 리얼 토너 티트리 200ml'), NOW(), NOW()),
(7000, 'SALE', (SELECT id FROM product WHERE name = '셀린저 리얼 토너 티트리 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011301004ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '셀린저 리얼 토너 티트리 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '셀린저 리얼 토너 티트리 200ml';


-- ================================

-- 상품: 셀린저 리얼 토너 센텔라아시아티카 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('셀린저 리얼 토너 센텔라아시아티카 200ml',
 '셀린저 리얼 토너 센텔라아시아티카 200ml',
 4.6,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '셀린저'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '셀린저 리얼 토너 센텔라아시아티카 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(10000, 'ORIGINAL', (SELECT id FROM product WHERE name = '셀린저 리얼 토너 센텔라아시아티카 200ml'), NOW(), NOW()),
(7000, 'SALE', (SELECT id FROM product WHERE name = '셀린저 리얼 토너 센텔라아시아티카 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011301105ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '셀린저 리얼 토너 센텔라아시아티카 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '셀린저 리얼 토너 센텔라아시아티카 200ml';


-- ================================

-- 상품: 셀린저 리얼 토너 200ml 5종 택1...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('셀린저 리얼 토너 200ml 5종 택1',
 '셀린저 리얼 토너 200ml 5종 택1',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '셀린저'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('리얼 토너 로즈', 7000, (SELECT id FROM product WHERE name = '셀린저 리얼 토너 200ml 5종 택1'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('리얼 토너 센텔라아시아티카', 7000, (SELECT id FROM product WHERE name = '셀린저 리얼 토너 200ml 5종 택1'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('리얼 토너 씨벅톤', 7000, (SELECT id FROM product WHERE name = '셀린저 리얼 토너 200ml 5종 택1'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('리얼 토너 카렌듈라', 7000, (SELECT id FROM product WHERE name = '셀린저 리얼 토너 200ml 5종 택1'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('리얼 토너 티트리', 7000, (SELECT id FROM product WHERE name = '셀린저 리얼 토너 200ml 5종 택1'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(10000, 'ORIGINAL', (SELECT id FROM product WHERE name = '셀린저 리얼 토너 200ml 5종 택1'), NOW(), NOW()),
(7000, 'SALE', (SELECT id FROM product WHERE name = '셀린저 리얼 토너 200ml 5종 택1'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011301204ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '셀린저 리얼 토너 200ml 5종 택1'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '셀린저 리얼 토너 200ml 5종 택1';


-- ================================

-- 상품: 바이오더마 세비엄 로션 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('바이오더마 세비엄 로션 200ml',
 '바이오더마 세비엄 로션 200ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오더마'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '바이오더마 세비엄 로션 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바이오더마 세비엄 로션 200ml'), NOW(), NOW()),
(32000, 'SALE', (SELECT id FROM product WHERE name = '바이오더마 세비엄 로션 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011319517ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바이오더마 세비엄 로션 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011319514ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '바이오더마 세비엄 로션 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011319511ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '바이오더마 세비엄 로션 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011319515ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '바이오더마 세비엄 로션 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011319516ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '바이오더마 세비엄 로션 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '바이오더마 세비엄 로션 200ml';


-- ================================

-- 상품: [응급진정토닉] 아이소이 아크니 닥터 1st 컨트롤 토닉 90ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[응급진정토닉] 아이소이 아크니 닥터 1st 컨트롤 토닉 90ml',
 '[응급진정토닉] 아이소이 아크니 닥터 1st 컨트롤 토닉 90ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이소이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[응급진정토닉] 아이소이 아크니 닥터 1st 컨트롤 토닉 90ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28800, 'ORIGINAL', (SELECT id FROM product WHERE name = '[응급진정토닉] 아이소이 아크니 닥터 1st 컨트롤 토닉 90ml'), NOW(), NOW()),
(24800, 'SALE', (SELECT id FROM product WHERE name = '[응급진정토닉] 아이소이 아크니 닥터 1st 컨트롤 토닉 90ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011380610ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[응급진정토닉] 아이소이 아크니 닥터 1st 컨트롤 토닉 90ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011380611ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[응급진정토닉] 아이소이 아크니 닥터 1st 컨트롤 토닉 90ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[응급진정토닉] 아이소이 아크니 닥터 1st 컨트롤 토닉 90ml';


-- ================================

-- 상품: [응급진정/유수분케어]로벡틴 시카케어 밸런싱 토너 260ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[응급진정/유수분케어]로벡틴 시카케어 밸런싱 토너 260ml',
 '[응급진정/유수분케어]로벡틴 시카케어 밸런싱 토너 260ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '로벡틴'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[응급진정/유수분케어]로벡틴 시카케어 밸런싱 토너 260ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[응급진정/유수분케어]로벡틴 시카케어 밸런싱 토너 260ml'), NOW(), NOW()),
(16250, 'SALE', (SELECT id FROM product WHERE name = '[응급진정/유수분케어]로벡틴 시카케어 밸런싱 토너 260ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011538433ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[응급진정/유수분케어]로벡틴 시카케어 밸런싱 토너 260ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011538434ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[응급진정/유수분케어]로벡틴 시카케어 밸런싱 토너 260ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011538435ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[응급진정/유수분케어]로벡틴 시카케어 밸런싱 토너 260ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011538436ko.png?l=ko', 4, (SELECT id FROM product WHERE name = '[응급진정/유수분케어]로벡틴 시카케어 밸런싱 토너 260ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011538437ko.png?l=ko', 5, (SELECT id FROM product WHERE name = '[응급진정/유수분케어]로벡틴 시카케어 밸런싱 토너 260ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011538438ko.png?l=ko', 6, (SELECT id FROM product WHERE name = '[응급진정/유수분케어]로벡틴 시카케어 밸런싱 토너 260ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[응급진정/유수분케어]로벡틴 시카케어 밸런싱 토너 260ml';


-- ================================

-- 상품: [각질케어/청정피부] 셀퓨전씨 트리악 pH 컨디션 토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[각질케어/청정피부] 셀퓨전씨 트리악 pH 컨디션 토너 200ml',
 '[각질케어/청정피부] 셀퓨전씨 트리악 pH 컨디션 토너 200ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '셀퓨전씨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[각질케어/청정피부] 셀퓨전씨 트리악 pH 컨디션 토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[각질케어/청정피부] 셀퓨전씨 트리악 pH 컨디션 토너 200ml'), NOW(), NOW()),
(24000, 'SALE', (SELECT id FROM product WHERE name = '[각질케어/청정피부] 셀퓨전씨 트리악 pH 컨디션 토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011542011ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[각질케어/청정피부] 셀퓨전씨 트리악 pH 컨디션 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011542013ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[각질케어/청정피부] 셀퓨전씨 트리악 pH 컨디션 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011542012ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[각질케어/청정피부] 셀퓨전씨 트리악 pH 컨디션 토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[각질케어/청정피부] 셀퓨전씨 트리악 pH 컨디션 토너 200ml';


-- ================================

-- 상품: [진정뿌토] 시카고 시카 엑스퍼트 미스트 토너 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[진정뿌토] 시카고 시카 엑스퍼트 미스트 토너 150ml',
 '[진정뿌토] 시카고 시카 엑스퍼트 미스트 토너 150ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '시카고'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[진정뿌토] 시카고 시카 엑스퍼트 미스트 토너 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[진정뿌토] 시카고 시카 엑스퍼트 미스트 토너 150ml'), NOW(), NOW()),
(16800, 'SALE', (SELECT id FROM product WHERE name = '[진정뿌토] 시카고 시카 엑스퍼트 미스트 토너 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011591006ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[진정뿌토] 시카고 시카 엑스퍼트 미스트 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011591007ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[진정뿌토] 시카고 시카 엑스퍼트 미스트 토너 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[진정뿌토] 시카고 시카 엑스퍼트 미스트 토너 150ml';


-- ================================

-- 상품: [빠른진정토너] 유리아쥬 배리어덤 시카 토너 250ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[빠른진정토너] 유리아쥬 배리어덤 시카 토너 250ml',
 '[빠른진정토너] 유리아쥬 배리어덤 시카 토너 250ml',
 4.6,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유리아쥬'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[빠른진정토너] 유리아쥬 배리어덤 시카 토너 250ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[빠른진정토너] 유리아쥬 배리어덤 시카 토너 250ml'), NOW(), NOW()),
(28000, 'SALE', (SELECT id FROM product WHERE name = '[빠른진정토너] 유리아쥬 배리어덤 시카 토너 250ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011665812ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[빠른진정토너] 유리아쥬 배리어덤 시카 토너 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011665813ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[빠른진정토너] 유리아쥬 배리어덤 시카 토너 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011665811ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[빠른진정토너] 유리아쥬 배리어덤 시카 토너 250ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[빠른진정토너] 유리아쥬 배리어덤 시카 토너 250ml';


-- ================================

-- 상품: [수분장벽토너] 유리아쥬 제모스 토너 500ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분장벽토너] 유리아쥬 제모스 토너 500ml',
 '[수분장벽토너] 유리아쥬 제모스 토너 500ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유리아쥬'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분장벽토너] 유리아쥬 제모스 토너 500ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분장벽토너] 유리아쥬 제모스 토너 500ml'), NOW(), NOW()),
(29800, 'SALE', (SELECT id FROM product WHERE name = '[수분장벽토너] 유리아쥬 제모스 토너 500ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011665910ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분장벽토너] 유리아쥬 제모스 토너 500ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011665912ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분장벽토너] 유리아쥬 제모스 토너 500ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011665911ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분장벽토너] 유리아쥬 제모스 토너 500ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분장벽토너] 유리아쥬 제모스 토너 500ml';


-- ================================

-- 상품: 썸바이미 아하바하파하 30 데이즈 미라클 토너 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('썸바이미 아하바하파하 30 데이즈 미라클 토너 150ml',
 '썸바이미 아하바하파하 30 데이즈 미라클 토너 150ml',
 4.6,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '썸바이미'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '썸바이미 아하바하파하 30 데이즈 미라클 토너 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(21600, 'ORIGINAL', (SELECT id FROM product WHERE name = '썸바이미 아하바하파하 30 데이즈 미라클 토너 150ml'), NOW(), NOW()),
(21600, 'SALE', (SELECT id FROM product WHERE name = '썸바이미 아하바하파하 30 데이즈 미라클 토너 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011799707ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '썸바이미 아하바하파하 30 데이즈 미라클 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011799711ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '썸바이미 아하바하파하 30 데이즈 미라클 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011799710ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '썸바이미 아하바하파하 30 데이즈 미라클 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011799709ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '썸바이미 아하바하파하 30 데이즈 미라클 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011799708ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '썸바이미 아하바하파하 30 데이즈 미라클 토너 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '썸바이미 아하바하파하 30 데이즈 미라클 토너 150ml';


-- ================================

-- 상품: 엠브리올리스 오 드 보떼 로자멜리스 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('엠브리올리스 오 드 보떼 로자멜리스 200ml',
 '엠브리올리스 오 드 보떼 로자멜리스 200ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '엠브리올리스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '엠브리올리스 오 드 보떼 로자멜리스 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '엠브리올리스 오 드 보떼 로자멜리스 200ml'), NOW(), NOW()),
(32000, 'SALE', (SELECT id FROM product WHERE name = '엠브리올리스 오 드 보떼 로자멜리스 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011824705ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '엠브리올리스 오 드 보떼 로자멜리스 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '엠브리올리스 오 드 보떼 로자멜리스 200ml';


-- ================================

-- 상품: 아임프롬 라이스 토너 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아임프롬 라이스 토너 150ml',
 '아임프롬 라이스 토너 150ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아임프롬'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아임프롬 라이스 토너 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아임프롬 라이스 토너 150ml'), NOW(), NOW()),
(28000, 'SALE', (SELECT id FROM product WHERE name = '아임프롬 라이스 토너 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011842709ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아임프롬 라이스 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011842710ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아임프롬 라이스 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011842711ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아임프롬 라이스 토너 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아임프롬 라이스 토너 150ml';


-- ================================

-- 상품: 싸이닉 더 심플 카밍 토너 145ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('싸이닉 더 심플 카밍 토너 145ml',
 '싸이닉 더 심플 카밍 토너 145ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '싸이닉'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '싸이닉 더 심플 카밍 토너 145ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(18000, 'ORIGINAL', (SELECT id FROM product WHERE name = '싸이닉 더 심플 카밍 토너 145ml'), NOW(), NOW()),
(18000, 'SALE', (SELECT id FROM product WHERE name = '싸이닉 더 심플 카밍 토너 145ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012124613ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '싸이닉 더 심플 카밍 토너 145ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012124614ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '싸이닉 더 심플 카밍 토너 145ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '싸이닉 더 심플 카밍 토너 145ml';


-- ================================

-- 상품: 클럽맨리저브 젠트진 에프터쉐이브 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('클럽맨리저브 젠트진 에프터쉐이브 50ml',
 '클럽맨리저브 젠트진 에프터쉐이브 50ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '클럽맨피노드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '클럽맨리저브 젠트진 에프터쉐이브 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(9000, 'ORIGINAL', (SELECT id FROM product WHERE name = '클럽맨리저브 젠트진 에프터쉐이브 50ml'), NOW(), NOW()),
(9000, 'SALE', (SELECT id FROM product WHERE name = '클럽맨리저브 젠트진 에프터쉐이브 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012449302ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '클럽맨리저브 젠트진 에프터쉐이브 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '클럽맨리저브 젠트진 에프터쉐이브 50ml';


-- ================================

-- 상품: 클럽맨리저브 젠트진 에프터쉐이브 177ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('클럽맨리저브 젠트진 에프터쉐이브 177ml',
 '클럽맨리저브 젠트진 에프터쉐이브 177ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '클럽맨피노드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '클럽맨리저브 젠트진 에프터쉐이브 177ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(20000, 'ORIGINAL', (SELECT id FROM product WHERE name = '클럽맨리저브 젠트진 에프터쉐이브 177ml'), NOW(), NOW()),
(20000, 'SALE', (SELECT id FROM product WHERE name = '클럽맨리저브 젠트진 에프터쉐이브 177ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012449503ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '클럽맨리저브 젠트진 에프터쉐이브 177ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '클럽맨리저브 젠트진 에프터쉐이브 177ml';


-- ================================

-- 상품: 클럽맨리저브 브랜디스파이스 에프터쉐이브 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('클럽맨리저브 브랜디스파이스 에프터쉐이브 50ml',
 '클럽맨리저브 브랜디스파이스 에프터쉐이브 50ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '클럽맨피노드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '클럽맨리저브 브랜디스파이스 에프터쉐이브 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(9000, 'ORIGINAL', (SELECT id FROM product WHERE name = '클럽맨리저브 브랜디스파이스 에프터쉐이브 50ml'), NOW(), NOW()),
(9000, 'SALE', (SELECT id FROM product WHERE name = '클럽맨리저브 브랜디스파이스 에프터쉐이브 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012449602ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '클럽맨리저브 브랜디스파이스 에프터쉐이브 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '클럽맨리저브 브랜디스파이스 에프터쉐이브 50ml';


-- ================================

-- 상품: 클럽맨리저브 위스키우즈 에프터쉐이브 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('클럽맨리저브 위스키우즈 에프터쉐이브 50ml',
 '클럽맨리저브 위스키우즈 에프터쉐이브 50ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '클럽맨피노드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '클럽맨리저브 위스키우즈 에프터쉐이브 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(9000, 'ORIGINAL', (SELECT id FROM product WHERE name = '클럽맨리저브 위스키우즈 에프터쉐이브 50ml'), NOW(), NOW()),
(9000, 'SALE', (SELECT id FROM product WHERE name = '클럽맨리저브 위스키우즈 에프터쉐이브 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012450102ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '클럽맨리저브 위스키우즈 에프터쉐이브 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '클럽맨리저브 위스키우즈 에프터쉐이브 50ml';


-- ================================

-- 상품: 클럽맨리저브 위스키우즈 에프터쉐이브 177ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('클럽맨리저브 위스키우즈 에프터쉐이브 177ml',
 '클럽맨리저브 위스키우즈 에프터쉐이브 177ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '클럽맨피노드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '클럽맨리저브 위스키우즈 에프터쉐이브 177ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(20000, 'ORIGINAL', (SELECT id FROM product WHERE name = '클럽맨리저브 위스키우즈 에프터쉐이브 177ml'), NOW(), NOW()),
(20000, 'SALE', (SELECT id FROM product WHERE name = '클럽맨리저브 위스키우즈 에프터쉐이브 177ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012450202ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '클럽맨리저브 위스키우즈 에프터쉐이브 177ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '클럽맨리저브 위스키우즈 에프터쉐이브 177ml';


-- ================================

-- 상품: 클럽맨피노드 오리지날 에프터쉐이브로션 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('클럽맨피노드 오리지날 에프터쉐이브로션 50ml',
 '클럽맨피노드 오리지날 에프터쉐이브로션 50ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '클럽맨피노드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '클럽맨피노드 오리지날 에프터쉐이브로션 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(9000, 'ORIGINAL', (SELECT id FROM product WHERE name = '클럽맨피노드 오리지날 에프터쉐이브로션 50ml'), NOW(), NOW()),
(9000, 'SALE', (SELECT id FROM product WHERE name = '클럽맨피노드 오리지날 에프터쉐이브로션 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012450302ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '클럽맨피노드 오리지날 에프터쉐이브로션 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '클럽맨피노드 오리지날 에프터쉐이브로션 50ml';


-- ================================

-- 상품: 클럽맨피노드 머스크 에프터쉐이브코롱 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('클럽맨피노드 머스크 에프터쉐이브코롱 50ml',
 '클럽맨피노드 머스크 에프터쉐이브코롱 50ml',
 4.6,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '클럽맨피노드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '클럽맨피노드 머스크 에프터쉐이브코롱 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(9000, 'ORIGINAL', (SELECT id FROM product WHERE name = '클럽맨피노드 머스크 에프터쉐이브코롱 50ml'), NOW(), NOW()),
(9000, 'SALE', (SELECT id FROM product WHERE name = '클럽맨피노드 머스크 에프터쉐이브코롱 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012450802ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '클럽맨피노드 머스크 에프터쉐이브코롱 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '클럽맨피노드 머스크 에프터쉐이브코롱 50ml';


-- ================================

-- 상품: 클럽맨피노드 머스크 에프터쉐이브코롱 177ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('클럽맨피노드 머스크 에프터쉐이브코롱 177ml',
 '클럽맨피노드 머스크 에프터쉐이브코롱 177ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '클럽맨피노드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '클럽맨피노드 머스크 에프터쉐이브코롱 177ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(20000, 'ORIGINAL', (SELECT id FROM product WHERE name = '클럽맨피노드 머스크 에프터쉐이브코롱 177ml'), NOW(), NOW()),
(20000, 'SALE', (SELECT id FROM product WHERE name = '클럽맨피노드 머스크 에프터쉐이브코롱 177ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012450902ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '클럽맨피노드 머스크 에프터쉐이브코롱 177ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '클럽맨피노드 머스크 에프터쉐이브코롱 177ml';


-- ================================

-- 상품: 클럽맨피노드 클래식바닐라 에프터쉐이브로션 177ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('클럽맨피노드 클래식바닐라 에프터쉐이브로션 177ml',
 '클럽맨피노드 클래식바닐라 에프터쉐이브로션 177ml',
 4.6,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '클럽맨피노드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '클럽맨피노드 클래식바닐라 에프터쉐이브로션 177ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(20000, 'ORIGINAL', (SELECT id FROM product WHERE name = '클럽맨피노드 클래식바닐라 에프터쉐이브로션 177ml'), NOW(), NOW()),
(20000, 'SALE', (SELECT id FROM product WHERE name = '클럽맨피노드 클래식바닐라 에프터쉐이브로션 177ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012451202ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '클럽맨피노드 클래식바닐라 에프터쉐이브로션 177ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '클럽맨피노드 클래식바닐라 에프터쉐이브로션 177ml';


-- ================================

-- 상품: 닥터자르트 컨트롤에이 티트리먼트 토너 120ml (티트리 약산성 토너)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('닥터자르트 컨트롤에이 티트리먼트 토너 120ml (티트리 약산성 토너)',
 '닥터자르트 컨트롤에이 티트리먼트 토너 120ml (티트리 약산성 토너)',
 4.6,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터자르트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '닥터자르트 컨트롤에이 티트리먼트 토너 120ml (티트리 약산성 토너)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '닥터자르트 컨트롤에이 티트리먼트 토너 120ml (티트리 약산성 토너)'), NOW(), NOW()),
(24000, 'SALE', (SELECT id FROM product WHERE name = '닥터자르트 컨트롤에이 티트리먼트 토너 120ml (티트리 약산성 토너)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012810707ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '닥터자르트 컨트롤에이 티트리먼트 토너 120ml (티트리 약산성 토너)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012810705ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '닥터자르트 컨트롤에이 티트리먼트 토너 120ml (티트리 약산성 토너)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '닥터자르트 컨트롤에이 티트리먼트 토너 120ml (티트리 약산성 토너)';


-- ================================

-- 상품: 닥터자르트 컨트롤에이 티트리먼트 토너 200ml (티트리 약산성 토너)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('닥터자르트 컨트롤에이 티트리먼트 토너 200ml (티트리 약산성 토너)',
 '닥터자르트 컨트롤에이 티트리먼트 토너 200ml (티트리 약산성 토너)',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터자르트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '닥터자르트 컨트롤에이 티트리먼트 토너 200ml (티트리 약산성 토너)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '닥터자르트 컨트롤에이 티트리먼트 토너 200ml (티트리 약산성 토너)'), NOW(), NOW()),
(33000, 'SALE', (SELECT id FROM product WHERE name = '닥터자르트 컨트롤에이 티트리먼트 토너 200ml (티트리 약산성 토너)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012832305ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '닥터자르트 컨트롤에이 티트리먼트 토너 200ml (티트리 약산성 토너)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012832303ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '닥터자르트 컨트롤에이 티트리먼트 토너 200ml (티트리 약산성 토너)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '닥터자르트 컨트롤에이 티트리먼트 토너 200ml (티트리 약산성 토너)';


-- ================================

-- 상품: 이즈앤트리 히아루론산 토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('이즈앤트리 히아루론산 토너 200ml',
 '이즈앤트리 히아루론산 토너 200ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '이즈앤트리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '이즈앤트리 히아루론산 토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(16000, 'ORIGINAL', (SELECT id FROM product WHERE name = '이즈앤트리 히아루론산 토너 200ml'), NOW(), NOW()),
(11900, 'SALE', (SELECT id FROM product WHERE name = '이즈앤트리 히아루론산 토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012944322ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '이즈앤트리 히아루론산 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012944319ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '이즈앤트리 히아루론산 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012944320ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '이즈앤트리 히아루론산 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012944321ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '이즈앤트리 히아루론산 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012944317ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '이즈앤트리 히아루론산 토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '이즈앤트리 히아루론산 토너 200ml';


-- ================================

-- 상품: [대용량] 이즈앤트리 히아루론산 토너 400ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[대용량] 이즈앤트리 히아루론산 토너 400ml',
 '[대용량] 이즈앤트리 히아루론산 토너 400ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '이즈앤트리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[대용량] 이즈앤트리 히아루론산 토너 400ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[대용량] 이즈앤트리 히아루론산 토너 400ml'), NOW(), NOW()),
(20300, 'SALE', (SELECT id FROM product WHERE name = '[대용량] 이즈앤트리 히아루론산 토너 400ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012944419ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[대용량] 이즈앤트리 히아루론산 토너 400ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012944415ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[대용량] 이즈앤트리 히아루론산 토너 400ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012944416ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[대용량] 이즈앤트리 히아루론산 토너 400ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012944417ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[대용량] 이즈앤트리 히아루론산 토너 400ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012944418ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[대용량] 이즈앤트리 히아루론산 토너 400ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[대용량] 이즈앤트리 히아루론산 토너 400ml';


-- ================================

-- 상품: 리우젤 에프터 쉐이브 스킨 2종...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('리우젤 에프터 쉐이브 스킨 2종',
 '리우젤 에프터 쉐이브 스킨 2종',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '리우젤'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('스킨 100ml', 13900, (SELECT id FROM product WHERE name = '리우젤 에프터 쉐이브 스킨 2종'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('스킨 200ml', 18900, (SELECT id FROM product WHERE name = '리우젤 에프터 쉐이브 스킨 2종'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(15000, 'ORIGINAL', (SELECT id FROM product WHERE name = '리우젤 에프터 쉐이브 스킨 2종'), NOW(), NOW()),
(13900, 'SALE', (SELECT id FROM product WHERE name = '리우젤 에프터 쉐이브 스킨 2종'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013051310ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '리우젤 에프터 쉐이브 스킨 2종'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013051309ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '리우젤 에프터 쉐이브 스킨 2종'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013051308ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '리우젤 에프터 쉐이브 스킨 2종'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013051307ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '리우젤 에프터 쉐이브 스킨 2종'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013051306ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '리우젤 에프터 쉐이브 스킨 2종'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013051305ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '리우젤 에프터 쉐이브 스킨 2종'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '리우젤 에프터 쉐이브 스킨 2종';


-- ================================

-- 상품: 마녀공장 비피다 바이옴 앰플 토너 400ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('마녀공장 비피다 바이옴 앰플 토너 400ml',
 '마녀공장 비피다 바이옴 앰플 토너 400ml',
 4.6,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '마녀공장'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '마녀공장 비피다 바이옴 앰플 토너 400ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '마녀공장 비피다 바이옴 앰플 토너 400ml'), NOW(), NOW()),
(17500, 'SALE', (SELECT id FROM product WHERE name = '마녀공장 비피다 바이옴 앰플 토너 400ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013607718ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '마녀공장 비피다 바이옴 앰플 토너 400ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013607719ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '마녀공장 비피다 바이옴 앰플 토너 400ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013607721ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '마녀공장 비피다 바이옴 앰플 토너 400ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '마녀공장 비피다 바이옴 앰플 토너 400ml';


-- ================================

-- 상품: 아크네스 포맨 퍼펙트 스킨 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아크네스 포맨 퍼펙트 스킨 200ml',
 '아크네스 포맨 퍼펙트 스킨 200ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아크네스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아크네스 포맨 퍼펙트 스킨 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(18000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아크네스 포맨 퍼펙트 스킨 200ml'), NOW(), NOW()),
(18000, 'SALE', (SELECT id FROM product WHERE name = '아크네스 포맨 퍼펙트 스킨 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013738808ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아크네스 포맨 퍼펙트 스킨 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아크네스 포맨 퍼펙트 스킨 200ml';


-- ================================

-- 상품: 비오템 옴므 티쀼르 토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('비오템 옴므 티쀼르 토너 200ml',
 '비오템 옴므 티쀼르 토너 200ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비오템'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '비오템 옴므 티쀼르 토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(77000, 'ORIGINAL', (SELECT id FROM product WHERE name = '비오템 옴므 티쀼르 토너 200ml'), NOW(), NOW()),
(65450, 'SALE', (SELECT id FROM product WHERE name = '비오템 옴므 티쀼르 토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013741710ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '비오템 옴므 티쀼르 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013741705ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '비오템 옴므 티쀼르 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013741708ko.jpeg?l=ko', 3, (SELECT id FROM product WHERE name = '비오템 옴므 티쀼르 토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '비오템 옴므 티쀼르 토너 200ml';


-- ================================

-- 상품: 비오템 옴므 아쿠아파워 토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('비오템 옴므 아쿠아파워 토너 200ml',
 '비오템 옴므 아쿠아파워 토너 200ml',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비오템'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '비오템 옴므 아쿠아파워 토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(62000, 'ORIGINAL', (SELECT id FROM product WHERE name = '비오템 옴므 아쿠아파워 토너 200ml'), NOW(), NOW()),
(52700, 'SALE', (SELECT id FROM product WHERE name = '비오템 옴므 아쿠아파워 토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013744509ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '비오템 옴므 아쿠아파워 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013744505ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '비오템 옴므 아쿠아파워 토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '비오템 옴므 아쿠아파워 토너 200ml';


-- ================================

-- 상품: 라네즈옴므 액티브워터 스킨 180ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('라네즈옴므 액티브워터 스킨 180ml',
 '라네즈옴므 액티브워터 스킨 180ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라네즈'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '라네즈옴므 액티브워터 스킨 180ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '라네즈옴므 액티브워터 스킨 180ml'), NOW(), NOW()),
(26000, 'SALE', (SELECT id FROM product WHERE name = '라네즈옴므 액티브워터 스킨 180ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013765712ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '라네즈옴므 액티브워터 스킨 180ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '라네즈옴므 액티브워터 스킨 180ml';


-- ================================

-- 상품: 디오디너리 랙틱 애시드 10% + HA 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('디오디너리 랙틱 애시드 10% + HA 30ml',
 '디오디너리 랙틱 애시드 10% + HA 30ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '디오디너리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '디오디너리 랙틱 애시드 10% + HA 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(14000, 'ORIGINAL', (SELECT id FROM product WHERE name = '디오디너리 랙틱 애시드 10% + HA 30ml'), NOW(), NOW()),
(14000, 'SALE', (SELECT id FROM product WHERE name = '디오디너리 랙틱 애시드 10% + HA 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014132702ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '디오디너리 랙틱 애시드 10% + HA 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014132703ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '디오디너리 랙틱 애시드 10% + HA 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '디오디너리 랙틱 애시드 10% + HA 30ml';


-- ================================

-- 상품: 디오디너리 랙틱 애시드 5% + HA 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('디오디너리 랙틱 애시드 5% + HA 30ml',
 '디오디너리 랙틱 애시드 5% + HA 30ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '디오디너리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '디오디너리 랙틱 애시드 5% + HA 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(12300, 'ORIGINAL', (SELECT id FROM product WHERE name = '디오디너리 랙틱 애시드 5% + HA 30ml'), NOW(), NOW()),
(12300, 'SALE', (SELECT id FROM product WHERE name = '디오디너리 랙틱 애시드 5% + HA 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014133002ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '디오디너리 랙틱 애시드 5% + HA 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014133003ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '디오디너리 랙틱 애시드 5% + HA 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '디오디너리 랙틱 애시드 5% + HA 30ml';


-- ================================

-- 상품: 잇츠스킨 레몬씨 스퀴즈 앰플 토너 500ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('잇츠스킨 레몬씨 스퀴즈 앰플 토너 500ml',
 '잇츠스킨 레몬씨 스퀴즈 앰플 토너 500ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '잇츠스킨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '잇츠스킨 레몬씨 스퀴즈 앰플 토너 500ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(13500, 'ORIGINAL', (SELECT id FROM product WHERE name = '잇츠스킨 레몬씨 스퀴즈 앰플 토너 500ml'), NOW(), NOW()),
(10800, 'SALE', (SELECT id FROM product WHERE name = '잇츠스킨 레몬씨 스퀴즈 앰플 토너 500ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014141702ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '잇츠스킨 레몬씨 스퀴즈 앰플 토너 500ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014141705ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '잇츠스킨 레몬씨 스퀴즈 앰플 토너 500ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014141704ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '잇츠스킨 레몬씨 스퀴즈 앰플 토너 500ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '잇츠스킨 레몬씨 스퀴즈 앰플 토너 500ml';


-- ================================

-- 상품: [1+1/모공케어] 유세린 더머토클린 클래리파잉 토너 더블기획 (200ml+200ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[1+1/모공케어] 유세린 더머토클린 클래리파잉 토너 더블기획 (200ml+200ml)',
 '[1+1/모공케어] 유세린 더머토클린 클래리파잉 토너 더블기획 (200ml+200ml)',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유세린'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[1+1/모공케어] 유세린 더머토클린 클래리파잉 토너 더블기획 (200ml+200ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1+1/모공케어] 유세린 더머토클린 클래리파잉 토너 더블기획 (200ml+200ml)'), NOW(), NOW()),
(26600, 'SALE', (SELECT id FROM product WHERE name = '[1+1/모공케어] 유세린 더머토클린 클래리파잉 토너 더블기획 (200ml+200ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014190009ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[1+1/모공케어] 유세린 더머토클린 클래리파잉 토너 더블기획 (200ml+200ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014190005ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[1+1/모공케어] 유세린 더머토클린 클래리파잉 토너 더블기획 (200ml+200ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014190010ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[1+1/모공케어] 유세린 더머토클린 클래리파잉 토너 더블기획 (200ml+200ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[1+1/모공케어] 유세린 더머토클린 클래리파잉 토너 더블기획 (200ml+200ml)';


-- ================================

-- 상품: 라네즈옴므 블루에너지 스킨토너 180ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('라네즈옴므 블루에너지 스킨토너 180ml',
 '라네즈옴므 블루에너지 스킨토너 180ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라네즈'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '라네즈옴므 블루에너지 스킨토너 180ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '라네즈옴므 블루에너지 스킨토너 180ml'), NOW(), NOW()),
(30000, 'SALE', (SELECT id FROM product WHERE name = '라네즈옴므 블루에너지 스킨토너 180ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014319308ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '라네즈옴므 블루에너지 스킨토너 180ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '라네즈옴므 블루에너지 스킨토너 180ml';


-- ================================

-- 상품: 메이크프렘 세이프 미 릴리프 에센스 토너 400ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('메이크프렘 세이프 미 릴리프 에센스 토너 400ml',
 '메이크프렘 세이프 미 릴리프 에센스 토너 400ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '메이크프렘'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '메이크프렘 세이프 미 릴리프 에센스 토너 400ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '메이크프렘 세이프 미 릴리프 에센스 토너 400ml'), NOW(), NOW()),
(19600, 'SALE', (SELECT id FROM product WHERE name = '메이크프렘 세이프 미 릴리프 에센스 토너 400ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014322810ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '메이크프렘 세이프 미 릴리프 에센스 토너 400ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014322806ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '메이크프렘 세이프 미 릴리프 에센스 토너 400ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '메이크프렘 세이프 미 릴리프 에센스 토너 400ml';


-- ================================

-- 상품: 비오템옴므 아쿠아틱 로션 애프터 쉐이브  200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('비오템옴므 아쿠아틱 로션 애프터 쉐이브  200ml',
 '비오템옴므 아쿠아틱 로션 애프터 쉐이브  200ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비오템'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '비오템옴므 아쿠아틱 로션 애프터 쉐이브  200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(61000, 'ORIGINAL', (SELECT id FROM product WHERE name = '비오템옴므 아쿠아틱 로션 애프터 쉐이브  200ml'), NOW(), NOW()),
(51850, 'SALE', (SELECT id FROM product WHERE name = '비오템옴므 아쿠아틱 로션 애프터 쉐이브  200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014324412ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '비오템옴므 아쿠아틱 로션 애프터 쉐이브  200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014324407ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '비오템옴므 아쿠아틱 로션 애프터 쉐이브  200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '비오템옴므 아쿠아틱 로션 애프터 쉐이브  200ml';


-- ================================

-- 상품: 마녀공장 갈락토미 클리어스킨 투명광채 토너 210ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('마녀공장 갈락토미 클리어스킨 투명광채 토너 210ml',
 '마녀공장 갈락토미 클리어스킨 투명광채 토너 210ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '마녀공장'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '마녀공장 갈락토미 클리어스킨 투명광채 토너 210ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '마녀공장 갈락토미 클리어스킨 투명광채 토너 210ml'), NOW(), NOW()),
(16900, 'SALE', (SELECT id FROM product WHERE name = '마녀공장 갈락토미 클리어스킨 투명광채 토너 210ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014345806ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '마녀공장 갈락토미 클리어스킨 투명광채 토너 210ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014345807ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '마녀공장 갈락토미 클리어스킨 투명광채 토너 210ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014345808ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '마녀공장 갈락토미 클리어스킨 투명광채 토너 210ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '마녀공장 갈락토미 클리어스킨 투명광채 토너 210ml';


-- ================================

-- 상품: 폴라초이스 스킨 퍼펙팅 바하 리퀴드 118ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('폴라초이스 스킨 퍼펙팅 바하 리퀴드 118ml',
 '폴라초이스 스킨 퍼펙팅 바하 리퀴드 118ml',
 4.6,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '폴라초이스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '폴라초이스 스킨 퍼펙팅 바하 리퀴드 118ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '폴라초이스 스킨 퍼펙팅 바하 리퀴드 118ml'), NOW(), NOW()),
(28000, 'SALE', (SELECT id FROM product WHERE name = '폴라초이스 스킨 퍼펙팅 바하 리퀴드 118ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014404212ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '폴라초이스 스킨 퍼펙팅 바하 리퀴드 118ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014404215ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '폴라초이스 스킨 퍼펙팅 바하 리퀴드 118ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014404213ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '폴라초이스 스킨 퍼펙팅 바하 리퀴드 118ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '폴라초이스 스킨 퍼펙팅 바하 리퀴드 118ml';


-- ================================

-- 상품: 폴라초이스 스킨 발란싱 포어-리듀싱 토너 190ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('폴라초이스 스킨 발란싱 포어-리듀싱 토너 190ml',
 '폴라초이스 스킨 발란싱 포어-리듀싱 토너 190ml',
 4.6,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '폴라초이스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '폴라초이스 스킨 발란싱 포어-리듀싱 토너 190ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '폴라초이스 스킨 발란싱 포어-리듀싱 토너 190ml'), NOW(), NOW()),
(30400, 'SALE', (SELECT id FROM product WHERE name = '폴라초이스 스킨 발란싱 포어-리듀싱 토너 190ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014405204ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '폴라초이스 스킨 발란싱 포어-리듀싱 토너 190ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014405206ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '폴라초이스 스킨 발란싱 포어-리듀싱 토너 190ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014405205ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '폴라초이스 스킨 발란싱 포어-리듀싱 토너 190ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '폴라초이스 스킨 발란싱 포어-리듀싱 토너 190ml';


-- ================================

-- 상품: [수분보습] 애즈이즈투비 히아루로닉 에센셜 토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분보습] 애즈이즈투비 히아루로닉 에센셜 토너 200ml',
 '[수분보습] 애즈이즈투비 히아루로닉 에센셜 토너 200ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '애즈이즈투비'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분보습] 애즈이즈투비 히아루로닉 에센셜 토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(22000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분보습] 애즈이즈투비 히아루로닉 에센셜 토너 200ml'), NOW(), NOW()),
(22000, 'SALE', (SELECT id FROM product WHERE name = '[수분보습] 애즈이즈투비 히아루로닉 에센셜 토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014412202ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분보습] 애즈이즈투비 히아루로닉 에센셜 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014412203ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분보습] 애즈이즈투비 히아루로닉 에센셜 토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분보습] 애즈이즈투비 히아루로닉 에센셜 토너 200ml';


-- ================================

-- 상품: 아크웰 리얼 아쿠아 밸런싱 토너 160ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아크웰 리얼 아쿠아 밸런싱 토너 160ml',
 '아크웰 리얼 아쿠아 밸런싱 토너 160ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아크웰'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아크웰 리얼 아쿠아 밸런싱 토너 160ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아크웰 리얼 아쿠아 밸런싱 토너 160ml'), NOW(), NOW()),
(13000, 'SALE', (SELECT id FROM product WHERE name = '아크웰 리얼 아쿠아 밸런싱 토너 160ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014480710ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아크웰 리얼 아쿠아 밸런싱 토너 160ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014480708ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아크웰 리얼 아쿠아 밸런싱 토너 160ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014480713ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아크웰 리얼 아쿠아 밸런싱 토너 160ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014480711ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '아크웰 리얼 아쿠아 밸런싱 토너 160ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아크웰 리얼 아쿠아 밸런싱 토너 160ml';


-- ================================

-- 상품: 플리프 시카-알로에 앰플 토너 200ml (여드름성피부추천)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('플리프 시카-알로에 앰플 토너 200ml (여드름성피부추천)',
 '플리프 시카-알로에 앰플 토너 200ml (여드름성피부추천)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '플리프'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '플리프 시카-알로에 앰플 토너 200ml (여드름성피부추천)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(18000, 'ORIGINAL', (SELECT id FROM product WHERE name = '플리프 시카-알로에 앰플 토너 200ml (여드름성피부추천)'), NOW(), NOW()),
(18000, 'SALE', (SELECT id FROM product WHERE name = '플리프 시카-알로에 앰플 토너 200ml (여드름성피부추천)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014583310ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '플리프 시카-알로에 앰플 토너 200ml (여드름성피부추천)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014583311ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '플리프 시카-알로에 앰플 토너 200ml (여드름성피부추천)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '플리프 시카-알로에 앰플 토너 200ml (여드름성피부추천)';


-- ================================

-- 상품: [고보습에센스토너] 하다라보 고쿠쥰 프리미엄 로션 170ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[고보습에센스토너] 하다라보 고쿠쥰 프리미엄 로션 170ml',
 '[고보습에센스토너] 하다라보 고쿠쥰 프리미엄 로션 170ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '하다라보'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[고보습에센스토너] 하다라보 고쿠쥰 프리미엄 로션 170ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(20000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[고보습에센스토너] 하다라보 고쿠쥰 프리미엄 로션 170ml'), NOW(), NOW()),
(20000, 'SALE', (SELECT id FROM product WHERE name = '[고보습에센스토너] 하다라보 고쿠쥰 프리미엄 로션 170ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014626213ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[고보습에센스토너] 하다라보 고쿠쥰 프리미엄 로션 170ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014626211ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[고보습에센스토너] 하다라보 고쿠쥰 프리미엄 로션 170ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014626212ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[고보습에센스토너] 하다라보 고쿠쥰 프리미엄 로션 170ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014626210ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[고보습에센스토너] 하다라보 고쿠쥰 프리미엄 로션 170ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014626207ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[고보습에센스토너] 하다라보 고쿠쥰 프리미엄 로션 170ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[고보습에센스토너] 하다라보 고쿠쥰 프리미엄 로션 170ml';


-- ================================

-- 상품: 리우젤 에프터 쉐이브 우드&스파이스 스킨 2종...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('리우젤 에프터 쉐이브 우드&스파이스 스킨 2종',
 '리우젤 에프터 쉐이브 우드&스파이스 스킨 2종',
 5.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '리우젤'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('스킨 100m', 13900, (SELECT id FROM product WHERE name = '리우젤 에프터 쉐이브 우드&스파이스 스킨 2종'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('스킨 200ml', 18900, (SELECT id FROM product WHERE name = '리우젤 에프터 쉐이브 우드&스파이스 스킨 2종'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(15000, 'ORIGINAL', (SELECT id FROM product WHERE name = '리우젤 에프터 쉐이브 우드&스파이스 스킨 2종'), NOW(), NOW()),
(13900, 'SALE', (SELECT id FROM product WHERE name = '리우젤 에프터 쉐이브 우드&스파이스 스킨 2종'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014700209ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '리우젤 에프터 쉐이브 우드&스파이스 스킨 2종'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014700208ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '리우젤 에프터 쉐이브 우드&스파이스 스킨 2종'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014700207ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '리우젤 에프터 쉐이브 우드&스파이스 스킨 2종'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014700206ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '리우젤 에프터 쉐이브 우드&스파이스 스킨 2종'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014700205ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '리우젤 에프터 쉐이브 우드&스파이스 스킨 2종'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '리우젤 에프터 쉐이브 우드&스파이스 스킨 2종';


-- ================================

-- 상품: 땡큐파머 강화교동쌀 맑음 에센셜토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('땡큐파머 강화교동쌀 맑음 에센셜토너 200ml',
 '땡큐파머 강화교동쌀 맑음 에센셜토너 200ml',
 5.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '땡큐파머'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '땡큐파머 강화교동쌀 맑음 에센셜토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '땡큐파머 강화교동쌀 맑음 에센셜토너 200ml'), NOW(), NOW()),
(21000, 'SALE', (SELECT id FROM product WHERE name = '땡큐파머 강화교동쌀 맑음 에센셜토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014736042ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '땡큐파머 강화교동쌀 맑음 에센셜토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014736041ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '땡큐파머 강화교동쌀 맑음 에센셜토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014736040ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '땡큐파머 강화교동쌀 맑음 에센셜토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014736039ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '땡큐파머 강화교동쌀 맑음 에센셜토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014736038ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '땡큐파머 강화교동쌀 맑음 에센셜토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '땡큐파머 강화교동쌀 맑음 에센셜토너 200ml';


-- ================================

-- 상품: AHC 온리 포맨 토너 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('AHC 온리 포맨 토너 150ml',
 'AHC 온리 포맨 토너 150ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'AHC'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = 'AHC 온리 포맨 토너 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = 'AHC 온리 포맨 토너 150ml'), NOW(), NOW()),
(25000, 'SALE', (SELECT id FROM product WHERE name = 'AHC 온리 포맨 토너 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014766005ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = 'AHC 온리 포맨 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014766007ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = 'AHC 온리 포맨 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014766006ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = 'AHC 온리 포맨 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014766004ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = 'AHC 온리 포맨 토너 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = 'AHC 온리 포맨 토너 150ml';


-- ================================

-- 상품: [수분생기] 라운드랩 자작나무 수분 토너 300ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분생기] 라운드랩 자작나무 수분 토너 300ml',
 '[수분생기] 라운드랩 자작나무 수분 토너 300ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라운드랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분생기] 라운드랩 자작나무 수분 토너 300ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분생기] 라운드랩 자작나무 수분 토너 300ml'), NOW(), NOW()),
(15600, 'SALE', (SELECT id FROM product WHERE name = '[수분생기] 라운드랩 자작나무 수분 토너 300ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014825206ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분생기] 라운드랩 자작나무 수분 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014825204ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분생기] 라운드랩 자작나무 수분 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014825205ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분생기] 라운드랩 자작나무 수분 토너 300ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분생기] 라운드랩 자작나무 수분 토너 300ml';


-- ================================

-- 상품: 바버501 애프터 쉐이브 165ml 2종 택1...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('바버501 애프터 쉐이브 165ml 2종 택1',
 '바버501 애프터 쉐이브 165ml 2종 택1',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바버501'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('바버501 애프터 쉐이브 옐로', 16900, (SELECT id FROM product WHERE name = '바버501 애프터 쉐이브 165ml 2종 택1'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('바버501 애프터 쉐이브 그린', 16900, (SELECT id FROM product WHERE name = '바버501 애프터 쉐이브 165ml 2종 택1'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(18900, 'ORIGINAL', (SELECT id FROM product WHERE name = '바버501 애프터 쉐이브 165ml 2종 택1'), NOW(), NOW()),
(16900, 'SALE', (SELECT id FROM product WHERE name = '바버501 애프터 쉐이브 165ml 2종 택1'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014912204ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바버501 애프터 쉐이브 165ml 2종 택1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014912205ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '바버501 애프터 쉐이브 165ml 2종 택1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014912206ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '바버501 애프터 쉐이브 165ml 2종 택1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014912207ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '바버501 애프터 쉐이브 165ml 2종 택1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014912208ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '바버501 애프터 쉐이브 165ml 2종 택1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014912209ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '바버501 애프터 쉐이브 165ml 2종 택1'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '바버501 애프터 쉐이브 165ml 2종 택1';


-- ================================

-- 상품: 아크네스 세범 밸런싱 스킨 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아크네스 세범 밸런싱 스킨 200ml',
 '아크네스 세범 밸런싱 스킨 200ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아크네스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아크네스 세범 밸런싱 스킨 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(15000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아크네스 세범 밸런싱 스킨 200ml'), NOW(), NOW()),
(9000, 'SALE', (SELECT id FROM product WHERE name = '아크네스 세범 밸런싱 스킨 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015081511ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아크네스 세범 밸런싱 스킨 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015081513ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아크네스 세범 밸런싱 스킨 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아크네스 세범 밸런싱 스킨 200ml';


-- ================================

-- 상품: [속수분충전/매끈피부결] 셀퓨전씨 약산성 패리어 토너 300ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[속수분충전/매끈피부결] 셀퓨전씨 약산성 패리어 토너 300ml',
 '[속수분충전/매끈피부결] 셀퓨전씨 약산성 패리어 토너 300ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '셀퓨전씨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[속수분충전/매끈피부결] 셀퓨전씨 약산성 패리어 토너 300ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[속수분충전/매끈피부결] 셀퓨전씨 약산성 패리어 토너 300ml'), NOW(), NOW()),
(17000, 'SALE', (SELECT id FROM product WHERE name = '[속수분충전/매끈피부결] 셀퓨전씨 약산성 패리어 토너 300ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015135609ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[속수분충전/매끈피부결] 셀퓨전씨 약산성 패리어 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015135608ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[속수분충전/매끈피부결] 셀퓨전씨 약산성 패리어 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015135607ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[속수분충전/매끈피부결] 셀퓨전씨 약산성 패리어 토너 300ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[속수분충전/매끈피부결] 셀퓨전씨 약산성 패리어 토너 300ml';


-- ================================

-- 상품: 라로슈포제 에빠끌라 K(+) 토너 200ml (지성 피부)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('라로슈포제 에빠끌라 K(+) 토너 200ml (지성 피부)',
 '라로슈포제 에빠끌라 K(+) 토너 200ml (지성 피부)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라로슈포제'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '라로슈포제 에빠끌라 K(+) 토너 200ml (지성 피부)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(36000, 'ORIGINAL', (SELECT id FROM product WHERE name = '라로슈포제 에빠끌라 K(+) 토너 200ml (지성 피부)'), NOW(), NOW()),
(32400, 'SALE', (SELECT id FROM product WHERE name = '라로슈포제 에빠끌라 K(+) 토너 200ml (지성 피부)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015251403ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '라로슈포제 에빠끌라 K(+) 토너 200ml (지성 피부)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015251401ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '라로슈포제 에빠끌라 K(+) 토너 200ml (지성 피부)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015251404ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '라로슈포제 에빠끌라 K(+) 토너 200ml (지성 피부)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '라로슈포제 에빠끌라 K(+) 토너 200ml (지성 피부)';


-- ================================

-- 상품: 아이소이 모이스춰닥터 장수진 수분토너 130ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아이소이 모이스춰닥터 장수진 수분토너 130ml',
 '아이소이 모이스춰닥터 장수진 수분토너 130ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이소이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아이소이 모이스춰닥터 장수진 수분토너 130ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(22000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아이소이 모이스춰닥터 장수진 수분토너 130ml'), NOW(), NOW()),
(22000, 'SALE', (SELECT id FROM product WHERE name = '아이소이 모이스춰닥터 장수진 수분토너 130ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015385907ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아이소이 모이스춰닥터 장수진 수분토너 130ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015385913ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아이소이 모이스춰닥터 장수진 수분토너 130ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아이소이 모이스춰닥터 장수진 수분토너 130ml';


-- ================================

-- 상품: [트러블완화/진정] 원씽 어성초 추출물 토너 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[트러블완화/진정] 원씽 어성초 추출물 토너 150ml',
 '[트러블완화/진정] 원씽 어성초 추출물 토너 150ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '원씽'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[트러블완화/진정] 원씽 어성초 추출물 토너 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(11500, 'ORIGINAL', (SELECT id FROM product WHERE name = '[트러블완화/진정] 원씽 어성초 추출물 토너 150ml'), NOW(), NOW()),
(9890, 'SALE', (SELECT id FROM product WHERE name = '[트러블완화/진정] 원씽 어성초 추출물 토너 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015450607ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[트러블완화/진정] 원씽 어성초 추출물 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015450606ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[트러블완화/진정] 원씽 어성초 추출물 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015450605ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[트러블완화/진정] 원씽 어성초 추출물 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015450603ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[트러블완화/진정] 원씽 어성초 추출물 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015450602ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[트러블완화/진정] 원씽 어성초 추출물 토너 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[트러블완화/진정] 원씽 어성초 추출물 토너 150ml';


-- ================================

-- 상품: [수분진정] 아비브 어성초 카밍 토너 스킨부스터 더블 기획 (200ml+200ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분진정] 아비브 어성초 카밍 토너 스킨부스터 더블 기획 (200ml+200ml)',
 '[수분진정] 아비브 어성초 카밍 토너 스킨부스터 더블 기획 (200ml+200ml)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아비브'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분진정] 아비브 어성초 카밍 토너 스킨부스터 더블 기획 (200ml+200ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분진정] 아비브 어성초 카밍 토너 스킨부스터 더블 기획 (200ml+200ml)'), NOW(), NOW()),
(39000, 'SALE', (SELECT id FROM product WHERE name = '[수분진정] 아비브 어성초 카밍 토너 스킨부스터 더블 기획 (200ml+200ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015525323ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분진정] 아비브 어성초 카밍 토너 스킨부스터 더블 기획 (200ml+200ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분진정] 아비브 어성초 카밍 토너 스킨부스터 더블 기획 (200ml+200ml)';


-- ================================

-- 상품: [뿌리는 쫀쫀거품 토너] 더말로지카 3 in 1 멀티-액티브 토너 50ml (쿨링/진정/수...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[뿌리는 쫀쫀거품 토너] 더말로지카 3 in 1 멀티-액티브 토너 50ml (쿨링/진정/수분)',
 '[뿌리는 쫀쫀거품 토너] 더말로지카 3 in 1 멀티-액티브 토너 50ml (쿨링/진정/수분)',
 4.6,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더말로지카'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[뿌리는 쫀쫀거품 토너] 더말로지카 3 in 1 멀티-액티브 토너 50ml (쿨링/진정/수분)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(17000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[뿌리는 쫀쫀거품 토너] 더말로지카 3 in 1 멀티-액티브 토너 50ml (쿨링/진정/수분)'), NOW(), NOW()),
(14000, 'SALE', (SELECT id FROM product WHERE name = '[뿌리는 쫀쫀거품 토너] 더말로지카 3 in 1 멀티-액티브 토너 50ml (쿨링/진정/수분)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015541304ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[뿌리는 쫀쫀거품 토너] 더말로지카 3 in 1 멀티-액티브 토너 50ml (쿨링/진정/수분)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015541303ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[뿌리는 쫀쫀거품 토너] 더말로지카 3 in 1 멀티-액티브 토너 50ml (쿨링/진정/수분)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015541302ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[뿌리는 쫀쫀거품 토너] 더말로지카 3 in 1 멀티-액티브 토너 50ml (쿨링/진정/수분)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015541301ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[뿌리는 쫀쫀거품 토너] 더말로지카 3 in 1 멀티-액티브 토너 50ml (쿨링/진정/수분)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[뿌리는 쫀쫀거품 토너] 더말로지카 3 in 1 멀티-액티브 토너 50ml (쿨링/진정/수분)';


-- ================================

-- 상품: [비건토너] 스킨푸드 미나리 토너 300ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[비건토너] 스킨푸드 미나리 토너 300ml',
 '[비건토너] 스킨푸드 미나리 토너 300ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '스킨푸드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[비건토너] 스킨푸드 미나리 토너 300ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[비건토너] 스킨푸드 미나리 토너 300ml'), NOW(), NOW()),
(16800, 'SALE', (SELECT id FROM product WHERE name = '[비건토너] 스킨푸드 미나리 토너 300ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015604004ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[비건토너] 스킨푸드 미나리 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015604003ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[비건토너] 스킨푸드 미나리 토너 300ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[비건토너] 스킨푸드 미나리 토너 300ml';


-- ================================

-- 상품: 폴라초이스 스킨 퍼펙팅 바하 리퀴드 더블 기획 (118ml+118ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('폴라초이스 스킨 퍼펙팅 바하 리퀴드 더블 기획 (118ml+118ml)',
 '폴라초이스 스킨 퍼펙팅 바하 리퀴드 더블 기획 (118ml+118ml)',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '폴라초이스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '폴라초이스 스킨 퍼펙팅 바하 리퀴드 더블 기획 (118ml+118ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(49000, 'ORIGINAL', (SELECT id FROM product WHERE name = '폴라초이스 스킨 퍼펙팅 바하 리퀴드 더블 기획 (118ml+118ml)'), NOW(), NOW()),
(39200, 'SALE', (SELECT id FROM product WHERE name = '폴라초이스 스킨 퍼펙팅 바하 리퀴드 더블 기획 (118ml+118ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015695910ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '폴라초이스 스킨 퍼펙팅 바하 리퀴드 더블 기획 (118ml+118ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015695911ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '폴라초이스 스킨 퍼펙팅 바하 리퀴드 더블 기획 (118ml+118ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '폴라초이스 스킨 퍼펙팅 바하 리퀴드 더블 기획 (118ml+118ml)';


-- ================================

-- 상품: [수분장벽토너] 유리아쥬 제모스 토너 (본품500ml+250ml 추가 증정)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분장벽토너] 유리아쥬 제모스 토너 (본품500ml+250ml 추가 증정)',
 '[수분장벽토너] 유리아쥬 제모스 토너 (본품500ml+250ml 추가 증정)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유리아쥬'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분장벽토너] 유리아쥬 제모스 토너 (본품500ml+250ml 추가 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(43000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분장벽토너] 유리아쥬 제모스 토너 (본품500ml+250ml 추가 증정)'), NOW(), NOW()),
(39900, 'SALE', (SELECT id FROM product WHERE name = '[수분장벽토너] 유리아쥬 제모스 토너 (본품500ml+250ml 추가 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015729421ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분장벽토너] 유리아쥬 제모스 토너 (본품500ml+250ml 추가 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015729420ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분장벽토너] 유리아쥬 제모스 토너 (본품500ml+250ml 추가 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015729419ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분장벽토너] 유리아쥬 제모스 토너 (본품500ml+250ml 추가 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015729418ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[수분장벽토너] 유리아쥬 제모스 토너 (본품500ml+250ml 추가 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분장벽토너] 유리아쥬 제모스 토너 (본품500ml+250ml 추가 증정)';


-- ================================

-- 상품: 바비 브라운 하이드레이팅 페이스 토닉...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('바비 브라운 하이드레이팅 페이스 토닉',
 '바비 브라운 하이드레이팅 페이스 토닉',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바비브라운'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '바비 브라운 하이드레이팅 페이스 토닉'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(82000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바비 브라운 하이드레이팅 페이스 토닉'), NOW(), NOW()),
(82000, 'SALE', (SELECT id FROM product WHERE name = '바비 브라운 하이드레이팅 페이스 토닉'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015776802ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바비 브라운 하이드레이팅 페이스 토닉'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '바비 브라운 하이드레이팅 페이스 토닉';


-- ================================

-- 상품: 빌리프 스트레스 슈터 시카 수딩 토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('빌리프 스트레스 슈터 시카 수딩 토너 200ml',
 '빌리프 스트레스 슈터 시카 수딩 토너 200ml',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '빌리프'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '빌리프 스트레스 슈터 시카 수딩 토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '빌리프 스트레스 슈터 시카 수딩 토너 200ml'), NOW(), NOW()),
(38000, 'SALE', (SELECT id FROM product WHERE name = '빌리프 스트레스 슈터 시카 수딩 토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015892108ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '빌리프 스트레스 슈터 시카 수딩 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015892109ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '빌리프 스트레스 슈터 시카 수딩 토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '빌리프 스트레스 슈터 시카 수딩 토너 200ml';


-- ================================

-- 상품: [보습폭탄] 빌리프 모이스춰라이징 밤 토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[보습폭탄] 빌리프 모이스춰라이징 밤 토너 200ml',
 '[보습폭탄] 빌리프 모이스춰라이징 밤 토너 200ml',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '빌리프'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[보습폭탄] 빌리프 모이스춰라이징 밤 토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[보습폭탄] 빌리프 모이스춰라이징 밤 토너 200ml'), NOW(), NOW()),
(35000, 'SALE', (SELECT id FROM product WHERE name = '[보습폭탄] 빌리프 모이스춰라이징 밤 토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015893011ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[보습폭탄] 빌리프 모이스춰라이징 밤 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015893012ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[보습폭탄] 빌리프 모이스춰라이징 밤 토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[보습폭탄] 빌리프 모이스춰라이징 밤 토너 200ml';


-- ================================

-- 상품: 그레이멜린 알래스카 내추럴 토너500ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('그레이멜린 알래스카 내추럴 토너500ml',
 '그레이멜린 알래스카 내추럴 토너500ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '그레이멜린'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '그레이멜린 알래스카 내추럴 토너500ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(18000, 'ORIGINAL', (SELECT id FROM product WHERE name = '그레이멜린 알래스카 내추럴 토너500ml'), NOW(), NOW()),
(18000, 'SALE', (SELECT id FROM product WHERE name = '그레이멜린 알래스카 내추럴 토너500ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016043614ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '그레이멜린 알래스카 내추럴 토너500ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016043611ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '그레이멜린 알래스카 내추럴 토너500ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016043610ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '그레이멜린 알래스카 내추럴 토너500ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016043615ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '그레이멜린 알래스카 내추럴 토너500ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '그레이멜린 알래스카 내추럴 토너500ml';


-- ================================

-- 상품: 크리니크 클래리파잉 로션 투와이스 어 데이 엑스폴리에이터 2/3 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('크리니크 클래리파잉 로션 투와이스 어 데이 엑스폴리에이터 2/3 200ml',
 '크리니크 클래리파잉 로션 투와이스 어 데이 엑스폴리에이터 2/3 200ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '크리니크'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('3번 지복합성', 36550, (SELECT id FROM product WHERE name = '크리니크 클래리파잉 로션 투와이스 어 데이 엑스폴리에이터 2/3 200ml'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('2번 건복합성', 0, (SELECT id FROM product WHERE name = '크리니크 클래리파잉 로션 투와이스 어 데이 엑스폴리에이터 2/3 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(43000, 'ORIGINAL', (SELECT id FROM product WHERE name = '크리니크 클래리파잉 로션 투와이스 어 데이 엑스폴리에이터 2/3 200ml'), NOW(), NOW()),
(36550, 'SALE', (SELECT id FROM product WHERE name = '크리니크 클래리파잉 로션 투와이스 어 데이 엑스폴리에이터 2/3 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016056204ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '크리니크 클래리파잉 로션 투와이스 어 데이 엑스폴리에이터 2/3 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016056202ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '크리니크 클래리파잉 로션 투와이스 어 데이 엑스폴리에이터 2/3 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016056201ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '크리니크 클래리파잉 로션 투와이스 어 데이 엑스폴리에이터 2/3 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '크리니크 클래리파잉 로션 투와이스 어 데이 엑스폴리에이터 2/3 200ml';


-- ================================

-- 상품: 이즈앤트리 어니언 뉴페어 에센스 토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('이즈앤트리 어니언 뉴페어 에센스 토너 200ml',
 '이즈앤트리 어니언 뉴페어 에센스 토너 200ml',
 4.6,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '이즈앤트리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '이즈앤트리 어니언 뉴페어 에센스 토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '이즈앤트리 어니언 뉴페어 에센스 토너 200ml'), NOW(), NOW()),
(13900, 'SALE', (SELECT id FROM product WHERE name = '이즈앤트리 어니언 뉴페어 에센스 토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016065013ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '이즈앤트리 어니언 뉴페어 에센스 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016065014ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '이즈앤트리 어니언 뉴페어 에센스 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016065015ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '이즈앤트리 어니언 뉴페어 에센스 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016065012ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '이즈앤트리 어니언 뉴페어 에센스 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016065018ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '이즈앤트리 어니언 뉴페어 에센스 토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '이즈앤트리 어니언 뉴페어 에센스 토너 200ml';


-- ================================

-- 상품: 레이지소사이어티 시카 애프터쉐이브 토너 스프레이 120ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('레이지소사이어티 시카 애프터쉐이브 토너 스프레이 120ml',
 '레이지소사이어티 시카 애프터쉐이브 토너 스프레이 120ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '레이지소사이어티'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '레이지소사이어티 시카 애프터쉐이브 토너 스프레이 120ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(14900, 'ORIGINAL', (SELECT id FROM product WHERE name = '레이지소사이어티 시카 애프터쉐이브 토너 스프레이 120ml'), NOW(), NOW()),
(13900, 'SALE', (SELECT id FROM product WHERE name = '레이지소사이어티 시카 애프터쉐이브 토너 스프레이 120ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016103603ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '레이지소사이어티 시카 애프터쉐이브 토너 스프레이 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016103602ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '레이지소사이어티 시카 애프터쉐이브 토너 스프레이 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016103601ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '레이지소사이어티 시카 애프터쉐이브 토너 스프레이 120ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '레이지소사이어티 시카 애프터쉐이브 토너 스프레이 120ml';


-- ================================

-- 상품: [모공케어] 유세린 더머토클린 클래리파잉 토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[모공케어] 유세린 더머토클린 클래리파잉 토너 200ml',
 '[모공케어] 유세린 더머토클린 클래리파잉 토너 200ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유세린'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[모공케어] 유세린 더머토클린 클래리파잉 토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[모공케어] 유세린 더머토클린 클래리파잉 토너 200ml'), NOW(), NOW()),
(28000, 'SALE', (SELECT id FROM product WHERE name = '[모공케어] 유세린 더머토클린 클래리파잉 토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016131404ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[모공케어] 유세린 더머토클린 클래리파잉 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016131405ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[모공케어] 유세린 더머토클린 클래리파잉 토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[모공케어] 유세린 더머토클린 클래리파잉 토너 200ml';


-- ================================

-- 상품: 라네즈 워터뱅크 블루히알루로닉 기초 2종(중건성)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('라네즈 워터뱅크 블루히알루로닉 기초 2종(중건성)',
 '라네즈 워터뱅크 블루히알루로닉 기초 2종(중건성)',
 5.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라네즈'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '라네즈 워터뱅크 블루히알루로닉 기초 2종(중건성)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(69000, 'ORIGINAL', (SELECT id FROM product WHERE name = '라네즈 워터뱅크 블루히알루로닉 기초 2종(중건성)'), NOW(), NOW()),
(69000, 'SALE', (SELECT id FROM product WHERE name = '라네즈 워터뱅크 블루히알루로닉 기초 2종(중건성)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016205604ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '라네즈 워터뱅크 블루히알루로닉 기초 2종(중건성)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016205606ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '라네즈 워터뱅크 블루히알루로닉 기초 2종(중건성)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '라네즈 워터뱅크 블루히알루로닉 기초 2종(중건성)';


-- ================================

-- 상품: 라네즈 워터뱅크 블루히알루로닉 토너(중건성) 160ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('라네즈 워터뱅크 블루히알루로닉 토너(중건성) 160ml',
 '라네즈 워터뱅크 블루히알루로닉 토너(중건성) 160ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라네즈'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '라네즈 워터뱅크 블루히알루로닉 토너(중건성) 160ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '라네즈 워터뱅크 블루히알루로닉 토너(중건성) 160ml'), NOW(), NOW()),
(33000, 'SALE', (SELECT id FROM product WHERE name = '라네즈 워터뱅크 블루히알루로닉 토너(중건성) 160ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016205804ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '라네즈 워터뱅크 블루히알루로닉 토너(중건성) 160ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '라네즈 워터뱅크 블루히알루로닉 토너(중건성) 160ml';


-- ================================

-- 상품: [장벽강화] 마리엔메이 비타민B5+비피다 토너 120ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[장벽강화] 마리엔메이 비타민B5+비피다 토너 120ml',
 '[장벽강화] 마리엔메이 비타민B5+비피다 토너 120ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '마리엔메이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[장벽강화] 마리엔메이 비타민B5+비피다 토너 120ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(19500, 'ORIGINAL', (SELECT id FROM product WHERE name = '[장벽강화] 마리엔메이 비타민B5+비피다 토너 120ml'), NOW(), NOW()),
(15900, 'SALE', (SELECT id FROM product WHERE name = '[장벽강화] 마리엔메이 비타민B5+비피다 토너 120ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016261808ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[장벽강화] 마리엔메이 비타민B5+비피다 토너 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016261809ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[장벽강화] 마리엔메이 비타민B5+비피다 토너 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016261804ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[장벽강화] 마리엔메이 비타민B5+비피다 토너 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016261803ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[장벽강화] 마리엔메이 비타민B5+비피다 토너 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016261802ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[장벽강화] 마리엔메이 비타민B5+비피다 토너 120ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[장벽강화] 마리엔메이 비타민B5+비피다 토너 120ml';


-- ================================

-- 상품: 라빠레뜨 뷰티 카밍 그린 턴오버 토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('라빠레뜨 뷰티 카밍 그린 턴오버 토너 200ml',
 '라빠레뜨 뷰티 카밍 그린 턴오버 토너 200ml',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라빠레뜨 뷰티'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '라빠레뜨 뷰티 카밍 그린 턴오버 토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(22000, 'ORIGINAL', (SELECT id FROM product WHERE name = '라빠레뜨 뷰티 카밍 그린 턴오버 토너 200ml'), NOW(), NOW()),
(15400, 'SALE', (SELECT id FROM product WHERE name = '라빠레뜨 뷰티 카밍 그린 턴오버 토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016297712ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '라빠레뜨 뷰티 카밍 그린 턴오버 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016297713ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '라빠레뜨 뷰티 카밍 그린 턴오버 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016297710ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '라빠레뜨 뷰티 카밍 그린 턴오버 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016297709ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '라빠레뜨 뷰티 카밍 그린 턴오버 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016297708ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '라빠레뜨 뷰티 카밍 그린 턴오버 토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '라빠레뜨 뷰티 카밍 그린 턴오버 토너 200ml';


-- ================================

-- 상품: [수분진정] 라운드랩 포 맨 자작나무 수분 토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분진정] 라운드랩 포 맨 자작나무 수분 토너 200ml',
 '[수분진정] 라운드랩 포 맨 자작나무 수분 토너 200ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라운드랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분진정] 라운드랩 포 맨 자작나무 수분 토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분진정] 라운드랩 포 맨 자작나무 수분 토너 200ml'), NOW(), NOW()),
(24000, 'SALE', (SELECT id FROM product WHERE name = '[수분진정] 라운드랩 포 맨 자작나무 수분 토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016349319ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분진정] 라운드랩 포 맨 자작나무 수분 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016349320ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분진정] 라운드랩 포 맨 자작나무 수분 토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분진정] 라운드랩 포 맨 자작나무 수분 토너 200ml';


-- ================================

-- 상품: [100억돌파/500ml대용량] 비욘드 엔젤아쿠아 수분 진정 토너 500ml (비건)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[100억돌파/500ml대용량] 비욘드 엔젤아쿠아 수분 진정 토너 500ml (비건)',
 '[100억돌파/500ml대용량] 비욘드 엔젤아쿠아 수분 진정 토너 500ml (비건)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비욘드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[100억돌파/500ml대용량] 비욘드 엔젤아쿠아 수분 진정 토너 500ml (비건)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(19900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[100억돌파/500ml대용량] 비욘드 엔젤아쿠아 수분 진정 토너 500ml (비건)'), NOW(), NOW()),
(10360, 'SALE', (SELECT id FROM product WHERE name = '[100억돌파/500ml대용량] 비욘드 엔젤아쿠아 수분 진정 토너 500ml (비건)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016351010ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[100억돌파/500ml대용량] 비욘드 엔젤아쿠아 수분 진정 토너 500ml (비건)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016351013ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[100억돌파/500ml대용량] 비욘드 엔젤아쿠아 수분 진정 토너 500ml (비건)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016351006ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[100억돌파/500ml대용량] 비욘드 엔젤아쿠아 수분 진정 토너 500ml (비건)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016351008ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[100억돌파/500ml대용량] 비욘드 엔젤아쿠아 수분 진정 토너 500ml (비건)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016351007ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[100억돌파/500ml대용량] 비욘드 엔젤아쿠아 수분 진정 토너 500ml (비건)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016351009ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[100억돌파/500ml대용량] 비욘드 엔젤아쿠아 수분 진정 토너 500ml (비건)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[100억돌파/500ml대용량] 비욘드 엔젤아쿠아 수분 진정 토너 500ml (비건)';


-- ================================

-- 상품: [이동욱 PICK] 더마펌 모이스트 베리어 부스팅 토너 M4 200ml(민감보습)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[이동욱 PICK] 더마펌 모이스트 베리어 부스팅 토너 M4 200ml(민감보습)',
 '[이동욱 PICK] 더마펌 모이스트 베리어 부스팅 토너 M4 200ml(민감보습)',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더마펌'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[이동욱 PICK] 더마펌 모이스트 베리어 부스팅 토너 M4 200ml(민감보습)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[이동욱 PICK] 더마펌 모이스트 베리어 부스팅 토너 M4 200ml(민감보습)'), NOW(), NOW()),
(21000, 'SALE', (SELECT id FROM product WHERE name = '[이동욱 PICK] 더마펌 모이스트 베리어 부스팅 토너 M4 200ml(민감보습)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016373402ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[이동욱 PICK] 더마펌 모이스트 베리어 부스팅 토너 M4 200ml(민감보습)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016373403ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[이동욱 PICK] 더마펌 모이스트 베리어 부스팅 토너 M4 200ml(민감보습)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[이동욱 PICK] 더마펌 모이스트 베리어 부스팅 토너 M4 200ml(민감보습)';


-- ================================

-- 상품: 센텔리안24 마데카 옴므 수딩 토너 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('센텔리안24 마데카 옴므 수딩 토너 150ml',
 '센텔리안24 마데카 옴므 수딩 토너 150ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '센텔리안24'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '센텔리안24 마데카 옴므 수딩 토너 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(27000, 'ORIGINAL', (SELECT id FROM product WHERE name = '센텔리안24 마데카 옴므 수딩 토너 150ml'), NOW(), NOW()),
(27000, 'SALE', (SELECT id FROM product WHERE name = '센텔리안24 마데카 옴므 수딩 토너 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016530301ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '센텔리안24 마데카 옴므 수딩 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016530302ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '센텔리안24 마데카 옴므 수딩 토너 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '센텔리안24 마데카 옴므 수딩 토너 150ml';


-- ================================

-- 상품: AHC 허브솔루션 알로에베라 토너 500ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('AHC 허브솔루션 알로에베라 토너 500ml',
 'AHC 허브솔루션 알로에베라 토너 500ml',
 4.6,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'AHC'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[민감/진정] 알로에토너', 15000, (SELECT id FROM product WHERE name = 'AHC 허브솔루션 알로에베라 토너 500ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(15000, 'ORIGINAL', (SELECT id FROM product WHERE name = 'AHC 허브솔루션 알로에베라 토너 500ml'), NOW(), NOW()),
(15000, 'SALE', (SELECT id FROM product WHERE name = 'AHC 허브솔루션 알로에베라 토너 500ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016536001ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = 'AHC 허브솔루션 알로에베라 토너 500ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = 'AHC 허브솔루션 알로에베라 토너 500ml';


-- ================================

-- 상품: AHC 허브솔루션 로즈 토너  500ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('AHC 허브솔루션 로즈 토너  500ml',
 'AHC 허브솔루션 로즈 토너  500ml',
 4.6,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'AHC'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[수분/진정] 로즈토너', 13090, (SELECT id FROM product WHERE name = 'AHC 허브솔루션 로즈 토너  500ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(15000, 'ORIGINAL', (SELECT id FROM product WHERE name = 'AHC 허브솔루션 로즈 토너  500ml'), NOW(), NOW()),
(13090, 'SALE', (SELECT id FROM product WHERE name = 'AHC 허브솔루션 로즈 토너  500ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016536401ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = 'AHC 허브솔루션 로즈 토너  500ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = 'AHC 허브솔루션 로즈 토너  500ml';


-- ================================

-- 상품: AHC 허브솔루션 레몬 토너 500ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('AHC 허브솔루션 레몬 토너 500ml',
 'AHC 허브솔루션 레몬 토너 500ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'AHC'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[모공/피지] 레몬토너', 13090, (SELECT id FROM product WHERE name = 'AHC 허브솔루션 레몬 토너 500ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(15000, 'ORIGINAL', (SELECT id FROM product WHERE name = 'AHC 허브솔루션 레몬 토너 500ml'), NOW(), NOW()),
(13090, 'SALE', (SELECT id FROM product WHERE name = 'AHC 허브솔루션 레몬 토너 500ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016536601ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = 'AHC 허브솔루션 레몬 토너 500ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = 'AHC 허브솔루션 레몬 토너 500ml';


-- ================================

-- 상품: [피지/진정케어] 피캄 베리어 사이클 락토P 토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[피지/진정케어] 피캄 베리어 사이클 락토P 토너 200ml',
 '[피지/진정케어] 피캄 베리어 사이클 락토P 토너 200ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '피캄'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[피지/진정케어] 피캄 베리어 사이클 락토P 토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[피지/진정케어] 피캄 베리어 사이클 락토P 토너 200ml'), NOW(), NOW()),
(12900, 'SALE', (SELECT id FROM product WHERE name = '[피지/진정케어] 피캄 베리어 사이클 락토P 토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016727614ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[피지/진정케어] 피캄 베리어 사이클 락토P 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016727629ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[피지/진정케어] 피캄 베리어 사이클 락토P 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016727628ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[피지/진정케어] 피캄 베리어 사이클 락토P 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016727627ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[피지/진정케어] 피캄 베리어 사이클 락토P 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016727626ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[피지/진정케어] 피캄 베리어 사이클 락토P 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016727625ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[피지/진정케어] 피캄 베리어 사이클 락토P 토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[피지/진정케어] 피캄 베리어 사이클 락토P 토너 200ml';


-- ================================

-- 상품: 클럽맨리저브 데킬라티즈 에프터쉐이브 177ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('클럽맨리저브 데킬라티즈 에프터쉐이브 177ml',
 '클럽맨리저브 데킬라티즈 에프터쉐이브 177ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '클럽맨피노드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '클럽맨리저브 데킬라티즈 에프터쉐이브 177ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(20000, 'ORIGINAL', (SELECT id FROM product WHERE name = '클럽맨리저브 데킬라티즈 에프터쉐이브 177ml'), NOW(), NOW()),
(20000, 'SALE', (SELECT id FROM product WHERE name = '클럽맨리저브 데킬라티즈 에프터쉐이브 177ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016784102ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '클럽맨리저브 데킬라티즈 에프터쉐이브 177ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '클럽맨리저브 데킬라티즈 에프터쉐이브 177ml';


-- ================================

-- 상품: 클럽맨피노드 드래곤 노어 오데토일렛 414ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('클럽맨피노드 드래곤 노어 오데토일렛 414ml',
 '클럽맨피노드 드래곤 노어 오데토일렛 414ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '클럽맨피노드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '클럽맨피노드 드래곤 노어 오데토일렛 414ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '클럽맨피노드 드래곤 노어 오데토일렛 414ml'), NOW(), NOW()),
(25000, 'SALE', (SELECT id FROM product WHERE name = '클럽맨피노드 드래곤 노어 오데토일렛 414ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016784302ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '클럽맨피노드 드래곤 노어 오데토일렛 414ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '클럽맨피노드 드래곤 노어 오데토일렛 414ml';


-- ================================

-- 상품: 클럽맨피노드 스페셜리저브 에프터쉐이브코롱 177ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('클럽맨피노드 스페셜리저브 에프터쉐이브코롱 177ml',
 '클럽맨피노드 스페셜리저브 에프터쉐이브코롱 177ml',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '클럽맨피노드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '클럽맨피노드 스페셜리저브 에프터쉐이브코롱 177ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(20000, 'ORIGINAL', (SELECT id FROM product WHERE name = '클럽맨피노드 스페셜리저브 에프터쉐이브코롱 177ml'), NOW(), NOW()),
(20000, 'SALE', (SELECT id FROM product WHERE name = '클럽맨피노드 스페셜리저브 에프터쉐이브코롱 177ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016784503ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '클럽맨피노드 스페셜리저브 에프터쉐이브코롱 177ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '클럽맨피노드 스페셜리저브 에프터쉐이브코롱 177ml';


-- ================================

-- 상품: 미구하라 울트라 화이트닝 퍼펙션 스킨 오리진 400ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('미구하라 울트라 화이트닝 퍼펙션 스킨 오리진 400ml',
 '미구하라 울트라 화이트닝 퍼펙션 스킨 오리진 400ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '미구하라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '미구하라 울트라 화이트닝 퍼펙션 스킨 오리진 400ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(31000, 'ORIGINAL', (SELECT id FROM product WHERE name = '미구하라 울트라 화이트닝 퍼펙션 스킨 오리진 400ml'), NOW(), NOW()),
(31000, 'SALE', (SELECT id FROM product WHERE name = '미구하라 울트라 화이트닝 퍼펙션 스킨 오리진 400ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016826904ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '미구하라 울트라 화이트닝 퍼펙션 스킨 오리진 400ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016826905ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '미구하라 울트라 화이트닝 퍼펙션 스킨 오리진 400ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '미구하라 울트라 화이트닝 퍼펙션 스킨 오리진 400ml';


-- ================================

-- 상품: 피지오겔 DMT 포맨 에센셜 토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('피지오겔 DMT 포맨 에센셜 토너 200ml',
 '피지오겔 DMT 포맨 에센셜 토너 200ml',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '피지오겔'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '피지오겔 DMT 포맨 에센셜 토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '피지오겔 DMT 포맨 에센셜 토너 200ml'), NOW(), NOW()),
(30000, 'SALE', (SELECT id FROM product WHERE name = '피지오겔 DMT 포맨 에센셜 토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016917906ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '피지오겔 DMT 포맨 에센셜 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016917904ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '피지오겔 DMT 포맨 에센셜 토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '피지오겔 DMT 포맨 에센셜 토너 200ml';


-- ================================

-- 상품: [1+1기획] 차앤박(CNP) 아쿠아 수딩 토너 200ml 1+1 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[1+1기획] 차앤박(CNP) 아쿠아 수딩 토너 200ml 1+1 기획',
 '[1+1기획] 차앤박(CNP) 아쿠아 수딩 토너 200ml 1+1 기획',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '차앤박'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[1+1기획] 차앤박(CNP) 아쿠아 수딩 토너 200ml 1+1 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28500, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1+1기획] 차앤박(CNP) 아쿠아 수딩 토너 200ml 1+1 기획'), NOW(), NOW()),
(21600, 'SALE', (SELECT id FROM product WHERE name = '[1+1기획] 차앤박(CNP) 아쿠아 수딩 토너 200ml 1+1 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016968304ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[1+1기획] 차앤박(CNP) 아쿠아 수딩 토너 200ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016968302ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[1+1기획] 차앤박(CNP) 아쿠아 수딩 토너 200ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016968303ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[1+1기획] 차앤박(CNP) 아쿠아 수딩 토너 200ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016968306ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[1+1기획] 차앤박(CNP) 아쿠아 수딩 토너 200ml 1+1 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[1+1기획] 차앤박(CNP) 아쿠아 수딩 토너 200ml 1+1 기획';


-- ================================

-- 상품: 달팡 인트랄 데일리 미셀러 토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('달팡 인트랄 데일리 미셀러 토너 200ml',
 '달팡 인트랄 데일리 미셀러 토너 200ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '달팡'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '달팡 인트랄 데일리 미셀러 토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(47000, 'ORIGINAL', (SELECT id FROM product WHERE name = '달팡 인트랄 데일리 미셀러 토너 200ml'), NOW(), NOW()),
(39950, 'SALE', (SELECT id FROM product WHERE name = '달팡 인트랄 데일리 미셀러 토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016999911ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '달팡 인트랄 데일리 미셀러 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016999909ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '달팡 인트랄 데일리 미셀러 토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '달팡 인트랄 데일리 미셀러 토너 200ml';


-- ================================

-- 상품: [피지케어] 닥터지 에이클리어 밸런싱 토너 200ml 증정 기획 (+화장솜 70매)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[피지케어] 닥터지 에이클리어 밸런싱 토너 200ml 증정 기획 (+화장솜 70매)',
 '[피지케어] 닥터지 에이클리어 밸런싱 토너 200ml 증정 기획 (+화장솜 70매)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터지'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[피지케어] 닥터지 에이클리어 밸런싱 토너 200ml 증정 기획 (+화장솜 70매)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(27000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[피지케어] 닥터지 에이클리어 밸런싱 토너 200ml 증정 기획 (+화장솜 70매)'), NOW(), NOW()),
(18900, 'SALE', (SELECT id FROM product WHERE name = '[피지케어] 닥터지 에이클리어 밸런싱 토너 200ml 증정 기획 (+화장솜 70매)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017003803ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[피지케어] 닥터지 에이클리어 밸런싱 토너 200ml 증정 기획 (+화장솜 70매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017003802ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[피지케어] 닥터지 에이클리어 밸런싱 토너 200ml 증정 기획 (+화장솜 70매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017003804ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[피지케어] 닥터지 에이클리어 밸런싱 토너 200ml 증정 기획 (+화장솜 70매)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[피지케어] 닥터지 에이클리어 밸런싱 토너 200ml 증정 기획 (+화장솜 70매)';


-- ================================

-- 상품: 비오템 비오수르스 중복합성 토너 400ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('비오템 비오수르스 중복합성 토너 400ml',
 '비오템 비오수르스 중복합성 토너 400ml',
 5.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비오템'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '비오템 비오수르스 중복합성 토너 400ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(79000, 'ORIGINAL', (SELECT id FROM product WHERE name = '비오템 비오수르스 중복합성 토너 400ml'), NOW(), NOW()),
(67150, 'SALE', (SELECT id FROM product WHERE name = '비오템 비오수르스 중복합성 토너 400ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017041812ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '비오템 비오수르스 중복합성 토너 400ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017041807ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '비오템 비오수르스 중복합성 토너 400ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017041811ko.jpeg?l=ko', 3, (SELECT id FROM product WHERE name = '비오템 비오수르스 중복합성 토너 400ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '비오템 비오수르스 중복합성 토너 400ml';


-- ================================

-- 상품: 에센허브 티트리 90 카밍 토너 320ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('에센허브 티트리 90 카밍 토너 320ml',
 '에센허브 티트리 90 카밍 토너 320ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에센허브'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '에센허브 티트리 90 카밍 토너 320ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(21000, 'ORIGINAL', (SELECT id FROM product WHERE name = '에센허브 티트리 90 카밍 토너 320ml'), NOW(), NOW()),
(21000, 'SALE', (SELECT id FROM product WHERE name = '에센허브 티트리 90 카밍 토너 320ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017063807ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '에센허브 티트리 90 카밍 토너 320ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017063805ko.jpeg?l=ko', 2, (SELECT id FROM product WHERE name = '에센허브 티트리 90 카밍 토너 320ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017063804ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '에센허브 티트리 90 카밍 토너 320ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017063802ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '에센허브 티트리 90 카밍 토너 320ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '에센허브 티트리 90 카밍 토너 320ml';


-- ================================

-- 상품: [대용량, 피지/진정케어] 피캄 베리어 사이클 락토P 토너 500ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[대용량, 피지/진정케어] 피캄 베리어 사이클 락토P 토너 500ml',
 '[대용량, 피지/진정케어] 피캄 베리어 사이클 락토P 토너 500ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '피캄'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[대용량, 피지/진정케어] 피캄 베리어 사이클 락토P 토너 500ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(43000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[대용량, 피지/진정케어] 피캄 베리어 사이클 락토P 토너 500ml'), NOW(), NOW()),
(34900, 'SALE', (SELECT id FROM product WHERE name = '[대용량, 피지/진정케어] 피캄 베리어 사이클 락토P 토너 500ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017113205ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[대용량, 피지/진정케어] 피캄 베리어 사이클 락토P 토너 500ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017113211ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[대용량, 피지/진정케어] 피캄 베리어 사이클 락토P 토너 500ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017113210ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[대용량, 피지/진정케어] 피캄 베리어 사이클 락토P 토너 500ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017113209ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[대용량, 피지/진정케어] 피캄 베리어 사이클 락토P 토너 500ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017113208ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[대용량, 피지/진정케어] 피캄 베리어 사이클 락토P 토너 500ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017113207ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[대용량, 피지/진정케어] 피캄 베리어 사이클 락토P 토너 500ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[대용량, 피지/진정케어] 피캄 베리어 사이클 락토P 토너 500ml';


-- ================================

-- 상품: 닥터하스킨 미라클아토 하이드로 토너 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('닥터하스킨 미라클아토 하이드로 토너 150ml',
 '닥터하스킨 미라클아토 하이드로 토너 150ml',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터하스킨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '닥터하스킨 미라클아토 하이드로 토너 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(17900, 'ORIGINAL', (SELECT id FROM product WHERE name = '닥터하스킨 미라클아토 하이드로 토너 150ml'), NOW(), NOW()),
(17000, 'SALE', (SELECT id FROM product WHERE name = '닥터하스킨 미라클아토 하이드로 토너 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017175503ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '닥터하스킨 미라클아토 하이드로 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017175502ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '닥터하스킨 미라클아토 하이드로 토너 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '닥터하스킨 미라클아토 하이드로 토너 150ml';


-- ================================

-- 상품: [진정보습] 닥터지 레드 블레미쉬 클리어 모이스처 토너 증정 기획 (토너 300ml+크림3...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[진정보습] 닥터지 레드 블레미쉬 클리어 모이스처 토너 증정 기획 (토너 300ml+크림30ml)',
 '[진정보습] 닥터지 레드 블레미쉬 클리어 모이스처 토너 증정 기획 (토너 300ml+크림30ml)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터지'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[진정보습] 닥터지 레드 블레미쉬 클리어 모이스처 토너 증정 기획 (토너 300ml+크림30ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[진정보습] 닥터지 레드 블레미쉬 클리어 모이스처 토너 증정 기획 (토너 300ml+크림30ml)'), NOW(), NOW()),
(25600, 'SALE', (SELECT id FROM product WHERE name = '[진정보습] 닥터지 레드 블레미쉬 클리어 모이스처 토너 증정 기획 (토너 300ml+크림30ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017402309ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[진정보습] 닥터지 레드 블레미쉬 클리어 모이스처 토너 증정 기획 (토너 300ml+크림30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017402312ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[진정보습] 닥터지 레드 블레미쉬 클리어 모이스처 토너 증정 기획 (토너 300ml+크림30ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[진정보습] 닥터지 레드 블레미쉬 클리어 모이스처 토너 증정 기획 (토너 300ml+크림30ml)';


-- ================================

-- 상품: [보습세럼/한정기획]닥터자르트 세라마이딘 스킨 베리어 세럼 토너 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[보습세럼/한정기획]닥터자르트 세라마이딘 스킨 베리어 세럼 토너 150ml',
 '[보습세럼/한정기획]닥터자르트 세라마이딘 스킨 베리어 세럼 토너 150ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터자르트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[보습세럼/한정기획]닥터자르트 세라마이딘 스킨 베리어 세럼 토너 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(40000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[보습세럼/한정기획]닥터자르트 세라마이딘 스킨 베리어 세럼 토너 150ml'), NOW(), NOW()),
(30000, 'SALE', (SELECT id FROM product WHERE name = '[보습세럼/한정기획]닥터자르트 세라마이딘 스킨 베리어 세럼 토너 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017535406ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[보습세럼/한정기획]닥터자르트 세라마이딘 스킨 베리어 세럼 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017535404ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[보습세럼/한정기획]닥터자르트 세라마이딘 스킨 베리어 세럼 토너 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[보습세럼/한정기획]닥터자르트 세라마이딘 스킨 베리어 세럼 토너 150ml';


-- ================================

-- 상품: 메이크프렘 인테카 진정 토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('메이크프렘 인테카 진정 토너 200ml',
 '메이크프렘 인테카 진정 토너 200ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '메이크프렘'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '메이크프렘 인테카 진정 토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(22000, 'ORIGINAL', (SELECT id FROM product WHERE name = '메이크프렘 인테카 진정 토너 200ml'), NOW(), NOW()),
(22000, 'SALE', (SELECT id FROM product WHERE name = '메이크프렘 인테카 진정 토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017632007ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '메이크프렘 인테카 진정 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017632006ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '메이크프렘 인테카 진정 토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '메이크프렘 인테카 진정 토너 200ml';


-- ================================

-- 상품: 트러블레스 마일드 클리어 토너 에센스 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('트러블레스 마일드 클리어 토너 에센스 200ml',
 '트러블레스 마일드 클리어 토너 에센스 200ml',
 5.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '트러블레스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '트러블레스 마일드 클리어 토너 에센스 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '트러블레스 마일드 클리어 토너 에센스 200ml'), NOW(), NOW()),
(23000, 'SALE', (SELECT id FROM product WHERE name = '트러블레스 마일드 클리어 토너 에센스 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017651209ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '트러블레스 마일드 클리어 토너 에센스 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017651210ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '트러블레스 마일드 클리어 토너 에센스 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017651202ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '트러블레스 마일드 클리어 토너 에센스 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017651201ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '트러블레스 마일드 클리어 토너 에센스 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '트러블레스 마일드 클리어 토너 에센스 200ml';


-- ================================

-- 상품: [당근토너] 스킨푸드 캐롯 카로틴 수딩 토너 300ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[당근토너] 스킨푸드 캐롯 카로틴 수딩 토너 300ml',
 '[당근토너] 스킨푸드 캐롯 카로틴 수딩 토너 300ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '스킨푸드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[당근토너] 스킨푸드 캐롯 카로틴 수딩 토너 300ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[당근토너] 스킨푸드 캐롯 카로틴 수딩 토너 300ml'), NOW(), NOW()),
(24000, 'SALE', (SELECT id FROM product WHERE name = '[당근토너] 스킨푸드 캐롯 카로틴 수딩 토너 300ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017697808ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[당근토너] 스킨푸드 캐롯 카로틴 수딩 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017697807ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[당근토너] 스킨푸드 캐롯 카로틴 수딩 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017697806ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[당근토너] 스킨푸드 캐롯 카로틴 수딩 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017697805ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[당근토너] 스킨푸드 캐롯 카로틴 수딩 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017697804ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[당근토너] 스킨푸드 캐롯 카로틴 수딩 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017697803ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[당근토너] 스킨푸드 캐롯 카로틴 수딩 토너 300ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[당근토너] 스킨푸드 캐롯 카로틴 수딩 토너 300ml';


-- ================================

-- 상품: 프랭클리 시카 80 히알루론산 토너 260mL...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('프랭클리 시카 80 히알루론산 토너 260mL',
 '프랭클리 시카 80 히알루론산 토너 260mL',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '프랭클리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '프랭클리 시카 80 히알루론산 토너 260mL'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(11200, 'ORIGINAL', (SELECT id FROM product WHERE name = '프랭클리 시카 80 히알루론산 토너 260mL'), NOW(), NOW()),
(11200, 'SALE', (SELECT id FROM product WHERE name = '프랭클리 시카 80 히알루론산 토너 260mL'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017747711ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '프랭클리 시카 80 히알루론산 토너 260mL'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017747710ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '프랭클리 시카 80 히알루론산 토너 260mL'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017747714ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '프랭클리 시카 80 히알루론산 토너 260mL'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017747712ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '프랭클리 시카 80 히알루론산 토너 260mL'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017747715ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '프랭클리 시카 80 히알루론산 토너 260mL'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '프랭클리 시카 80 히알루론산 토너 260mL';


-- ================================

-- 상품: [수딩진정] 넘버즈인 1번 진정 맑게담은 청초토너 300ml 기획 (+1번 패드 10매 증...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수딩진정] 넘버즈인 1번 진정 맑게담은 청초토너 300ml 기획 (+1번 패드 10매 증정)',
 '[수딩진정] 넘버즈인 1번 진정 맑게담은 청초토너 300ml 기획 (+1번 패드 10매 증정)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '넘버즈인'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수딩진정] 넘버즈인 1번 진정 맑게담은 청초토너 300ml 기획 (+1번 패드 10매 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수딩진정] 넘버즈인 1번 진정 맑게담은 청초토너 300ml 기획 (+1번 패드 10매 증정)'), NOW(), NOW()),
(24700, 'SALE', (SELECT id FROM product WHERE name = '[수딩진정] 넘버즈인 1번 진정 맑게담은 청초토너 300ml 기획 (+1번 패드 10매 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017775721ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수딩진정] 넘버즈인 1번 진정 맑게담은 청초토너 300ml 기획 (+1번 패드 10매 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017775722ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수딩진정] 넘버즈인 1번 진정 맑게담은 청초토너 300ml 기획 (+1번 패드 10매 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017775717ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수딩진정] 넘버즈인 1번 진정 맑게담은 청초토너 300ml 기획 (+1번 패드 10매 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017775718ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[수딩진정] 넘버즈인 1번 진정 맑게담은 청초토너 300ml 기획 (+1번 패드 10매 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017775719ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[수딩진정] 넘버즈인 1번 진정 맑게담은 청초토너 300ml 기획 (+1번 패드 10매 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017775720ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[수딩진정] 넘버즈인 1번 진정 맑게담은 청초토너 300ml 기획 (+1번 패드 10매 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수딩진정] 넘버즈인 1번 진정 맑게담은 청초토너 300ml 기획 (+1번 패드 10매 증정)';


-- ================================

-- 상품: 헤라 옴므 파워부스팅 토너 150ML...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('헤라 옴므 파워부스팅 토너 150ML',
 '헤라 옴므 파워부스팅 토너 150ML',
 5.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '헤라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '헤라 옴므 파워부스팅 토너 150ML'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(65000, 'ORIGINAL', (SELECT id FROM product WHERE name = '헤라 옴므 파워부스팅 토너 150ML'), NOW(), NOW()),
(55250, 'SALE', (SELECT id FROM product WHERE name = '헤라 옴므 파워부스팅 토너 150ML'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017807504ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '헤라 옴므 파워부스팅 토너 150ML'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017807505ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '헤라 옴므 파워부스팅 토너 150ML'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017807507ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '헤라 옴므 파워부스팅 토너 150ML'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '헤라 옴므 파워부스팅 토너 150ML';


-- ================================

-- 상품: 코스톡 타임리스 에센스스킨 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('코스톡 타임리스 에센스스킨 200ml',
 '코스톡 타임리스 에센스스킨 200ml',
 5.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '코스톡'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '코스톡 타임리스 에센스스킨 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '코스톡 타임리스 에센스스킨 200ml'), NOW(), NOW()),
(20300, 'SALE', (SELECT id FROM product WHERE name = '코스톡 타임리스 에센스스킨 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017851411ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '코스톡 타임리스 에센스스킨 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017851408ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '코스톡 타임리스 에센스스킨 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017851409ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '코스톡 타임리스 에센스스킨 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017851419ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '코스톡 타임리스 에센스스킨 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '코스톡 타임리스 에센스스킨 200ml';


-- ================================

-- 상품: [급속진정토너] 크리니크 모이스춰 써지 하이드로 인퓨즈드 로션 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[급속진정토너] 크리니크 모이스춰 써지 하이드로 인퓨즈드 로션 200ml',
 '[급속진정토너] 크리니크 모이스춰 써지 하이드로 인퓨즈드 로션 200ml',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '크리니크'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[급속진정토너] 크리니크 모이스춰 써지 하이드로 인퓨즈드 로션 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(56000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[급속진정토너] 크리니크 모이스춰 써지 하이드로 인퓨즈드 로션 200ml'), NOW(), NOW()),
(47600, 'SALE', (SELECT id FROM product WHERE name = '[급속진정토너] 크리니크 모이스춰 써지 하이드로 인퓨즈드 로션 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017864802ko.jpeg?l=ko', 1, (SELECT id FROM product WHERE name = '[급속진정토너] 크리니크 모이스춰 써지 하이드로 인퓨즈드 로션 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[급속진정토너] 크리니크 모이스춰 써지 하이드로 인퓨즈드 로션 200ml';


-- ================================

-- 상품: [진정/속보습] 센텔리안24 마데카 데일리 리페어 토너 단독 기획 (150ml+50ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[진정/속보습] 센텔리안24 마데카 데일리 리페어 토너 단독 기획 (150ml+50ml)',
 '[진정/속보습] 센텔리안24 마데카 데일리 리페어 토너 단독 기획 (150ml+50ml)',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '센텔리안24'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[진정/속보습] 센텔리안24 마데카 데일리 리페어 토너 단독 기획 (150ml+50ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[진정/속보습] 센텔리안24 마데카 데일리 리페어 토너 단독 기획 (150ml+50ml)'), NOW(), NOW()),
(30000, 'SALE', (SELECT id FROM product WHERE name = '[진정/속보습] 센텔리안24 마데카 데일리 리페어 토너 단독 기획 (150ml+50ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017925510ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[진정/속보습] 센텔리안24 마데카 데일리 리페어 토너 단독 기획 (150ml+50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017925511ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[진정/속보습] 센텔리안24 마데카 데일리 리페어 토너 단독 기획 (150ml+50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017925505ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[진정/속보습] 센텔리안24 마데카 데일리 리페어 토너 단독 기획 (150ml+50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017925509ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[진정/속보습] 센텔리안24 마데카 데일리 리페어 토너 단독 기획 (150ml+50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017925508ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[진정/속보습] 센텔리안24 마데카 데일리 리페어 토너 단독 기획 (150ml+50ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[진정/속보습] 센텔리안24 마데카 데일리 리페어 토너 단독 기획 (150ml+50ml)';


-- ================================

-- 상품: [수분진정] 비플레인 시카테롤 토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분진정] 비플레인 시카테롤 토너 200ml',
 '[수분진정] 비플레인 시카테롤 토너 200ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비플레인'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분진정] 비플레인 시카테롤 토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분진정] 비플레인 시카테롤 토너 200ml'), NOW(), NOW()),
(16800, 'SALE', (SELECT id FROM product WHERE name = '[수분진정] 비플레인 시카테롤 토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017954411ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분진정] 비플레인 시카테롤 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017954418ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분진정] 비플레인 시카테롤 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017954416ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분진정] 비플레인 시카테롤 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017954413ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[수분진정] 비플레인 시카테롤 토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분진정] 비플레인 시카테롤 토너 200ml';


-- ================================

-- 상품: [100시간수분지속/대용량] 나인위시스 비건 하이드라 앰플 토너 500ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[100시간수분지속/대용량] 나인위시스 비건 하이드라 앰플 토너 500ml',
 '[100시간수분지속/대용량] 나인위시스 비건 하이드라 앰플 토너 500ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '나인위시스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[100시간수분지속/대용량] 나인위시스 비건 하이드라 앰플 토너 500ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[100시간수분지속/대용량] 나인위시스 비건 하이드라 앰플 토너 500ml'), NOW(), NOW()),
(26000, 'SALE', (SELECT id FROM product WHERE name = '[100시간수분지속/대용량] 나인위시스 비건 하이드라 앰플 토너 500ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018091320ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[100시간수분지속/대용량] 나인위시스 비건 하이드라 앰플 토너 500ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018091316ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[100시간수분지속/대용량] 나인위시스 비건 하이드라 앰플 토너 500ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018091322ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[100시간수분지속/대용량] 나인위시스 비건 하이드라 앰플 토너 500ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018091321ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[100시간수분지속/대용량] 나인위시스 비건 하이드라 앰플 토너 500ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[100시간수분지속/대용량] 나인위시스 비건 하이드라 앰플 토너 500ml';


-- ================================

-- 상품: [대용량] 에스테덤 하이드라 로션 맥스 400ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[대용량] 에스테덤 하이드라 로션 맥스 400ml',
 '[대용량] 에스테덤 하이드라 로션 맥스 400ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에스테덤'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[대용량] 에스테덤 하이드라 로션 맥스 400ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(49000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[대용량] 에스테덤 하이드라 로션 맥스 400ml'), NOW(), NOW()),
(34300, 'SALE', (SELECT id FROM product WHERE name = '[대용량] 에스테덤 하이드라 로션 맥스 400ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018248611ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[대용량] 에스테덤 하이드라 로션 맥스 400ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018248609ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[대용량] 에스테덤 하이드라 로션 맥스 400ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018248610ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[대용량] 에스테덤 하이드라 로션 맥스 400ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018248615ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[대용량] 에스테덤 하이드라 로션 맥스 400ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[대용량] 에스테덤 하이드라 로션 맥스 400ml';


-- ================================

-- 상품: 에스티 로더 소프트 클린 인퓨전 하이드레이팅 에센스 로션...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('에스티 로더 소프트 클린 인퓨전 하이드레이팅 에센스 로션',
 '에스티 로더 소프트 클린 인퓨전 하이드레이팅 에센스 로션',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에스티로더'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '에스티 로더 소프트 클린 인퓨전 하이드레이팅 에센스 로션'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(82000, 'ORIGINAL', (SELECT id FROM product WHERE name = '에스티 로더 소프트 클린 인퓨전 하이드레이팅 에센스 로션'), NOW(), NOW()),
(69700, 'SALE', (SELECT id FROM product WHERE name = '에스티 로더 소프트 클린 인퓨전 하이드레이팅 에센스 로션'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018260902ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '에스티 로더 소프트 클린 인퓨전 하이드레이팅 에센스 로션'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '에스티 로더 소프트 클린 인퓨전 하이드레이팅 에센스 로션';


-- ================================

-- 상품: [수분진정] 이니스프리 그린티 히알루론산 스킨 170ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분진정] 이니스프리 그린티 히알루론산 스킨 170ml',
 '[수분진정] 이니스프리 그린티 히알루론산 스킨 170ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '이니스프리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분진정] 이니스프리 그린티 히알루론산 스킨 170ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(19000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분진정] 이니스프리 그린티 히알루론산 스킨 170ml'), NOW(), NOW()),
(14250, 'SALE', (SELECT id FROM product WHERE name = '[수분진정] 이니스프리 그린티 히알루론산 스킨 170ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018320909ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분진정] 이니스프리 그린티 히알루론산 스킨 170ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018320911ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분진정] 이니스프리 그린티 히알루론산 스킨 170ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018320912ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분진정] 이니스프리 그린티 히알루론산 스킨 170ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018320913ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[수분진정] 이니스프리 그린티 히알루론산 스킨 170ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018320914ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[수분진정] 이니스프리 그린티 히알루론산 스킨 170ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분진정] 이니스프리 그린티 히알루론산 스킨 170ml';


-- ================================

-- 상품: [단독기획]에뛰드 순정 약산성 5.5 진정 토너 700ml 대용량 기획(350ml+리필35...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[단독기획]에뛰드 순정 약산성 5.5 진정 토너 700ml 대용량 기획(350ml+리필350ml)',
 '[단독기획]에뛰드 순정 약산성 5.5 진정 토너 700ml 대용량 기획(350ml+리필350ml)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에뛰드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[단독기획]에뛰드 순정 약산성 5.5 진정 토너 700ml 대용량 기획(350ml+리필350ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(27000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독기획]에뛰드 순정 약산성 5.5 진정 토너 700ml 대용량 기획(350ml+리필350ml)'), NOW(), NOW()),
(24300, 'SALE', (SELECT id FROM product WHERE name = '[단독기획]에뛰드 순정 약산성 5.5 진정 토너 700ml 대용량 기획(350ml+리필350ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018340810ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[단독기획]에뛰드 순정 약산성 5.5 진정 토너 700ml 대용량 기획(350ml+리필350ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018340811ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[단독기획]에뛰드 순정 약산성 5.5 진정 토너 700ml 대용량 기획(350ml+리필350ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[단독기획]에뛰드 순정 약산성 5.5 진정 토너 700ml 대용량 기획(350ml+리필350ml)';


-- ================================

-- 상품: [시카보다 4배*강한] 한율 어린쑥 수분진정 토너 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[시카보다 4배*강한] 한율 어린쑥 수분진정 토너 150ml',
 '[시카보다 4배*강한] 한율 어린쑥 수분진정 토너 150ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '한율'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('한율 어린쑥 수분진정 토너 150ml', 27000, (SELECT id FROM product WHERE name = '[시카보다 4배*강한] 한율 어린쑥 수분진정 토너 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(27000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[시카보다 4배*강한] 한율 어린쑥 수분진정 토너 150ml'), NOW(), NOW()),
(27000, 'SALE', (SELECT id FROM product WHERE name = '[시카보다 4배*강한] 한율 어린쑥 수분진정 토너 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018375110ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[시카보다 4배*강한] 한율 어린쑥 수분진정 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018375107ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[시카보다 4배*강한] 한율 어린쑥 수분진정 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018375106ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[시카보다 4배*강한] 한율 어린쑥 수분진정 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018375103ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[시카보다 4배*강한] 한율 어린쑥 수분진정 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018375102ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[시카보다 4배*강한] 한율 어린쑥 수분진정 토너 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[시카보다 4배*강한] 한율 어린쑥 수분진정 토너 150ml';


-- ================================

-- 상품: 비욘드 엔젤아쿠아 보습장벽 토너 500ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('비욘드 엔젤아쿠아 보습장벽 토너 500ml',
 '비욘드 엔젤아쿠아 보습장벽 토너 500ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비욘드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 보습장벽 토너 500ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(19900, 'ORIGINAL', (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 보습장벽 토너 500ml'), NOW(), NOW()),
(18910, 'SALE', (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 보습장벽 토너 500ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018477108ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 보습장벽 토너 500ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018477104ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 보습장벽 토너 500ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018477105ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 보습장벽 토너 500ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018477101ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 보습장벽 토너 500ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018477106ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 보습장벽 토너 500ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018477109ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 보습장벽 토너 500ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '비욘드 엔젤아쿠아 보습장벽 토너 500ml';


-- ================================

-- 상품: [피지/진정케어] 피캄 베리어 사이클 락토P 토너200ml 기획(+화장솜 증정)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[피지/진정케어] 피캄 베리어 사이클 락토P 토너200ml 기획(+화장솜 증정)',
 '[피지/진정케어] 피캄 베리어 사이클 락토P 토너200ml 기획(+화장솜 증정)',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '피캄'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[피지/진정케어] 피캄 베리어 사이클 락토P 토너200ml 기획(+화장솜 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[피지/진정케어] 피캄 베리어 사이클 락토P 토너200ml 기획(+화장솜 증정)'), NOW(), NOW()),
(18900, 'SALE', (SELECT id FROM product WHERE name = '[피지/진정케어] 피캄 베리어 사이클 락토P 토너200ml 기획(+화장솜 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018496516ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[피지/진정케어] 피캄 베리어 사이클 락토P 토너200ml 기획(+화장솜 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018496523ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[피지/진정케어] 피캄 베리어 사이클 락토P 토너200ml 기획(+화장솜 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018496522ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[피지/진정케어] 피캄 베리어 사이클 락토P 토너200ml 기획(+화장솜 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018496521ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[피지/진정케어] 피캄 베리어 사이클 락토P 토너200ml 기획(+화장솜 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018496520ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[피지/진정케어] 피캄 베리어 사이클 락토P 토너200ml 기획(+화장솜 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018496519ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[피지/진정케어] 피캄 베리어 사이클 락토P 토너200ml 기획(+화장솜 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[피지/진정케어] 피캄 베리어 사이클 락토P 토너200ml 기획(+화장솜 증정)';


-- ================================

-- 상품: 라끄베르 옴므 리차지 시카 애프터쉐이브 185ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('라끄베르 옴므 리차지 시카 애프터쉐이브 185ml',
 '라끄베르 옴므 리차지 시카 애프터쉐이브 185ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라끄베르'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 시카 애프터쉐이브 185ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(16000, 'ORIGINAL', (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 시카 애프터쉐이브 185ml'), NOW(), NOW()),
(12000, 'SALE', (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 시카 애프터쉐이브 185ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018515601ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 시카 애프터쉐이브 185ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '라끄베르 옴므 리차지 시카 애프터쉐이브 185ml';


-- ================================

-- 상품: [클렌징폼증정] 프리메라 오가니언스 베리어 리페어 카밍 에센스 토너 160ml 기획/단품...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[클렌징폼증정] 프리메라 오가니언스 베리어 리페어 카밍 에센스 토너 160ml 기획/단품',
 '[클렌징폼증정] 프리메라 오가니언스 베리어 리페어 카밍 에센스 토너 160ml 기획/단품',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '프리메라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('단품', 35000, (SELECT id FROM product WHERE name = '[클렌징폼증정] 프리메라 오가니언스 베리어 리페어 카밍 에센스 토너 160ml 기획/단품'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[클렌징폼증정] 프리메라 오가니언스 베리어 리페어 카밍 에센스 토너 160ml 기획/단품'), NOW(), NOW()),
(35000, 'SALE', (SELECT id FROM product WHERE name = '[클렌징폼증정] 프리메라 오가니언스 베리어 리페어 카밍 에센스 토너 160ml 기획/단품'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018558903ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[클렌징폼증정] 프리메라 오가니언스 베리어 리페어 카밍 에센스 토너 160ml 기획/단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018558906ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[클렌징폼증정] 프리메라 오가니언스 베리어 리페어 카밍 에센스 토너 160ml 기획/단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018558905ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[클렌징폼증정] 프리메라 오가니언스 베리어 리페어 카밍 에센스 토너 160ml 기획/단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018558904ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[클렌징폼증정] 프리메라 오가니언스 베리어 리페어 카밍 에센스 토너 160ml 기획/단품'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[클렌징폼증정] 프리메라 오가니언스 베리어 리페어 카밍 에센스 토너 160ml 기획/단품';


-- ================================

-- 상품: [모공피지] 이니스프리 화산송이 파하 모공 매끈결 토너 170mL...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[모공피지] 이니스프리 화산송이 파하 모공 매끈결 토너 170mL',
 '[모공피지] 이니스프리 화산송이 파하 모공 매끈결 토너 170mL',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '이니스프리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[모공피지] 이니스프리 화산송이 파하 모공 매끈결 토너 170mL'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(20000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[모공피지] 이니스프리 화산송이 파하 모공 매끈결 토너 170mL'), NOW(), NOW()),
(15000, 'SALE', (SELECT id FROM product WHERE name = '[모공피지] 이니스프리 화산송이 파하 모공 매끈결 토너 170mL'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018673205ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[모공피지] 이니스프리 화산송이 파하 모공 매끈결 토너 170mL'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018673206ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[모공피지] 이니스프리 화산송이 파하 모공 매끈결 토너 170mL'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018673207ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[모공피지] 이니스프리 화산송이 파하 모공 매끈결 토너 170mL'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018673208ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[모공피지] 이니스프리 화산송이 파하 모공 매끈결 토너 170mL'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018673209ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[모공피지] 이니스프리 화산송이 파하 모공 매끈결 토너 170mL'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[모공피지] 이니스프리 화산송이 파하 모공 매끈결 토너 170mL';


-- ================================

-- 상품: 빌리프 슈퍼 드랍스 비타민C 워터트리트먼트 150ML...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('빌리프 슈퍼 드랍스 비타민C 워터트리트먼트 150ML',
 '빌리프 슈퍼 드랍스 비타민C 워터트리트먼트 150ML',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '빌리프'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '빌리프 슈퍼 드랍스 비타민C 워터트리트먼트 150ML'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(43000, 'ORIGINAL', (SELECT id FROM product WHERE name = '빌리프 슈퍼 드랍스 비타민C 워터트리트먼트 150ML'), NOW(), NOW()),
(43000, 'SALE', (SELECT id FROM product WHERE name = '빌리프 슈퍼 드랍스 비타민C 워터트리트먼트 150ML'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018724104ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '빌리프 슈퍼 드랍스 비타민C 워터트리트먼트 150ML'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018724105ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '빌리프 슈퍼 드랍스 비타민C 워터트리트먼트 150ML'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '빌리프 슈퍼 드랍스 비타민C 워터트리트먼트 150ML';


-- ================================

-- 상품: [미백토닝케어] 아떼 바이탈 씨 좀 토닝 캡슐 토너(단품/기획)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[미백토닝케어] 아떼 바이탈 씨 좀 토닝 캡슐 토너(단품/기획)',
 '[미백토닝케어] 아떼 바이탈 씨 좀 토닝 캡슐 토너(단품/기획)',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아떼'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[미백토닝케어] 아떼 바이탈 씨 좀 토닝 캡슐 토너(단품/기획)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(36000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[미백토닝케어] 아떼 바이탈 씨 좀 토닝 캡슐 토너(단품/기획)'), NOW(), NOW()),
(18000, 'SALE', (SELECT id FROM product WHERE name = '[미백토닝케어] 아떼 바이탈 씨 좀 토닝 캡슐 토너(단품/기획)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018758504ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[미백토닝케어] 아떼 바이탈 씨 좀 토닝 캡슐 토너(단품/기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018758503ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[미백토닝케어] 아떼 바이탈 씨 좀 토닝 캡슐 토너(단품/기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018758509ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[미백토닝케어] 아떼 바이탈 씨 좀 토닝 캡슐 토너(단품/기획)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[미백토닝케어] 아떼 바이탈 씨 좀 토닝 캡슐 토너(단품/기획)';


-- ================================

-- 상품: 헤라 옴므 에센스인스킨 125ML...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('헤라 옴므 에센스인스킨 125ML',
 '헤라 옴므 에센스인스킨 125ML',
 5.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '헤라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '헤라 옴므 에센스인스킨 125ML'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(46000, 'ORIGINAL', (SELECT id FROM product WHERE name = '헤라 옴므 에센스인스킨 125ML'), NOW(), NOW()),
(39100, 'SALE', (SELECT id FROM product WHERE name = '헤라 옴므 에센스인스킨 125ML'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018765204ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '헤라 옴므 에센스인스킨 125ML'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018765212ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '헤라 옴므 에센스인스킨 125ML'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018765203ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '헤라 옴므 에센스인스킨 125ML'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018765202ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '헤라 옴므 에센스인스킨 125ML'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '헤라 옴므 에센스인스킨 125ML';


-- ================================

-- 상품: 조선미녀 붉은 팥 수분 워터 젤 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('조선미녀 붉은 팥 수분 워터 젤 100ml',
 '조선미녀 붉은 팥 수분 워터 젤 100ml',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '조선미녀'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '조선미녀 붉은 팥 수분 워터 젤 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(18000, 'ORIGINAL', (SELECT id FROM product WHERE name = '조선미녀 붉은 팥 수분 워터 젤 100ml'), NOW(), NOW()),
(14400, 'SALE', (SELECT id FROM product WHERE name = '조선미녀 붉은 팥 수분 워터 젤 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018859808ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '조선미녀 붉은 팥 수분 워터 젤 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018859809ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '조선미녀 붉은 팥 수분 워터 젤 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '조선미녀 붉은 팥 수분 워터 젤 100ml';


-- ================================

-- 상품: 조선미녀 인삼에센스워터 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('조선미녀 인삼에센스워터 150ml',
 '조선미녀 인삼에센스워터 150ml',
 4.6,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '조선미녀'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '조선미녀 인삼에센스워터 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(18000, 'ORIGINAL', (SELECT id FROM product WHERE name = '조선미녀 인삼에센스워터 150ml'), NOW(), NOW()),
(14400, 'SALE', (SELECT id FROM product WHERE name = '조선미녀 인삼에센스워터 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018883008ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '조선미녀 인삼에센스워터 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018883010ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '조선미녀 인삼에센스워터 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '조선미녀 인삼에센스워터 150ml';


-- ================================

-- 상품: 디마르3 디엑스 시타듀 리엑팅 토너 2.0 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('디마르3 디엑스 시타듀 리엑팅 토너 2.0 150ml',
 '디마르3 디엑스 시타듀 리엑팅 토너 2.0 150ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '디마르3'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '디마르3 디엑스 시타듀 리엑팅 토너 2.0 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29000, 'ORIGINAL', (SELECT id FROM product WHERE name = '디마르3 디엑스 시타듀 리엑팅 토너 2.0 150ml'), NOW(), NOW()),
(27030, 'SALE', (SELECT id FROM product WHERE name = '디마르3 디엑스 시타듀 리엑팅 토너 2.0 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018940403ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '디마르3 디엑스 시타듀 리엑팅 토너 2.0 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018940402ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '디마르3 디엑스 시타듀 리엑팅 토너 2.0 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018940404ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '디마르3 디엑스 시타듀 리엑팅 토너 2.0 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018940405ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '디마르3 디엑스 시타듀 리엑팅 토너 2.0 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '디마르3 디엑스 시타듀 리엑팅 토너 2.0 150ml';


-- ================================

-- 상품: 헤라 하이드로 리플렉팅 토너 170ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('헤라 하이드로 리플렉팅 토너 170ml',
 '헤라 하이드로 리플렉팅 토너 170ml',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '헤라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '헤라 하이드로 리플렉팅 토너 170ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(55000, 'ORIGINAL', (SELECT id FROM product WHERE name = '헤라 하이드로 리플렉팅 토너 170ml'), NOW(), NOW()),
(46750, 'SALE', (SELECT id FROM product WHERE name = '헤라 하이드로 리플렉팅 토너 170ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018958601ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '헤라 하이드로 리플렉팅 토너 170ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018958607ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '헤라 하이드로 리플렉팅 토너 170ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '헤라 하이드로 리플렉팅 토너 170ml';


-- ================================

-- 상품: [각질7층보습] 넘버즈인 4번 메이크업 찰떡 미네랄 토너 200ml 기획 (+50ml 증정...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[각질7층보습] 넘버즈인 4번 메이크업 찰떡 미네랄 토너 200ml 기획 (+50ml 증정)',
 '[각질7층보습] 넘버즈인 4번 메이크업 찰떡 미네랄 토너 200ml 기획 (+50ml 증정)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '넘버즈인'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[각질7층보습] 넘버즈인 4번 메이크업 찰떡 미네랄 토너 200ml 기획 (+50ml 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[각질7층보습] 넘버즈인 4번 메이크업 찰떡 미네랄 토너 200ml 기획 (+50ml 증정)'), NOW(), NOW()),
(16440, 'SALE', (SELECT id FROM product WHERE name = '[각질7층보습] 넘버즈인 4번 메이크업 찰떡 미네랄 토너 200ml 기획 (+50ml 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019177302ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[각질7층보습] 넘버즈인 4번 메이크업 찰떡 미네랄 토너 200ml 기획 (+50ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019177301ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[각질7층보습] 넘버즈인 4번 메이크업 찰떡 미네랄 토너 200ml 기획 (+50ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019177303ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[각질7층보습] 넘버즈인 4번 메이크업 찰떡 미네랄 토너 200ml 기획 (+50ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019177305ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[각질7층보습] 넘버즈인 4번 메이크업 찰떡 미네랄 토너 200ml 기획 (+50ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019177304ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[각질7층보습] 넘버즈인 4번 메이크업 찰떡 미네랄 토너 200ml 기획 (+50ml 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[각질7층보습] 넘버즈인 4번 메이크업 찰떡 미네랄 토너 200ml 기획 (+50ml 증정)';


-- ================================

-- 상품: 디마르3 시그니처 비트 로제 토너 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('디마르3 시그니처 비트 로제 토너 150ml',
 '디마르3 시그니처 비트 로제 토너 150ml',
 4.6,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '디마르3'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '디마르3 시그니처 비트 로제 토너 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(31100, 'ORIGINAL', (SELECT id FROM product WHERE name = '디마르3 시그니처 비트 로제 토너 150ml'), NOW(), NOW()),
(31100, 'SALE', (SELECT id FROM product WHERE name = '디마르3 시그니처 비트 로제 토너 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019182701ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '디마르3 시그니처 비트 로제 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019182702ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '디마르3 시그니처 비트 로제 토너 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '디마르3 시그니처 비트 로제 토너 150ml';


-- ================================

-- 상품: 후시다인 더마 트러블 밸런싱 토너 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('후시다인 더마 트러블 밸런싱 토너 150ml',
 '후시다인 더마 트러블 밸런싱 토너 150ml',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '후시다인'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '후시다인 더마 트러블 밸런싱 토너 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '후시다인 더마 트러블 밸런싱 토너 150ml'), NOW(), NOW()),
(18750, 'SALE', (SELECT id FROM product WHERE name = '후시다인 더마 트러블 밸런싱 토너 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019189407ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '후시다인 더마 트러블 밸런싱 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019189408ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '후시다인 더마 트러블 밸런싱 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019189406ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '후시다인 더마 트러블 밸런싱 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019189404ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '후시다인 더마 트러블 밸런싱 토너 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '후시다인 더마 트러블 밸런싱 토너 150ml';


-- ================================

-- 상품: 아이소이 포맨 아쿠아 수딩 토너 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아이소이 포맨 아쿠아 수딩 토너 150ml',
 '아이소이 포맨 아쿠아 수딩 토너 150ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이소이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아이소이 포맨 아쿠아 수딩 토너 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아이소이 포맨 아쿠아 수딩 토너 150ml'), NOW(), NOW()),
(20000, 'SALE', (SELECT id FROM product WHERE name = '아이소이 포맨 아쿠아 수딩 토너 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019566001ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아이소이 포맨 아쿠아 수딩 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019566003ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아이소이 포맨 아쿠아 수딩 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019566002ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아이소이 포맨 아쿠아 수딩 토너 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아이소이 포맨 아쿠아 수딩 토너 150ml';


-- ================================

-- 상품: 닥터멜락신 아쿠아 이온 플라즈마 수분 토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('닥터멜락신 아쿠아 이온 플라즈마 수분 토너 200ml',
 '닥터멜락신 아쿠아 이온 플라즈마 수분 토너 200ml',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터멜락신'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '닥터멜락신 아쿠아 이온 플라즈마 수분 토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(16900, 'ORIGINAL', (SELECT id FROM product WHERE name = '닥터멜락신 아쿠아 이온 플라즈마 수분 토너 200ml'), NOW(), NOW()),
(14900, 'SALE', (SELECT id FROM product WHERE name = '닥터멜락신 아쿠아 이온 플라즈마 수분 토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019766009ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '닥터멜락신 아쿠아 이온 플라즈마 수분 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019766005ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '닥터멜락신 아쿠아 이온 플라즈마 수분 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019766006ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '닥터멜락신 아쿠아 이온 플라즈마 수분 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019766008ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '닥터멜락신 아쿠아 이온 플라즈마 수분 토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '닥터멜락신 아쿠아 이온 플라즈마 수분 토너 200ml';


-- ================================

-- 상품: 비레디 시카페인 트러블리셋 토너 250ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('비레디 시카페인 트러블리셋 토너 250ml',
 '비레디 시카페인 트러블리셋 토너 250ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비레디'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '비레디 시카페인 트러블리셋 토너 250ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '비레디 시카페인 트러블리셋 토너 250ml'), NOW(), NOW()),
(25000, 'SALE', (SELECT id FROM product WHERE name = '비레디 시카페인 트러블리셋 토너 250ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019862502ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '비레디 시카페인 트러블리셋 토너 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019862503ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '비레디 시카페인 트러블리셋 토너 250ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '비레디 시카페인 트러블리셋 토너 250ml';


-- ================================

-- 상품: 테라로직 마데셀 더마 리페어 B5 토너 280ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('테라로직 마데셀 더마 리페어 B5 토너 280ml',
 '테라로직 마데셀 더마 리페어 B5 토너 280ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '테라로직'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '테라로직 마데셀 더마 리페어 B5 토너 280ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '테라로직 마데셀 더마 리페어 B5 토너 280ml'), NOW(), NOW()),
(25000, 'SALE', (SELECT id FROM product WHERE name = '테라로직 마데셀 더마 리페어 B5 토너 280ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019883406ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '테라로직 마데셀 더마 리페어 B5 토너 280ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019883402ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '테라로직 마데셀 더마 리페어 B5 토너 280ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019883405ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '테라로직 마데셀 더마 리페어 B5 토너 280ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '테라로직 마데셀 더마 리페어 B5 토너 280ml';


-- ================================

-- 상품: [민감진정] 라운드랩 포 맨 소나무 진정 시카 토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[민감진정] 라운드랩 포 맨 소나무 진정 시카 토너 200ml',
 '[민감진정] 라운드랩 포 맨 소나무 진정 시카 토너 200ml',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라운드랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[민감진정] 라운드랩 포 맨 소나무 진정 시카 토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[민감진정] 라운드랩 포 맨 소나무 진정 시카 토너 200ml'), NOW(), NOW()),
(18500, 'SALE', (SELECT id FROM product WHERE name = '[민감진정] 라운드랩 포 맨 소나무 진정 시카 토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019915301ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[민감진정] 라운드랩 포 맨 소나무 진정 시카 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019915305ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[민감진정] 라운드랩 포 맨 소나무 진정 시카 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019915303ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[민감진정] 라운드랩 포 맨 소나무 진정 시카 토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[민감진정] 라운드랩 포 맨 소나무 진정 시카 토너 200ml';


-- ================================

-- 상품: 더랩바이블랑두 저분자 히알루론산 딥 토너 리필캔 238ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('더랩바이블랑두 저분자 히알루론산 딥 토너 리필캔 238ml',
 '더랩바이블랑두 저분자 히알루론산 딥 토너 리필캔 238ml',
 5.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더랩바이블랑두'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '더랩바이블랑두 저분자 히알루론산 딥 토너 리필캔 238ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(21000, 'ORIGINAL', (SELECT id FROM product WHERE name = '더랩바이블랑두 저분자 히알루론산 딥 토너 리필캔 238ml'), NOW(), NOW()),
(14700, 'SALE', (SELECT id FROM product WHERE name = '더랩바이블랑두 저분자 히알루론산 딥 토너 리필캔 238ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019939915ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '더랩바이블랑두 저분자 히알루론산 딥 토너 리필캔 238ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019939916ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '더랩바이블랑두 저분자 히알루론산 딥 토너 리필캔 238ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019939914ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '더랩바이블랑두 저분자 히알루론산 딥 토너 리필캔 238ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019939913ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '더랩바이블랑두 저분자 히알루론산 딥 토너 리필캔 238ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '더랩바이블랑두 저분자 히알루론산 딥 토너 리필캔 238ml';


-- ================================

-- 상품: 마녀공장 판테토인 에센스 토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('마녀공장 판테토인 에센스 토너 200ml',
 '마녀공장 판테토인 에센스 토너 200ml',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '마녀공장'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '마녀공장 판테토인 에센스 토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(21000, 'ORIGINAL', (SELECT id FROM product WHERE name = '마녀공장 판테토인 에센스 토너 200ml'), NOW(), NOW()),
(14600, 'SALE', (SELECT id FROM product WHERE name = '마녀공장 판테토인 에센스 토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019940516ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '마녀공장 판테토인 에센스 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019940515ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '마녀공장 판테토인 에센스 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019940507ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '마녀공장 판테토인 에센스 토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '마녀공장 판테토인 에센스 토너 200ml';


-- ================================

-- 상품: [리필/1등 속보습] 라네즈 크림스킨 170ml 리필...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[리필/1등 속보습] 라네즈 크림스킨 170ml 리필',
 '[리필/1등 속보습] 라네즈 크림스킨 170ml 리필',
 5.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라네즈'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[리필/1등 속보습] 라네즈 크림스킨 170ml 리필'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[리필/1등 속보습] 라네즈 크림스킨 170ml 리필'), NOW(), NOW()),
(26000, 'SALE', (SELECT id FROM product WHERE name = '[리필/1등 속보습] 라네즈 크림스킨 170ml 리필'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019941104ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[리필/1등 속보습] 라네즈 크림스킨 170ml 리필'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019941105ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[리필/1등 속보습] 라네즈 크림스킨 170ml 리필'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019941103ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[리필/1등 속보습] 라네즈 크림스킨 170ml 리필'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019941102ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[리필/1등 속보습] 라네즈 크림스킨 170ml 리필'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[리필/1등 속보습] 라네즈 크림스킨 170ml 리필';


-- ================================

-- 상품: [모공토닉] 아이소이 포어 타이트닝 토닉 에센스 90ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[모공토닉] 아이소이 포어 타이트닝 토닉 에센스 90ml',
 '[모공토닉] 아이소이 포어 타이트닝 토닉 에센스 90ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이소이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[모공토닉] 아이소이 포어 타이트닝 토닉 에센스 90ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[모공토닉] 아이소이 포어 타이트닝 토닉 에센스 90ml'), NOW(), NOW()),
(32000, 'SALE', (SELECT id FROM product WHERE name = '[모공토닉] 아이소이 포어 타이트닝 토닉 에센스 90ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019977705ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[모공토닉] 아이소이 포어 타이트닝 토닉 에센스 90ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019977706ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[모공토닉] 아이소이 포어 타이트닝 토닉 에센스 90ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019977707ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[모공토닉] 아이소이 포어 타이트닝 토닉 에센스 90ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019977708ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[모공토닉] 아이소이 포어 타이트닝 토닉 에센스 90ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[모공토닉] 아이소이 포어 타이트닝 토닉 에센스 90ml';


-- ================================

-- 상품: [흔적미백] 넘버즈인 5번 글루타치온씨 비타수액 에센셜 토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[흔적미백] 넘버즈인 5번 글루타치온씨 비타수액 에센셜 토너 200ml',
 '[흔적미백] 넘버즈인 5번 글루타치온씨 비타수액 에센셜 토너 200ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '넘버즈인'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[흔적미백] 넘버즈인 5번 글루타치온씨 비타수액 에센셜 토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[흔적미백] 넘버즈인 5번 글루타치온씨 비타수액 에센셜 토너 200ml'), NOW(), NOW()),
(22800, 'SALE', (SELECT id FROM product WHERE name = '[흔적미백] 넘버즈인 5번 글루타치온씨 비타수액 에센셜 토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020003912ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[흔적미백] 넘버즈인 5번 글루타치온씨 비타수액 에센셜 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020003913ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[흔적미백] 넘버즈인 5번 글루타치온씨 비타수액 에센셜 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020003914ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[흔적미백] 넘버즈인 5번 글루타치온씨 비타수액 에센셜 토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[흔적미백] 넘버즈인 5번 글루타치온씨 비타수액 에센셜 토너 200ml';


-- ================================

-- 상품: 케어존 리큐어 노르데나우 시카 토너 490ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('케어존 리큐어 노르데나우 시카 토너 490ml',
 '케어존 리큐어 노르데나우 시카 토너 490ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '케어존'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '케어존 리큐어 노르데나우 시카 토너 490ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '케어존 리큐어 노르데나우 시카 토너 490ml'), NOW(), NOW()),
(30000, 'SALE', (SELECT id FROM product WHERE name = '케어존 리큐어 노르데나우 시카 토너 490ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020022904ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '케어존 리큐어 노르데나우 시카 토너 490ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020022903ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '케어존 리큐어 노르데나우 시카 토너 490ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020022901ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '케어존 리큐어 노르데나우 시카 토너 490ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '케어존 리큐어 노르데나우 시카 토너 490ml';


-- ================================

-- 상품: [슬로에이징/영양탄력] 닥터지 블랙스네일 토너 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[슬로에이징/영양탄력] 닥터지 블랙스네일 토너 150ml',
 '[슬로에이징/영양탄력] 닥터지 블랙스네일 토너 150ml',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터지'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[슬로에이징/영양탄력] 닥터지 블랙스네일 토너 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(18000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[슬로에이징/영양탄력] 닥터지 블랙스네일 토너 150ml'), NOW(), NOW()),
(18000, 'SALE', (SELECT id FROM product WHERE name = '[슬로에이징/영양탄력] 닥터지 블랙스네일 토너 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020356401ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[슬로에이징/영양탄력] 닥터지 블랙스네일 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020356402ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[슬로에이징/영양탄력] 닥터지 블랙스네일 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020356403ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[슬로에이징/영양탄력] 닥터지 블랙스네일 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020356404ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[슬로에이징/영양탄력] 닥터지 블랙스네일 토너 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[슬로에이징/영양탄력] 닥터지 블랙스네일 토너 150ml';


-- ================================

-- 상품: [에이든팍 PICK] 다슈 보이 파란 수분초 스킨 150ml 기획 (+수분크림 50ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[에이든팍 PICK] 다슈 보이 파란 수분초 스킨 150ml 기획 (+수분크림 50ml)',
 '[에이든팍 PICK] 다슈 보이 파란 수분초 스킨 150ml 기획 (+수분크림 50ml)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '다슈'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[에이든팍 PICK] 다슈 보이 파란 수분초 스킨 150ml 기획 (+수분크림 50ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[에이든팍 PICK] 다슈 보이 파란 수분초 스킨 150ml 기획 (+수분크림 50ml)'), NOW(), NOW()),
(14800, 'SALE', (SELECT id FROM product WHERE name = '[에이든팍 PICK] 다슈 보이 파란 수분초 스킨 150ml 기획 (+수분크림 50ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020415703ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[에이든팍 PICK] 다슈 보이 파란 수분초 스킨 150ml 기획 (+수분크림 50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020415701ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[에이든팍 PICK] 다슈 보이 파란 수분초 스킨 150ml 기획 (+수분크림 50ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[에이든팍 PICK] 다슈 보이 파란 수분초 스킨 150ml 기획 (+수분크림 50ml)';


-- ================================

-- 상품: 조선미녀 청매실 AHABHA 토너 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('조선미녀 청매실 AHABHA 토너 150ml',
 '조선미녀 청매실 AHABHA 토너 150ml',
 4.2,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '조선미녀'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '조선미녀 청매실 AHABHA 토너 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(18000, 'ORIGINAL', (SELECT id FROM product WHERE name = '조선미녀 청매실 AHABHA 토너 150ml'), NOW(), NOW()),
(18000, 'SALE', (SELECT id FROM product WHERE name = '조선미녀 청매실 AHABHA 토너 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020445406ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '조선미녀 청매실 AHABHA 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020445407ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '조선미녀 청매실 AHABHA 토너 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '조선미녀 청매실 AHABHA 토너 150ml';


-- ================================

-- 상품: 설화수 자음수EX 150ML...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('설화수 자음수EX 150ML',
 '설화수 자음수EX 150ML',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '설화수'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('150ml', 64800, (SELECT id FROM product WHERE name = '설화수 자음수EX 150ML'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(72000, 'ORIGINAL', (SELECT id FROM product WHERE name = '설화수 자음수EX 150ML'), NOW(), NOW()),
(64800, 'SALE', (SELECT id FROM product WHERE name = '설화수 자음수EX 150ML'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020462323ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '설화수 자음수EX 150ML'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020462321ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '설화수 자음수EX 150ML'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020462312ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '설화수 자음수EX 150ML'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020462317ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '설화수 자음수EX 150ML'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020462318ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '설화수 자음수EX 150ML'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020462319ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '설화수 자음수EX 150ML'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '설화수 자음수EX 150ML';


-- ================================

-- 상품: 더후 로얄레지나 에너지드롭 트리트먼트 75ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('더후 로얄레지나 에너지드롭 트리트먼트 75ml',
 '더후 로얄레지나 에너지드롭 트리트먼트 75ml',
 5.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더후'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '더후 로얄레지나 에너지드롭 트리트먼트 75ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(49500, 'ORIGINAL', (SELECT id FROM product WHERE name = '더후 로얄레지나 에너지드롭 트리트먼트 75ml'), NOW(), NOW()),
(49500, 'SALE', (SELECT id FROM product WHERE name = '더후 로얄레지나 에너지드롭 트리트먼트 75ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020463915ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '더후 로얄레지나 에너지드롭 트리트먼트 75ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020463913ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '더후 로얄레지나 에너지드롭 트리트먼트 75ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020463904ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '더후 로얄레지나 에너지드롭 트리트먼트 75ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '더후 로얄레지나 에너지드롭 트리트먼트 75ml';


-- ================================

-- 상품: 더후 공진향 탄력 밸런싱 토너 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('더후 공진향 탄력 밸런싱 토너 150ml',
 '더후 공진향 탄력 밸런싱 토너 150ml',
 4.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더후'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '더후 공진향 탄력 밸런싱 토너 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(63000, 'ORIGINAL', (SELECT id FROM product WHERE name = '더후 공진향 탄력 밸런싱 토너 150ml'), NOW(), NOW()),
(63000, 'SALE', (SELECT id FROM product WHERE name = '더후 공진향 탄력 밸런싱 토너 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020465214ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '더후 공진향 탄력 밸런싱 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020465212ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '더후 공진향 탄력 밸런싱 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020465203ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '더후 공진향 탄력 밸런싱 토너 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '더후 공진향 탄력 밸런싱 토너 150ml';


-- ================================

-- 상품: 디오디너리 사카로미세스 퍼멘트 30% 밀키 토너 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('디오디너리 사카로미세스 퍼멘트 30% 밀키 토너 100ml',
 '디오디너리 사카로미세스 퍼멘트 30% 밀키 토너 100ml',
 4.3,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '디오디너리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '디오디너리 사카로미세스 퍼멘트 30% 밀키 토너 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(20100, 'ORIGINAL', (SELECT id FROM product WHERE name = '디오디너리 사카로미세스 퍼멘트 30% 밀키 토너 100ml'), NOW(), NOW()),
(20100, 'SALE', (SELECT id FROM product WHERE name = '디오디너리 사카로미세스 퍼멘트 30% 밀키 토너 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020591901ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '디오디너리 사카로미세스 퍼멘트 30% 밀키 토너 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020591902ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '디오디너리 사카로미세스 퍼멘트 30% 밀키 토너 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '디오디너리 사카로미세스 퍼멘트 30% 밀키 토너 100ml';


-- ================================

-- 상품: [온라인몰 단독기획]유리아쥬 제모스 토너 500ml 2입 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[온라인몰 단독기획]유리아쥬 제모스 토너 500ml 2입 기획',
 '[온라인몰 단독기획]유리아쥬 제모스 토너 500ml 2입 기획',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유리아쥬'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[온라인몰 단독기획]유리아쥬 제모스 토너 500ml 2입 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(76000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[온라인몰 단독기획]유리아쥬 제모스 토너 500ml 2입 기획'), NOW(), NOW()),
(76000, 'SALE', (SELECT id FROM product WHERE name = '[온라인몰 단독기획]유리아쥬 제모스 토너 500ml 2입 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020602503ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[온라인몰 단독기획]유리아쥬 제모스 토너 500ml 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020602504ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[온라인몰 단독기획]유리아쥬 제모스 토너 500ml 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020602502ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[온라인몰 단독기획]유리아쥬 제모스 토너 500ml 2입 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[온라인몰 단독기획]유리아쥬 제모스 토너 500ml 2입 기획';


-- ================================

-- 상품: 메디큐브 레드 토너 2.0 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('메디큐브 레드 토너 2.0 100ml',
 '메디큐브 레드 토너 2.0 100ml',
 4.6,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '메디큐브'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '메디큐브 레드 토너 2.0 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '메디큐브 레드 토너 2.0 100ml'), NOW(), NOW()),
(28000, 'SALE', (SELECT id FROM product WHERE name = '메디큐브 레드 토너 2.0 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020622001ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '메디큐브 레드 토너 2.0 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020622003ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '메디큐브 레드 토너 2.0 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020622002ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '메디큐브 레드 토너 2.0 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '메디큐브 레드 토너 2.0 100ml';


-- ================================

-- 상품: 비레디 시카페인 트러블리셋 토너 250ml (+토너 50ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('비레디 시카페인 트러블리셋 토너 250ml (+토너 50ml)',
 '비레디 시카페인 트러블리셋 토너 250ml (+토너 50ml)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비레디'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '비레디 시카페인 트러블리셋 토너 250ml (+토너 50ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '비레디 시카페인 트러블리셋 토너 250ml (+토너 50ml)'), NOW(), NOW()),
(19900, 'SALE', (SELECT id FROM product WHERE name = '비레디 시카페인 트러블리셋 토너 250ml (+토너 50ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020628903ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '비레디 시카페인 트러블리셋 토너 250ml (+토너 50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020628904ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '비레디 시카페인 트러블리셋 토너 250ml (+토너 50ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '비레디 시카페인 트러블리셋 토너 250ml (+토너 50ml)';


-- ================================

-- 상품: 더바디샵 티트리 오일 10ML...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('더바디샵 티트리 오일 10ML',
 '더바디샵 티트리 오일 10ML',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더바디샵'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '더바디샵 티트리 오일 10ML'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(16000, 'ORIGINAL', (SELECT id FROM product WHERE name = '더바디샵 티트리 오일 10ML'), NOW(), NOW()),
(15200, 'SALE', (SELECT id FROM product WHERE name = '더바디샵 티트리 오일 10ML'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020641801ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '더바디샵 티트리 오일 10ML'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020641802ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '더바디샵 티트리 오일 10ML'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '더바디샵 티트리 오일 10ML';


-- ================================

-- 상품: 토리든 다이브인 포맨 저분자 히알루론산 스킨 300ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('토리든 다이브인 포맨 저분자 히알루론산 스킨 300ml',
 '토리든 다이브인 포맨 저분자 히알루론산 스킨 300ml',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '토리든'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '토리든 다이브인 포맨 저분자 히알루론산 스킨 300ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(21000, 'ORIGINAL', (SELECT id FROM product WHERE name = '토리든 다이브인 포맨 저분자 히알루론산 스킨 300ml'), NOW(), NOW()),
(17600, 'SALE', (SELECT id FROM product WHERE name = '토리든 다이브인 포맨 저분자 히알루론산 스킨 300ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020669410ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '토리든 다이브인 포맨 저분자 히알루론산 스킨 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020669408ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '토리든 다이브인 포맨 저분자 히알루론산 스킨 300ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '토리든 다이브인 포맨 저분자 히알루론산 스킨 300ml';


-- ================================

-- 상품: [피부결토너] 메디톡스 뉴라덤 뉴로락토 토너 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[피부결토너] 메디톡스 뉴라덤 뉴로락토 토너 150ml',
 '[피부결토너] 메디톡스 뉴라덤 뉴로락토 토너 150ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '뉴라덤'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[피부결토너] 메디톡스 뉴라덤 뉴로락토 토너 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[피부결토너] 메디톡스 뉴라덤 뉴로락토 토너 150ml'), NOW(), NOW()),
(25000, 'SALE', (SELECT id FROM product WHERE name = '[피부결토너] 메디톡스 뉴라덤 뉴로락토 토너 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020684707ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[피부결토너] 메디톡스 뉴라덤 뉴로락토 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020684704ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[피부결토너] 메디톡스 뉴라덤 뉴로락토 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020684705ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[피부결토너] 메디톡스 뉴라덤 뉴로락토 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020684701ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[피부결토너] 메디톡스 뉴라덤 뉴로락토 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020684706ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[피부결토너] 메디톡스 뉴라덤 뉴로락토 토너 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[피부결토너] 메디톡스 뉴라덤 뉴로락토 토너 150ml';


-- ================================

-- 상품: [매끈결] 아비브 부활초 파하 토너 스킨부스터 200ml 기획 (+30ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[매끈결] 아비브 부활초 파하 토너 스킨부스터 200ml 기획 (+30ml)',
 '[매끈결] 아비브 부활초 파하 토너 스킨부스터 200ml 기획 (+30ml)',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아비브'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[매끈결] 아비브 부활초 파하 토너 스킨부스터 200ml 기획 (+30ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[매끈결] 아비브 부활초 파하 토너 스킨부스터 200ml 기획 (+30ml)'), NOW(), NOW()),
(23000, 'SALE', (SELECT id FROM product WHERE name = '[매끈결] 아비브 부활초 파하 토너 스킨부스터 200ml 기획 (+30ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020695819ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[매끈결] 아비브 부활초 파하 토너 스킨부스터 200ml 기획 (+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020695815ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[매끈결] 아비브 부활초 파하 토너 스킨부스터 200ml 기획 (+30ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[매끈결] 아비브 부활초 파하 토너 스킨부스터 200ml 기획 (+30ml)';


-- ================================

-- 상품: [성진 PICK] 파파레서피 블레미쉬 필링 토너 120ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[성진 PICK] 파파레서피 블레미쉬 필링 토너 120ml',
 '[성진 PICK] 파파레서피 블레미쉬 필링 토너 120ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '파파레서피'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[성진 PICK] 파파레서피 블레미쉬 필링 토너 120ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(18000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[성진 PICK] 파파레서피 블레미쉬 필링 토너 120ml'), NOW(), NOW()),
(11340, 'SALE', (SELECT id FROM product WHERE name = '[성진 PICK] 파파레서피 블레미쉬 필링 토너 120ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020700608ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[성진 PICK] 파파레서피 블레미쉬 필링 토너 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020700601ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[성진 PICK] 파파레서피 블레미쉬 필링 토너 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020700604ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[성진 PICK] 파파레서피 블레미쉬 필링 토너 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020700603ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[성진 PICK] 파파레서피 블레미쉬 필링 토너 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020700602ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[성진 PICK] 파파레서피 블레미쉬 필링 토너 120ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[성진 PICK] 파파레서피 블레미쉬 필링 토너 120ml';


-- ================================

-- 상품: 제나벨 PDRN 리쥬비네이팅 토너 300ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('제나벨 PDRN 리쥬비네이팅 토너 300ml',
 '제나벨 PDRN 리쥬비네이팅 토너 300ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '제나벨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '제나벨 PDRN 리쥬비네이팅 토너 300ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '제나벨 PDRN 리쥬비네이팅 토너 300ml'), NOW(), NOW()),
(18000, 'SALE', (SELECT id FROM product WHERE name = '제나벨 PDRN 리쥬비네이팅 토너 300ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020703108ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '제나벨 PDRN 리쥬비네이팅 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020703104ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '제나벨 PDRN 리쥬비네이팅 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020703107ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '제나벨 PDRN 리쥬비네이팅 토너 300ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '제나벨 PDRN 리쥬비네이팅 토너 300ml';


-- ================================

-- 상품: [속보습] 더랩바이블랑두 올리고 히알루론산 딥 토너 500ml 대용량 기획 (+100ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[속보습] 더랩바이블랑두 올리고 히알루론산 딥 토너 500ml 대용량 기획 (+100ml)',
 '[속보습] 더랩바이블랑두 올리고 히알루론산 딥 토너 500ml 대용량 기획 (+100ml)',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더랩바이블랑두'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[속보습] 더랩바이블랑두 올리고 히알루론산 딥 토너 500ml 대용량 기획 (+100ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(37000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[속보습] 더랩바이블랑두 올리고 히알루론산 딥 토너 500ml 대용량 기획 (+100ml)'), NOW(), NOW()),
(37000, 'SALE', (SELECT id FROM product WHERE name = '[속보습] 더랩바이블랑두 올리고 히알루론산 딥 토너 500ml 대용량 기획 (+100ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020705413ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[속보습] 더랩바이블랑두 올리고 히알루론산 딥 토너 500ml 대용량 기획 (+100ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020705410ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[속보습] 더랩바이블랑두 올리고 히알루론산 딥 토너 500ml 대용량 기획 (+100ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020705411ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[속보습] 더랩바이블랑두 올리고 히알루론산 딥 토너 500ml 대용량 기획 (+100ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020705404ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[속보습] 더랩바이블랑두 올리고 히알루론산 딥 토너 500ml 대용량 기획 (+100ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020705407ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[속보습] 더랩바이블랑두 올리고 히알루론산 딥 토너 500ml 대용량 기획 (+100ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[속보습] 더랩바이블랑두 올리고 히알루론산 딥 토너 500ml 대용량 기획 (+100ml)';


-- ================================

-- 상품: [여드름/진정케어] 포엘리에 옴므 병풀잎수 86.63% 시카 토너 미스트 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[여드름/진정케어] 포엘리에 옴므 병풀잎수 86.63% 시카 토너 미스트 100ml',
 '[여드름/진정케어] 포엘리에 옴므 병풀잎수 86.63% 시카 토너 미스트 100ml',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '포엘리에'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[여드름/진정케어] 포엘리에 옴므 병풀잎수 86.63% 시카 토너 미스트 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(17600, 'ORIGINAL', (SELECT id FROM product WHERE name = '[여드름/진정케어] 포엘리에 옴므 병풀잎수 86.63% 시카 토너 미스트 100ml'), NOW(), NOW()),
(17600, 'SALE', (SELECT id FROM product WHERE name = '[여드름/진정케어] 포엘리에 옴므 병풀잎수 86.63% 시카 토너 미스트 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020803016ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[여드름/진정케어] 포엘리에 옴므 병풀잎수 86.63% 시카 토너 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020803003ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[여드름/진정케어] 포엘리에 옴므 병풀잎수 86.63% 시카 토너 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020803002ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[여드름/진정케어] 포엘리에 옴므 병풀잎수 86.63% 시카 토너 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020803004ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[여드름/진정케어] 포엘리에 옴므 병풀잎수 86.63% 시카 토너 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020803009ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[여드름/진정케어] 포엘리에 옴므 병풀잎수 86.63% 시카 토너 미스트 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[여드름/진정케어] 포엘리에 옴므 병풀잎수 86.63% 시카 토너 미스트 100ml';


-- ================================

-- 상품: 스콧해미쉬 블루 블렌디드 토너 에센스 180ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('스콧해미쉬 블루 블렌디드 토너 에센스 180ml',
 '스콧해미쉬 블루 블렌디드 토너 에센스 180ml',
 5.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '스콧해미쉬'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '스콧해미쉬 블루 블렌디드 토너 에센스 180ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(55000, 'ORIGINAL', (SELECT id FROM product WHERE name = '스콧해미쉬 블루 블렌디드 토너 에센스 180ml'), NOW(), NOW()),
(55000, 'SALE', (SELECT id FROM product WHERE name = '스콧해미쉬 블루 블렌디드 토너 에센스 180ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020871802ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '스콧해미쉬 블루 블렌디드 토너 에센스 180ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020871801ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '스콧해미쉬 블루 블렌디드 토너 에센스 180ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '스콧해미쉬 블루 블렌디드 토너 에센스 180ml';


-- ================================

-- 상품: [콜라겐/레티놀]아이디얼 포 맨 퍼펙트 탄력 스킨 150mL / 200mL...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[콜라겐/레티놀]아이디얼 포 맨 퍼펙트 탄력 스킨 150mL / 200mL',
 '[콜라겐/레티놀]아이디얼 포 맨 퍼펙트 탄력 스킨 150mL / 200mL',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이디얼포맨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('200ml(리뉴얼)', 14900, (SELECT id FROM product WHERE name = '[콜라겐/레티놀]아이디얼 포 맨 퍼펙트 탄력 스킨 150mL / 200mL'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('150ml', 14900, (SELECT id FROM product WHERE name = '[콜라겐/레티놀]아이디얼 포 맨 퍼펙트 탄력 스킨 150mL / 200mL'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(17000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[콜라겐/레티놀]아이디얼 포 맨 퍼펙트 탄력 스킨 150mL / 200mL'), NOW(), NOW()),
(14900, 'SALE', (SELECT id FROM product WHERE name = '[콜라겐/레티놀]아이디얼 포 맨 퍼펙트 탄력 스킨 150mL / 200mL'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020889605ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[콜라겐/레티놀]아이디얼 포 맨 퍼펙트 탄력 스킨 150mL / 200mL'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020889602ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[콜라겐/레티놀]아이디얼 포 맨 퍼펙트 탄력 스킨 150mL / 200mL'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020889606ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[콜라겐/레티놀]아이디얼 포 맨 퍼펙트 탄력 스킨 150mL / 200mL'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[콜라겐/레티놀]아이디얼 포 맨 퍼펙트 탄력 스킨 150mL / 200mL';


-- ================================

-- 상품: 우노 스킨 세럼 워터 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('우노 스킨 세럼 워터 200ml',
 '우노 스킨 세럼 워터 200ml',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '우노'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '우노 스킨 세럼 워터 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(16000, 'ORIGINAL', (SELECT id FROM product WHERE name = '우노 스킨 세럼 워터 200ml'), NOW(), NOW()),
(16000, 'SALE', (SELECT id FROM product WHERE name = '우노 스킨 세럼 워터 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020898602ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '우노 스킨 세럼 워터 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020898601ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '우노 스킨 세럼 워터 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '우노 스킨 세럼 워터 200ml';


-- ================================

-- 상품: [NEW/기미잡티케어] VT 티엑스토닝 토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW/기미잡티케어] VT 티엑스토닝 토너 200ml',
 '[NEW/기미잡티케어] VT 티엑스토닝 토너 200ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'VT'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW/기미잡티케어] VT 티엑스토닝 토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW/기미잡티케어] VT 티엑스토닝 토너 200ml'), NOW(), NOW()),
(20700, 'SALE', (SELECT id FROM product WHERE name = '[NEW/기미잡티케어] VT 티엑스토닝 토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020958802ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW/기미잡티케어] VT 티엑스토닝 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020958803ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW/기미잡티케어] VT 티엑스토닝 토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW/기미잡티케어] VT 티엑스토닝 토너 200ml';


-- ================================

-- 상품: [첫 단계 톤업 케어] 티엘스 레드 오렌지 나이아신아마이드 토너 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[첫 단계 톤업 케어] 티엘스 레드 오렌지 나이아신아마이드 토너 150ml',
 '[첫 단계 톤업 케어] 티엘스 레드 오렌지 나이아신아마이드 토너 150ml',
 5.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '티엘스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[첫 단계 톤업 케어] 티엘스 레드 오렌지 나이아신아마이드 토너 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(19000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[첫 단계 톤업 케어] 티엘스 레드 오렌지 나이아신아마이드 토너 150ml'), NOW(), NOW()),
(13000, 'SALE', (SELECT id FROM product WHERE name = '[첫 단계 톤업 케어] 티엘스 레드 오렌지 나이아신아마이드 토너 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020964102ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[첫 단계 톤업 케어] 티엘스 레드 오렌지 나이아신아마이드 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020964105ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[첫 단계 톤업 케어] 티엘스 레드 오렌지 나이아신아마이드 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020964104ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[첫 단계 톤업 케어] 티엘스 레드 오렌지 나이아신아마이드 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020964103ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[첫 단계 톤업 케어] 티엘스 레드 오렌지 나이아신아마이드 토너 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[첫 단계 톤업 케어] 티엘스 레드 오렌지 나이아신아마이드 토너 150ml';


-- ================================

-- 상품: 더페이스샵 더젠틀포맨 안티에이징 스킨 145ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('더페이스샵 더젠틀포맨 안티에이징 스킨 145ml',
 '더페이스샵 더젠틀포맨 안티에이징 스킨 145ml',
 5.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더페이스샵'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '더페이스샵 더젠틀포맨 안티에이징 스킨 145ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '더페이스샵 더젠틀포맨 안티에이징 스킨 145ml'), NOW(), NOW()),
(23000, 'SALE', (SELECT id FROM product WHERE name = '더페이스샵 더젠틀포맨 안티에이징 스킨 145ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020971202ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '더페이스샵 더젠틀포맨 안티에이징 스킨 145ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '더페이스샵 더젠틀포맨 안티에이징 스킨 145ml';


-- ================================

-- 상품: 더페이스샵 더 블랙밤 스킨 140ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('더페이스샵 더 블랙밤 스킨 140ml',
 '더페이스샵 더 블랙밤 스킨 140ml',
 5.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더페이스샵'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '더페이스샵 더 블랙밤 스킨 140ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '더페이스샵 더 블랙밤 스킨 140ml'), NOW(), NOW()),
(26000, 'SALE', (SELECT id FROM product WHERE name = '더페이스샵 더 블랙밤 스킨 140ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020972501ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '더페이스샵 더 블랙밤 스킨 140ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '더페이스샵 더 블랙밤 스킨 140ml';


-- ================================

-- 상품: 아누아 복숭아 나이아신아마이드 에센스 토너 250mL...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아누아 복숭아 나이아신아마이드 에센스 토너 250mL',
 '아누아 복숭아 나이아신아마이드 에센스 토너 250mL',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아누아'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아누아 복숭아 나이아신아마이드 에센스 토너 250mL'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아누아 복숭아 나이아신아마이드 에센스 토너 250mL'), NOW(), NOW()),
(19500, 'SALE', (SELECT id FROM product WHERE name = '아누아 복숭아 나이아신아마이드 에센스 토너 250mL'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021005004ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아누아 복숭아 나이아신아마이드 에센스 토너 250mL'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021005003ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아누아 복숭아 나이아신아마이드 에센스 토너 250mL'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021005005ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아누아 복숭아 나이아신아마이드 에센스 토너 250mL'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아누아 복숭아 나이아신아마이드 에센스 토너 250mL';


-- ================================

-- 상품: 피토메르 로제비자쥐 250ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('피토메르 로제비자쥐 250ml',
 '피토메르 로제비자쥐 250ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '피토메르'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '피토메르 로제비자쥐 250ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(58000, 'ORIGINAL', (SELECT id FROM product WHERE name = '피토메르 로제비자쥐 250ml'), NOW(), NOW()),
(58000, 'SALE', (SELECT id FROM product WHERE name = '피토메르 로제비자쥐 250ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021017101ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '피토메르 로제비자쥐 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021017102ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '피토메르 로제비자쥐 250ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '피토메르 로제비자쥐 250ml';


-- ================================

-- 상품: [끈적임NO/산뜻수분] 달바 맨즈 밸런싱 스프레이 세럼 스킨 80ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[끈적임NO/산뜻수분] 달바 맨즈 밸런싱 스프레이 세럼 스킨 80ml',
 '[끈적임NO/산뜻수분] 달바 맨즈 밸런싱 스프레이 세럼 스킨 80ml',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '달바'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[끈적임NO/산뜻수분] 달바 맨즈 밸런싱 스프레이 세럼 스킨 80ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[끈적임NO/산뜻수분] 달바 맨즈 밸런싱 스프레이 세럼 스킨 80ml'), NOW(), NOW()),
(25600, 'SALE', (SELECT id FROM product WHERE name = '[끈적임NO/산뜻수분] 달바 맨즈 밸런싱 스프레이 세럼 스킨 80ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021029201ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[끈적임NO/산뜻수분] 달바 맨즈 밸런싱 스프레이 세럼 스킨 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021029203ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[끈적임NO/산뜻수분] 달바 맨즈 밸런싱 스프레이 세럼 스킨 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021029202ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[끈적임NO/산뜻수분] 달바 맨즈 밸런싱 스프레이 세럼 스킨 80ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[끈적임NO/산뜻수분] 달바 맨즈 밸런싱 스프레이 세럼 스킨 80ml';


-- ================================

-- 상품: [증정기획 진정PDRN] 헤브블루 살몬 PDRN 센텔라 토너 200ml 기획 (+연어 크림...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[증정기획 진정PDRN] 헤브블루 살몬 PDRN 센텔라 토너 200ml 기획 (+연어 크림 20ml)',
 '[증정기획 진정PDRN] 헤브블루 살몬 PDRN 센텔라 토너 200ml 기획 (+연어 크림 20ml)',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '헤브블루'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[증정기획 진정PDRN] 헤브블루 살몬 PDRN 센텔라 토너 200ml 기획 (+연어 크림 20ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(41900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[증정기획 진정PDRN] 헤브블루 살몬 PDRN 센텔라 토너 200ml 기획 (+연어 크림 20ml)'), NOW(), NOW()),
(26800, 'SALE', (SELECT id FROM product WHERE name = '[증정기획 진정PDRN] 헤브블루 살몬 PDRN 센텔라 토너 200ml 기획 (+연어 크림 20ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021041515ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[증정기획 진정PDRN] 헤브블루 살몬 PDRN 센텔라 토너 200ml 기획 (+연어 크림 20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021041513ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[증정기획 진정PDRN] 헤브블루 살몬 PDRN 센텔라 토너 200ml 기획 (+연어 크림 20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021041510ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[증정기획 진정PDRN] 헤브블루 살몬 PDRN 센텔라 토너 200ml 기획 (+연어 크림 20ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[증정기획 진정PDRN] 헤브블루 살몬 PDRN 센텔라 토너 200ml 기획 (+연어 크림 20ml)';


-- ================================

-- 상품: 더샘 에코 에너지 아쿠아 토너/에멀전 택1...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('더샘 에코 에너지 아쿠아 토너/에멀전 택1',
 '더샘 에코 에너지 아쿠아 토너/에멀전 택1',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더샘'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('토너', 19000, (SELECT id FROM product WHERE name = '더샘 에코 에너지 아쿠아 토너/에멀전 택1'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('에멀전', 20000, (SELECT id FROM product WHERE name = '더샘 에코 에너지 아쿠아 토너/에멀전 택1'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(19000, 'ORIGINAL', (SELECT id FROM product WHERE name = '더샘 에코 에너지 아쿠아 토너/에멀전 택1'), NOW(), NOW()),
(19000, 'SALE', (SELECT id FROM product WHERE name = '더샘 에코 에너지 아쿠아 토너/에멀전 택1'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021047103ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '더샘 에코 에너지 아쿠아 토너/에멀전 택1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021047107ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '더샘 에코 에너지 아쿠아 토너/에멀전 택1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021047104ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '더샘 에코 에너지 아쿠아 토너/에멀전 택1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021047111ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '더샘 에코 에너지 아쿠아 토너/에멀전 택1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021047109ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '더샘 에코 에너지 아쿠아 토너/에멀전 택1'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '더샘 에코 에너지 아쿠아 토너/에멀전 택1';


-- ================================

-- 상품: 더샘 미네랄 옴므 블랙 토너/에멀전 택1...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('더샘 미네랄 옴므 블랙 토너/에멀전 택1',
 '더샘 미네랄 옴므 블랙 토너/에멀전 택1',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더샘'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('에멀전', 16100, (SELECT id FROM product WHERE name = '더샘 미네랄 옴므 블랙 토너/에멀전 택1'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('토너', 0, (SELECT id FROM product WHERE name = '더샘 미네랄 옴므 블랙 토너/에멀전 택1'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '더샘 미네랄 옴므 블랙 토너/에멀전 택1'), NOW(), NOW()),
(16100, 'SALE', (SELECT id FROM product WHERE name = '더샘 미네랄 옴므 블랙 토너/에멀전 택1'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021047914ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '더샘 미네랄 옴므 블랙 토너/에멀전 택1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021047909ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '더샘 미네랄 옴므 블랙 토너/에멀전 택1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021047910ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '더샘 미네랄 옴므 블랙 토너/에멀전 택1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021047911ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '더샘 미네랄 옴므 블랙 토너/에멀전 택1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021047912ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '더샘 미네랄 옴므 블랙 토너/에멀전 택1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021047904ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '더샘 미네랄 옴므 블랙 토너/에멀전 택1'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '더샘 미네랄 옴므 블랙 토너/에멀전 택1';


-- ================================

-- 상품: 아누아 어성초 77 깐달걀 토너 350ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아누아 어성초 77 깐달걀 토너 350ml',
 '아누아 어성초 77 깐달걀 토너 350ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아누아'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아누아 어성초 77 깐달걀 토너 350ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30500, 'ORIGINAL', (SELECT id FROM product WHERE name = '아누아 어성초 77 깐달걀 토너 350ml'), NOW(), NOW()),
(22800, 'SALE', (SELECT id FROM product WHERE name = '아누아 어성초 77 깐달걀 토너 350ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021077105ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '아누아 어성초 77 깐달걀 토너 350ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021077101ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아누아 어성초 77 깐달걀 토너 350ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021077103ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아누아 어성초 77 깐달걀 토너 350ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아누아 어성초 77 깐달걀 토너 350ml';


-- ================================

-- 상품: [단독기획]인터미션 레스트업 세럼스킨 290ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[단독기획]인터미션 레스트업 세럼스킨 290ml',
 '[단독기획]인터미션 레스트업 세럼스킨 290ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '인터미션'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[단독기획]인터미션 레스트업 세럼스킨 290ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(27200, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독기획]인터미션 레스트업 세럼스킨 290ml'), NOW(), NOW()),
(27200, 'SALE', (SELECT id FROM product WHERE name = '[단독기획]인터미션 레스트업 세럼스킨 290ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021092405ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[단독기획]인터미션 레스트업 세럼스킨 290ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021092406ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[단독기획]인터미션 레스트업 세럼스킨 290ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021092404ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[단독기획]인터미션 레스트업 세럼스킨 290ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021092403ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[단독기획]인터미션 레스트업 세럼스킨 290ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021092402ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[단독기획]인터미션 레스트업 세럼스킨 290ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[단독기획]인터미션 레스트업 세럼스킨 290ml';


-- ================================

-- 상품: 운스트라움 디 오리진 미스트 토너 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('운스트라움 디 오리진 미스트 토너 150ml',
 '운스트라움 디 오리진 미스트 토너 150ml',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '운스트라움'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '운스트라움 디 오리진 미스트 토너 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(22000, 'ORIGINAL', (SELECT id FROM product WHERE name = '운스트라움 디 오리진 미스트 토너 150ml'), NOW(), NOW()),
(22000, 'SALE', (SELECT id FROM product WHERE name = '운스트라움 디 오리진 미스트 토너 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021095001ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '운스트라움 디 오리진 미스트 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021095003ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '운스트라움 디 오리진 미스트 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021095002ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '운스트라움 디 오리진 미스트 토너 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '운스트라움 디 오리진 미스트 토너 150ml';


-- ================================

-- 상품: [대용량 기획] 아누아 어성초 77 수딩 토너 350ml 기획 (+350ml 리필팩)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[대용량 기획] 아누아 어성초 77 수딩 토너 350ml 기획 (+350ml 리필팩)',
 '[대용량 기획] 아누아 어성초 77 수딩 토너 350ml 기획 (+350ml 리필팩)',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아누아'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[대용량 기획] 아누아 어성초 77 수딩 토너 350ml 기획 (+350ml 리필팩)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(49000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[대용량 기획] 아누아 어성초 77 수딩 토너 350ml 기획 (+350ml 리필팩)'), NOW(), NOW()),
(49000, 'SALE', (SELECT id FROM product WHERE name = '[대용량 기획] 아누아 어성초 77 수딩 토너 350ml 기획 (+350ml 리필팩)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021113705ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[대용량 기획] 아누아 어성초 77 수딩 토너 350ml 기획 (+350ml 리필팩)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021113702ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[대용량 기획] 아누아 어성초 77 수딩 토너 350ml 기획 (+350ml 리필팩)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021113701ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[대용량 기획] 아누아 어성초 77 수딩 토너 350ml 기획 (+350ml 리필팩)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021113703ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[대용량 기획] 아누아 어성초 77 수딩 토너 350ml 기획 (+350ml 리필팩)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[대용량 기획] 아누아 어성초 77 수딩 토너 350ml 기획 (+350ml 리필팩)';


-- ================================

-- 상품: [흔적미백] 넘버즈인 5번 글루타치온씨 비타수액 에센셜 토너 200ml 리필 기획(+200...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[흔적미백] 넘버즈인 5번 글루타치온씨 비타수액 에센셜 토너 200ml 리필 기획(+200ml 리필)',
 '[흔적미백] 넘버즈인 5번 글루타치온씨 비타수액 에센셜 토너 200ml 리필 기획(+200ml 리필)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '넘버즈인'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[흔적미백] 넘버즈인 5번 글루타치온씨 비타수액 에센셜 토너 200ml 리필 기획(+200ml 리필)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(36000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[흔적미백] 넘버즈인 5번 글루타치온씨 비타수액 에센셜 토너 200ml 리필 기획(+200ml 리필)'), NOW(), NOW()),
(24610, 'SALE', (SELECT id FROM product WHERE name = '[흔적미백] 넘버즈인 5번 글루타치온씨 비타수액 에센셜 토너 200ml 리필 기획(+200ml 리필)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021116412ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[흔적미백] 넘버즈인 5번 글루타치온씨 비타수액 에센셜 토너 200ml 리필 기획(+200ml 리필)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021116408ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[흔적미백] 넘버즈인 5번 글루타치온씨 비타수액 에센셜 토너 200ml 리필 기획(+200ml 리필)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021116409ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[흔적미백] 넘버즈인 5번 글루타치온씨 비타수액 에센셜 토너 200ml 리필 기획(+200ml 리필)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021116410ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[흔적미백] 넘버즈인 5번 글루타치온씨 비타수액 에센셜 토너 200ml 리필 기획(+200ml 리필)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021116411ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[흔적미백] 넘버즈인 5번 글루타치온씨 비타수액 에센셜 토너 200ml 리필 기획(+200ml 리필)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[흔적미백] 넘버즈인 5번 글루타치온씨 비타수액 에센셜 토너 200ml 리필 기획(+200ml 리필)';


-- ================================

-- 상품: [엔하이픈 제이크 PICK] 믹순 병풀 토너 300ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[엔하이픈 제이크 PICK] 믹순 병풀 토너 300ml',
 '[엔하이픈 제이크 PICK] 믹순 병풀 토너 300ml',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '믹순'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[엔하이픈 제이크 PICK] 믹순 병풀 토너 300ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[엔하이픈 제이크 PICK] 믹순 병풀 토너 300ml'), NOW(), NOW()),
(22500, 'SALE', (SELECT id FROM product WHERE name = '[엔하이픈 제이크 PICK] 믹순 병풀 토너 300ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021121809ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[엔하이픈 제이크 PICK] 믹순 병풀 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021121807ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[엔하이픈 제이크 PICK] 믹순 병풀 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021121806ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[엔하이픈 제이크 PICK] 믹순 병풀 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021121805ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[엔하이픈 제이크 PICK] 믹순 병풀 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021121804ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[엔하이픈 제이크 PICK] 믹순 병풀 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021121803ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[엔하이픈 제이크 PICK] 믹순 병풀 토너 300ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[엔하이픈 제이크 PICK] 믹순 병풀 토너 300ml';


-- ================================

-- 상품: [엔하이픈 제이크 PICK] 믹순 콩 토너 300ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[엔하이픈 제이크 PICK] 믹순 콩 토너 300ml',
 '[엔하이픈 제이크 PICK] 믹순 콩 토너 300ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '믹순'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[엔하이픈 제이크 PICK] 믹순 콩 토너 300ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[엔하이픈 제이크 PICK] 믹순 콩 토너 300ml'), NOW(), NOW()),
(25200, 'SALE', (SELECT id FROM product WHERE name = '[엔하이픈 제이크 PICK] 믹순 콩 토너 300ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021121908ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[엔하이픈 제이크 PICK] 믹순 콩 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021121907ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[엔하이픈 제이크 PICK] 믹순 콩 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021121906ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[엔하이픈 제이크 PICK] 믹순 콩 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021121905ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[엔하이픈 제이크 PICK] 믹순 콩 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021121904ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[엔하이픈 제이크 PICK] 믹순 콩 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021121903ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[엔하이픈 제이크 PICK] 믹순 콩 토너 300ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[엔하이픈 제이크 PICK] 믹순 콩 토너 300ml';


-- ================================

-- 상품: [단독기획] 헉슬리 컨디셔닝 에센스 토너 프리쉐이프 300ml 기획(+화장솜 40매)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[단독기획] 헉슬리 컨디셔닝 에센스 토너 프리쉐이프 300ml 기획(+화장솜 40매)',
 '[단독기획] 헉슬리 컨디셔닝 에센스 토너 프리쉐이프 300ml 기획(+화장솜 40매)',
 5.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '헉슬리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[단독기획] 헉슬리 컨디셔닝 에센스 토너 프리쉐이프 300ml 기획(+화장솜 40매)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(36000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독기획] 헉슬리 컨디셔닝 에센스 토너 프리쉐이프 300ml 기획(+화장솜 40매)'), NOW(), NOW()),
(21600, 'SALE', (SELECT id FROM product WHERE name = '[단독기획] 헉슬리 컨디셔닝 에센스 토너 프리쉐이프 300ml 기획(+화장솜 40매)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021156911ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[단독기획] 헉슬리 컨디셔닝 에센스 토너 프리쉐이프 300ml 기획(+화장솜 40매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021156916ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[단독기획] 헉슬리 컨디셔닝 에센스 토너 프리쉐이프 300ml 기획(+화장솜 40매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021156915ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[단독기획] 헉슬리 컨디셔닝 에센스 토너 프리쉐이프 300ml 기획(+화장솜 40매)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[단독기획] 헉슬리 컨디셔닝 에센스 토너 프리쉐이프 300ml 기획(+화장솜 40매)';


-- ================================

-- 상품: [결청소토너] 딕셔니스트 아미노산 토너 250ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[결청소토너] 딕셔니스트 아미노산 토너 250ml',
 '[결청소토너] 딕셔니스트 아미노산 토너 250ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '딕셔니스트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[결청소토너] 딕셔니스트 아미노산 토너 250ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[결청소토너] 딕셔니스트 아미노산 토너 250ml'), NOW(), NOW()),
(30000, 'SALE', (SELECT id FROM product WHERE name = '[결청소토너] 딕셔니스트 아미노산 토너 250ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021185809ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[결청소토너] 딕셔니스트 아미노산 토너 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021185812ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[결청소토너] 딕셔니스트 아미노산 토너 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021185811ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[결청소토너] 딕셔니스트 아미노산 토너 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021185810ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[결청소토너] 딕셔니스트 아미노산 토너 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021185808ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[결청소토너] 딕셔니스트 아미노산 토너 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021185807ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[결청소토너] 딕셔니스트 아미노산 토너 250ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[결청소토너] 딕셔니스트 아미노산 토너 250ml';


-- ================================

-- 상품: [뿌리는 진정토너]LBB 모이스처라이징 프라임 토너 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[뿌리는 진정토너]LBB 모이스처라이징 프라임 토너 100ml',
 '[뿌리는 진정토너]LBB 모이스처라이징 프라임 토너 100ml',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'LBB'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[뿌리는 진정토너]LBB 모이스처라이징 프라임 토너 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(37000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[뿌리는 진정토너]LBB 모이스처라이징 프라임 토너 100ml'), NOW(), NOW()),
(18500, 'SALE', (SELECT id FROM product WHERE name = '[뿌리는 진정토너]LBB 모이스처라이징 프라임 토너 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021192712ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[뿌리는 진정토너]LBB 모이스처라이징 프라임 토너 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021192710ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[뿌리는 진정토너]LBB 모이스처라이징 프라임 토너 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021192709ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[뿌리는 진정토너]LBB 모이스처라이징 프라임 토너 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021192708ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[뿌리는 진정토너]LBB 모이스처라이징 프라임 토너 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[뿌리는 진정토너]LBB 모이스처라이징 프라임 토너 100ml';


-- ================================

-- 상품: [NEW][대용량]오브제 포어 제로 필링 토너 310ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW][대용량]오브제 포어 제로 필링 토너 310ml',
 '[NEW][대용량]오브제 포어 제로 필링 토너 310ml',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '오브제'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW][대용량]오브제 포어 제로 필링 토너 310ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW][대용량]오브제 포어 제로 필링 토너 310ml'), NOW(), NOW()),
(19800, 'SALE', (SELECT id FROM product WHERE name = '[NEW][대용량]오브제 포어 제로 필링 토너 310ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021225005ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW][대용량]오브제 포어 제로 필링 토너 310ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021225004ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW][대용량]오브제 포어 제로 필링 토너 310ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021225003ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW][대용량]오브제 포어 제로 필링 토너 310ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW][대용량]오브제 포어 제로 필링 토너 310ml';


-- ================================

-- 상품: [모공/진정케어] 조선미녀 맑은쌀채운 토너 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[모공/진정케어] 조선미녀 맑은쌀채운 토너 150ml',
 '[모공/진정케어] 조선미녀 맑은쌀채운 토너 150ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '조선미녀'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[모공/진정케어] 조선미녀 맑은쌀채운 토너 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(18000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[모공/진정케어] 조선미녀 맑은쌀채운 토너 150ml'), NOW(), NOW()),
(18000, 'SALE', (SELECT id FROM product WHERE name = '[모공/진정케어] 조선미녀 맑은쌀채운 토너 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021309705ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[모공/진정케어] 조선미녀 맑은쌀채운 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021309706ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[모공/진정케어] 조선미녀 맑은쌀채운 토너 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[모공/진정케어] 조선미녀 맑은쌀채운 토너 150ml';


-- ================================

-- 상품: 더마라인 디렉소 PDRN 솔루션 액티빙 토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('더마라인 디렉소 PDRN 솔루션 액티빙 토너 200ml',
 '더마라인 디렉소 PDRN 솔루션 액티빙 토너 200ml',
 5.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더마라인'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '더마라인 디렉소 PDRN 솔루션 액티빙 토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(55000, 'ORIGINAL', (SELECT id FROM product WHERE name = '더마라인 디렉소 PDRN 솔루션 액티빙 토너 200ml'), NOW(), NOW()),
(55000, 'SALE', (SELECT id FROM product WHERE name = '더마라인 디렉소 PDRN 솔루션 액티빙 토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021338501ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '더마라인 디렉소 PDRN 솔루션 액티빙 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021338502ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '더마라인 디렉소 PDRN 솔루션 액티빙 토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '더마라인 디렉소 PDRN 솔루션 액티빙 토너 200ml';


-- ================================

-- 상품: 반코르 닥터 세라마이드 토너 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('반코르 닥터 세라마이드 토너 150ml',
 '반코르 닥터 세라마이드 토너 150ml',
 4.6,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '반코르'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '반코르 닥터 세라마이드 토너 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(21000, 'ORIGINAL', (SELECT id FROM product WHERE name = '반코르 닥터 세라마이드 토너 150ml'), NOW(), NOW()),
(21000, 'SALE', (SELECT id FROM product WHERE name = '반코르 닥터 세라마이드 토너 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021340710ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '반코르 닥터 세라마이드 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021340706ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '반코르 닥터 세라마이드 토너 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '반코르 닥터 세라마이드 토너 150ml';


-- ================================

-- 상품: 리얼베리어 익스트림 에센스 토너 300ml 기획 (+익스트림 크림 25ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('리얼베리어 익스트림 에센스 토너 300ml 기획 (+익스트림 크림 25ml)',
 '리얼베리어 익스트림 에센스 토너 300ml 기획 (+익스트림 크림 25ml)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '리얼베리어'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '리얼베리어 익스트림 에센스 토너 300ml 기획 (+익스트림 크림 25ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '리얼베리어 익스트림 에센스 토너 300ml 기획 (+익스트림 크림 25ml)'), NOW(), NOW()),
(25000, 'SALE', (SELECT id FROM product WHERE name = '리얼베리어 익스트림 에센스 토너 300ml 기획 (+익스트림 크림 25ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021341302ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '리얼베리어 익스트림 에센스 토너 300ml 기획 (+익스트림 크림 25ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021341303ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '리얼베리어 익스트림 에센스 토너 300ml 기획 (+익스트림 크림 25ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '리얼베리어 익스트림 에센스 토너 300ml 기획 (+익스트림 크림 25ml)';


-- ================================

-- 상품: 연작 카밍 앤 컴포팅 토너 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('연작 카밍 앤 컴포팅 토너 150ml',
 '연작 카밍 앤 컴포팅 토너 150ml',
 4.5,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '연작'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '연작 카밍 앤 컴포팅 토너 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(40000, 'ORIGINAL', (SELECT id FROM product WHERE name = '연작 카밍 앤 컴포팅 토너 150ml'), NOW(), NOW()),
(38000, 'SALE', (SELECT id FROM product WHERE name = '연작 카밍 앤 컴포팅 토너 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021395004ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '연작 카밍 앤 컴포팅 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021395001ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '연작 카밍 앤 컴포팅 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021395002ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '연작 카밍 앤 컴포팅 토너 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '연작 카밍 앤 컴포팅 토너 150ml';


-- ================================

-- 상품: 키엘 칼렌듈라 허벌 엑스트렉트 토너 125ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('키엘 칼렌듈라 허벌 엑스트렉트 토너 125ml',
 '키엘 칼렌듈라 허벌 엑스트렉트 토너 125ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '키엘'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('125ml', 27750, (SELECT id FROM product WHERE name = '키엘 칼렌듈라 허벌 엑스트렉트 토너 125ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '키엘 칼렌듈라 허벌 엑스트렉트 토너 125ml'), NOW(), NOW()),
(27750, 'SALE', (SELECT id FROM product WHERE name = '키엘 칼렌듈라 허벌 엑스트렉트 토너 125ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021406621ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '키엘 칼렌듈라 허벌 엑스트렉트 토너 125ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021406620ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '키엘 칼렌듈라 허벌 엑스트렉트 토너 125ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021406612ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '키엘 칼렌듈라 허벌 엑스트렉트 토너 125ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021406604ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '키엘 칼렌듈라 허벌 엑스트렉트 토너 125ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '키엘 칼렌듈라 허벌 엑스트렉트 토너 125ml';


-- ================================

-- 상품: 키엘 칼렌듈라 허벌 엑스트렉트 토너 250ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('키엘 칼렌듈라 허벌 엑스트렉트 토너 250ml',
 '키엘 칼렌듈라 허벌 엑스트렉트 토너 250ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '키엘'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '키엘 칼렌듈라 허벌 엑스트렉트 토너 250ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(64000, 'ORIGINAL', (SELECT id FROM product WHERE name = '키엘 칼렌듈라 허벌 엑스트렉트 토너 250ml'), NOW(), NOW()),
(53830, 'SALE', (SELECT id FROM product WHERE name = '키엘 칼렌듈라 허벌 엑스트렉트 토너 250ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021413413ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '키엘 칼렌듈라 허벌 엑스트렉트 토너 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021413412ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '키엘 칼렌듈라 허벌 엑스트렉트 토너 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021413404ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '키엘 칼렌듈라 허벌 엑스트렉트 토너 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021413402ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '키엘 칼렌듈라 허벌 엑스트렉트 토너 250ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '키엘 칼렌듈라 허벌 엑스트렉트 토너 250ml';


-- ================================

-- 상품: 키엘 울트라 훼이셜 토너 75ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('키엘 울트라 훼이셜 토너 75ml',
 '키엘 울트라 훼이셜 토너 75ml',
 4.6,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '키엘'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '키엘 울트라 훼이셜 토너 75ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(21000, 'ORIGINAL', (SELECT id FROM product WHERE name = '키엘 울트라 훼이셜 토너 75ml'), NOW(), NOW()),
(17660, 'SALE', (SELECT id FROM product WHERE name = '키엘 울트라 훼이셜 토너 75ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021417706ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '키엘 울트라 훼이셜 토너 75ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021417702ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '키엘 울트라 훼이셜 토너 75ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021417701ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '키엘 울트라 훼이셜 토너 75ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '키엘 울트라 훼이셜 토너 75ml';


-- ================================

-- 상품: [9월 올영픽] 키엘 울트라 훼이셜 토너 250ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽] 키엘 울트라 훼이셜 토너 250ml',
 '[9월 올영픽] 키엘 울트라 훼이셜 토너 250ml',
 4.6,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '키엘'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('250ml', 39530, (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 울트라 훼이셜 토너 250ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(47000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 울트라 훼이셜 토너 250ml'), NOW(), NOW()),
(39530, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 울트라 훼이셜 토너 250ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021417916ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 울트라 훼이셜 토너 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021417915ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 울트라 훼이셜 토너 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021417911ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 울트라 훼이셜 토너 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021417901ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 울트라 훼이셜 토너 250ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[9월 올영픽] 키엘 울트라 훼이셜 토너 250ml';


-- ================================

-- 상품: 케어놀로지 리블루 부스팅 멀티 토너 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('케어놀로지 리블루 부스팅 멀티 토너 150ml',
 '케어놀로지 리블루 부스팅 멀티 토너 150ml',
 5.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '케어놀로지'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '케어놀로지 리블루 부스팅 멀티 토너 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(48000, 'ORIGINAL', (SELECT id FROM product WHERE name = '케어놀로지 리블루 부스팅 멀티 토너 150ml'), NOW(), NOW()),
(40800, 'SALE', (SELECT id FROM product WHERE name = '케어놀로지 리블루 부스팅 멀티 토너 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021420306ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '케어놀로지 리블루 부스팅 멀티 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021420305ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '케어놀로지 리블루 부스팅 멀티 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021420304ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '케어놀로지 리블루 부스팅 멀티 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021420303ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '케어놀로지 리블루 부스팅 멀티 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021420302ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '케어놀로지 리블루 부스팅 멀티 토너 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '케어놀로지 리블루 부스팅 멀티 토너 150ml';


-- ================================

-- 상품: [세븐틴 승관PICK] 그린핑거 포레스트 피톤 수분시카 세럼토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[세븐틴 승관PICK] 그린핑거 포레스트 피톤 수분시카 세럼토너 200ml',
 '[세븐틴 승관PICK] 그린핑거 포레스트 피톤 수분시카 세럼토너 200ml',
 5.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '포레스트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[세븐틴 승관PICK] 그린핑거 포레스트 피톤 수분시카 세럼토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[세븐틴 승관PICK] 그린핑거 포레스트 피톤 수분시카 세럼토너 200ml'), NOW(), NOW()),
(17500, 'SALE', (SELECT id FROM product WHERE name = '[세븐틴 승관PICK] 그린핑거 포레스트 피톤 수분시카 세럼토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021422210ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[세븐틴 승관PICK] 그린핑거 포레스트 피톤 수분시카 세럼토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021422201ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[세븐틴 승관PICK] 그린핑거 포레스트 피톤 수분시카 세럼토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021422209ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[세븐틴 승관PICK] 그린핑거 포레스트 피톤 수분시카 세럼토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021422208ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[세븐틴 승관PICK] 그린핑거 포레스트 피톤 수분시카 세럼토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021422207ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[세븐틴 승관PICK] 그린핑거 포레스트 피톤 수분시카 세럼토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021422206ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[세븐틴 승관PICK] 그린핑거 포레스트 피톤 수분시카 세럼토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[세븐틴 승관PICK] 그린핑거 포레스트 피톤 수분시카 세럼토너 200ml';


-- ================================

-- 상품: 키엘 울트라 훼이셜 오일-프리 토너 250ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('키엘 울트라 훼이셜 오일-프리 토너 250ml',
 '키엘 울트라 훼이셜 오일-프리 토너 250ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '키엘'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '키엘 울트라 훼이셜 오일-프리 토너 250ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(47000, 'ORIGINAL', (SELECT id FROM product WHERE name = '키엘 울트라 훼이셜 오일-프리 토너 250ml'), NOW(), NOW()),
(39950, 'SALE', (SELECT id FROM product WHERE name = '키엘 울트라 훼이셜 오일-프리 토너 250ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021425408ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '키엘 울트라 훼이셜 오일-프리 토너 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021425405ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '키엘 울트라 훼이셜 오일-프리 토너 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021425401ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '키엘 울트라 훼이셜 오일-프리 토너 250ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '키엘 울트라 훼이셜 오일-프리 토너 250ml';


-- ================================

-- 상품: [1+1/피지케어] 비플레인 녹두 모공 클리어링 라하 토너 265ml 기획 (+265ml ...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[1+1/피지케어] 비플레인 녹두 모공 클리어링 라하 토너 265ml 기획 (+265ml 리필팩)',
 '[1+1/피지케어] 비플레인 녹두 모공 클리어링 라하 토너 265ml 기획 (+265ml 리필팩)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비플레인'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[1+1/피지케어] 비플레인 녹두 모공 클리어링 라하 토너 265ml 기획 (+265ml 리필팩)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1+1/피지케어] 비플레인 녹두 모공 클리어링 라하 토너 265ml 기획 (+265ml 리필팩)'), NOW(), NOW()),
(22800, 'SALE', (SELECT id FROM product WHERE name = '[1+1/피지케어] 비플레인 녹두 모공 클리어링 라하 토너 265ml 기획 (+265ml 리필팩)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021467202ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[1+1/피지케어] 비플레인 녹두 모공 클리어링 라하 토너 265ml 기획 (+265ml 리필팩)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021467204ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[1+1/피지케어] 비플레인 녹두 모공 클리어링 라하 토너 265ml 기획 (+265ml 리필팩)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021467203ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[1+1/피지케어] 비플레인 녹두 모공 클리어링 라하 토너 265ml 기획 (+265ml 리필팩)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[1+1/피지케어] 비플레인 녹두 모공 클리어링 라하 토너 265ml 기획 (+265ml 리필팩)';


-- ================================

-- 상품: 올리고더미 카렌듈라 토닝로션 500ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('올리고더미 카렌듈라 토닝로션 500ml',
 '올리고더미 카렌듈라 토닝로션 500ml',
 5.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '올리고더미'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '올리고더미 카렌듈라 토닝로션 500ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39600, 'ORIGINAL', (SELECT id FROM product WHERE name = '올리고더미 카렌듈라 토닝로션 500ml'), NOW(), NOW()),
(35600, 'SALE', (SELECT id FROM product WHERE name = '올리고더미 카렌듈라 토닝로션 500ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021475301ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '올리고더미 카렌듈라 토닝로션 500ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '올리고더미 카렌듈라 토닝로션 500ml';


-- ================================

-- 상품: [1등토너/리필] 라운드랩 1025 독도 토너 200ml 리필팩...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[1등토너/리필] 라운드랩 1025 독도 토너 200ml 리필팩',
 '[1등토너/리필] 라운드랩 1025 독도 토너 200ml 리필팩',
 5.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라운드랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[1등토너/리필] 라운드랩 1025 독도 토너 200ml 리필팩'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(11900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1등토너/리필] 라운드랩 1025 독도 토너 200ml 리필팩'), NOW(), NOW()),
(10900, 'SALE', (SELECT id FROM product WHERE name = '[1등토너/리필] 라운드랩 1025 독도 토너 200ml 리필팩'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021499201ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[1등토너/리필] 라운드랩 1025 독도 토너 200ml 리필팩'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021499202ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[1등토너/리필] 라운드랩 1025 독도 토너 200ml 리필팩'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[1등토너/리필] 라운드랩 1025 독도 토너 200ml 리필팩';


-- ================================

-- 상품: [각질개선율191%]리쥬란 더마 힐러 모이스처 트리트먼트 토너 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[각질개선율191%]리쥬란 더마 힐러 모이스처 트리트먼트 토너 150ml',
 '[각질개선율191%]리쥬란 더마 힐러 모이스처 트리트먼트 토너 150ml',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '리쥬란'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[각질개선율191%]리쥬란 더마 힐러 모이스처 트리트먼트 토너 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[각질개선율191%]리쥬란 더마 힐러 모이스처 트리트먼트 토너 150ml'), NOW(), NOW()),
(25200, 'SALE', (SELECT id FROM product WHERE name = '[각질개선율191%]리쥬란 더마 힐러 모이스처 트리트먼트 토너 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021522205ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[각질개선율191%]리쥬란 더마 힐러 모이스처 트리트먼트 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021522204ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[각질개선율191%]리쥬란 더마 힐러 모이스처 트리트먼트 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021522203ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[각질개선율191%]리쥬란 더마 힐러 모이스처 트리트먼트 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021522202ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[각질개선율191%]리쥬란 더마 힐러 모이스처 트리트먼트 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021522201ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[각질개선율191%]리쥬란 더마 힐러 모이스처 트리트먼트 토너 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[각질개선율191%]리쥬란 더마 힐러 모이스처 트리트먼트 토너 150ml';


-- ================================

-- 상품: [모공부스터] 마몽드 포어 슈링커 바쿠치올 레티놀 토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[모공부스터] 마몽드 포어 슈링커 바쿠치올 레티놀 토너 200ml',
 '[모공부스터] 마몽드 포어 슈링커 바쿠치올 레티놀 토너 200ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '마몽드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[모공부스터] 마몽드 포어 슈링커 바쿠치올 레티놀 토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[모공부스터] 마몽드 포어 슈링커 바쿠치올 레티놀 토너 200ml'), NOW(), NOW()),
(24000, 'SALE', (SELECT id FROM product WHERE name = '[모공부스터] 마몽드 포어 슈링커 바쿠치올 레티놀 토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021645911ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[모공부스터] 마몽드 포어 슈링커 바쿠치올 레티놀 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021645904ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[모공부스터] 마몽드 포어 슈링커 바쿠치올 레티놀 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021645913ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[모공부스터] 마몽드 포어 슈링커 바쿠치올 레티놀 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021645914ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[모공부스터] 마몽드 포어 슈링커 바쿠치올 레티놀 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021645912ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[모공부스터] 마몽드 포어 슈링커 바쿠치올 레티놀 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021645915ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[모공부스터] 마몽드 포어 슈링커 바쿠치올 레티놀 토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[모공부스터] 마몽드 포어 슈링커 바쿠치올 레티놀 토너 200ml';


-- ================================

-- 상품: [보습장벽] 마몽드 프로바이오틱스 세라마이드 스킨 소프너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[보습장벽] 마몽드 프로바이오틱스 세라마이드 스킨 소프너 200ml',
 '[보습장벽] 마몽드 프로바이오틱스 세라마이드 스킨 소프너 200ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '마몽드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[보습장벽] 마몽드 프로바이오틱스 세라마이드 스킨 소프너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[보습장벽] 마몽드 프로바이오틱스 세라마이드 스킨 소프너 200ml'), NOW(), NOW()),
(24000, 'SALE', (SELECT id FROM product WHERE name = '[보습장벽] 마몽드 프로바이오틱스 세라마이드 스킨 소프너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021646905ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[보습장벽] 마몽드 프로바이오틱스 세라마이드 스킨 소프너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021646904ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[보습장벽] 마몽드 프로바이오틱스 세라마이드 스킨 소프너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021646901ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[보습장벽] 마몽드 프로바이오틱스 세라마이드 스킨 소프너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021646903ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[보습장벽] 마몽드 프로바이오틱스 세라마이드 스킨 소프너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021646902ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[보습장벽] 마몽드 프로바이오틱스 세라마이드 스킨 소프너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021646907ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[보습장벽] 마몽드 프로바이오틱스 세라마이드 스킨 소프너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[보습장벽] 마몽드 프로바이오틱스 세라마이드 스킨 소프너 200ml';


-- ================================

-- 상품: 달팡 인트랄 데일리 트리트먼트 로션 150ml (온)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('달팡 인트랄 데일리 트리트먼트 로션 150ml (온)',
 '달팡 인트랄 데일리 트리트먼트 로션 150ml (온)',
 5.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '달팡'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '달팡 인트랄 데일리 트리트먼트 로션 150ml (온)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(86000, 'ORIGINAL', (SELECT id FROM product WHERE name = '달팡 인트랄 데일리 트리트먼트 로션 150ml (온)'), NOW(), NOW()),
(73100, 'SALE', (SELECT id FROM product WHERE name = '달팡 인트랄 데일리 트리트먼트 로션 150ml (온)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021732502ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '달팡 인트랄 데일리 트리트먼트 로션 150ml (온)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021732504ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '달팡 인트랄 데일리 트리트먼트 로션 150ml (온)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '달팡 인트랄 데일리 트리트먼트 로션 150ml (온)';


-- ================================

-- 상품: 닥터디퍼런트 스케일링 토너 (지성용) 300ml (AD)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('닥터디퍼런트 스케일링 토너 (지성용) 300ml (AD)',
 '닥터디퍼런트 스케일링 토너 (지성용) 300ml (AD)',
 5.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터디퍼런트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '닥터디퍼런트 스케일링 토너 (지성용) 300ml (AD)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '닥터디퍼런트 스케일링 토너 (지성용) 300ml (AD)'), NOW(), NOW()),
(25600, 'SALE', (SELECT id FROM product WHERE name = '닥터디퍼런트 스케일링 토너 (지성용) 300ml (AD)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021777701ko.jpeg?l=ko', 1, (SELECT id FROM product WHERE name = '닥터디퍼런트 스케일링 토너 (지성용) 300ml (AD)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021777704ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '닥터디퍼런트 스케일링 토너 (지성용) 300ml (AD)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021777703ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '닥터디퍼런트 스케일링 토너 (지성용) 300ml (AD)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021777702ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '닥터디퍼런트 스케일링 토너 (지성용) 300ml (AD)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '닥터디퍼런트 스케일링 토너 (지성용) 300ml (AD)';


-- ================================

-- 상품: [쿨링진정] 마몽드 카밍 샷 아줄렌 토너 300ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[쿨링진정] 마몽드 카밍 샷 아줄렌 토너 300ml',
 '[쿨링진정] 마몽드 카밍 샷 아줄렌 토너 300ml',
 4.6,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '마몽드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[쿨링진정] 마몽드 카밍 샷 아줄렌 토너 300ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(20000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[쿨링진정] 마몽드 카밍 샷 아줄렌 토너 300ml'), NOW(), NOW()),
(20000, 'SALE', (SELECT id FROM product WHERE name = '[쿨링진정] 마몽드 카밍 샷 아줄렌 토너 300ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021938709ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[쿨링진정] 마몽드 카밍 샷 아줄렌 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021938708ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[쿨링진정] 마몽드 카밍 샷 아줄렌 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021938702ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[쿨링진정] 마몽드 카밍 샷 아줄렌 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021938710ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[쿨링진정] 마몽드 카밍 샷 아줄렌 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021938713ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[쿨링진정] 마몽드 카밍 샷 아줄렌 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021938714ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[쿨링진정] 마몽드 카밍 샷 아줄렌 토너 300ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[쿨링진정] 마몽드 카밍 샷 아줄렌 토너 300ml';


-- ================================

-- 상품: [피지각질토너] 유리아쥬 이제악 토너 250ML기획 (+ 화장솜 20매 증정)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[피지각질토너] 유리아쥬 이제악 토너 250ML기획 (+ 화장솜 20매 증정)',
 '[피지각질토너] 유리아쥬 이제악 토너 250ML기획 (+ 화장솜 20매 증정)',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유리아쥬'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[피지각질토너] 유리아쥬 이제악 토너 250ML기획 (+ 화장솜 20매 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[피지각질토너] 유리아쥬 이제악 토너 250ML기획 (+ 화장솜 20매 증정)'), NOW(), NOW()),
(28000, 'SALE', (SELECT id FROM product WHERE name = '[피지각질토너] 유리아쥬 이제악 토너 250ML기획 (+ 화장솜 20매 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021962501ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[피지각질토너] 유리아쥬 이제악 토너 250ML기획 (+ 화장솜 20매 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021962503ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[피지각질토너] 유리아쥬 이제악 토너 250ML기획 (+ 화장솜 20매 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021962502ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[피지각질토너] 유리아쥬 이제악 토너 250ML기획 (+ 화장솜 20매 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[피지각질토너] 유리아쥬 이제악 토너 250ML기획 (+ 화장솜 20매 증정)';


-- ================================

-- 상품: [초록진정] 몰바니 아티시카 리프레쉬 카밍 세럼 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[초록진정] 몰바니 아티시카 리프레쉬 카밍 세럼 30ml',
 '[초록진정] 몰바니 아티시카 리프레쉬 카밍 세럼 30ml',
 5.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '몰바니'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[초록진정] 몰바니 아티시카 리프레쉬 카밍 세럼 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[초록진정] 몰바니 아티시카 리프레쉬 카밍 세럼 30ml'), NOW(), NOW()),
(25900, 'SALE', (SELECT id FROM product WHERE name = '[초록진정] 몰바니 아티시카 리프레쉬 카밍 세럼 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021996606ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[초록진정] 몰바니 아티시카 리프레쉬 카밍 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021996603ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[초록진정] 몰바니 아티시카 리프레쉬 카밍 세럼 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021996601ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[초록진정] 몰바니 아티시카 리프레쉬 카밍 세럼 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[초록진정] 몰바니 아티시카 리프레쉬 카밍 세럼 30ml';


-- ================================

-- 상품: 몰바니 율피 엑소좀 모공 타이트닝 토너 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('몰바니 율피 엑소좀 모공 타이트닝 토너 150ml',
 '몰바니 율피 엑소좀 모공 타이트닝 토너 150ml',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '몰바니'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '몰바니 율피 엑소좀 모공 타이트닝 토너 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(27000, 'ORIGINAL', (SELECT id FROM product WHERE name = '몰바니 율피 엑소좀 모공 타이트닝 토너 150ml'), NOW(), NOW()),
(27000, 'SALE', (SELECT id FROM product WHERE name = '몰바니 율피 엑소좀 모공 타이트닝 토너 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021998504ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '몰바니 율피 엑소좀 모공 타이트닝 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021998503ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '몰바니 율피 엑소좀 모공 타이트닝 토너 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '몰바니 율피 엑소좀 모공 타이트닝 토너 150ml';


-- ================================

-- 상품: 아이디얼포맨 파워쿨링 애프터쉐이브 워터로션 150mL...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아이디얼포맨 파워쿨링 애프터쉐이브 워터로션 150mL',
 '아이디얼포맨 파워쿨링 애프터쉐이브 워터로션 150mL',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이디얼포맨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아이디얼포맨 파워쿨링 애프터쉐이브 워터로션 150mL'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(15000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아이디얼포맨 파워쿨링 애프터쉐이브 워터로션 150mL'), NOW(), NOW()),
(15000, 'SALE', (SELECT id FROM product WHERE name = '아이디얼포맨 파워쿨링 애프터쉐이브 워터로션 150mL'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022071006ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아이디얼포맨 파워쿨링 애프터쉐이브 워터로션 150mL'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022071004ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아이디얼포맨 파워쿨링 애프터쉐이브 워터로션 150mL'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022071003ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아이디얼포맨 파워쿨링 애프터쉐이브 워터로션 150mL'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022071002ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '아이디얼포맨 파워쿨링 애프터쉐이브 워터로션 150mL'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022071005ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '아이디얼포맨 파워쿨링 애프터쉐이브 워터로션 150mL'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022071007ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '아이디얼포맨 파워쿨링 애프터쉐이브 워터로션 150mL'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아이디얼포맨 파워쿨링 애프터쉐이브 워터로션 150mL';


-- ================================

-- 상품: [수분광] 마몽드 플로라 글로우 로즈 워터 토너 300ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분광] 마몽드 플로라 글로우 로즈 워터 토너 300ml',
 '[수분광] 마몽드 플로라 글로우 로즈 워터 토너 300ml',
 4.6,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '마몽드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분광] 마몽드 플로라 글로우 로즈 워터 토너 300ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(20000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분광] 마몽드 플로라 글로우 로즈 워터 토너 300ml'), NOW(), NOW()),
(20000, 'SALE', (SELECT id FROM product WHERE name = '[수분광] 마몽드 플로라 글로우 로즈 워터 토너 300ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022133104ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분광] 마몽드 플로라 글로우 로즈 워터 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022133101ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분광] 마몽드 플로라 글로우 로즈 워터 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022133105ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분광] 마몽드 플로라 글로우 로즈 워터 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022133106ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[수분광] 마몽드 플로라 글로우 로즈 워터 토너 300ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분광] 마몽드 플로라 글로우 로즈 워터 토너 300ml';


-- ================================

-- 상품: 마몽드 맨 리차징 토너 180ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('마몽드 맨 리차징 토너 180ml',
 '마몽드 맨 리차징 토너 180ml',
 5.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '마몽드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '마몽드 맨 리차징 토너 180ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(19000, 'ORIGINAL', (SELECT id FROM product WHERE name = '마몽드 맨 리차징 토너 180ml'), NOW(), NOW()),
(19000, 'SALE', (SELECT id FROM product WHERE name = '마몽드 맨 리차징 토너 180ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022273901ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '마몽드 맨 리차징 토너 180ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022273903ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '마몽드 맨 리차징 토너 180ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022273905ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '마몽드 맨 리차징 토너 180ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022273904ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '마몽드 맨 리차징 토너 180ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022273902ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '마몽드 맨 리차징 토너 180ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '마몽드 맨 리차징 토너 180ml';


-- ================================

-- 상품: [모공결토너] 웰라쥬 하이퍼 펩타이드 스킨부스터 토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[모공결토너] 웰라쥬 하이퍼 펩타이드 스킨부스터 토너 200ml',
 '[모공결토너] 웰라쥬 하이퍼 펩타이드 스킨부스터 토너 200ml',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '웰라쥬'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[모공결토너] 웰라쥬 하이퍼 펩타이드 스킨부스터 토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[모공결토너] 웰라쥬 하이퍼 펩타이드 스킨부스터 토너 200ml'), NOW(), NOW()),
(24000, 'SALE', (SELECT id FROM product WHERE name = '[모공결토너] 웰라쥬 하이퍼 펩타이드 스킨부스터 토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022293914ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[모공결토너] 웰라쥬 하이퍼 펩타이드 스킨부스터 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022293915ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[모공결토너] 웰라쥬 하이퍼 펩타이드 스킨부스터 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022293916ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[모공결토너] 웰라쥬 하이퍼 펩타이드 스킨부스터 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022293917ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[모공결토너] 웰라쥬 하이퍼 펩타이드 스킨부스터 토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[모공결토너] 웰라쥬 하이퍼 펩타이드 스킨부스터 토너 200ml';


-- ================================

-- 상품: [리뉴얼] 아벤느 핑크 수딩 토너 200ml 기획 (+화장솜)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[리뉴얼] 아벤느 핑크 수딩 토너 200ml 기획 (+화장솜)',
 '[리뉴얼] 아벤느 핑크 수딩 토너 200ml 기획 (+화장솜)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아벤느'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[리뉴얼] 아벤느 핑크 수딩 토너 200ml 기획 (+화장솜)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[리뉴얼] 아벤느 핑크 수딩 토너 200ml 기획 (+화장솜)'), NOW(), NOW()),
(29000, 'SALE', (SELECT id FROM product WHERE name = '[리뉴얼] 아벤느 핑크 수딩 토너 200ml 기획 (+화장솜)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022333402ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[리뉴얼] 아벤느 핑크 수딩 토너 200ml 기획 (+화장솜)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022333409ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[리뉴얼] 아벤느 핑크 수딩 토너 200ml 기획 (+화장솜)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022333408ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[리뉴얼] 아벤느 핑크 수딩 토너 200ml 기획 (+화장솜)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022333407ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[리뉴얼] 아벤느 핑크 수딩 토너 200ml 기획 (+화장솜)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022333406ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[리뉴얼] 아벤느 핑크 수딩 토너 200ml 기획 (+화장솜)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022333404ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[리뉴얼] 아벤느 핑크 수딩 토너 200ml 기획 (+화장솜)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[리뉴얼] 아벤느 핑크 수딩 토너 200ml 기획 (+화장솜)';


-- ================================

-- 상품: 달팡 인트랄 이너유쓰 레스큐 아이크림 15ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('달팡 인트랄 이너유쓰 레스큐 아이크림 15ml',
 '달팡 인트랄 이너유쓰 레스큐 아이크림 15ml',
 4.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '달팡'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '달팡 인트랄 이너유쓰 레스큐 아이크림 15ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(59000, 'ORIGINAL', (SELECT id FROM product WHERE name = '달팡 인트랄 이너유쓰 레스큐 아이크림 15ml'), NOW(), NOW()),
(50150, 'SALE', (SELECT id FROM product WHERE name = '달팡 인트랄 이너유쓰 레스큐 아이크림 15ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022354601ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '달팡 인트랄 이너유쓰 레스큐 아이크림 15ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022354602ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '달팡 인트랄 이너유쓰 레스큐 아이크림 15ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '달팡 인트랄 이너유쓰 레스큐 아이크림 15ml';


-- ================================

-- 상품: 디오디너리 글리코릭 애시드 7% 엑스폴리에이팅 토너 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('디오디너리 글리코릭 애시드 7% 엑스폴리에이팅 토너 100ml',
 '디오디너리 글리코릭 애시드 7% 엑스폴리에이팅 토너 100ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '디오디너리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '디오디너리 글리코릭 애시드 7% 엑스폴리에이팅 토너 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(10900, 'ORIGINAL', (SELECT id FROM product WHERE name = '디오디너리 글리코릭 애시드 7% 엑스폴리에이팅 토너 100ml'), NOW(), NOW()),
(10900, 'SALE', (SELECT id FROM product WHERE name = '디오디너리 글리코릭 애시드 7% 엑스폴리에이팅 토너 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022362703ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '디오디너리 글리코릭 애시드 7% 엑스폴리에이팅 토너 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022362702ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '디오디너리 글리코릭 애시드 7% 엑스폴리에이팅 토너 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '디오디너리 글리코릭 애시드 7% 엑스폴리에이팅 토너 100ml';


-- ================================

-- 상품: [증정 기획] 닥터지 레드 블레미쉬 포 맨 멀티 수딩 토너 200ml 보습 기획세트 (+올...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[증정 기획] 닥터지 레드 블레미쉬 포 맨 멀티 수딩 토너 200ml 보습 기획세트 (+올인원크림 30ml)',
 '[증정 기획] 닥터지 레드 블레미쉬 포 맨 멀티 수딩 토너 200ml 보습 기획세트 (+올인원크림 30ml)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터지'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[증정 기획] 닥터지 레드 블레미쉬 포 맨 멀티 수딩 토너 200ml 보습 기획세트 (+올인원크림 30ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(31000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[증정 기획] 닥터지 레드 블레미쉬 포 맨 멀티 수딩 토너 200ml 보습 기획세트 (+올인원크림 30ml)'), NOW(), NOW()),
(19900, 'SALE', (SELECT id FROM product WHERE name = '[증정 기획] 닥터지 레드 블레미쉬 포 맨 멀티 수딩 토너 200ml 보습 기획세트 (+올인원크림 30ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022378301ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[증정 기획] 닥터지 레드 블레미쉬 포 맨 멀티 수딩 토너 200ml 보습 기획세트 (+올인원크림 30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022378303ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[증정 기획] 닥터지 레드 블레미쉬 포 맨 멀티 수딩 토너 200ml 보습 기획세트 (+올인원크림 30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022378302ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[증정 기획] 닥터지 레드 블레미쉬 포 맨 멀티 수딩 토너 200ml 보습 기획세트 (+올인원크림 30ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[증정 기획] 닥터지 레드 블레미쉬 포 맨 멀티 수딩 토너 200ml 보습 기획세트 (+올인원크림 30ml)';


-- ================================

-- 상품: [리뉴얼] 스킨푸드 블랙슈가 퍼펙트 토너 2X 포 맨 180ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[리뉴얼] 스킨푸드 블랙슈가 퍼펙트 토너 2X 포 맨 180ml',
 '[리뉴얼] 스킨푸드 블랙슈가 퍼펙트 토너 2X 포 맨 180ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '스킨푸드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('토너', 14000, (SELECT id FROM product WHERE name = '[리뉴얼] 스킨푸드 블랙슈가 퍼펙트 토너 2X 포 맨 180ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(20000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[리뉴얼] 스킨푸드 블랙슈가 퍼펙트 토너 2X 포 맨 180ml'), NOW(), NOW()),
(14000, 'SALE', (SELECT id FROM product WHERE name = '[리뉴얼] 스킨푸드 블랙슈가 퍼펙트 토너 2X 포 맨 180ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022438505ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[리뉴얼] 스킨푸드 블랙슈가 퍼펙트 토너 2X 포 맨 180ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[리뉴얼] 스킨푸드 블랙슈가 퍼펙트 토너 2X 포 맨 180ml';


-- ================================

-- 상품: [쿨링토너] 빌리프 아쿠아 밤 프로즌 토너 드롭드롭드롭 기획(토너300ml+50ml+겔패드...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[쿨링토너] 빌리프 아쿠아 밤 프로즌 토너 드롭드롭드롭 기획(토너300ml+50ml+겔패드 140매)',
 '[쿨링토너] 빌리프 아쿠아 밤 프로즌 토너 드롭드롭드롭 기획(토너300ml+50ml+겔패드 140매)',
 4.5,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '빌리프'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[기획] 300ml+50+겔패드140매', 32000, (SELECT id FROM product WHERE name = '[쿨링토너] 빌리프 아쿠아 밤 프로즌 토너 드롭드롭드롭 기획(토너300ml+50ml+겔패드 140매)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[기획] 300ml+겔패드70매', 32000, (SELECT id FROM product WHERE name = '[쿨링토너] 빌리프 아쿠아 밤 프로즌 토너 드롭드롭드롭 기획(토너300ml+50ml+겔패드 140매)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[쿨링토너] 빌리프 아쿠아 밤 프로즌 토너 드롭드롭드롭 기획(토너300ml+50ml+겔패드 140매)'), NOW(), NOW()),
(32000, 'SALE', (SELECT id FROM product WHERE name = '[쿨링토너] 빌리프 아쿠아 밤 프로즌 토너 드롭드롭드롭 기획(토너300ml+50ml+겔패드 140매)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022458325ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[쿨링토너] 빌리프 아쿠아 밤 프로즌 토너 드롭드롭드롭 기획(토너300ml+50ml+겔패드 140매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022458326ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[쿨링토너] 빌리프 아쿠아 밤 프로즌 토너 드롭드롭드롭 기획(토너300ml+50ml+겔패드 140매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022458327ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[쿨링토너] 빌리프 아쿠아 밤 프로즌 토너 드롭드롭드롭 기획(토너300ml+50ml+겔패드 140매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022458323ko.png?l=ko', 4, (SELECT id FROM product WHERE name = '[쿨링토너] 빌리프 아쿠아 밤 프로즌 토너 드롭드롭드롭 기획(토너300ml+50ml+겔패드 140매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022458324ko.png?l=ko', 5, (SELECT id FROM product WHERE name = '[쿨링토너] 빌리프 아쿠아 밤 프로즌 토너 드롭드롭드롭 기획(토너300ml+50ml+겔패드 140매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022458302ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[쿨링토너] 빌리프 아쿠아 밤 프로즌 토너 드롭드롭드롭 기획(토너300ml+50ml+겔패드 140매)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[쿨링토너] 빌리프 아쿠아 밤 프로즌 토너 드롭드롭드롭 기획(토너300ml+50ml+겔패드 140매)';


-- ================================

-- 상품: [9월 올영픽] 키엘 칼렌듈라 허벌 엑스트렉트 토너 (125ml/250ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽] 키엘 칼렌듈라 허벌 엑스트렉트 토너 (125ml/250ml)',
 '[9월 올영픽] 키엘 칼렌듈라 허벌 엑스트렉트 토너 (125ml/250ml)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '키엘'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('125ml', 27750, (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 칼렌듈라 허벌 엑스트렉트 토너 (125ml/250ml)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('250ml', 53830, (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 칼렌듈라 허벌 엑스트렉트 토너 (125ml/250ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 칼렌듈라 허벌 엑스트렉트 토너 (125ml/250ml)'), NOW(), NOW()),
(27750, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 칼렌듈라 허벌 엑스트렉트 토너 (125ml/250ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022506324ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 칼렌듈라 허벌 엑스트렉트 토너 (125ml/250ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022506323ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 칼렌듈라 허벌 엑스트렉트 토너 (125ml/250ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022506322ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 칼렌듈라 허벌 엑스트렉트 토너 (125ml/250ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022506305ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 칼렌듈라 허벌 엑스트렉트 토너 (125ml/250ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022506306ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 칼렌듈라 허벌 엑스트렉트 토너 (125ml/250ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022506301ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 칼렌듈라 허벌 엑스트렉트 토너 (125ml/250ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[9월 올영픽] 키엘 칼렌듈라 허벌 엑스트렉트 토너 (125ml/250ml)';


-- ================================

-- 상품: 키엘 울트라 훼이셜 토너 (75ml/250ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('키엘 울트라 훼이셜 토너 (75ml/250ml)',
 '키엘 울트라 훼이셜 토너 (75ml/250ml)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '키엘'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('75ml', 17660, (SELECT id FROM product WHERE name = '키엘 울트라 훼이셜 토너 (75ml/250ml)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('250ml', 39530, (SELECT id FROM product WHERE name = '키엘 울트라 훼이셜 토너 (75ml/250ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(21000, 'ORIGINAL', (SELECT id FROM product WHERE name = '키엘 울트라 훼이셜 토너 (75ml/250ml)'), NOW(), NOW()),
(17660, 'SALE', (SELECT id FROM product WHERE name = '키엘 울트라 훼이셜 토너 (75ml/250ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022506611ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '키엘 울트라 훼이셜 토너 (75ml/250ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022506612ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '키엘 울트라 훼이셜 토너 (75ml/250ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022506605ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '키엘 울트라 훼이셜 토너 (75ml/250ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022506606ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '키엘 울트라 훼이셜 토너 (75ml/250ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022506601ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '키엘 울트라 훼이셜 토너 (75ml/250ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022506602ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '키엘 울트라 훼이셜 토너 (75ml/250ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '키엘 울트라 훼이셜 토너 (75ml/250ml)';


-- ================================

-- 상품: [NEW] 리엔케이 하이퍼 히알 플럼핑 토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW] 리엔케이 하이퍼 히알 플럼핑 토너 200ml',
 '[NEW] 리엔케이 하이퍼 히알 플럼핑 토너 200ml',
 5.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '리엔케이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW] 리엔케이 하이퍼 히알 플럼핑 토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW] 리엔케이 하이퍼 히알 플럼핑 토너 200ml'), NOW(), NOW()),
(25000, 'SALE', (SELECT id FROM product WHERE name = '[NEW] 리엔케이 하이퍼 히알 플럼핑 토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022590705ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW] 리엔케이 하이퍼 히알 플럼핑 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022590706ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW] 리엔케이 하이퍼 히알 플럼핑 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022590707ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW] 리엔케이 하이퍼 히알 플럼핑 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022590708ko.png?l=ko', 4, (SELECT id FROM product WHERE name = '[NEW] 리엔케이 하이퍼 히알 플럼핑 토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW] 리엔케이 하이퍼 히알 플럼핑 토너 200ml';


-- ================================

-- 상품: [NEW/주연포카증정] 리엔케이 하이퍼 히알 플럼핑 토너 200ml 기획 (+마스크 2매)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW/주연포카증정] 리엔케이 하이퍼 히알 플럼핑 토너 200ml 기획 (+마스크 2매)',
 '[NEW/주연포카증정] 리엔케이 하이퍼 히알 플럼핑 토너 200ml 기획 (+마스크 2매)',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '리엔케이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW/주연포카증정] 리엔케이 하이퍼 히알 플럼핑 토너 200ml 기획 (+마스크 2매)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW/주연포카증정] 리엔케이 하이퍼 히알 플럼핑 토너 200ml 기획 (+마스크 2매)'), NOW(), NOW()),
(19600, 'SALE', (SELECT id FROM product WHERE name = '[NEW/주연포카증정] 리엔케이 하이퍼 히알 플럼핑 토너 200ml 기획 (+마스크 2매)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022590808ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW/주연포카증정] 리엔케이 하이퍼 히알 플럼핑 토너 200ml 기획 (+마스크 2매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022590809ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW/주연포카증정] 리엔케이 하이퍼 히알 플럼핑 토너 200ml 기획 (+마스크 2매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022590810ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW/주연포카증정] 리엔케이 하이퍼 히알 플럼핑 토너 200ml 기획 (+마스크 2매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022590811ko.png?l=ko', 4, (SELECT id FROM product WHERE name = '[NEW/주연포카증정] 리엔케이 하이퍼 히알 플럼핑 토너 200ml 기획 (+마스크 2매)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW/주연포카증정] 리엔케이 하이퍼 히알 플럼핑 토너 200ml 기획 (+마스크 2매)';


-- ================================

-- 상품: 하루하루원더 블랙라이스 히알루로닉 토너 150ml 기획(+30ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('하루하루원더 블랙라이스 히알루로닉 토너 150ml 기획(+30ml)',
 '하루하루원더 블랙라이스 히알루로닉 토너 150ml 기획(+30ml)',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '하루하루원더'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '하루하루원더 블랙라이스 히알루로닉 토너 150ml 기획(+30ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(20000, 'ORIGINAL', (SELECT id FROM product WHERE name = '하루하루원더 블랙라이스 히알루로닉 토너 150ml 기획(+30ml)'), NOW(), NOW()),
(16000, 'SALE', (SELECT id FROM product WHERE name = '하루하루원더 블랙라이스 히알루로닉 토너 150ml 기획(+30ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022591905ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '하루하루원더 블랙라이스 히알루로닉 토너 150ml 기획(+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022591903ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '하루하루원더 블랙라이스 히알루로닉 토너 150ml 기획(+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022591902ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '하루하루원더 블랙라이스 히알루로닉 토너 150ml 기획(+30ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '하루하루원더 블랙라이스 히알루로닉 토너 150ml 기획(+30ml)';


-- ================================

-- 상품: 바이오더마 하이드라비오 토너 500ml  기획(+250ml 증정)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('바이오더마 하이드라비오 토너 500ml  기획(+250ml 증정)',
 '바이오더마 하이드라비오 토너 500ml  기획(+250ml 증정)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오더마'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 토너 500ml  기획(+250ml 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 토너 500ml  기획(+250ml 증정)'), NOW(), NOW()),
(38000, 'SALE', (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 토너 500ml  기획(+250ml 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022608113ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 토너 500ml  기획(+250ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022608112ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 토너 500ml  기획(+250ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022608107ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 토너 500ml  기획(+250ml 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '바이오더마 하이드라비오 토너 500ml  기획(+250ml 증정)';


-- ================================

-- 상품: 이니스프리 그린티 스킨 포맨 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('이니스프리 그린티 스킨 포맨 150ml',
 '이니스프리 그린티 스킨 포맨 150ml',
 5.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '이니스프리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '이니스프리 그린티 스킨 포맨 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(22000, 'ORIGINAL', (SELECT id FROM product WHERE name = '이니스프리 그린티 스킨 포맨 150ml'), NOW(), NOW()),
(22000, 'SALE', (SELECT id FROM product WHERE name = '이니스프리 그린티 스킨 포맨 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022609906ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '이니스프리 그린티 스킨 포맨 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022609905ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '이니스프리 그린티 스킨 포맨 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022609904ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '이니스프리 그린티 스킨 포맨 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022609903ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '이니스프리 그린티 스킨 포맨 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '이니스프리 그린티 스킨 포맨 150ml';


-- ================================

-- 상품: [리뉴얼] 브이앤에이뷰티 안티옥시던트 에센스 토너 120ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[리뉴얼] 브이앤에이뷰티 안티옥시던트 에센스 토너 120ml',
 '[리뉴얼] 브이앤에이뷰티 안티옥시던트 에센스 토너 120ml',
 5.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '브이앤에이뷰티'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[리뉴얼] 브이앤에이뷰티 안티옥시던트 에센스 토너 120ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[리뉴얼] 브이앤에이뷰티 안티옥시던트 에센스 토너 120ml'), NOW(), NOW()),
(39000, 'SALE', (SELECT id FROM product WHERE name = '[리뉴얼] 브이앤에이뷰티 안티옥시던트 에센스 토너 120ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022647401ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[리뉴얼] 브이앤에이뷰티 안티옥시던트 에센스 토너 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022647403ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[리뉴얼] 브이앤에이뷰티 안티옥시던트 에센스 토너 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022647402ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[리뉴얼] 브이앤에이뷰티 안티옥시던트 에센스 토너 120ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[리뉴얼] 브이앤에이뷰티 안티옥시던트 에센스 토너 120ml';


-- ================================

-- 상품: 브리올옴므 퍼펙트 화이트닝 토너 120ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('브리올옴므 퍼펙트 화이트닝 토너 120ml',
 '브리올옴므 퍼펙트 화이트닝 토너 120ml',
 5.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '브리올옴므'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '브리올옴므 퍼펙트 화이트닝 토너 120ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '브리올옴므 퍼펙트 화이트닝 토너 120ml'), NOW(), NOW()),
(22800, 'SALE', (SELECT id FROM product WHERE name = '브리올옴므 퍼펙트 화이트닝 토너 120ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022722301ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '브리올옴므 퍼펙트 화이트닝 토너 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022722302ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '브리올옴므 퍼펙트 화이트닝 토너 120ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '브리올옴므 퍼펙트 화이트닝 토너 120ml';


-- ================================

-- 상품: [매끈물광&피지쓱싹] 어나더페이스 펩타테놀 수분 밸런스 토너 120ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[매끈물광&피지쓱싹] 어나더페이스 펩타테놀 수분 밸런스 토너 120ml',
 '[매끈물광&피지쓱싹] 어나더페이스 펩타테놀 수분 밸런스 토너 120ml',
 5.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '어나더페이스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[매끈물광&피지쓱싹] 어나더페이스 펩타테놀 수분 밸런스 토너 120ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[매끈물광&피지쓱싹] 어나더페이스 펩타테놀 수분 밸런스 토너 120ml'), NOW(), NOW()),
(18750, 'SALE', (SELECT id FROM product WHERE name = '[매끈물광&피지쓱싹] 어나더페이스 펩타테놀 수분 밸런스 토너 120ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022727516ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[매끈물광&피지쓱싹] 어나더페이스 펩타테놀 수분 밸런스 토너 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022727517ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[매끈물광&피지쓱싹] 어나더페이스 펩타테놀 수분 밸런스 토너 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022727518ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[매끈물광&피지쓱싹] 어나더페이스 펩타테놀 수분 밸런스 토너 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022727519ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[매끈물광&피지쓱싹] 어나더페이스 펩타테놀 수분 밸런스 토너 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022727520ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[매끈물광&피지쓱싹] 어나더페이스 펩타테놀 수분 밸런스 토너 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022727521ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[매끈물광&피지쓱싹] 어나더페이스 펩타테놀 수분 밸런스 토너 120ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[매끈물광&피지쓱싹] 어나더페이스 펩타테놀 수분 밸런스 토너 120ml';


-- ================================

-- 상품: 아이디얼포맨 파워쿨링 애프터 쉐이브 2종 세트...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아이디얼포맨 파워쿨링 애프터 쉐이브 2종 세트',
 '아이디얼포맨 파워쿨링 애프터 쉐이브 2종 세트',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
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

-- 상품: 토리든 밸런스풀 시카 각질 토너 250ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('토리든 밸런스풀 시카 각질 토너 250ml',
 '토리든 밸런스풀 시카 각질 토너 250ml',
 4.5,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '토리든'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '토리든 밸런스풀 시카 각질 토너 250ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '토리든 밸런스풀 시카 각질 토너 250ml'), NOW(), NOW()),
(24000, 'SALE', (SELECT id FROM product WHERE name = '토리든 밸런스풀 시카 각질 토너 250ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022833301ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '토리든 밸런스풀 시카 각질 토너 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022833302ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '토리든 밸런스풀 시카 각질 토너 250ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '토리든 밸런스풀 시카 각질 토너 250ml';


-- ================================

-- 상품: 토리든 다이브인 저분자 히알루론산 스킨 부스터 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('토리든 다이브인 저분자 히알루론산 스킨 부스터 200ml',
 '토리든 다이브인 저분자 히알루론산 스킨 부스터 200ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '토리든'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '토리든 다이브인 저분자 히알루론산 스킨 부스터 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(18000, 'ORIGINAL', (SELECT id FROM product WHERE name = '토리든 다이브인 저분자 히알루론산 스킨 부스터 200ml'), NOW(), NOW()),
(18000, 'SALE', (SELECT id FROM product WHERE name = '토리든 다이브인 저분자 히알루론산 스킨 부스터 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022835001ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '토리든 다이브인 저분자 히알루론산 스킨 부스터 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022835002ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '토리든 다이브인 저분자 히알루론산 스킨 부스터 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '토리든 다이브인 저분자 히알루론산 스킨 부스터 200ml';


-- ================================

-- 상품: [깜자콜라보/기름종이 토너] 라네즈 젤 크림 스킨 170ml 기획 (+깜자 러기지택)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[깜자콜라보/기름종이 토너] 라네즈 젤 크림 스킨 170ml 기획 (+깜자 러기지택)',
 '[깜자콜라보/기름종이 토너] 라네즈 젤 크림 스킨 170ml 기획 (+깜자 러기지택)',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라네즈'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[깜자콜라보/기름종이 토너] 라네즈 젤 크림 스킨 170ml 기획 (+깜자 러기지택)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[깜자콜라보/기름종이 토너] 라네즈 젤 크림 스킨 170ml 기획 (+깜자 러기지택)'), NOW(), NOW()),
(33000, 'SALE', (SELECT id FROM product WHERE name = '[깜자콜라보/기름종이 토너] 라네즈 젤 크림 스킨 170ml 기획 (+깜자 러기지택)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022858511ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[깜자콜라보/기름종이 토너] 라네즈 젤 크림 스킨 170ml 기획 (+깜자 러기지택)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022858510ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[깜자콜라보/기름종이 토너] 라네즈 젤 크림 스킨 170ml 기획 (+깜자 러기지택)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022858508ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[깜자콜라보/기름종이 토너] 라네즈 젤 크림 스킨 170ml 기획 (+깜자 러기지택)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022858509ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[깜자콜라보/기름종이 토너] 라네즈 젤 크림 스킨 170ml 기획 (+깜자 러기지택)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022858506ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[깜자콜라보/기름종이 토너] 라네즈 젤 크림 스킨 170ml 기획 (+깜자 러기지택)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[깜자콜라보/기름종이 토너] 라네즈 젤 크림 스킨 170ml 기획 (+깜자 러기지택)';


-- ================================

-- 상품: 헉슬리 컨디셔닝 에센스 토너 프리쉐이프 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('헉슬리 컨디셔닝 에센스 토너 프리쉐이프 200ml',
 '헉슬리 컨디셔닝 에센스 토너 프리쉐이프 200ml',
 5.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '헉슬리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '헉슬리 컨디셔닝 에센스 토너 프리쉐이프 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '헉슬리 컨디셔닝 에센스 토너 프리쉐이프 200ml'), NOW(), NOW()),
(26000, 'SALE', (SELECT id FROM product WHERE name = '헉슬리 컨디셔닝 에센스 토너 프리쉐이프 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022890842ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '헉슬리 컨디셔닝 에센스 토너 프리쉐이프 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022890843ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '헉슬리 컨디셔닝 에센스 토너 프리쉐이프 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '헉슬리 컨디셔닝 에센스 토너 프리쉐이프 200ml';


-- ================================

-- 상품: [NEW]토리든 밸런스풀 포맨 시카 클리어링 스킨 300ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW]토리든 밸런스풀 포맨 시카 클리어링 스킨 300ml',
 '[NEW]토리든 밸런스풀 포맨 시카 클리어링 스킨 300ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '토리든'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW]토리든 밸런스풀 포맨 시카 클리어링 스킨 300ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(22000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW]토리든 밸런스풀 포맨 시카 클리어링 스킨 300ml'), NOW(), NOW()),
(20900, 'SALE', (SELECT id FROM product WHERE name = '[NEW]토리든 밸런스풀 포맨 시카 클리어링 스킨 300ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022895303ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW]토리든 밸런스풀 포맨 시카 클리어링 스킨 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022895304ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW]토리든 밸런스풀 포맨 시카 클리어링 스킨 300ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW]토리든 밸런스풀 포맨 시카 클리어링 스킨 300ml';


-- ================================

-- 상품: [화잘먹토너] 차앤박 더마앤서 핑크토닝 PDRN 토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[화잘먹토너] 차앤박 더마앤서 핑크토닝 PDRN 토너 200ml',
 '[화잘먹토너] 차앤박 더마앤서 핑크토닝 PDRN 토너 200ml',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '차앤박'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[화잘먹토너] 차앤박 더마앤서 핑크토닝 PDRN 토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[화잘먹토너] 차앤박 더마앤서 핑크토닝 PDRN 토너 200ml'), NOW(), NOW()),
(18600, 'SALE', (SELECT id FROM product WHERE name = '[화잘먹토너] 차앤박 더마앤서 핑크토닝 PDRN 토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022908211ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[화잘먹토너] 차앤박 더마앤서 핑크토닝 PDRN 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022908204ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[화잘먹토너] 차앤박 더마앤서 핑크토닝 PDRN 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022908201ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[화잘먹토너] 차앤박 더마앤서 핑크토닝 PDRN 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022908202ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[화잘먹토너] 차앤박 더마앤서 핑크토닝 PDRN 토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[화잘먹토너] 차앤박 더마앤서 핑크토닝 PDRN 토너 200ml';


-- ================================

-- 상품: 랑콤 토닉 꽁포르 토너 200ml/400ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('랑콤 토닉 꽁포르 토너 200ml/400ml',
 '랑콤 토닉 꽁포르 토너 200ml/400ml',
 5.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '랑콤'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('200ml', 58650, (SELECT id FROM product WHERE name = '랑콤 토닉 꽁포르 토너 200ml/400ml'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('400ml', 82450, (SELECT id FROM product WHERE name = '랑콤 토닉 꽁포르 토너 200ml/400ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(69000, 'ORIGINAL', (SELECT id FROM product WHERE name = '랑콤 토닉 꽁포르 토너 200ml/400ml'), NOW(), NOW()),
(58650, 'SALE', (SELECT id FROM product WHERE name = '랑콤 토닉 꽁포르 토너 200ml/400ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022928604ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '랑콤 토닉 꽁포르 토너 200ml/400ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022928605ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '랑콤 토닉 꽁포르 토너 200ml/400ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '랑콤 토닉 꽁포르 토너 200ml/400ml';


-- ================================

-- 상품: [수분진정/약산성] 디퍼 히알루론산 히알큐브 수분 토너 300ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분진정/약산성] 디퍼 히알루론산 히알큐브 수분 토너 300ml',
 '[수분진정/약산성] 디퍼 히알루론산 히알큐브 수분 토너 300ml',
 5.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '디퍼'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분진정/약산성] 디퍼 히알루론산 히알큐브 수분 토너 300ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(27000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분진정/약산성] 디퍼 히알루론산 히알큐브 수분 토너 300ml'), NOW(), NOW()),
(18800, 'SALE', (SELECT id FROM product WHERE name = '[수분진정/약산성] 디퍼 히알루론산 히알큐브 수분 토너 300ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022946304ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분진정/약산성] 디퍼 히알루론산 히알큐브 수분 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022946303ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분진정/약산성] 디퍼 히알루론산 히알큐브 수분 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022946302ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분진정/약산성] 디퍼 히알루론산 히알큐브 수분 토너 300ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분진정/약산성] 디퍼 히알루론산 히알큐브 수분 토너 300ml';


-- ================================

-- 상품: [NEW] 아이오페 XMD 스템3 클리니컬 리커버리 소프너 130ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW] 아이오페 XMD 스템3 클리니컬 리커버리 소프너 130ml',
 '[NEW] 아이오페 XMD 스템3 클리니컬 리커버리 소프너 130ml',
 5.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이오페'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW] 아이오페 XMD 스템3 클리니컬 리커버리 소프너 130ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(47000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW] 아이오페 XMD 스템3 클리니컬 리커버리 소프너 130ml'), NOW(), NOW()),
(47000, 'SALE', (SELECT id FROM product WHERE name = '[NEW] 아이오페 XMD 스템3 클리니컬 리커버리 소프너 130ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022948702ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW] 아이오페 XMD 스템3 클리니컬 리커버리 소프너 130ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022948701ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW] 아이오페 XMD 스템3 클리니컬 리커버리 소프너 130ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW] 아이오페 XMD 스템3 클리니컬 리커버리 소프너 130ml';


-- ================================

-- 상품: [장벽탄력] 지피덤 셀트리온 EGF 스킨 베리어 크림 토너 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[장벽탄력] 지피덤 셀트리온 EGF 스킨 베리어 크림 토너 150ml',
 '[장벽탄력] 지피덤 셀트리온 EGF 스킨 베리어 크림 토너 150ml',
 5.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '지피덤'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[장벽탄력] 지피덤 셀트리온 EGF 스킨 베리어 크림 토너 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[장벽탄력] 지피덤 셀트리온 EGF 스킨 베리어 크림 토너 150ml'), NOW(), NOW()),
(20340, 'SALE', (SELECT id FROM product WHERE name = '[장벽탄력] 지피덤 셀트리온 EGF 스킨 베리어 크림 토너 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022950911ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[장벽탄력] 지피덤 셀트리온 EGF 스킨 베리어 크림 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022950903ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[장벽탄력] 지피덤 셀트리온 EGF 스킨 베리어 크림 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022950902ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[장벽탄력] 지피덤 셀트리온 EGF 스킨 베리어 크림 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022950904ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[장벽탄력] 지피덤 셀트리온 EGF 스킨 베리어 크림 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022950905ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[장벽탄력] 지피덤 셀트리온 EGF 스킨 베리어 크림 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022950906ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[장벽탄력] 지피덤 셀트리온 EGF 스킨 베리어 크림 토너 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[장벽탄력] 지피덤 셀트리온 EGF 스킨 베리어 크림 토너 150ml';


-- ================================

-- 상품: [리뉴얼/모공케어] 성분에디터 그린토마토 NMN 포어 하이드로 수딩 토너 350ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[리뉴얼/모공케어] 성분에디터 그린토마토 NMN 포어 하이드로 수딩 토너 350ml',
 '[리뉴얼/모공케어] 성분에디터 그린토마토 NMN 포어 하이드로 수딩 토너 350ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '성분에디터'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[리뉴얼/모공케어] 성분에디터 그린토마토 NMN 포어 하이드로 수딩 토너 350ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(21000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[리뉴얼/모공케어] 성분에디터 그린토마토 NMN 포어 하이드로 수딩 토너 350ml'), NOW(), NOW()),
(17900, 'SALE', (SELECT id FROM product WHERE name = '[리뉴얼/모공케어] 성분에디터 그린토마토 NMN 포어 하이드로 수딩 토너 350ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022952110ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[리뉴얼/모공케어] 성분에디터 그린토마토 NMN 포어 하이드로 수딩 토너 350ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022952111ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[리뉴얼/모공케어] 성분에디터 그린토마토 NMN 포어 하이드로 수딩 토너 350ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022952112ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[리뉴얼/모공케어] 성분에디터 그린토마토 NMN 포어 하이드로 수딩 토너 350ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022952113ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[리뉴얼/모공케어] 성분에디터 그린토마토 NMN 포어 하이드로 수딩 토너 350ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[리뉴얼/모공케어] 성분에디터 그린토마토 NMN 포어 하이드로 수딩 토너 350ml';


-- ================================

-- 상품: LBB 모이스처라이징 프라임 토너 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('LBB 모이스처라이징 프라임 토너 100ml',
 'LBB 모이스처라이징 프라임 토너 100ml',
 0.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'LBB'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = 'LBB 모이스처라이징 프라임 토너 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(37000, 'ORIGINAL', (SELECT id FROM product WHERE name = 'LBB 모이스처라이징 프라임 토너 100ml'), NOW(), NOW()),
(33300, 'SALE', (SELECT id FROM product WHERE name = 'LBB 모이스처라이징 프라임 토너 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022972301ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = 'LBB 모이스처라이징 프라임 토너 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022972302ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = 'LBB 모이스처라이징 프라임 토너 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = 'LBB 모이스처라이징 프라임 토너 100ml';


-- ================================

-- 상품: [NEW]스킨앤랩 베리어덤 모이스처 부스팅 토너 300ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW]스킨앤랩 베리어덤 모이스처 부스팅 토너 300ml',
 '[NEW]스킨앤랩 베리어덤 모이스처 부스팅 토너 300ml',
 5.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '스킨앤랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW]스킨앤랩 베리어덤 모이스처 부스팅 토너 300ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW]스킨앤랩 베리어덤 모이스처 부스팅 토너 300ml'), NOW(), NOW()),
(18000, 'SALE', (SELECT id FROM product WHERE name = '[NEW]스킨앤랩 베리어덤 모이스처 부스팅 토너 300ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022995508ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW]스킨앤랩 베리어덤 모이스처 부스팅 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022995502ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW]스킨앤랩 베리어덤 모이스처 부스팅 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022995503ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW]스킨앤랩 베리어덤 모이스처 부스팅 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022995504ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[NEW]스킨앤랩 베리어덤 모이스처 부스팅 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022995505ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[NEW]스킨앤랩 베리어덤 모이스처 부스팅 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022995506ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[NEW]스킨앤랩 베리어덤 모이스처 부스팅 토너 300ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW]스킨앤랩 베리어덤 모이스처 부스팅 토너 300ml';


-- ================================

-- 상품: 플로디카 리웨이크 모이스트 트리트먼트 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('플로디카 리웨이크 모이스트 트리트먼트 150ml',
 '플로디카 리웨이크 모이스트 트리트먼트 150ml',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '플로디카'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '플로디카 리웨이크 모이스트 트리트먼트 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(31000, 'ORIGINAL', (SELECT id FROM product WHERE name = '플로디카 리웨이크 모이스트 트리트먼트 150ml'), NOW(), NOW()),
(21700, 'SALE', (SELECT id FROM product WHERE name = '플로디카 리웨이크 모이스트 트리트먼트 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022996504ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '플로디카 리웨이크 모이스트 트리트먼트 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022996502ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '플로디카 리웨이크 모이스트 트리트먼트 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022996503ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '플로디카 리웨이크 모이스트 트리트먼트 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '플로디카 리웨이크 모이스트 트리트먼트 150ml';


-- ================================

-- 상품: 비욘드 엔젤아쿠아 수분진정 토너 500ml 기획 (+화장솜 70매)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('비욘드 엔젤아쿠아 수분진정 토너 500ml 기획 (+화장솜 70매)',
 '비욘드 엔젤아쿠아 수분진정 토너 500ml 기획 (+화장솜 70매)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비욘드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 수분진정 토너 500ml 기획 (+화장솜 70매)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(19900, 'ORIGINAL', (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 수분진정 토너 500ml 기획 (+화장솜 70매)'), NOW(), NOW()),
(10360, 'SALE', (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 수분진정 토너 500ml 기획 (+화장솜 70매)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023046402ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 수분진정 토너 500ml 기획 (+화장솜 70매)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023046403ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 수분진정 토너 500ml 기획 (+화장솜 70매)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '비욘드 엔젤아쿠아 수분진정 토너 500ml 기획 (+화장솜 70매)';


-- ================================

-- 상품: [미네랄 수분 부스팅 토너] SVR 피지오퓨어 토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[미네랄 수분 부스팅 토너] SVR 피지오퓨어 토너 200ml',
 '[미네랄 수분 부스팅 토너] SVR 피지오퓨어 토너 200ml',
 0.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'SVR'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[미네랄 수분 부스팅 토너] SVR 피지오퓨어 토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[미네랄 수분 부스팅 토너] SVR 피지오퓨어 토너 200ml'), NOW(), NOW()),
(36100, 'SALE', (SELECT id FROM product WHERE name = '[미네랄 수분 부스팅 토너] SVR 피지오퓨어 토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023094301ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[미네랄 수분 부스팅 토너] SVR 피지오퓨어 토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[미네랄 수분 부스팅 토너] SVR 피지오퓨어 토너 200ml';


-- ================================

-- 상품: [포켓몬 에디션/모공케어]성분에디터 그린토마토 NMN 포어 하이드로 수딩 토너 350g 기...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[포켓몬 에디션/모공케어]성분에디터 그린토마토 NMN 포어 하이드로 수딩 토너 350g 기획(+120g)',
 '[포켓몬 에디션/모공케어]성분에디터 그린토마토 NMN 포어 하이드로 수딩 토너 350g 기획(+120g)',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '성분에디터'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[포켓몬 에디션/모공케어]성분에디터 그린토마토 NMN 포어 하이드로 수딩 토너 350g 기획(+120g)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[포켓몬 에디션/모공케어]성분에디터 그린토마토 NMN 포어 하이드로 수딩 토너 350g 기획(+120g)'), NOW(), NOW()),
(21040, 'SALE', (SELECT id FROM product WHERE name = '[포켓몬 에디션/모공케어]성분에디터 그린토마토 NMN 포어 하이드로 수딩 토너 350g 기획(+120g)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023107410ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[포켓몬 에디션/모공케어]성분에디터 그린토마토 NMN 포어 하이드로 수딩 토너 350g 기획(+120g)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023107404ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[포켓몬 에디션/모공케어]성분에디터 그린토마토 NMN 포어 하이드로 수딩 토너 350g 기획(+120g)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023107405ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[포켓몬 에디션/모공케어]성분에디터 그린토마토 NMN 포어 하이드로 수딩 토너 350g 기획(+120g)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[포켓몬 에디션/모공케어]성분에디터 그린토마토 NMN 포어 하이드로 수딩 토너 350g 기획(+120g)';


-- ================================

-- 상품: [NEW/뿌리는토너미스트] 허블룸 콤부차 플랜트 바이옴 토너 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW/뿌리는토너미스트] 허블룸 콤부차 플랜트 바이옴 토너 150ml',
 '[NEW/뿌리는토너미스트] 허블룸 콤부차 플랜트 바이옴 토너 150ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '허블룸'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW/뿌리는토너미스트] 허블룸 콤부차 플랜트 바이옴 토너 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW/뿌리는토너미스트] 허블룸 콤부차 플랜트 바이옴 토너 150ml'), NOW(), NOW()),
(24000, 'SALE', (SELECT id FROM product WHERE name = '[NEW/뿌리는토너미스트] 허블룸 콤부차 플랜트 바이옴 토너 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023145908ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW/뿌리는토너미스트] 허블룸 콤부차 플랜트 바이옴 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023145910ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW/뿌리는토너미스트] 허블룸 콤부차 플랜트 바이옴 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023145909ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW/뿌리는토너미스트] 허블룸 콤부차 플랜트 바이옴 토너 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW/뿌리는토너미스트] 허블룸 콤부차 플랜트 바이옴 토너 150ml';


-- ================================

-- 상품: [NEW] 빌리프 맨올로지 프로텍티브 엑토인 토너 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW] 빌리프 맨올로지 프로텍티브 엑토인 토너 150ml',
 '[NEW] 빌리프 맨올로지 프로텍티브 엑토인 토너 150ml',
 0.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '빌리프'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW] 빌리프 맨올로지 프로텍티브 엑토인 토너 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW] 빌리프 맨올로지 프로텍티브 엑토인 토너 150ml'), NOW(), NOW()),
(29000, 'SALE', (SELECT id FROM product WHERE name = '[NEW] 빌리프 맨올로지 프로텍티브 엑토인 토너 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023299602ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW] 빌리프 맨올로지 프로텍티브 엑토인 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023299603ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW] 빌리프 맨올로지 프로텍티브 엑토인 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023299604ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW] 빌리프 맨올로지 프로텍티브 엑토인 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023299601ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[NEW] 빌리프 맨올로지 프로텍티브 엑토인 토너 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW] 빌리프 맨올로지 프로텍티브 엑토인 토너 150ml';


-- ================================

-- 상품: [나카플로 공동개발] 미닉 노세범 블루 캐모마일 수분 토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[나카플로 공동개발] 미닉 노세범 블루 캐모마일 수분 토너 200ml',
 '[나카플로 공동개발] 미닉 노세범 블루 캐모마일 수분 토너 200ml',
 0.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '미닉'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[나카플로 공동개발] 미닉 노세범 블루 캐모마일 수분 토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[나카플로 공동개발] 미닉 노세범 블루 캐모마일 수분 토너 200ml'), NOW(), NOW()),
(24000, 'SALE', (SELECT id FROM product WHERE name = '[나카플로 공동개발] 미닉 노세범 블루 캐모마일 수분 토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023300201ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[나카플로 공동개발] 미닉 노세범 블루 캐모마일 수분 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023300203ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[나카플로 공동개발] 미닉 노세범 블루 캐모마일 수분 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023300202ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[나카플로 공동개발] 미닉 노세범 블루 캐모마일 수분 토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[나카플로 공동개발] 미닉 노세범 블루 캐모마일 수분 토너 200ml';


-- ================================

-- 상품: [한정기획 진정PDRN] 헤브블루 살몬 케어링 센텔라 토너 200ml 기획 (+센텔라앰플1...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[한정기획 진정PDRN] 헤브블루 살몬 케어링 센텔라 토너 200ml 기획 (+센텔라앰플13ml+버블디스펜서)',
 '[한정기획 진정PDRN] 헤브블루 살몬 케어링 센텔라 토너 200ml 기획 (+센텔라앰플13ml+버블디스펜서)',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '헤브블루'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[한정기획 진정PDRN] 헤브블루 살몬 케어링 센텔라 토너 200ml 기획 (+센텔라앰플13ml+버블디스펜서)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(41900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[한정기획 진정PDRN] 헤브블루 살몬 케어링 센텔라 토너 200ml 기획 (+센텔라앰플13ml+버블디스펜서)'), NOW(), NOW()),
(26800, 'SALE', (SELECT id FROM product WHERE name = '[한정기획 진정PDRN] 헤브블루 살몬 케어링 센텔라 토너 200ml 기획 (+센텔라앰플13ml+버블디스펜서)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023318706ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[한정기획 진정PDRN] 헤브블루 살몬 케어링 센텔라 토너 200ml 기획 (+센텔라앰플13ml+버블디스펜서)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023318707ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[한정기획 진정PDRN] 헤브블루 살몬 케어링 센텔라 토너 200ml 기획 (+센텔라앰플13ml+버블디스펜서)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[한정기획 진정PDRN] 헤브블루 살몬 케어링 센텔라 토너 200ml 기획 (+센텔라앰플13ml+버블디스펜서)';


-- ================================

-- 상품: 오브제 모이스처 프로틴 장벽 토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('오브제 모이스처 프로틴 장벽 토너 200ml',
 '오브제 모이스처 프로틴 장벽 토너 200ml',
 0.0,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '오브제'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '오브제 모이스처 프로틴 장벽 토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '오브제 모이스처 프로틴 장벽 토너 200ml'), NOW(), NOW()),
(25000, 'SALE', (SELECT id FROM product WHERE name = '오브제 모이스처 프로틴 장벽 토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023435806ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '오브제 모이스처 프로틴 장벽 토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '오브제 모이스처 프로틴 장벽 토너 200ml';


-- ================================

-- 상품: 라로슈포제 똘러리앙 울트라 로션 200ML...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('라로슈포제 똘러리앙 울트라 로션 200ML',
 '라로슈포제 똘러리앙 울트라 로션 200ML',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라로슈포제'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '라로슈포제 똘러리앙 울트라 로션 200ML'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '라로슈포제 똘러리앙 울트라 로션 200ML'), NOW(), NOW()),
(28800, 'SALE', (SELECT id FROM product WHERE name = '라로슈포제 똘러리앙 울트라 로션 200ML'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013934704ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '라로슈포제 똘러리앙 울트라 로션 200ML'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013934703ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '라로슈포제 똘러리앙 울트라 로션 200ML'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013934705ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '라로슈포제 똘러리앙 울트라 로션 200ML'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '라로슈포제 똘러리앙 울트라 로션 200ML';


-- ================================

-- 상품: 크리니크 클래리파잉 로션 투와이스 어 데이 엑스폴리에이터 2 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('크리니크 클래리파잉 로션 투와이스 어 데이 엑스폴리에이터 2 200ml',
 '크리니크 클래리파잉 로션 투와이스 어 데이 엑스폴리에이터 2 200ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '크리니크'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '크리니크 클래리파잉 로션 투와이스 어 데이 엑스폴리에이터 2 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(43000, 'ORIGINAL', (SELECT id FROM product WHERE name = '크리니크 클래리파잉 로션 투와이스 어 데이 엑스폴리에이터 2 200ml'), NOW(), NOW()),
(36550, 'SALE', (SELECT id FROM product WHERE name = '크리니크 클래리파잉 로션 투와이스 어 데이 엑스폴리에이터 2 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0010/A00000010416706ko.jpeg?l=ko', 1, (SELECT id FROM product WHERE name = '크리니크 클래리파잉 로션 투와이스 어 데이 엑스폴리에이터 2 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '크리니크 클래리파잉 로션 투와이스 어 데이 엑스폴리에이터 2 200ml';


-- ================================

-- 상품: 클럽맨피노드 클래식바닐라 에프터쉐이브로션 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('클럽맨피노드 클래식바닐라 에프터쉐이브로션 50ml',
 '클럽맨피노드 클래식바닐라 에프터쉐이브로션 50ml',
 4.2,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '클럽맨피노드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '클럽맨피노드 클래식바닐라 에프터쉐이브로션 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(9000, 'ORIGINAL', (SELECT id FROM product WHERE name = '클럽맨피노드 클래식바닐라 에프터쉐이브로션 50ml'), NOW(), NOW()),
(9000, 'SALE', (SELECT id FROM product WHERE name = '클럽맨피노드 클래식바닐라 에프터쉐이브로션 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012451102ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '클럽맨피노드 클래식바닐라 에프터쉐이브로션 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '클럽맨피노드 클래식바닐라 에프터쉐이브로션 50ml';


-- ================================

-- 상품: 코스알엑스 풀핏 프로폴리스 시너지 토너 280ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('코스알엑스 풀핏 프로폴리스 시너지 토너 280ml',
 '코스알엑스 풀핏 프로폴리스 시너지 토너 280ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '코스알엑스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '코스알엑스 풀핏 프로폴리스 시너지 토너 280ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(22000, 'ORIGINAL', (SELECT id FROM product WHERE name = '코스알엑스 풀핏 프로폴리스 시너지 토너 280ml'), NOW(), NOW()),
(13430, 'SALE', (SELECT id FROM product WHERE name = '코스알엑스 풀핏 프로폴리스 시너지 토너 280ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012947415ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '코스알엑스 풀핏 프로폴리스 시너지 토너 280ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012947414ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '코스알엑스 풀핏 프로폴리스 시너지 토너 280ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012947413ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '코스알엑스 풀핏 프로폴리스 시너지 토너 280ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '코스알엑스 풀핏 프로폴리스 시너지 토너 280ml';


-- ================================

-- 상품: 코스알엑스 퓨어핏 시카 토너 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('코스알엑스 퓨어핏 시카 토너 150ml',
 '코스알엑스 퓨어핏 시카 토너 150ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '코스알엑스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '코스알엑스 퓨어핏 시카 토너 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(20000, 'ORIGINAL', (SELECT id FROM product WHERE name = '코스알엑스 퓨어핏 시카 토너 150ml'), NOW(), NOW()),
(10000, 'SALE', (SELECT id FROM product WHERE name = '코스알엑스 퓨어핏 시카 토너 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013750203ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '코스알엑스 퓨어핏 시카 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013750204ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '코스알엑스 퓨어핏 시카 토너 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '코스알엑스 퓨어핏 시카 토너 150ml';


-- ================================

-- 상품: [모공/각질케어/약산성] 닥터디퍼런트 스케일링 토너 200ml (지성용)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[모공/각질케어/약산성] 닥터디퍼런트 스케일링 토너 200ml (지성용)',
 '[모공/각질케어/약산성] 닥터디퍼런트 스케일링 토너 200ml (지성용)',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터디퍼런트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[모공/각질케어/약산성] 닥터디퍼런트 스케일링 토너 200ml (지성용)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[모공/각질케어/약산성] 닥터디퍼런트 스케일링 토너 200ml (지성용)'), NOW(), NOW()),
(32000, 'SALE', (SELECT id FROM product WHERE name = '[모공/각질케어/약산성] 닥터디퍼런트 스케일링 토너 200ml (지성용)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014527701ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[모공/각질케어/약산성] 닥터디퍼런트 스케일링 토너 200ml (지성용)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014527705ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[모공/각질케어/약산성] 닥터디퍼런트 스케일링 토너 200ml (지성용)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[모공/각질케어/약산성] 닥터디퍼런트 스케일링 토너 200ml (지성용)';


-- ================================

-- 상품: 코스알엑스 에이씨컬렉션 카밍 리퀴드 마일드 125ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('코스알엑스 에이씨컬렉션 카밍 리퀴드 마일드 125ml',
 '코스알엑스 에이씨컬렉션 카밍 리퀴드 마일드 125ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '코스알엑스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '코스알엑스 에이씨컬렉션 카밍 리퀴드 마일드 125ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(22000, 'ORIGINAL', (SELECT id FROM product WHERE name = '코스알엑스 에이씨컬렉션 카밍 리퀴드 마일드 125ml'), NOW(), NOW()),
(22000, 'SALE', (SELECT id FROM product WHERE name = '코스알엑스 에이씨컬렉션 카밍 리퀴드 마일드 125ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015152401ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '코스알엑스 에이씨컬렉션 카밍 리퀴드 마일드 125ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '코스알엑스 에이씨컬렉션 카밍 리퀴드 마일드 125ml';


-- ================================

-- 상품: 생블랑쉬 퓨어토너 300ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('생블랑쉬 퓨어토너 300ml',
 '생블랑쉬 퓨어토너 300ml',
 4.4,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '생블랑쉬'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '생블랑쉬 퓨어토너 300ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '생블랑쉬 퓨어토너 300ml'), NOW(), NOW()),
(32000, 'SALE', (SELECT id FROM product WHERE name = '생블랑쉬 퓨어토너 300ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015189001ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '생블랑쉬 퓨어토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015189002ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '생블랑쉬 퓨어토너 300ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '생블랑쉬 퓨어토너 300ml';


-- ================================

-- 상품: 원씽 인진쑥 추출물 토너 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('원씽 인진쑥 추출물 토너 150ml',
 '원씽 인진쑥 추출물 토너 150ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '원씽'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '원씽 인진쑥 추출물 토너 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(9900, 'ORIGINAL', (SELECT id FROM product WHERE name = '원씽 인진쑥 추출물 토너 150ml'), NOW(), NOW()),
(9900, 'SALE', (SELECT id FROM product WHERE name = '원씽 인진쑥 추출물 토너 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015453804ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '원씽 인진쑥 추출물 토너 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015453803ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '원씽 인진쑥 추출물 토너 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '원씽 인진쑥 추출물 토너 150ml';


-- ================================

-- 상품: [권아름 PICK] 헤이네이처 어성초 스킨 토너 모이스처라이저 150ml (촉촉)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[권아름 PICK] 헤이네이처 어성초 스킨 토너 모이스처라이저 150ml (촉촉)',
 '[권아름 PICK] 헤이네이처 어성초 스킨 토너 모이스처라이저 150ml (촉촉)',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '헤이네이처'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[권아름 PICK] 헤이네이처 어성초 스킨 토너 모이스처라이저 150ml (촉촉)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[권아름 PICK] 헤이네이처 어성초 스킨 토너 모이스처라이저 150ml (촉촉)'), NOW(), NOW()),
(18800, 'SALE', (SELECT id FROM product WHERE name = '[권아름 PICK] 헤이네이처 어성초 스킨 토너 모이스처라이저 150ml (촉촉)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015614814ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[권아름 PICK] 헤이네이처 어성초 스킨 토너 모이스처라이저 150ml (촉촉)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015614815ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[권아름 PICK] 헤이네이처 어성초 스킨 토너 모이스처라이저 150ml (촉촉)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015614812ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[권아름 PICK] 헤이네이처 어성초 스킨 토너 모이스처라이저 150ml (촉촉)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[권아름 PICK] 헤이네이처 어성초 스킨 토너 모이스처라이저 150ml (촉촉)';


-- ================================

-- 상품: [화해1위 3관왕] 에스네이처 아쿠아 오아시스 토너 300ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[화해1위 3관왕] 에스네이처 아쿠아 오아시스 토너 300ml',
 '[화해1위 3관왕] 에스네이처 아쿠아 오아시스 토너 300ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에스네이처'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[화해1위 3관왕] 에스네이처 아쿠아 오아시스 토너 300ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[화해1위 3관왕] 에스네이처 아쿠아 오아시스 토너 300ml'), NOW(), NOW()),
(24000, 'SALE', (SELECT id FROM product WHERE name = '[화해1위 3관왕] 에스네이처 아쿠아 오아시스 토너 300ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015836970ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[화해1위 3관왕] 에스네이처 아쿠아 오아시스 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015836971ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[화해1위 3관왕] 에스네이처 아쿠아 오아시스 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015836972ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[화해1위 3관왕] 에스네이처 아쿠아 오아시스 토너 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015836973ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[화해1위 3관왕] 에스네이처 아쿠아 오아시스 토너 300ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[화해1위 3관왕] 에스네이처 아쿠아 오아시스 토너 300ml';


-- ================================

-- 상품: 마몽드 레티놀 앰플 토너 250ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('마몽드 레티놀 앰플 토너 250ml',
 '마몽드 레티놀 앰플 토너 250ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '마몽드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '마몽드 레티놀 앰플 토너 250ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '마몽드 레티놀 앰플 토너 250ml'), NOW(), NOW()),
(25000, 'SALE', (SELECT id FROM product WHERE name = '마몽드 레티놀 앰플 토너 250ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015929110ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '마몽드 레티놀 앰플 토너 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015929118ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '마몽드 레티놀 앰플 토너 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015929116ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '마몽드 레티놀 앰플 토너 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015929113ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '마몽드 레티놀 앰플 토너 250ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '마몽드 레티놀 앰플 토너 250ml';


-- ================================

-- 상품: 닥터브로너스 로즈 발란싱 스킨 소프트너 240ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('닥터브로너스 로즈 발란싱 스킨 소프트너 240ml',
 '닥터브로너스 로즈 발란싱 스킨 소프트너 240ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터브로너스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '닥터브로너스 로즈 발란싱 스킨 소프트너 240ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '닥터브로너스 로즈 발란싱 스킨 소프트너 240ml'), NOW(), NOW()),
(23000, 'SALE', (SELECT id FROM product WHERE name = '닥터브로너스 로즈 발란싱 스킨 소프트너 240ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015946601ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '닥터브로너스 로즈 발란싱 스킨 소프트너 240ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '닥터브로너스 로즈 발란싱 스킨 소프트너 240ml';


-- ================================

-- 상품: [1ST 보습광채] 달바 퍼스트 아로마틱 토너 155ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[1ST 보습광채] 달바 퍼스트 아로마틱 토너 155ml',
 '[1ST 보습광채] 달바 퍼스트 아로마틱 토너 155ml',
 4.7,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '달바'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[1ST 보습광채] 달바 퍼스트 아로마틱 토너 155ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1ST 보습광채] 달바 퍼스트 아로마틱 토너 155ml'), NOW(), NOW()),
(20300, 'SALE', (SELECT id FROM product WHERE name = '[1ST 보습광채] 달바 퍼스트 아로마틱 토너 155ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016341722ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[1ST 보습광채] 달바 퍼스트 아로마틱 토너 155ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016341721ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[1ST 보습광채] 달바 퍼스트 아로마틱 토너 155ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016341723ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[1ST 보습광채] 달바 퍼스트 아로마틱 토너 155ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[1ST 보습광채] 달바 퍼스트 아로마틱 토너 155ml';


-- ================================

-- 상품: 글로오아시스 프로바이오틱스 플러스 애프리콧 오일 밀크듀 밸런싱 토너 120ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('글로오아시스 프로바이오틱스 플러스 애프리콧 오일 밀크듀 밸런싱 토너 120ml',
 '글로오아시스 프로바이오틱스 플러스 애프리콧 오일 밀크듀 밸런싱 토너 120ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '글로오아시스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '글로오아시스 프로바이오틱스 플러스 애프리콧 오일 밀크듀 밸런싱 토너 120ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39000, 'ORIGINAL', (SELECT id FROM product WHERE name = '글로오아시스 프로바이오틱스 플러스 애프리콧 오일 밀크듀 밸런싱 토너 120ml'), NOW(), NOW()),
(25600, 'SALE', (SELECT id FROM product WHERE name = '글로오아시스 프로바이오틱스 플러스 애프리콧 오일 밀크듀 밸런싱 토너 120ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017399407ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '글로오아시스 프로바이오틱스 플러스 애프리콧 오일 밀크듀 밸런싱 토너 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017399406ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '글로오아시스 프로바이오틱스 플러스 애프리콧 오일 밀크듀 밸런싱 토너 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017399405ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '글로오아시스 프로바이오틱스 플러스 애프리콧 오일 밀크듀 밸런싱 토너 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017399404ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '글로오아시스 프로바이오틱스 플러스 애프리콧 오일 밀크듀 밸런싱 토너 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017399403ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '글로오아시스 프로바이오틱스 플러스 애프리콧 오일 밀크듀 밸런싱 토너 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017399402ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '글로오아시스 프로바이오틱스 플러스 애프리콧 오일 밀크듀 밸런싱 토너 120ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '글로오아시스 프로바이오틱스 플러스 애프리콧 오일 밀크듀 밸런싱 토너 120ml';


-- ================================

-- 상품: 바이오더마 하이드라비오 토너 500ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('바이오더마 하이드라비오 토너 500ml',
 '바이오더마 하이드라비오 토너 500ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오더마'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 토너 500ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 토너 500ml'), NOW(), NOW()),
(38000, 'SALE', (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 토너 500ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017437014ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 토너 500ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017437010ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 토너 500ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017437013ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 토너 500ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '바이오더마 하이드라비오 토너 500ml';


-- ================================

-- 상품: 비마이셀프 C2 워터플럼핑 토너 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('비마이셀프 C2 워터플럼핑 토너 200ml',
 '비마이셀프 C2 워터플럼핑 토너 200ml',
 4.4,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비마이셀프'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '비마이셀프 C2 워터플럼핑 토너 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23900, 'ORIGINAL', (SELECT id FROM product WHERE name = '비마이셀프 C2 워터플럼핑 토너 200ml'), NOW(), NOW()),
(23900, 'SALE', (SELECT id FROM product WHERE name = '비마이셀프 C2 워터플럼핑 토너 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017899002ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '비마이셀프 C2 워터플럼핑 토너 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017899003ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '비마이셀프 C2 워터플럼핑 토너 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '비마이셀프 C2 워터플럼핑 토너 200ml';


-- ================================

-- 상품: [쿨링진정] 아비브 어성초 카밍 토너 스킨부스터 500ml 기획 (+화장솜 30매 증정)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[쿨링진정] 아비브 어성초 카밍 토너 스킨부스터 500ml 기획 (+화장솜 30매 증정)',
 '[쿨링진정] 아비브 어성초 카밍 토너 스킨부스터 500ml 기획 (+화장솜 30매 증정)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아비브'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[쿨링진정] 아비브 어성초 카밍 토너 스킨부스터 500ml 기획 (+화장솜 30매 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(45000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[쿨링진정] 아비브 어성초 카밍 토너 스킨부스터 500ml 기획 (+화장솜 30매 증정)'), NOW(), NOW()),
(29250, 'SALE', (SELECT id FROM product WHERE name = '[쿨링진정] 아비브 어성초 카밍 토너 스킨부스터 500ml 기획 (+화장솜 30매 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018047510ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[쿨링진정] 아비브 어성초 카밍 토너 스킨부스터 500ml 기획 (+화장솜 30매 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[쿨링진정] 아비브 어성초 카밍 토너 스킨부스터 500ml 기획 (+화장솜 30매 증정)';


-- ================================

-- 상품: 리얼베리어 모공비움 필링 토너 305ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('리얼베리어 모공비움 필링 토너 305ml',
 '리얼베리어 모공비움 필링 토너 305ml',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '리얼베리어'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '리얼베리어 모공비움 필링 토너 305ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(22000, 'ORIGINAL', (SELECT id FROM product WHERE name = '리얼베리어 모공비움 필링 토너 305ml'), NOW(), NOW()),
(15400, 'SALE', (SELECT id FROM product WHERE name = '리얼베리어 모공비움 필링 토너 305ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018131207ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '리얼베리어 모공비움 필링 토너 305ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018131208ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '리얼베리어 모공비움 필링 토너 305ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '리얼베리어 모공비움 필링 토너 305ml';


-- ================================

-- 상품: 톤28 플러스마이너스 pH 균형제 (토너)250ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('톤28 플러스마이너스 pH 균형제 (토너)250ml',
 '톤28 플러스마이너스 pH 균형제 (토너)250ml',
 4.9,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '톤28'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '톤28 플러스마이너스 pH 균형제 (토너)250ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28700, 'ORIGINAL', (SELECT id FROM product WHERE name = '톤28 플러스마이너스 pH 균형제 (토너)250ml'), NOW(), NOW()),
(19900, 'SALE', (SELECT id FROM product WHERE name = '톤28 플러스마이너스 pH 균형제 (토너)250ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018684603ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '톤28 플러스마이너스 pH 균형제 (토너)250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018684601ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '톤28 플러스마이너스 pH 균형제 (토너)250ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '톤28 플러스마이너스 pH 균형제 (토너)250ml';


-- ================================

-- 상품: [쿨링진정] 아비브 어성초 카밍 토너 스킨부스터 250ml 기획(+250ml 리필증정)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[쿨링진정] 아비브 어성초 카밍 토너 스킨부스터 250ml 기획(+250ml 리필증정)',
 '[쿨링진정] 아비브 어성초 카밍 토너 스킨부스터 250ml 기획(+250ml 리필증정)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아비브'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[쿨링진정] 아비브 어성초 카밍 토너 스킨부스터 250ml 기획(+250ml 리필증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(41000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[쿨링진정] 아비브 어성초 카밍 토너 스킨부스터 250ml 기획(+250ml 리필증정)'), NOW(), NOW()),
(28700, 'SALE', (SELECT id FROM product WHERE name = '[쿨링진정] 아비브 어성초 카밍 토너 스킨부스터 250ml 기획(+250ml 리필증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018808603ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[쿨링진정] 아비브 어성초 카밍 토너 스킨부스터 250ml 기획(+250ml 리필증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018808608ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[쿨링진정] 아비브 어성초 카밍 토너 스킨부스터 250ml 기획(+250ml 리필증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[쿨링진정] 아비브 어성초 카밍 토너 스킨부스터 250ml 기획(+250ml 리필증정)';


-- ================================
