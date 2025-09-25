-- 상품: [올영맨즈1등템]아이디얼포맨 퍼펙트 올인원 150ml 기획(+100ml증정/+클렌징폼증정)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[올영맨즈1등템]아이디얼포맨 퍼펙트 올인원 150ml 기획(+100ml증정/+클렌징폼증정)',
 '[올영맨즈1등템]아이디얼포맨 퍼펙트 올인원 150ml 기획(+100ml증정/+클렌징폼증정)',
 4.8,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이디얼포맨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('+100ml 증정기획', 18300, (SELECT id FROM product WHERE name = '[올영맨즈1등템]아이디얼포맨 퍼펙트 올인원 150ml 기획(+100ml증정/+클렌징폼증정)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('클렌징폼(150ml) 증정기획', 18300, (SELECT id FROM product WHERE name = '[올영맨즈1등템]아이디얼포맨 퍼펙트 올인원 150ml 기획(+100ml증정/+클렌징폼증정)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('+본품/바디워시/클렌징폼 30ml 증정기', 24800, (SELECT id FROM product WHERE name = '[올영맨즈1등템]아이디얼포맨 퍼펙트 올인원 150ml 기획(+100ml증정/+클렌징폼증정)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('+30ml 증정기획', 18300, (SELECT id FROM product WHERE name = '[올영맨즈1등템]아이디얼포맨 퍼펙트 올인원 150ml 기획(+100ml증정/+클렌징폼증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[올영맨즈1등템]아이디얼포맨 퍼펙트 올인원 150ml 기획(+100ml증정/+클렌징폼증정)'), NOW(), NOW()),
(18300, 'SALE', (SELECT id FROM product WHERE name = '[올영맨즈1등템]아이디얼포맨 퍼펙트 올인원 150ml 기획(+100ml증정/+클렌징폼증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022822824ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[올영맨즈1등템]아이디얼포맨 퍼펙트 올인원 150ml 기획(+100ml증정/+클렌징폼증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022822820ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[올영맨즈1등템]아이디얼포맨 퍼펙트 올인원 150ml 기획(+100ml증정/+클렌징폼증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022822804ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[올영맨즈1등템]아이디얼포맨 퍼펙트 올인원 150ml 기획(+100ml증정/+클렌징폼증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022822822ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[올영맨즈1등템]아이디얼포맨 퍼펙트 올인원 150ml 기획(+100ml증정/+클렌징폼증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022822823ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[올영맨즈1등템]아이디얼포맨 퍼펙트 올인원 150ml 기획(+100ml증정/+클렌징폼증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022822821ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[올영맨즈1등템]아이디얼포맨 퍼펙트 올인원 150ml 기획(+100ml증정/+클렌징폼증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[올영맨즈1등템]아이디얼포맨 퍼펙트 올인원 150ml 기획(+100ml증정/+클렌징폼증정)';


-- ================================

-- 상품: [9년 연속 1위] 아이오페 맨 올데이 퍼펙트 올인원 120ml 기획 (+30ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9년 연속 1위] 아이오페 맨 올데이 퍼펙트 올인원 120ml 기획 (+30ml)',
 '[9년 연속 1위] 아이오페 맨 올데이 퍼펙트 올인원 120ml 기획 (+30ml)',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이오페'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9년 연속 1위] 아이오페 맨 올데이 퍼펙트 올인원 120ml 기획 (+30ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9년 연속 1위] 아이오페 맨 올데이 퍼펙트 올인원 120ml 기획 (+30ml)'), NOW(), NOW()),
(23940, 'SALE', (SELECT id FROM product WHERE name = '[9년 연속 1위] 아이오페 맨 올데이 퍼펙트 올인원 120ml 기획 (+30ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018469726ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[9년 연속 1위] 아이오페 맨 올데이 퍼펙트 올인원 120ml 기획 (+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018469721ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[9년 연속 1위] 아이오페 맨 올데이 퍼펙트 올인원 120ml 기획 (+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018469720ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9년 연속 1위] 아이오페 맨 올데이 퍼펙트 올인원 120ml 기획 (+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018469718ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[9년 연속 1위] 아이오페 맨 올데이 퍼펙트 올인원 120ml 기획 (+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018469710ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[9년 연속 1위] 아이오페 맨 올데이 퍼펙트 올인원 120ml 기획 (+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018469709ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[9년 연속 1위] 아이오페 맨 올데이 퍼펙트 올인원 120ml 기획 (+30ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[9년 연속 1위] 아이오페 맨 올데이 퍼펙트 올인원 120ml 기획 (+30ml)';


-- ================================

-- 상품: [추석기프트특가]우르오스 올인원 스킨밀크 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[추석기프트특가]우르오스 올인원 스킨밀크 200ml',
 '[추석기프트특가]우르오스 올인원 스킨밀크 200ml',
 4.8,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '우르오스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 올인원 스킨밀크 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29700, 'ORIGINAL', (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 올인원 스킨밀크 200ml'), NOW(), NOW()),
(22900, 'SALE', (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 올인원 스킨밀크 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0000/A00000000656515ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 올인원 스킨밀크 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0000/A00000000656517ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 올인원 스킨밀크 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0000/A00000000656516ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 올인원 스킨밀크 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[추석기프트특가]우르오스 올인원 스킨밀크 200ml';


-- ================================

-- 상품: [개기름/지성] 닥터지 레드 블레미쉬 포 맨 올인원 오일컷 로션 150ml 3종 (단품/증...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[개기름/지성] 닥터지 레드 블레미쉬 포 맨 올인원 오일컷 로션 150ml 3종 (단품/증정 기획)',
 '[개기름/지성] 닥터지 레드 블레미쉬 포 맨 올인원 오일컷 로션 150ml 3종 (단품/증정 기획)',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터지'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[개기름/지성] 닥터지 레드 블레미쉬 포 맨 올인원 오일컷 로션 150ml 3종 (단품/증정 기획)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[개기름/지성] 닥터지 레드 블레미쉬 포 맨 올인원 오일컷 로션 150ml 3종 (단품/증정 기획)'), NOW(), NOW()),
(19200, 'SALE', (SELECT id FROM product WHERE name = '[개기름/지성] 닥터지 레드 블레미쉬 포 맨 올인원 오일컷 로션 150ml 3종 (단품/증정 기획)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018227705ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[개기름/지성] 닥터지 레드 블레미쉬 포 맨 올인원 오일컷 로션 150ml 3종 (단품/증정 기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018227706ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[개기름/지성] 닥터지 레드 블레미쉬 포 맨 올인원 오일컷 로션 150ml 3종 (단품/증정 기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018227707ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[개기름/지성] 닥터지 레드 블레미쉬 포 맨 올인원 오일컷 로션 150ml 3종 (단품/증정 기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018227710ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[개기름/지성] 닥터지 레드 블레미쉬 포 맨 올인원 오일컷 로션 150ml 3종 (단품/증정 기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018227709ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[개기름/지성] 닥터지 레드 블레미쉬 포 맨 올인원 오일컷 로션 150ml 3종 (단품/증정 기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018227708ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[개기름/지성] 닥터지 레드 블레미쉬 포 맨 올인원 오일컷 로션 150ml 3종 (단품/증정 기획)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[개기름/지성] 닥터지 레드 블레미쉬 포 맨 올인원 오일컷 로션 150ml 3종 (단품/증정 기획)';


-- ================================

-- 상품: [추석기프트특가]우르오스 올인원 스킨로션 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[추석기프트특가]우르오스 올인원 스킨로션 200ml',
 '[추석기프트특가]우르오스 올인원 스킨로션 200ml',
 4.8,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '우르오스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 올인원 스킨로션 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29700, 'ORIGINAL', (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 올인원 스킨로션 200ml'), NOW(), NOW()),
(22900, 'SALE', (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 올인원 스킨로션 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0000/A00000000656415ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 올인원 스킨로션 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0000/A00000000656417ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 올인원 스킨로션 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0000/A00000000656416ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 올인원 스킨로션 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[추석기프트특가]우르오스 올인원 스킨로션 200ml';


-- ================================

-- 상품: [김혜성PICK/자외선차단] 아이디얼포맨 선 올인원 140ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[김혜성PICK/자외선차단] 아이디얼포맨 선 올인원 140ml',
 '[김혜성PICK/자외선차단] 아이디얼포맨 선 올인원 140ml',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이디얼포맨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[김혜성PICK/자외선차단] 아이디얼포맨 선 올인원 140ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[김혜성PICK/자외선차단] 아이디얼포맨 선 올인원 140ml'), NOW(), NOW()),
(13800, 'SALE', (SELECT id FROM product WHERE name = '[김혜성PICK/자외선차단] 아이디얼포맨 선 올인원 140ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022277218ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[김혜성PICK/자외선차단] 아이디얼포맨 선 올인원 140ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022277215ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[김혜성PICK/자외선차단] 아이디얼포맨 선 올인원 140ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022277217ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[김혜성PICK/자외선차단] 아이디얼포맨 선 올인원 140ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022277209ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[김혜성PICK/자외선차단] 아이디얼포맨 선 올인원 140ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022277205ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[김혜성PICK/자외선차단] 아이디얼포맨 선 올인원 140ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022277206ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[김혜성PICK/자외선차단] 아이디얼포맨 선 올인원 140ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[김혜성PICK/자외선차단] 아이디얼포맨 선 올인원 140ml';


-- ================================

-- 상품: [1+1/단독기획] 토리든 다이브인 포맨 저분자 히알루론산 올인원 200g 더블 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[1+1/단독기획] 토리든 다이브인 포맨 저분자 히알루론산 올인원 200g 더블 기획',
 '[1+1/단독기획] 토리든 다이브인 포맨 저분자 히알루론산 올인원 200g 더블 기획',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '토리든'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[1+1/단독기획] 토리든 다이브인 포맨 저분자 히알루론산 올인원 200g 더블 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1+1/단독기획] 토리든 다이브인 포맨 저분자 히알루론산 올인원 200g 더블 기획'), NOW(), NOW()),
(28410, 'SALE', (SELECT id FROM product WHERE name = '[1+1/단독기획] 토리든 다이브인 포맨 저분자 히알루론산 올인원 200g 더블 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023052206ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[1+1/단독기획] 토리든 다이브인 포맨 저분자 히알루론산 올인원 200g 더블 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023052204ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[1+1/단독기획] 토리든 다이브인 포맨 저분자 히알루론산 올인원 200g 더블 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023052203ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[1+1/단독기획] 토리든 다이브인 포맨 저분자 히알루론산 올인원 200g 더블 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023052202ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[1+1/단독기획] 토리든 다이브인 포맨 저분자 히알루론산 올인원 200g 더블 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[1+1/단독기획] 토리든 다이브인 포맨 저분자 히알루론산 올인원 200g 더블 기획';


-- ================================

-- 상품: [문장군 공동개발] 미닉 퍼펙트 콜라드 그린 진정 올인원 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[문장군 공동개발] 미닉 퍼펙트 콜라드 그린 진정 올인원 200ml',
 '[문장군 공동개발] 미닉 퍼펙트 콜라드 그린 진정 올인원 200ml',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '미닉'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[문장군 공동개발] 미닉 퍼펙트 콜라드 그린 진정 올인원 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[문장군 공동개발] 미닉 퍼펙트 콜라드 그린 진정 올인원 200ml'), NOW(), NOW()),
(19900, 'SALE', (SELECT id FROM product WHERE name = '[문장군 공동개발] 미닉 퍼펙트 콜라드 그린 진정 올인원 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022367301ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[문장군 공동개발] 미닉 퍼펙트 콜라드 그린 진정 올인원 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022367302ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[문장군 공동개발] 미닉 퍼펙트 콜라드 그린 진정 올인원 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[문장군 공동개발] 미닉 퍼펙트 콜라드 그린 진정 올인원 200ml';


-- ================================

-- 상품: [민감피부/저자극] 라운드랩 포 맨 1025 독도 올인원 플루이드 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[민감피부/저자극] 라운드랩 포 맨 1025 독도 올인원 플루이드 200ml',
 '[민감피부/저자극] 라운드랩 포 맨 1025 독도 올인원 플루이드 200ml',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라운드랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[민감피부/저자극] 라운드랩 포 맨 1025 독도 올인원 플루이드 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[민감피부/저자극] 라운드랩 포 맨 1025 독도 올인원 플루이드 200ml'), NOW(), NOW()),
(17010, 'SALE', (SELECT id FROM product WHERE name = '[민감피부/저자극] 라운드랩 포 맨 1025 독도 올인원 플루이드 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018323001ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[민감피부/저자극] 라운드랩 포 맨 1025 독도 올인원 플루이드 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018323004ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[민감피부/저자극] 라운드랩 포 맨 1025 독도 올인원 플루이드 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018323005ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[민감피부/저자극] 라운드랩 포 맨 1025 독도 올인원 플루이드 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[민감피부/저자극] 라운드랩 포 맨 1025 독도 올인원 플루이드 200ml';


-- ================================

-- 상품: [리뉴얼/트러블/면도후] 닥터지 레드 블레미쉬 포 맨 진정 올인원 150ml 2종 (단품/...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[리뉴얼/트러블/면도후] 닥터지 레드 블레미쉬 포 맨 진정 올인원 150ml 2종 (단품/증정 기획)',
 '[리뉴얼/트러블/면도후] 닥터지 레드 블레미쉬 포 맨 진정 올인원 150ml 2종 (단품/증정 기획)',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터지'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[리뉴얼/트러블/면도후] 닥터지 레드 블레미쉬 포 맨 진정 올인원 150ml 2종 (단품/증정 기획)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[리뉴얼/트러블/면도후] 닥터지 레드 블레미쉬 포 맨 진정 올인원 150ml 2종 (단품/증정 기획)'), NOW(), NOW()),
(22100, 'SALE', (SELECT id FROM product WHERE name = '[리뉴얼/트러블/면도후] 닥터지 레드 블레미쉬 포 맨 진정 올인원 150ml 2종 (단품/증정 기획)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022378112ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[리뉴얼/트러블/면도후] 닥터지 레드 블레미쉬 포 맨 진정 올인원 150ml 2종 (단품/증정 기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022378106ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[리뉴얼/트러블/면도후] 닥터지 레드 블레미쉬 포 맨 진정 올인원 150ml 2종 (단품/증정 기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022378107ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[리뉴얼/트러블/면도후] 닥터지 레드 블레미쉬 포 맨 진정 올인원 150ml 2종 (단품/증정 기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022378111ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[리뉴얼/트러블/면도후] 닥터지 레드 블레미쉬 포 맨 진정 올인원 150ml 2종 (단품/증정 기획)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[리뉴얼/트러블/면도후] 닥터지 레드 블레미쉬 포 맨 진정 올인원 150ml 2종 (단품/증정 기획)';


-- ================================

-- 상품: 비오템 옴므 아쿠아파워 올인원 세트 (클렌저 40ml+올인원 20ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('비오템 옴므 아쿠아파워 올인원 세트 (클렌저 40ml+올인원 20ml)',
 '비오템 옴므 아쿠아파워 올인원 세트 (클렌저 40ml+올인원 20ml)',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비오템'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기획(+클렌저40ml, 올인원20ml)', 44800, (SELECT id FROM product WHERE name = '비오템 옴므 아쿠아파워 올인원 세트 (클렌저 40ml+올인원 20ml)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('올인원 200ml 단품', 44800, (SELECT id FROM product WHERE name = '비오템 옴므 아쿠아파워 올인원 세트 (클렌저 40ml+올인원 20ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(56000, 'ORIGINAL', (SELECT id FROM product WHERE name = '비오템 옴므 아쿠아파워 올인원 세트 (클렌저 40ml+올인원 20ml)'), NOW(), NOW()),
(44800, 'SALE', (SELECT id FROM product WHERE name = '비오템 옴므 아쿠아파워 올인원 세트 (클렌저 40ml+올인원 20ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013748823ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '비오템 옴므 아쿠아파워 올인원 세트 (클렌저 40ml+올인원 20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013748820ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '비오템 옴므 아쿠아파워 올인원 세트 (클렌저 40ml+올인원 20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013748818ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '비오템 옴므 아쿠아파워 올인원 세트 (클렌저 40ml+올인원 20ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '비오템 옴므 아쿠아파워 올인원 세트 (클렌저 40ml+올인원 20ml)';


-- ================================

-- 상품: [김혜성PICK/개기름박멸]아이디얼포맨 프레시 올인원 150ml 1+1 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[김혜성PICK/개기름박멸]아이디얼포맨 프레시 올인원 150ml 1+1 기획',
 '[김혜성PICK/개기름박멸]아이디얼포맨 프레시 올인원 150ml 1+1 기획',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이디얼포맨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[김혜성PICK/개기름박멸]아이디얼포맨 프레시 올인원 150ml 1+1 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[김혜성PICK/개기름박멸]아이디얼포맨 프레시 올인원 150ml 1+1 기획'), NOW(), NOW()),
(18800, 'SALE', (SELECT id FROM product WHERE name = '[김혜성PICK/개기름박멸]아이디얼포맨 프레시 올인원 150ml 1+1 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022594320ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[김혜성PICK/개기름박멸]아이디얼포맨 프레시 올인원 150ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022594314ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[김혜성PICK/개기름박멸]아이디얼포맨 프레시 올인원 150ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022594303ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[김혜성PICK/개기름박멸]아이디얼포맨 프레시 올인원 150ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022594318ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[김혜성PICK/개기름박멸]아이디얼포맨 프레시 올인원 150ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022594302ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[김혜성PICK/개기름박멸]아이디얼포맨 프레시 올인원 150ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022594304ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[김혜성PICK/개기름박멸]아이디얼포맨 프레시 올인원 150ml 1+1 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[김혜성PICK/개기름박멸]아이디얼포맨 프레시 올인원 150ml 1+1 기획';


-- ================================

-- 상품: [지성피부/유분케어] 라운드랩 포 맨 1025 독도 올인원 젤 로션 200ml+200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[지성피부/유분케어] 라운드랩 포 맨 1025 독도 올인원 젤 로션 200ml+200ml',
 '[지성피부/유분케어] 라운드랩 포 맨 1025 독도 올인원 젤 로션 200ml+200ml',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라운드랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[지성피부/유분케어] 라운드랩 포 맨 1025 독도 올인원 젤 로션 200ml+200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(43000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[지성피부/유분케어] 라운드랩 포 맨 1025 독도 올인원 젤 로션 200ml+200ml'), NOW(), NOW()),
(31350, 'SALE', (SELECT id FROM product WHERE name = '[지성피부/유분케어] 라운드랩 포 맨 1025 독도 올인원 젤 로션 200ml+200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019773904ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[지성피부/유분케어] 라운드랩 포 맨 1025 독도 올인원 젤 로션 200ml+200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019773905ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[지성피부/유분케어] 라운드랩 포 맨 1025 독도 올인원 젤 로션 200ml+200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019773902ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[지성피부/유분케어] 라운드랩 포 맨 1025 독도 올인원 젤 로션 200ml+200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[지성피부/유분케어] 라운드랩 포 맨 1025 독도 올인원 젤 로션 200ml+200ml';


-- ================================

-- 상품: 아이오페 맨 프로 레티놀 올인원 120ml 기획 (+30ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아이오페 맨 프로 레티놀 올인원 120ml 기획 (+30ml)',
 '아이오페 맨 프로 레티놀 올인원 120ml 기획 (+30ml)',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이오페'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아이오페 맨 프로 레티놀 올인원 120ml 기획 (+30ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아이오페 맨 프로 레티놀 올인원 120ml 기획 (+30ml)'), NOW(), NOW()),
(23940, 'SALE', (SELECT id FROM product WHERE name = '아이오페 맨 프로 레티놀 올인원 120ml 기획 (+30ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019927012ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아이오페 맨 프로 레티놀 올인원 120ml 기획 (+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019927011ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아이오페 맨 프로 레티놀 올인원 120ml 기획 (+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019927008ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아이오페 맨 프로 레티놀 올인원 120ml 기획 (+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019927007ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '아이오페 맨 프로 레티놀 올인원 120ml 기획 (+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019927006ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '아이오페 맨 프로 레티놀 올인원 120ml 기획 (+30ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아이오페 맨 프로 레티놀 올인원 120ml 기획 (+30ml)';


-- ================================

-- 상품: 아이오페 맨 올데이 퍼펙트 톤업 올인원 120ml 기획(+30ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아이오페 맨 올데이 퍼펙트 톤업 올인원 120ml 기획(+30ml)',
 '아이오페 맨 올데이 퍼펙트 톤업 올인원 120ml 기획(+30ml)',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이오페'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아이오페 맨 올데이 퍼펙트 톤업 올인원 120ml 기획(+30ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아이오페 맨 올데이 퍼펙트 톤업 올인원 120ml 기획(+30ml)'), NOW(), NOW()),
(20810, 'SALE', (SELECT id FROM product WHERE name = '아이오페 맨 올데이 퍼펙트 톤업 올인원 120ml 기획(+30ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020600809ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아이오페 맨 올데이 퍼펙트 톤업 올인원 120ml 기획(+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020600811ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아이오페 맨 올데이 퍼펙트 톤업 올인원 120ml 기획(+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020600808ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아이오페 맨 올데이 퍼펙트 톤업 올인원 120ml 기획(+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020600806ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '아이오페 맨 올데이 퍼펙트 톤업 올인원 120ml 기획(+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020600805ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '아이오페 맨 올데이 퍼펙트 톤업 올인원 120ml 기획(+30ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아이오페 맨 올데이 퍼펙트 톤업 올인원 120ml 기획(+30ml)';


-- ================================

-- 상품: 오브제 포어 제로 프레쉬 올인원 150ml 단품/기획 2종 택1...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('오브제 포어 제로 프레쉬 올인원 150ml 단품/기획 2종 택1',
 '오브제 포어 제로 프레쉬 올인원 150ml 단품/기획 2종 택1',
 5.0,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '오브제'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '오브제 포어 제로 프레쉬 올인원 150ml 단품/기획 2종 택1'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '오브제 포어 제로 프레쉬 올인원 150ml 단품/기획 2종 택1'), NOW(), NOW()),
(20500, 'SALE', (SELECT id FROM product WHERE name = '오브제 포어 제로 프레쉬 올인원 150ml 단품/기획 2종 택1'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023053703ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '오브제 포어 제로 프레쉬 올인원 150ml 단품/기획 2종 택1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023053704ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '오브제 포어 제로 프레쉬 올인원 150ml 단품/기획 2종 택1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023053701ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '오브제 포어 제로 프레쉬 올인원 150ml 단품/기획 2종 택1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023053702ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '오브제 포어 제로 프레쉬 올인원 150ml 단품/기획 2종 택1'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '오브제 포어 제로 프레쉬 올인원 150ml 단품/기획 2종 택1';


-- ================================

-- 상품: 플리프 시카-알로에 카밍 올인원 로션 (200ml+50ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('플리프 시카-알로에 카밍 올인원 로션 (200ml+50ml)',
 '플리프 시카-알로에 카밍 올인원 로션 (200ml+50ml)',
 4.8,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '플리프'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '플리프 시카-알로에 카밍 올인원 로션 (200ml+50ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '플리프 시카-알로에 카밍 올인원 로션 (200ml+50ml)'), NOW(), NOW()),
(18800, 'SALE', (SELECT id FROM product WHERE name = '플리프 시카-알로에 카밍 올인원 로션 (200ml+50ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014584013ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '플리프 시카-알로에 카밍 올인원 로션 (200ml+50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014584014ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '플리프 시카-알로에 카밍 올인원 로션 (200ml+50ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '플리프 시카-알로에 카밍 올인원 로션 (200ml+50ml)';


-- ================================

-- 상품: [판테놀/속보습]아이디얼포맨 퍼펙트 보습 올인원 (단품/증정기획)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[판테놀/속보습]아이디얼포맨 퍼펙트 보습 올인원 (단품/증정기획)',
 '[판테놀/속보습]아이디얼포맨 퍼펙트 보습 올인원 (단품/증정기획)',
 4.8,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이디얼포맨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[판테놀/속보습]아이디얼포맨 퍼펙트 보습 올인원 (단품/증정기획)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[판테놀/속보습]아이디얼포맨 퍼펙트 보습 올인원 (단품/증정기획)'), NOW(), NOW()),
(18300, 'SALE', (SELECT id FROM product WHERE name = '[판테놀/속보습]아이디얼포맨 퍼펙트 보습 올인원 (단품/증정기획)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021071914ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[판테놀/속보습]아이디얼포맨 퍼펙트 보습 올인원 (단품/증정기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021071913ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[판테놀/속보습]아이디얼포맨 퍼펙트 보습 올인원 (단품/증정기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021071908ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[판테놀/속보습]아이디얼포맨 퍼펙트 보습 올인원 (단품/증정기획)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[판테놀/속보습]아이디얼포맨 퍼펙트 보습 올인원 (단품/증정기획)';


-- ================================

-- 상품: [티벳동생PICK] 토리든 밸런스풀 포맨 시카 프레쉬 올인원 200g 기획/단품(+올인원 ...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[티벳동생PICK] 토리든 밸런스풀 포맨 시카 프레쉬 올인원 200g 기획/단품(+올인원 20g)',
 '[티벳동생PICK] 토리든 밸런스풀 포맨 시카 프레쉬 올인원 200g 기획/단품(+올인원 20g)',
 4.8,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '토리든'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('밸런스풀 올인원 (+올인원20g)', 18240, (SELECT id FROM product WHERE name = '[티벳동생PICK] 토리든 밸런스풀 포맨 시카 프레쉬 올인원 200g 기획/단품(+올인원 20g)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('밸런스풀 올인원', 18240, (SELECT id FROM product WHERE name = '[티벳동생PICK] 토리든 밸런스풀 포맨 시카 프레쉬 올인원 200g 기획/단품(+올인원 20g)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[티벳동생PICK] 토리든 밸런스풀 포맨 시카 프레쉬 올인원 200g 기획/단품(+올인원 20g)'), NOW(), NOW()),
(18240, 'SALE', (SELECT id FROM product WHERE name = '[티벳동생PICK] 토리든 밸런스풀 포맨 시카 프레쉬 올인원 200g 기획/단품(+올인원 20g)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022895215ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[티벳동생PICK] 토리든 밸런스풀 포맨 시카 프레쉬 올인원 200g 기획/단품(+올인원 20g)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022895214ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[티벳동생PICK] 토리든 밸런스풀 포맨 시카 프레쉬 올인원 200g 기획/단품(+올인원 20g)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022895206ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[티벳동생PICK] 토리든 밸런스풀 포맨 시카 프레쉬 올인원 200g 기획/단품(+올인원 20g)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022895205ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[티벳동생PICK] 토리든 밸런스풀 포맨 시카 프레쉬 올인원 200g 기획/단품(+올인원 20g)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022895204ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[티벳동생PICK] 토리든 밸런스풀 포맨 시카 프레쉬 올인원 200g 기획/단품(+올인원 20g)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[티벳동생PICK] 토리든 밸런스풀 포맨 시카 프레쉬 올인원 200g 기획/단품(+올인원 20g)';


-- ================================

-- 상품: 비욘드 엔젤아쿠아 포맨 올인원 에센스 더블기획 (200mlX2입)(비건)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('비욘드 엔젤아쿠아 포맨 올인원 에센스 더블기획 (200mlX2입)(비건)',
 '비욘드 엔젤아쿠아 포맨 올인원 에센스 더블기획 (200mlX2입)(비건)',
 4.8,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비욘드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 포맨 올인원 에센스 더블기획 (200mlX2입)(비건)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 포맨 올인원 에센스 더블기획 (200mlX2입)(비건)'), NOW(), NOW()),
(17500, 'SALE', (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 포맨 올인원 에센스 더블기획 (200mlX2입)(비건)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020088607ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 포맨 올인원 에센스 더블기획 (200mlX2입)(비건)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020088608ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 포맨 올인원 에센스 더블기획 (200mlX2입)(비건)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020088606ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 포맨 올인원 에센스 더블기획 (200mlX2입)(비건)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020088605ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 포맨 올인원 에센스 더블기획 (200mlX2입)(비건)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020088604ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 포맨 올인원 에센스 더블기획 (200mlX2입)(비건)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '비욘드 엔젤아쿠아 포맨 올인원 에센스 더블기획 (200mlX2입)(비건)';


-- ================================

-- 상품: [맨즈꿀템특가/유분케어] 라운드랩 포 맨 1025 독도 올인원 젤로션 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[맨즈꿀템특가/유분케어] 라운드랩 포 맨 1025 독도 올인원 젤로션 200ml',
 '[맨즈꿀템특가/유분케어] 라운드랩 포 맨 1025 독도 올인원 젤로션 200ml',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라운드랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[맨즈꿀템특가/유분케어] 라운드랩 포 맨 1025 독도 올인원 젤로션 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[맨즈꿀템특가/유분케어] 라운드랩 포 맨 1025 독도 올인원 젤로션 200ml'), NOW(), NOW()),
(17000, 'SALE', (SELECT id FROM product WHERE name = '[맨즈꿀템특가/유분케어] 라운드랩 포 맨 1025 독도 올인원 젤로션 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019772206ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[맨즈꿀템특가/유분케어] 라운드랩 포 맨 1025 독도 올인원 젤로션 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019772204ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[맨즈꿀템특가/유분케어] 라운드랩 포 맨 1025 독도 올인원 젤로션 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019772205ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[맨즈꿀템특가/유분케어] 라운드랩 포 맨 1025 독도 올인원 젤로션 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019772202ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[맨즈꿀템특가/유분케어] 라운드랩 포 맨 1025 독도 올인원 젤로션 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[맨즈꿀템특가/유분케어] 라운드랩 포 맨 1025 독도 올인원 젤로션 200ml';


-- ================================

-- 상품: 엠도씨 화이트닝 스킨 플러스 로션 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('엠도씨 화이트닝 스킨 플러스 로션 150ml',
 '엠도씨 화이트닝 스킨 플러스 로션 150ml',
 4.7,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '엠도씨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '엠도씨 화이트닝 스킨 플러스 로션 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '엠도씨 화이트닝 스킨 플러스 로션 150ml'), NOW(), NOW()),
(23000, 'SALE', (SELECT id FROM product WHERE name = '엠도씨 화이트닝 스킨 플러스 로션 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001108605ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '엠도씨 화이트닝 스킨 플러스 로션 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001108604ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '엠도씨 화이트닝 스킨 플러스 로션 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001108601ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '엠도씨 화이트닝 스킨 플러스 로션 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '엠도씨 화이트닝 스킨 플러스 로션 150ml';


-- ================================

-- 상품: [추석기프트특가]우르오스 올인원 스킨컨디셔너 60g...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[추석기프트특가]우르오스 올인원 스킨컨디셔너 60g',
 '[추석기프트특가]우르오스 올인원 스킨컨디셔너 60g',
 4.8,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '우르오스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 올인원 스킨컨디셔너 60g'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 올인원 스킨컨디셔너 60g'), NOW(), NOW()),
(19600, 'SALE', (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 올인원 스킨컨디셔너 60g'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001597114ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 올인원 스킨컨디셔너 60g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001597116ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 올인원 스킨컨디셔너 60g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001597115ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 올인원 스킨컨디셔너 60g'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[추석기프트특가]우르오스 올인원 스킨컨디셔너 60g';


-- ================================

-- 상품: [추석기프트특가]우르오스 올인원 200ml 2종 택 1...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[추석기프트특가]우르오스 올인원 200ml 2종 택 1',
 '[추석기프트특가]우르오스 올인원 200ml 2종 택 1',
 4.8,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '우르오스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 올인원 200ml 2종 택 1'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29700, 'ORIGINAL', (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 올인원 200ml 2종 택 1'), NOW(), NOW()),
(22900, 'SALE', (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 올인원 200ml 2종 택 1'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011754136ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 올인원 200ml 2종 택 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011754140ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 올인원 200ml 2종 택 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011754139ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 올인원 200ml 2종 택 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011754138ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 올인원 200ml 2종 택 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011754137ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[추석기프트특가]우르오스 올인원 200ml 2종 택 1'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[추석기프트특가]우르오스 올인원 200ml 2종 택 1';


-- ================================

-- 상품: 다슈 맨즈 아쿠아 리얼 모이스트 올인원크림 153ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('다슈 맨즈 아쿠아 리얼 모이스트 올인원크림 153ml',
 '다슈 맨즈 아쿠아 리얼 모이스트 올인원크림 153ml',
 4.8,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '다슈'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '다슈 맨즈 아쿠아 리얼 모이스트 올인원크림 153ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(18000, 'ORIGINAL', (SELECT id FROM product WHERE name = '다슈 맨즈 아쿠아 리얼 모이스트 올인원크림 153ml'), NOW(), NOW()),
(11720, 'SALE', (SELECT id FROM product WHERE name = '다슈 맨즈 아쿠아 리얼 모이스트 올인원크림 153ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012221201ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '다슈 맨즈 아쿠아 리얼 모이스트 올인원크림 153ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '다슈 맨즈 아쿠아 리얼 모이스트 올인원크림 153ml';


-- ================================

-- 상품: [피지&모공케어]눅스 맨 올인원 모이스춰라이징 젤 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[피지&모공케어]눅스 맨 올인원 모이스춰라이징 젤 50ml',
 '[피지&모공케어]눅스 맨 올인원 모이스춰라이징 젤 50ml',
 5.0,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '눅스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[피지&모공케어]눅스 맨 올인원 모이스춰라이징 젤 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[피지&모공케어]눅스 맨 올인원 모이스춰라이징 젤 50ml'), NOW(), NOW()),
(35100, 'SALE', (SELECT id FROM product WHERE name = '[피지&모공케어]눅스 맨 올인원 모이스춰라이징 젤 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012584104ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[피지&모공케어]눅스 맨 올인원 모이스춰라이징 젤 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012584105ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[피지&모공케어]눅스 맨 올인원 모이스춰라이징 젤 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[피지&모공케어]눅스 맨 올인원 모이스춰라이징 젤 50ml';


-- ================================

-- 상품: 아크네스 포맨 퍼펙트 올인원 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아크네스 포맨 퍼펙트 올인원 200ml',
 '아크네스 포맨 퍼펙트 올인원 200ml',
 4.7,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아크네스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아크네스 포맨 퍼펙트 올인원 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(27000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아크네스 포맨 퍼펙트 올인원 200ml'), NOW(), NOW()),
(16200, 'SALE', (SELECT id FROM product WHERE name = '아크네스 포맨 퍼펙트 올인원 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013738615ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아크네스 포맨 퍼펙트 올인원 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013738612ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아크네스 포맨 퍼펙트 올인원 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아크네스 포맨 퍼펙트 올인원 200ml';


-- ================================

-- 상품: 바르테라 올인원 젤 모이스춰라이저...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('바르테라 올인원 젤 모이스춰라이저',
 '바르테라 올인원 젤 모이스춰라이저',
 5.0,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바르테라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '바르테라 올인원 젤 모이스춰라이저'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바르테라 올인원 젤 모이스춰라이저'), NOW(), NOW()),
(32000, 'SALE', (SELECT id FROM product WHERE name = '바르테라 올인원 젤 모이스춰라이저'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013747002ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바르테라 올인원 젤 모이스춰라이저'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '바르테라 올인원 젤 모이스춰라이저';


-- ================================

-- 상품: 라끄베르 옴므 리차지 시카 올인원 에센스 150ml 기획 (+30ml 증정)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('라끄베르 옴므 리차지 시카 올인원 에센스 150ml 기획 (+30ml 증정)',
 '라끄베르 옴므 리차지 시카 올인원 에센스 150ml 기획 (+30ml 증정)',
 4.7,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라끄베르'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 시카 올인원 에센스 150ml 기획 (+30ml 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29000, 'ORIGINAL', (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 시카 올인원 에센스 150ml 기획 (+30ml 증정)'), NOW(), NOW()),
(19900, 'SALE', (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 시카 올인원 에센스 150ml 기획 (+30ml 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014461803ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 시카 올인원 에센스 150ml 기획 (+30ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014461802ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 시카 올인원 에센스 150ml 기획 (+30ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014461801ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 시카 올인원 에센스 150ml 기획 (+30ml 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '라끄베르 옴므 리차지 시카 올인원 에센스 150ml 기획 (+30ml 증정)';


-- ================================

-- 상품: 싸이닉 파워 옴므 플루이드 더블 기획 (150ml+150ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('싸이닉 파워 옴므 플루이드 더블 기획 (150ml+150ml)',
 '싸이닉 파워 옴므 플루이드 더블 기획 (150ml+150ml)',
 4.8,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '싸이닉'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '싸이닉 파워 옴므 플루이드 더블 기획 (150ml+150ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(19800, 'ORIGINAL', (SELECT id FROM product WHERE name = '싸이닉 파워 옴므 플루이드 더블 기획 (150ml+150ml)'), NOW(), NOW()),
(19800, 'SALE', (SELECT id FROM product WHERE name = '싸이닉 파워 옴므 플루이드 더블 기획 (150ml+150ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014680804ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '싸이닉 파워 옴므 플루이드 더블 기획 (150ml+150ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014680806ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '싸이닉 파워 옴므 플루이드 더블 기획 (150ml+150ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014680805ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '싸이닉 파워 옴므 플루이드 더블 기획 (150ml+150ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '싸이닉 파워 옴므 플루이드 더블 기획 (150ml+150ml)';


-- ================================

-- 상품: 싸이닉 아쿠아 옴므 올인원 플루이드 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('싸이닉 아쿠아 옴므 올인원 플루이드 100ml',
 '싸이닉 아쿠아 옴므 올인원 플루이드 100ml',
 4.6,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '싸이닉'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '싸이닉 아쿠아 옴므 올인원 플루이드 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(15000, 'ORIGINAL', (SELECT id FROM product WHERE name = '싸이닉 아쿠아 옴므 올인원 플루이드 100ml'), NOW(), NOW()),
(11200, 'SALE', (SELECT id FROM product WHERE name = '싸이닉 아쿠아 옴므 올인원 플루이드 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014689403ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '싸이닉 아쿠아 옴므 올인원 플루이드 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014689402ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '싸이닉 아쿠아 옴므 올인원 플루이드 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '싸이닉 아쿠아 옴므 올인원 플루이드 100ml';


-- ================================

-- 상품: 싸이닉 아쿠아 옴므 올인원 모이스처라이저 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('싸이닉 아쿠아 옴므 올인원 모이스처라이저 100ml',
 '싸이닉 아쿠아 옴므 올인원 모이스처라이저 100ml',
 4.7,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '싸이닉'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '싸이닉 아쿠아 옴므 올인원 모이스처라이저 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(15000, 'ORIGINAL', (SELECT id FROM product WHERE name = '싸이닉 아쿠아 옴므 올인원 모이스처라이저 100ml'), NOW(), NOW()),
(11200, 'SALE', (SELECT id FROM product WHERE name = '싸이닉 아쿠아 옴므 올인원 모이스처라이저 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014689602ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '싸이닉 아쿠아 옴므 올인원 모이스처라이저 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '싸이닉 아쿠아 옴므 올인원 모이스처라이저 100ml';


-- ================================

-- 상품: 미프 시카맥스 올인원 기획 (본품 200ml+리필 150ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('미프 시카맥스 올인원 기획 (본품 200ml+리필 150ml)',
 '미프 시카맥스 올인원 기획 (본품 200ml+리필 150ml)',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '미프'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '미프 시카맥스 올인원 기획 (본품 200ml+리필 150ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '미프 시카맥스 올인원 기획 (본품 200ml+리필 150ml)'), NOW(), NOW()),
(38000, 'SALE', (SELECT id FROM product WHERE name = '미프 시카맥스 올인원 기획 (본품 200ml+리필 150ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014757709ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '미프 시카맥스 올인원 기획 (본품 200ml+리필 150ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014757708ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '미프 시카맥스 올인원 기획 (본품 200ml+리필 150ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014757707ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '미프 시카맥스 올인원 기획 (본품 200ml+리필 150ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014757706ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '미프 시카맥스 올인원 기획 (본품 200ml+리필 150ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '미프 시카맥스 올인원 기획 (본품 200ml+리필 150ml)';


-- ================================

-- 상품: [단독기획] AHC 온리포맨 올인원 에센스 더블 기획 (120ml+120ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[단독기획] AHC 온리포맨 올인원 에센스 더블 기획 (120ml+120ml)',
 '[단독기획] AHC 온리포맨 올인원 에센스 더블 기획 (120ml+120ml)',
 4.8,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'AHC'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[단독기획] AHC 온리포맨 올인원 에센스 더블 기획 (120ml+120ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독기획] AHC 온리포맨 올인원 에센스 더블 기획 (120ml+120ml)'), NOW(), NOW()),
(38000, 'SALE', (SELECT id FROM product WHERE name = '[단독기획] AHC 온리포맨 올인원 에센스 더블 기획 (120ml+120ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014921116ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[단독기획] AHC 온리포맨 올인원 에센스 더블 기획 (120ml+120ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014921121ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[단독기획] AHC 온리포맨 올인원 에센스 더블 기획 (120ml+120ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014921120ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[단독기획] AHC 온리포맨 올인원 에센스 더블 기획 (120ml+120ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014921119ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[단독기획] AHC 온리포맨 올인원 에센스 더블 기획 (120ml+120ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014921118ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[단독기획] AHC 온리포맨 올인원 에센스 더블 기획 (120ml+120ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014921117ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[단독기획] AHC 온리포맨 올인원 에센스 더블 기획 (120ml+120ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[단독기획] AHC 온리포맨 올인원 에센스 더블 기획 (120ml+120ml)';


-- ================================

-- 상품: [단독기획]  AHC 온리포맨 포어 프레쉬 올인원에센스 더블 기획 (120ml+120ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[단독기획]  AHC 온리포맨 포어 프레쉬 올인원에센스 더블 기획 (120ml+120ml)',
 '[단독기획]  AHC 온리포맨 포어 프레쉬 올인원에센스 더블 기획 (120ml+120ml)',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'AHC'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[단독기획]  AHC 온리포맨 포어 프레쉬 올인원에센스 더블 기획 (120ml+120ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독기획]  AHC 온리포맨 포어 프레쉬 올인원에센스 더블 기획 (120ml+120ml)'), NOW(), NOW()),
(23470, 'SALE', (SELECT id FROM product WHERE name = '[단독기획]  AHC 온리포맨 포어 프레쉬 올인원에센스 더블 기획 (120ml+120ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014921413ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[단독기획]  AHC 온리포맨 포어 프레쉬 올인원에센스 더블 기획 (120ml+120ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014921414ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[단독기획]  AHC 온리포맨 포어 프레쉬 올인원에센스 더블 기획 (120ml+120ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014921415ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[단독기획]  AHC 온리포맨 포어 프레쉬 올인원에센스 더블 기획 (120ml+120ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014921416ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[단독기획]  AHC 온리포맨 포어 프레쉬 올인원에센스 더블 기획 (120ml+120ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014921417ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[단독기획]  AHC 온리포맨 포어 프레쉬 올인원에센스 더블 기획 (120ml+120ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014921418ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[단독기획]  AHC 온리포맨 포어 프레쉬 올인원에센스 더블 기획 (120ml+120ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[단독기획]  AHC 온리포맨 포어 프레쉬 올인원에센스 더블 기획 (120ml+120ml)';


-- ================================

-- 상품: [기획] 아크네스 포맨 퍼펙트 올인원 기획 (본품200ml+폼클렌저150g 증정)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[기획] 아크네스 포맨 퍼펙트 올인원 기획 (본품200ml+폼클렌저150g 증정)',
 '[기획] 아크네스 포맨 퍼펙트 올인원 기획 (본품200ml+폼클렌저150g 증정)',
 4.8,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아크네스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[기획] 아크네스 포맨 퍼펙트 올인원 기획 (본품200ml+폼클렌저150g 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(27000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[기획] 아크네스 포맨 퍼펙트 올인원 기획 (본품200ml+폼클렌저150g 증정)'), NOW(), NOW()),
(27000, 'SALE', (SELECT id FROM product WHERE name = '[기획] 아크네스 포맨 퍼펙트 올인원 기획 (본품200ml+폼클렌저150g 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015021408ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[기획] 아크네스 포맨 퍼펙트 올인원 기획 (본품200ml+폼클렌저150g 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015021410ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[기획] 아크네스 포맨 퍼펙트 올인원 기획 (본품200ml+폼클렌저150g 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[기획] 아크네스 포맨 퍼펙트 올인원 기획 (본품200ml+폼클렌저150g 증정)';


-- ================================

-- 상품: 엠도씨 시카 화이트닝 올인원 스페셜 세트 130ml+30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('엠도씨 시카 화이트닝 올인원 스페셜 세트 130ml+30ml',
 '엠도씨 시카 화이트닝 올인원 스페셜 세트 130ml+30ml',
 4.8,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '엠도씨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '엠도씨 시카 화이트닝 올인원 스페셜 세트 130ml+30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '엠도씨 시카 화이트닝 올인원 스페셜 세트 130ml+30ml'), NOW(), NOW()),
(28500, 'SALE', (SELECT id FROM product WHERE name = '엠도씨 시카 화이트닝 올인원 스페셜 세트 130ml+30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015200404ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '엠도씨 시카 화이트닝 올인원 스페셜 세트 130ml+30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015200406ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '엠도씨 시카 화이트닝 올인원 스페셜 세트 130ml+30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015200405ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '엠도씨 시카 화이트닝 올인원 스페셜 세트 130ml+30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '엠도씨 시카 화이트닝 올인원 스페셜 세트 130ml+30ml';


-- ================================

-- 상품: BRTC 파워 옴므 올인원 솔루션 더블 기획(200mlX2)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('BRTC 파워 옴므 올인원 솔루션 더블 기획(200mlX2)',
 'BRTC 파워 옴므 올인원 솔루션 더블 기획(200mlX2)',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비알티씨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = 'BRTC 파워 옴므 올인원 솔루션 더블 기획(200mlX2)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(50400, 'ORIGINAL', (SELECT id FROM product WHERE name = 'BRTC 파워 옴므 올인원 솔루션 더블 기획(200mlX2)'), NOW(), NOW()),
(46080, 'SALE', (SELECT id FROM product WHERE name = 'BRTC 파워 옴므 올인원 솔루션 더블 기획(200mlX2)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015419905ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = 'BRTC 파워 옴므 올인원 솔루션 더블 기획(200mlX2)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015419909ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = 'BRTC 파워 옴므 올인원 솔루션 더블 기획(200mlX2)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = 'BRTC 파워 옴므 올인원 솔루션 더블 기획(200mlX2)';


-- ================================

-- 상품: 포맨트 시그니처 올인원 에센스 96ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('포맨트 시그니처 올인원 에센스 96ml',
 '포맨트 시그니처 올인원 에센스 96ml',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '포맨트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '포맨트 시그니처 올인원 에센스 96ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28900, 'ORIGINAL', (SELECT id FROM product WHERE name = '포맨트 시그니처 올인원 에센스 96ml'), NOW(), NOW()),
(23100, 'SALE', (SELECT id FROM product WHERE name = '포맨트 시그니처 올인원 에센스 96ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015599406ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '포맨트 시그니처 올인원 에센스 96ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015599405ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '포맨트 시그니처 올인원 에센스 96ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015599404ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '포맨트 시그니처 올인원 에센스 96ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '포맨트 시그니처 올인원 에센스 96ml';


-- ================================

-- 상품: 포맨트 시그니처 올인원 에센스 모이스처 플러스 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('포맨트 시그니처 올인원 에센스 모이스처 플러스 150ml',
 '포맨트 시그니처 올인원 에센스 모이스처 플러스 150ml',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '포맨트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '포맨트 시그니처 올인원 에센스 모이스처 플러스 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29000, 'ORIGINAL', (SELECT id FROM product WHERE name = '포맨트 시그니처 올인원 에센스 모이스처 플러스 150ml'), NOW(), NOW()),
(29000, 'SALE', (SELECT id FROM product WHERE name = '포맨트 시그니처 올인원 에센스 모이스처 플러스 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015599507ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '포맨트 시그니처 올인원 에센스 모이스처 플러스 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015599504ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '포맨트 시그니처 올인원 에센스 모이스처 플러스 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015599503ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '포맨트 시그니처 올인원 에센스 모이스처 플러스 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015599502ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '포맨트 시그니처 올인원 에센스 모이스처 플러스 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '포맨트 시그니처 올인원 에센스 모이스처 플러스 150ml';


-- ================================

-- 상품: 랩시리즈 올-인-원 훼이스 트리트먼트 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('랩시리즈 올-인-원 훼이스 트리트먼트 50ml',
 '랩시리즈 올-인-원 훼이스 트리트먼트 50ml',
 4.6,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '랩시리즈'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '랩시리즈 올-인-원 훼이스 트리트먼트 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(49000, 'ORIGINAL', (SELECT id FROM product WHERE name = '랩시리즈 올-인-원 훼이스 트리트먼트 50ml'), NOW(), NOW()),
(41650, 'SALE', (SELECT id FROM product WHERE name = '랩시리즈 올-인-원 훼이스 트리트먼트 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015811328ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '랩시리즈 올-인-원 훼이스 트리트먼트 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '랩시리즈 올-인-원 훼이스 트리트먼트 50ml';


-- ================================

-- 상품: 무슈제이 밀크 톤업 올인원 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('무슈제이 밀크 톤업 올인원 200ml',
 '무슈제이 밀크 톤업 올인원 200ml',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '무슈제이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '무슈제이 밀크 톤업 올인원 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24900, 'ORIGINAL', (SELECT id FROM product WHERE name = '무슈제이 밀크 톤업 올인원 200ml'), NOW(), NOW()),
(21900, 'SALE', (SELECT id FROM product WHERE name = '무슈제이 밀크 톤업 올인원 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016165430ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '무슈제이 밀크 톤업 올인원 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016165426ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '무슈제이 밀크 톤업 올인원 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016165427ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '무슈제이 밀크 톤업 올인원 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016165428ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '무슈제이 밀크 톤업 올인원 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016165431ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '무슈제이 밀크 톤업 올인원 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016165425ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '무슈제이 밀크 톤업 올인원 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '무슈제이 밀크 톤업 올인원 200ml';


-- ================================

-- 상품: [단독기획]우르오스 중건성 페이셜케어 기획세트(스킨밀크200ml+페이스워시100g)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[단독기획]우르오스 중건성 페이셜케어 기획세트(스킨밀크200ml+페이스워시100g)',
 '[단독기획]우르오스 중건성 페이셜케어 기획세트(스킨밀크200ml+페이스워시100g)',
 4.8,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '우르오스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('우르오스 페이셜 기획세트(중건성)', 29900, (SELECT id FROM product WHERE name = '[단독기획]우르오스 중건성 페이셜케어 기획세트(스킨밀크200ml+페이스워시100g)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(42900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독기획]우르오스 중건성 페이셜케어 기획세트(스킨밀크200ml+페이스워시100g)'), NOW(), NOW()),
(29900, 'SALE', (SELECT id FROM product WHERE name = '[단독기획]우르오스 중건성 페이셜케어 기획세트(스킨밀크200ml+페이스워시100g)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016177612ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[단독기획]우르오스 중건성 페이셜케어 기획세트(스킨밀크200ml+페이스워시100g)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016177615ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[단독기획]우르오스 중건성 페이셜케어 기획세트(스킨밀크200ml+페이스워시100g)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016177614ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[단독기획]우르오스 중건성 페이셜케어 기획세트(스킨밀크200ml+페이스워시100g)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016177613ko.png?l=ko', 4, (SELECT id FROM product WHERE name = '[단독기획]우르오스 중건성 페이셜케어 기획세트(스킨밀크200ml+페이스워시100g)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[단독기획]우르오스 중건성 페이셜케어 기획세트(스킨밀크200ml+페이스워시100g)';


-- ================================

-- 상품: [단독특가]우르오스 지복합성 페이셜케어 기획세트(스킨로션200ml+페이스워시100g)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[단독특가]우르오스 지복합성 페이셜케어 기획세트(스킨로션200ml+페이스워시100g)',
 '[단독특가]우르오스 지복합성 페이셜케어 기획세트(스킨로션200ml+페이스워시100g)',
 4.8,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '우르오스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('우르오스 페이셜 기획세트(지복합성)', 29900, (SELECT id FROM product WHERE name = '[단독특가]우르오스 지복합성 페이셜케어 기획세트(스킨로션200ml+페이스워시100g)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(42900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독특가]우르오스 지복합성 페이셜케어 기획세트(스킨로션200ml+페이스워시100g)'), NOW(), NOW()),
(29900, 'SALE', (SELECT id FROM product WHERE name = '[단독특가]우르오스 지복합성 페이셜케어 기획세트(스킨로션200ml+페이스워시100g)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016177713ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[단독특가]우르오스 지복합성 페이셜케어 기획세트(스킨로션200ml+페이스워시100g)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016177716ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[단독특가]우르오스 지복합성 페이셜케어 기획세트(스킨로션200ml+페이스워시100g)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016177715ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[단독특가]우르오스 지복합성 페이셜케어 기획세트(스킨로션200ml+페이스워시100g)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016177714ko.png?l=ko', 4, (SELECT id FROM product WHERE name = '[단독특가]우르오스 지복합성 페이셜케어 기획세트(스킨로션200ml+페이스워시100g)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[단독특가]우르오스 지복합성 페이셜케어 기획세트(스킨로션200ml+페이스워시100g)';


-- ================================

-- 상품: [단독특가]우르오스 페이셜케어 기획세트 중건성&지복합성 4종 택1...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[단독특가]우르오스 페이셜케어 기획세트 중건성&지복합성 4종 택1',
 '[단독특가]우르오스 페이셜케어 기획세트 중건성&지복합성 4종 택1',
 4.8,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '우르오스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('중건성 페이셜케어 기획세트', 29900, (SELECT id FROM product WHERE name = '[단독특가]우르오스 페이셜케어 기획세트 중건성&지복합성 4종 택1'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('지복합성 페이셜케어 기획세트', 29900, (SELECT id FROM product WHERE name = '[단독특가]우르오스 페이셜케어 기획세트 중건성&지복합성 4종 택1'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(42900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독특가]우르오스 페이셜케어 기획세트 중건성&지복합성 4종 택1'), NOW(), NOW()),
(29900, 'SALE', (SELECT id FROM product WHERE name = '[단독특가]우르오스 페이셜케어 기획세트 중건성&지복합성 4종 택1'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016177816ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[단독특가]우르오스 페이셜케어 기획세트 중건성&지복합성 4종 택1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016177817ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[단독특가]우르오스 페이셜케어 기획세트 중건성&지복합성 4종 택1'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[단독특가]우르오스 페이셜케어 기획세트 중건성&지복합성 4종 택1';


-- ================================

-- 상품: 라끄베르 옴므 리차지 올인원 에센스 150ml 기획 (+30ml 증정)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('라끄베르 옴므 리차지 올인원 에센스 150ml 기획 (+30ml 증정)',
 '라끄베르 옴므 리차지 올인원 에센스 150ml 기획 (+30ml 증정)',
 4.7,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라끄베르'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 올인원 에센스 150ml 기획 (+30ml 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29000, 'ORIGINAL', (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 올인원 에센스 150ml 기획 (+30ml 증정)'), NOW(), NOW()),
(29000, 'SALE', (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 올인원 에센스 150ml 기획 (+30ml 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016555103ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 올인원 에센스 150ml 기획 (+30ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016555102ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 올인원 에센스 150ml 기획 (+30ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016555101ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 올인원 에센스 150ml 기획 (+30ml 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '라끄베르 옴므 리차지 올인원 에센스 150ml 기획 (+30ml 증정)';


-- ================================

-- 상품: 아크네스 포맨 퍼펙트 올인원 크림 200ML...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아크네스 포맨 퍼펙트 올인원 크림 200ML',
 '아크네스 포맨 퍼펙트 올인원 크림 200ML',
 4.8,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아크네스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아크네스 포맨 퍼펙트 올인원 크림 200ML'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아크네스 포맨 퍼펙트 올인원 크림 200ML'), NOW(), NOW()),
(16800, 'SALE', (SELECT id FROM product WHERE name = '아크네스 포맨 퍼펙트 올인원 크림 200ML'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016682205ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아크네스 포맨 퍼펙트 올인원 크림 200ML'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016682207ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아크네스 포맨 퍼펙트 올인원 크림 200ML'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016682206ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아크네스 포맨 퍼펙트 올인원 크림 200ML'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아크네스 포맨 퍼펙트 올인원 크림 200ML';


-- ================================

-- 상품: 헤라 옴므 올인원 스킨 하이드로 트리트먼트 150ML...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('헤라 옴므 올인원 스킨 하이드로 트리트먼트 150ML',
 '헤라 옴므 올인원 스킨 하이드로 트리트먼트 150ML',
 4.8,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '헤라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '헤라 옴므 올인원 스킨 하이드로 트리트먼트 150ML'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(48000, 'ORIGINAL', (SELECT id FROM product WHERE name = '헤라 옴므 올인원 스킨 하이드로 트리트먼트 150ML'), NOW(), NOW()),
(40800, 'SALE', (SELECT id FROM product WHERE name = '헤라 옴므 올인원 스킨 하이드로 트리트먼트 150ML'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016741105ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '헤라 옴므 올인원 스킨 하이드로 트리트먼트 150ML'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016741104ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '헤라 옴므 올인원 스킨 하이드로 트리트먼트 150ML'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016741106ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '헤라 옴므 올인원 스킨 하이드로 트리트먼트 150ML'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016741114ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '헤라 옴므 올인원 스킨 하이드로 트리트먼트 150ML'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '헤라 옴므 올인원 스킨 하이드로 트리트먼트 150ML';


-- ================================

-- 상품: 라네즈옴므 크림스킨 옴므 올인원 150ml 기획 (+25+25ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('라네즈옴므 크림스킨 옴므 올인원 150ml 기획 (+25+25ml)',
 '라네즈옴므 크림스킨 옴므 올인원 150ml 기획 (+25+25ml)',
 4.7,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라네즈'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '라네즈옴므 크림스킨 옴므 올인원 150ml 기획 (+25+25ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '라네즈옴므 크림스킨 옴므 올인원 150ml 기획 (+25+25ml)'), NOW(), NOW()),
(28000, 'SALE', (SELECT id FROM product WHERE name = '라네즈옴므 크림스킨 옴므 올인원 150ml 기획 (+25+25ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017003418ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '라네즈옴므 크림스킨 옴므 올인원 150ml 기획 (+25+25ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017003419ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '라네즈옴므 크림스킨 옴므 올인원 150ml 기획 (+25+25ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '라네즈옴므 크림스킨 옴므 올인원 150ml 기획 (+25+25ml)';


-- ================================

-- 상품: 미프 비타맥스 올인원 로션 리필 세트 기획 (본품 200ml+리필 150ml*2ea)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('미프 비타맥스 올인원 로션 리필 세트 기획 (본품 200ml+리필 150ml*2ea)',
 '미프 비타맥스 올인원 로션 리필 세트 기획 (본품 200ml+리필 150ml*2ea)',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '미프'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '미프 비타맥스 올인원 로션 리필 세트 기획 (본품 200ml+리필 150ml*2ea)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(34900, 'ORIGINAL', (SELECT id FROM product WHERE name = '미프 비타맥스 올인원 로션 리필 세트 기획 (본품 200ml+리필 150ml*2ea)'), NOW(), NOW()),
(32900, 'SALE', (SELECT id FROM product WHERE name = '미프 비타맥스 올인원 로션 리필 세트 기획 (본품 200ml+리필 150ml*2ea)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017367225ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '미프 비타맥스 올인원 로션 리필 세트 기획 (본품 200ml+리필 150ml*2ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017367229ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '미프 비타맥스 올인원 로션 리필 세트 기획 (본품 200ml+리필 150ml*2ea)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017367228ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '미프 비타맥스 올인원 로션 리필 세트 기획 (본품 200ml+리필 150ml*2ea)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '미프 비타맥스 올인원 로션 리필 세트 기획 (본품 200ml+리필 150ml*2ea)';


-- ================================

-- 상품: [저속노화] 포엘리에 옴므 5 IN 1 미백 주름 기능성 올인원 남자 로션 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[저속노화] 포엘리에 옴므 5 IN 1 미백 주름 기능성 올인원 남자 로션 150ml',
 '[저속노화] 포엘리에 옴므 5 IN 1 미백 주름 기능성 올인원 남자 로션 150ml',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '포엘리에'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[저속노화] 포엘리에 옴므 5 IN 1 미백 주름 기능성 올인원 남자 로션 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(22000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[저속노화] 포엘리에 옴므 5 IN 1 미백 주름 기능성 올인원 남자 로션 150ml'), NOW(), NOW()),
(16900, 'SALE', (SELECT id FROM product WHERE name = '[저속노화] 포엘리에 옴므 5 IN 1 미백 주름 기능성 올인원 남자 로션 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017438411ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[저속노화] 포엘리에 옴므 5 IN 1 미백 주름 기능성 올인원 남자 로션 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017438403ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[저속노화] 포엘리에 옴므 5 IN 1 미백 주름 기능성 올인원 남자 로션 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017438404ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[저속노화] 포엘리에 옴므 5 IN 1 미백 주름 기능성 올인원 남자 로션 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[저속노화] 포엘리에 옴므 5 IN 1 미백 주름 기능성 올인원 남자 로션 150ml';


-- ================================

-- 상품: 랩시리즈 올-인-원 훼이스 트리트먼트 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('랩시리즈 올-인-원 훼이스 트리트먼트 100ml',
 '랩시리즈 올-인-원 훼이스 트리트먼트 100ml',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '랩시리즈'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '랩시리즈 올-인-원 훼이스 트리트먼트 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(78000, 'ORIGINAL', (SELECT id FROM product WHERE name = '랩시리즈 올-인-원 훼이스 트리트먼트 100ml'), NOW(), NOW()),
(66300, 'SALE', (SELECT id FROM product WHERE name = '랩시리즈 올-인-원 훼이스 트리트먼트 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017452009ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '랩시리즈 올-인-원 훼이스 트리트먼트 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '랩시리즈 올-인-원 훼이스 트리트먼트 100ml';


-- ================================

-- 상품: BRTC 파워 옴므 올인원 솔루션 200ml 기획(+50ml 증정)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('BRTC 파워 옴므 올인원 솔루션 200ml 기획(+50ml 증정)',
 'BRTC 파워 옴므 올인원 솔루션 200ml 기획(+50ml 증정)',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비알티씨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = 'BRTC 파워 옴므 올인원 솔루션 200ml 기획(+50ml 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = 'BRTC 파워 옴므 올인원 솔루션 200ml 기획(+50ml 증정)'), NOW(), NOW()),
(25600, 'SALE', (SELECT id FROM product WHERE name = 'BRTC 파워 옴므 올인원 솔루션 200ml 기획(+50ml 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017596407ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = 'BRTC 파워 옴므 올인원 솔루션 200ml 기획(+50ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017596404ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = 'BRTC 파워 옴므 올인원 솔루션 200ml 기획(+50ml 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = 'BRTC 파워 옴므 올인원 솔루션 200ml 기획(+50ml 증정)';


-- ================================

-- 상품: 무슈제이 베이직 아쿠아 보습 올인원 1+1 기획(200ml+200ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('무슈제이 베이직 아쿠아 보습 올인원 1+1 기획(200ml+200ml)',
 '무슈제이 베이직 아쿠아 보습 올인원 1+1 기획(200ml+200ml)',
 4.8,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '무슈제이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '무슈제이 베이직 아쿠아 보습 올인원 1+1 기획(200ml+200ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24900, 'ORIGINAL', (SELECT id FROM product WHERE name = '무슈제이 베이직 아쿠아 보습 올인원 1+1 기획(200ml+200ml)'), NOW(), NOW()),
(23900, 'SALE', (SELECT id FROM product WHERE name = '무슈제이 베이직 아쿠아 보습 올인원 1+1 기획(200ml+200ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017689928ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '무슈제이 베이직 아쿠아 보습 올인원 1+1 기획(200ml+200ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017689923ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '무슈제이 베이직 아쿠아 보습 올인원 1+1 기획(200ml+200ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017689924ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '무슈제이 베이직 아쿠아 보습 올인원 1+1 기획(200ml+200ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017689925ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '무슈제이 베이직 아쿠아 보습 올인원 1+1 기획(200ml+200ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017689927ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '무슈제이 베이직 아쿠아 보습 올인원 1+1 기획(200ml+200ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '무슈제이 베이직 아쿠아 보습 올인원 1+1 기획(200ml+200ml)';


-- ================================

-- 상품: 닥터지 레드 블레미쉬 포 맨 올인원 플루이드 150ml+75ml 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('닥터지 레드 블레미쉬 포 맨 올인원 플루이드 150ml+75ml 기획',
 '닥터지 레드 블레미쉬 포 맨 올인원 플루이드 150ml+75ml 기획',
 4.8,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터지'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('150ml 기획(+75ml)', 32000, (SELECT id FROM product WHERE name = '닥터지 레드 블레미쉬 포 맨 올인원 플루이드 150ml+75ml 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '닥터지 레드 블레미쉬 포 맨 올인원 플루이드 150ml+75ml 기획'), NOW(), NOW()),
(32000, 'SALE', (SELECT id FROM product WHERE name = '닥터지 레드 블레미쉬 포 맨 올인원 플루이드 150ml+75ml 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017965514ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '닥터지 레드 블레미쉬 포 맨 올인원 플루이드 150ml+75ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017965515ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '닥터지 레드 블레미쉬 포 맨 올인원 플루이드 150ml+75ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017965517ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '닥터지 레드 블레미쉬 포 맨 올인원 플루이드 150ml+75ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017965518ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '닥터지 레드 블레미쉬 포 맨 올인원 플루이드 150ml+75ml 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '닥터지 레드 블레미쉬 포 맨 올인원 플루이드 150ml+75ml 기획';


-- ================================

-- 상품: 레이지소사이어티 올인원 페이스 솔루션 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('레이지소사이어티 올인원 페이스 솔루션 150ml',
 '레이지소사이어티 올인원 페이스 솔루션 150ml',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '레이지소사이어티'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '레이지소사이어티 올인원 페이스 솔루션 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(15900, 'ORIGINAL', (SELECT id FROM product WHERE name = '레이지소사이어티 올인원 페이스 솔루션 150ml'), NOW(), NOW()),
(15100, 'SALE', (SELECT id FROM product WHERE name = '레이지소사이어티 올인원 페이스 솔루션 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018093503ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '레이지소사이어티 올인원 페이스 솔루션 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018093501ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '레이지소사이어티 올인원 페이스 솔루션 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '레이지소사이어티 올인원 페이스 솔루션 150ml';


-- ================================

-- 상품: [맨즈꿀템특가/보습케어] 라운드랩 포 맨 1025 독도 올인원 플루이드 200ml+200m...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[맨즈꿀템특가/보습케어] 라운드랩 포 맨 1025 독도 올인원 플루이드 200ml+200ml',
 '[맨즈꿀템특가/보습케어] 라운드랩 포 맨 1025 독도 올인원 플루이드 200ml+200ml',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라운드랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[맨즈꿀템특가/보습케어] 라운드랩 포 맨 1025 독도 올인원 플루이드 200ml+200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(43000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[맨즈꿀템특가/보습케어] 라운드랩 포 맨 1025 독도 올인원 플루이드 200ml+200ml'), NOW(), NOW()),
(31350, 'SALE', (SELECT id FROM product WHERE name = '[맨즈꿀템특가/보습케어] 라운드랩 포 맨 1025 독도 올인원 플루이드 200ml+200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018322906ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[맨즈꿀템특가/보습케어] 라운드랩 포 맨 1025 독도 올인원 플루이드 200ml+200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018322904ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[맨즈꿀템특가/보습케어] 라운드랩 포 맨 1025 독도 올인원 플루이드 200ml+200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018322905ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[맨즈꿀템특가/보습케어] 라운드랩 포 맨 1025 독도 올인원 플루이드 200ml+200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018322903ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[맨즈꿀템특가/보습케어] 라운드랩 포 맨 1025 독도 올인원 플루이드 200ml+200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[맨즈꿀템특가/보습케어] 라운드랩 포 맨 1025 독도 올인원 플루이드 200ml+200ml';


-- ================================

-- 상품: [NEW] 폴메디슨 옴므 워터화이트닝 올인원 에센스 211ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW] 폴메디슨 옴므 워터화이트닝 올인원 에센스 211ml',
 '[NEW] 폴메디슨 옴므 워터화이트닝 올인원 에센스 211ml',
 4.8,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '폴메디슨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW] 폴메디슨 옴므 워터화이트닝 올인원 에센스 211ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(13800, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW] 폴메디슨 옴므 워터화이트닝 올인원 에센스 211ml'), NOW(), NOW()),
(13800, 'SALE', (SELECT id FROM product WHERE name = '[NEW] 폴메디슨 옴므 워터화이트닝 올인원 에센스 211ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018457901ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW] 폴메디슨 옴므 워터화이트닝 올인원 에센스 211ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018457902ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW] 폴메디슨 옴므 워터화이트닝 올인원 에센스 211ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW] 폴메디슨 옴므 워터화이트닝 올인원 에센스 211ml';


-- ================================

-- 상품: 마녀공장 얼티밋 올인원 선로션 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('마녀공장 얼티밋 올인원 선로션 100ml',
 '마녀공장 얼티밋 올인원 선로션 100ml',
 4.8,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '마녀공장'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '마녀공장 얼티밋 올인원 선로션 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(43000, 'ORIGINAL', (SELECT id FROM product WHERE name = '마녀공장 얼티밋 올인원 선로션 100ml'), NOW(), NOW()),
(25800, 'SALE', (SELECT id FROM product WHERE name = '마녀공장 얼티밋 올인원 선로션 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018480503ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '마녀공장 얼티밋 올인원 선로션 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018480502ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '마녀공장 얼티밋 올인원 선로션 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '마녀공장 얼티밋 올인원 선로션 100ml';


-- ================================

-- 상품: 록키스 아쿠아 부스트 옴므 올인원 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('록키스 아쿠아 부스트 옴므 올인원 200ml',
 '록키스 아쿠아 부스트 옴므 올인원 200ml',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '록키스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '록키스 아쿠아 부스트 옴므 올인원 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(14800, 'ORIGINAL', (SELECT id FROM product WHERE name = '록키스 아쿠아 부스트 옴므 올인원 200ml'), NOW(), NOW()),
(13500, 'SALE', (SELECT id FROM product WHERE name = '록키스 아쿠아 부스트 옴므 올인원 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018493501ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '록키스 아쿠아 부스트 옴므 올인원 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018493504ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '록키스 아쿠아 부스트 옴므 올인원 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018493503ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '록키스 아쿠아 부스트 옴므 올인원 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '록키스 아쿠아 부스트 옴므 올인원 200ml';


-- ================================

-- 상품: 마녀공장 얼티밋 올인원 워터젤 120ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('마녀공장 얼티밋 올인원 워터젤 120ml',
 '마녀공장 얼티밋 올인원 워터젤 120ml',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '마녀공장'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '마녀공장 얼티밋 올인원 워터젤 120ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '마녀공장 얼티밋 올인원 워터젤 120ml'), NOW(), NOW()),
(22800, 'SALE', (SELECT id FROM product WHERE name = '마녀공장 얼티밋 올인원 워터젤 120ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018506104ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '마녀공장 얼티밋 올인원 워터젤 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018506103ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '마녀공장 얼티밋 올인원 워터젤 120ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '마녀공장 얼티밋 올인원 워터젤 120ml';


-- ================================

-- 상품: 마녀공장 얼티밋 올인원 밀크 120ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('마녀공장 얼티밋 올인원 밀크 120ml',
 '마녀공장 얼티밋 올인원 밀크 120ml',
 4.5,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '마녀공장'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '마녀공장 얼티밋 올인원 밀크 120ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '마녀공장 얼티밋 올인원 밀크 120ml'), NOW(), NOW()),
(22800, 'SALE', (SELECT id FROM product WHERE name = '마녀공장 얼티밋 올인원 밀크 120ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018506204ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '마녀공장 얼티밋 올인원 밀크 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018506203ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '마녀공장 얼티밋 올인원 밀크 120ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '마녀공장 얼티밋 올인원 밀크 120ml';


-- ================================

-- 상품: 아이오페 맨 올데이 퍼펙트 올인원 120ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아이오페 맨 올데이 퍼펙트 올인원 120ml',
 '아이오페 맨 올데이 퍼펙트 올인원 120ml',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이오페'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아이오페 맨 올데이 퍼펙트 올인원 120ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아이오페 맨 올데이 퍼펙트 올인원 120ml'), NOW(), NOW()),
(23940, 'SALE', (SELECT id FROM product WHERE name = '아이오페 맨 올데이 퍼펙트 올인원 120ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018530006ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아이오페 맨 올데이 퍼펙트 올인원 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018530003ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아이오페 맨 올데이 퍼펙트 올인원 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018530002ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아이오페 맨 올데이 퍼펙트 올인원 120ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아이오페 맨 올데이 퍼펙트 올인원 120ml';


-- ================================

-- 상품: 퓨어덤 옴므 아쿠아 하이드로 올인원 크림 더블 기획(200ml+200ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('퓨어덤 옴므 아쿠아 하이드로 올인원 크림 더블 기획(200ml+200ml)',
 '퓨어덤 옴므 아쿠아 하이드로 올인원 크림 더블 기획(200ml+200ml)',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '퓨어덤'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '퓨어덤 옴므 아쿠아 하이드로 올인원 크림 더블 기획(200ml+200ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(15900, 'ORIGINAL', (SELECT id FROM product WHERE name = '퓨어덤 옴므 아쿠아 하이드로 올인원 크림 더블 기획(200ml+200ml)'), NOW(), NOW()),
(15900, 'SALE', (SELECT id FROM product WHERE name = '퓨어덤 옴므 아쿠아 하이드로 올인원 크림 더블 기획(200ml+200ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018686007ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '퓨어덤 옴므 아쿠아 하이드로 올인원 크림 더블 기획(200ml+200ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018686008ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '퓨어덤 옴므 아쿠아 하이드로 올인원 크림 더블 기획(200ml+200ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018686006ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '퓨어덤 옴므 아쿠아 하이드로 올인원 크림 더블 기획(200ml+200ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018686005ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '퓨어덤 옴므 아쿠아 하이드로 올인원 크림 더블 기획(200ml+200ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018686003ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '퓨어덤 옴므 아쿠아 하이드로 올인원 크림 더블 기획(200ml+200ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018686002ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '퓨어덤 옴므 아쿠아 하이드로 올인원 크림 더블 기획(200ml+200ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '퓨어덤 옴므 아쿠아 하이드로 올인원 크림 더블 기획(200ml+200ml)';


-- ================================

-- 상품: 빌리프 맨올로지101 스마트 모이스춰 익스트림 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('빌리프 맨올로지101 스마트 모이스춰 익스트림 100ml',
 '빌리프 맨올로지101 스마트 모이스춰 익스트림 100ml',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '빌리프'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '빌리프 맨올로지101 스마트 모이스춰 익스트림 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(48000, 'ORIGINAL', (SELECT id FROM product WHERE name = '빌리프 맨올로지101 스마트 모이스춰 익스트림 100ml'), NOW(), NOW()),
(48000, 'SALE', (SELECT id FROM product WHERE name = '빌리프 맨올로지101 스마트 모이스춰 익스트림 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018724305ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '빌리프 맨올로지101 스마트 모이스춰 익스트림 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018724306ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '빌리프 맨올로지101 스마트 모이스춰 익스트림 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018724304ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '빌리프 맨올로지101 스마트 모이스춰 익스트림 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '빌리프 맨올로지101 스마트 모이스춰 익스트림 100ml';


-- ================================

-- 상품: [NEW] 바버501 올인원 모이스처라이즈 200ml 2중 택 1(비타/시카)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW] 바버501 올인원 모이스처라이즈 200ml 2중 택 1(비타/시카)',
 '[NEW] 바버501 올인원 모이스처라이즈 200ml 2중 택 1(비타/시카)',
 4.8,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바버501'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('시카', 22000, (SELECT id FROM product WHERE name = '[NEW] 바버501 올인원 모이스처라이즈 200ml 2중 택 1(비타/시카)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('비타', 0, (SELECT id FROM product WHERE name = '[NEW] 바버501 올인원 모이스처라이즈 200ml 2중 택 1(비타/시카)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(22000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW] 바버501 올인원 모이스처라이즈 200ml 2중 택 1(비타/시카)'), NOW(), NOW()),
(22000, 'SALE', (SELECT id FROM product WHERE name = '[NEW] 바버501 올인원 모이스처라이즈 200ml 2중 택 1(비타/시카)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019079404ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW] 바버501 올인원 모이스처라이즈 200ml 2중 택 1(비타/시카)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019079405ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW] 바버501 올인원 모이스처라이즈 200ml 2중 택 1(비타/시카)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019079406ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW] 바버501 올인원 모이스처라이즈 200ml 2중 택 1(비타/시카)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019079407ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[NEW] 바버501 올인원 모이스처라이즈 200ml 2중 택 1(비타/시카)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019079408ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[NEW] 바버501 올인원 모이스처라이즈 200ml 2중 택 1(비타/시카)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019079409ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[NEW] 바버501 올인원 모이스처라이즈 200ml 2중 택 1(비타/시카)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW] 바버501 올인원 모이스처라이즈 200ml 2중 택 1(비타/시카)';


-- ================================

-- 상품: 아이오페 맨 올데이 퍼펙트 톤업 올인원 120ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아이오페 맨 올데이 퍼펙트 톤업 올인원 120ml',
 '아이오페 맨 올데이 퍼펙트 톤업 올인원 120ml',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이오페'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아이오페 맨 올데이 퍼펙트 톤업 올인원 120ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아이오페 맨 올데이 퍼펙트 톤업 올인원 120ml'), NOW(), NOW()),
(20810, 'SALE', (SELECT id FROM product WHERE name = '아이오페 맨 올데이 퍼펙트 톤업 올인원 120ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019117909ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아이오페 맨 올데이 퍼펙트 톤업 올인원 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019117905ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아이오페 맨 올데이 퍼펙트 톤업 올인원 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019117908ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아이오페 맨 올데이 퍼펙트 톤업 올인원 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019117906ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '아이오페 맨 올데이 퍼펙트 톤업 올인원 120ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아이오페 맨 올데이 퍼펙트 톤업 올인원 120ml';


-- ================================

-- 상품: [개기름/여름로션] 아이소이 포맨 아크니 닥터 올인원 100ml 기획 (+진정 올인원 15...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[개기름/여름로션] 아이소이 포맨 아크니 닥터 올인원 100ml 기획 (+진정 올인원 15ml)',
 '[개기름/여름로션] 아이소이 포맨 아크니 닥터 올인원 100ml 기획 (+진정 올인원 15ml)',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이소이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[개기름/여름로션] 아이소이 포맨 아크니 닥터 올인원 100ml 기획 (+진정 올인원 15ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[개기름/여름로션] 아이소이 포맨 아크니 닥터 올인원 100ml 기획 (+진정 올인원 15ml)'), NOW(), NOW()),
(33000, 'SALE', (SELECT id FROM product WHERE name = '[개기름/여름로션] 아이소이 포맨 아크니 닥터 올인원 100ml 기획 (+진정 올인원 15ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019567903ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[개기름/여름로션] 아이소이 포맨 아크니 닥터 올인원 100ml 기획 (+진정 올인원 15ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019567904ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[개기름/여름로션] 아이소이 포맨 아크니 닥터 올인원 100ml 기획 (+진정 올인원 15ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019567905ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[개기름/여름로션] 아이소이 포맨 아크니 닥터 올인원 100ml 기획 (+진정 올인원 15ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[개기름/여름로션] 아이소이 포맨 아크니 닥터 올인원 100ml 기획 (+진정 올인원 15ml)';


-- ================================

-- 상품: [보습/건성] 아이소이 포맨 모이스춰 닥터 올인원 100ml 기획 (+보습 올인원 15ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[보습/건성] 아이소이 포맨 모이스춰 닥터 올인원 100ml 기획 (+보습 올인원 15ml)',
 '[보습/건성] 아이소이 포맨 모이스춰 닥터 올인원 100ml 기획 (+보습 올인원 15ml)',
 4.8,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이소이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[보습/건성] 아이소이 포맨 모이스춰 닥터 올인원 100ml 기획 (+보습 올인원 15ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[보습/건성] 아이소이 포맨 모이스춰 닥터 올인원 100ml 기획 (+보습 올인원 15ml)'), NOW(), NOW()),
(33000, 'SALE', (SELECT id FROM product WHERE name = '[보습/건성] 아이소이 포맨 모이스춰 닥터 올인원 100ml 기획 (+보습 올인원 15ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019569903ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[보습/건성] 아이소이 포맨 모이스춰 닥터 올인원 100ml 기획 (+보습 올인원 15ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019569904ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[보습/건성] 아이소이 포맨 모이스춰 닥터 올인원 100ml 기획 (+보습 올인원 15ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019569905ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[보습/건성] 아이소이 포맨 모이스춰 닥터 올인원 100ml 기획 (+보습 올인원 15ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[보습/건성] 아이소이 포맨 모이스춰 닥터 올인원 100ml 기획 (+보습 올인원 15ml)';


-- ================================

-- 상품: [톤업/민감성] 아이소이 포맨 블레미쉬 케어 올인원 100ml 기획 (+잡티 올인원 15m...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[톤업/민감성] 아이소이 포맨 블레미쉬 케어 올인원 100ml 기획 (+잡티 올인원 15ml)',
 '[톤업/민감성] 아이소이 포맨 블레미쉬 케어 올인원 100ml 기획 (+잡티 올인원 15ml)',
 4.8,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이소이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[톤업/민감성] 아이소이 포맨 블레미쉬 케어 올인원 100ml 기획 (+잡티 올인원 15ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(36000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[톤업/민감성] 아이소이 포맨 블레미쉬 케어 올인원 100ml 기획 (+잡티 올인원 15ml)'), NOW(), NOW()),
(25900, 'SALE', (SELECT id FROM product WHERE name = '[톤업/민감성] 아이소이 포맨 블레미쉬 케어 올인원 100ml 기획 (+잡티 올인원 15ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019894702ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[톤업/민감성] 아이소이 포맨 블레미쉬 케어 올인원 100ml 기획 (+잡티 올인원 15ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019894703ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[톤업/민감성] 아이소이 포맨 블레미쉬 케어 올인원 100ml 기획 (+잡티 올인원 15ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019894704ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[톤업/민감성] 아이소이 포맨 블레미쉬 케어 올인원 100ml 기획 (+잡티 올인원 15ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[톤업/민감성] 아이소이 포맨 블레미쉬 케어 올인원 100ml 기획 (+잡티 올인원 15ml)';


-- ================================

-- 상품: 프리메라 맨인더핑크 에이지 리페어 올인원 에센스 150ml 기획/단품...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('프리메라 맨인더핑크 에이지 리페어 올인원 에센스 150ml 기획/단품',
 '프리메라 맨인더핑크 에이지 리페어 올인원 에센스 150ml 기획/단품',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '프리메라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('+선크림 10ml', 37000, (SELECT id FROM product WHERE name = '프리메라 맨인더핑크 에이지 리페어 올인원 에센스 150ml 기획/단품'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('단품', 37000, (SELECT id FROM product WHERE name = '프리메라 맨인더핑크 에이지 리페어 올인원 에센스 150ml 기획/단품'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(37000, 'ORIGINAL', (SELECT id FROM product WHERE name = '프리메라 맨인더핑크 에이지 리페어 올인원 에센스 150ml 기획/단품'), NOW(), NOW()),
(37000, 'SALE', (SELECT id FROM product WHERE name = '프리메라 맨인더핑크 에이지 리페어 올인원 에센스 150ml 기획/단품'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019908113ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '프리메라 맨인더핑크 에이지 리페어 올인원 에센스 150ml 기획/단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019908106ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '프리메라 맨인더핑크 에이지 리페어 올인원 에센스 150ml 기획/단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019908105ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '프리메라 맨인더핑크 에이지 리페어 올인원 에센스 150ml 기획/단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019908107ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '프리메라 맨인더핑크 에이지 리페어 올인원 에센스 150ml 기획/단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019908108ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '프리메라 맨인더핑크 에이지 리페어 올인원 에센스 150ml 기획/단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019908109ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '프리메라 맨인더핑크 에이지 리페어 올인원 에센스 150ml 기획/단품'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '프리메라 맨인더핑크 에이지 리페어 올인원 에센스 150ml 기획/단품';


-- ================================

-- 상품: 오브제 모이스처 올인원 로션 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('오브제 모이스처 올인원 로션 200ml',
 '오브제 모이스처 올인원 로션 200ml',
 4.7,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '오브제'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '오브제 모이스처 올인원 로션 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(17900, 'ORIGINAL', (SELECT id FROM product WHERE name = '오브제 모이스처 올인원 로션 200ml'), NOW(), NOW()),
(16900, 'SALE', (SELECT id FROM product WHERE name = '오브제 모이스처 올인원 로션 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020344002ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '오브제 모이스처 올인원 로션 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020344003ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '오브제 모이스처 올인원 로션 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020344001ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '오브제 모이스처 올인원 로션 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '오브제 모이스처 올인원 로션 200ml';


-- ================================

-- 상품: 라끄베르 옴므 리차지 올인원 에센스 150ml 1+1 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('라끄베르 옴므 리차지 올인원 에센스 150ml 1+1 기획',
 '라끄베르 옴므 리차지 올인원 에센스 150ml 1+1 기획',
 4.7,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라끄베르'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 올인원 에센스 150ml 1+1 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29000, 'ORIGINAL', (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 올인원 에센스 150ml 1+1 기획'), NOW(), NOW()),
(29000, 'SALE', (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 올인원 에센스 150ml 1+1 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020399203ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 올인원 에센스 150ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020399204ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 올인원 에센스 150ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020399202ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 올인원 에센스 150ml 1+1 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020399201ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 올인원 에센스 150ml 1+1 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '라끄베르 옴므 리차지 올인원 에센스 150ml 1+1 기획';


-- ================================

-- 상품: [에이든팍 PICK] 다슈 보이 파란 수분초 올인원 150ml 기획 (+수분크림 50ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[에이든팍 PICK] 다슈 보이 파란 수분초 올인원 150ml 기획 (+수분크림 50ml)',
 '[에이든팍 PICK] 다슈 보이 파란 수분초 올인원 150ml 기획 (+수분크림 50ml)',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '다슈'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[에이든팍 PICK] 다슈 보이 파란 수분초 올인원 150ml 기획 (+수분크림 50ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[에이든팍 PICK] 다슈 보이 파란 수분초 올인원 150ml 기획 (+수분크림 50ml)'), NOW(), NOW()),
(14800, 'SALE', (SELECT id FROM product WHERE name = '[에이든팍 PICK] 다슈 보이 파란 수분초 올인원 150ml 기획 (+수분크림 50ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020415906ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[에이든팍 PICK] 다슈 보이 파란 수분초 올인원 150ml 기획 (+수분크림 50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020415905ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[에이든팍 PICK] 다슈 보이 파란 수분초 올인원 150ml 기획 (+수분크림 50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020415904ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[에이든팍 PICK] 다슈 보이 파란 수분초 올인원 150ml 기획 (+수분크림 50ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[에이든팍 PICK] 다슈 보이 파란 수분초 올인원 150ml 기획 (+수분크림 50ml)';


-- ================================

-- 상품: [단독기획]토리든 다이브인 포맨 저분자 히알루론산 올인원 200g 단품/기획 (+올인원 2...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[단독기획]토리든 다이브인 포맨 저분자 히알루론산 올인원 200g 단품/기획 (+올인원 20g)',
 '[단독기획]토리든 다이브인 포맨 저분자 히알루론산 올인원 200g 단품/기획 (+올인원 20g)',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '토리든'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('다이브인 포맨 올인원 증량기획(+올인원)', 18240, (SELECT id FROM product WHERE name = '[단독기획]토리든 다이브인 포맨 저분자 히알루론산 올인원 200g 단품/기획 (+올인원 20g)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('다이브인 포맨 올인원', 18240, (SELECT id FROM product WHERE name = '[단독기획]토리든 다이브인 포맨 저분자 히알루론산 올인원 200g 단품/기획 (+올인원 20g)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독기획]토리든 다이브인 포맨 저분자 히알루론산 올인원 200g 단품/기획 (+올인원 20g)'), NOW(), NOW()),
(18240, 'SALE', (SELECT id FROM product WHERE name = '[단독기획]토리든 다이브인 포맨 저분자 히알루론산 올인원 200g 단품/기획 (+올인원 20g)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020711131ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[단독기획]토리든 다이브인 포맨 저분자 히알루론산 올인원 200g 단품/기획 (+올인원 20g)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020711127ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[단독기획]토리든 다이브인 포맨 저분자 히알루론산 올인원 200g 단품/기획 (+올인원 20g)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020711113ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[단독기획]토리든 다이브인 포맨 저분자 히알루론산 올인원 200g 단품/기획 (+올인원 20g)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[단독기획]토리든 다이브인 포맨 저분자 히알루론산 올인원 200g 단품/기획 (+올인원 20g)';


-- ================================

-- 상품: [수분진정로션/본품증정] 닥터지 레드 블레미쉬 포 맨 플루이드/폼 2종 기획 세트 (+ 톤...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분진정로션/본품증정] 닥터지 레드 블레미쉬 포 맨 플루이드/폼 2종 기획 세트 (+ 톤로션 2ml*2)',
 '[수분진정로션/본품증정] 닥터지 레드 블레미쉬 포 맨 플루이드/폼 2종 기획 세트 (+ 톤로션 2ml*2)',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터지'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('진정올인원+클렌징폼', 27600, (SELECT id FROM product WHERE name = '[수분진정로션/본품증정] 닥터지 레드 블레미쉬 포 맨 플루이드/폼 2종 기획 세트 (+ 톤로션 2ml*2)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('플루이드+클렌징폼+톤로션', 0, (SELECT id FROM product WHERE name = '[수분진정로션/본품증정] 닥터지 레드 블레미쉬 포 맨 플루이드/폼 2종 기획 세트 (+ 톤로션 2ml*2)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(46000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분진정로션/본품증정] 닥터지 레드 블레미쉬 포 맨 플루이드/폼 2종 기획 세트 (+ 톤로션 2ml*2)'), NOW(), NOW()),
(27600, 'SALE', (SELECT id FROM product WHERE name = '[수분진정로션/본품증정] 닥터지 레드 블레미쉬 포 맨 플루이드/폼 2종 기획 세트 (+ 톤로션 2ml*2)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020745906ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분진정로션/본품증정] 닥터지 레드 블레미쉬 포 맨 플루이드/폼 2종 기획 세트 (+ 톤로션 2ml*2)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020745910ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분진정로션/본품증정] 닥터지 레드 블레미쉬 포 맨 플루이드/폼 2종 기획 세트 (+ 톤로션 2ml*2)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020745909ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분진정로션/본품증정] 닥터지 레드 블레미쉬 포 맨 플루이드/폼 2종 기획 세트 (+ 톤로션 2ml*2)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020745908ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[수분진정로션/본품증정] 닥터지 레드 블레미쉬 포 맨 플루이드/폼 2종 기획 세트 (+ 톤로션 2ml*2)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020745907ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[수분진정로션/본품증정] 닥터지 레드 블레미쉬 포 맨 플루이드/폼 2종 기획 세트 (+ 톤로션 2ml*2)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분진정로션/본품증정] 닥터지 레드 블레미쉬 포 맨 플루이드/폼 2종 기획 세트 (+ 톤로션 2ml*2)';


-- ================================

-- 상품: 로레알파리 맨 이드라파워 쿨링 올인원 120ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('로레알파리 맨 이드라파워 쿨링 올인원 120ml',
 '로레알파리 맨 이드라파워 쿨링 올인원 120ml',
 5.0,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '로레알맨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('이드라파워 쿨링 올인원 120ml', 13900, (SELECT id FROM product WHERE name = '로레알파리 맨 이드라파워 쿨링 올인원 120ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(20000, 'ORIGINAL', (SELECT id FROM product WHERE name = '로레알파리 맨 이드라파워 쿨링 올인원 120ml'), NOW(), NOW()),
(13900, 'SALE', (SELECT id FROM product WHERE name = '로레알파리 맨 이드라파워 쿨링 올인원 120ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020842504ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '로레알파리 맨 이드라파워 쿨링 올인원 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020842503ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '로레알파리 맨 이드라파워 쿨링 올인원 120ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '로레알파리 맨 이드라파워 쿨링 올인원 120ml';


-- ================================

-- 상품: 로레알파리 맨 멀티액션8 안티에이징 올인원 50ml 단품/기획 택 1...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('로레알파리 맨 멀티액션8 안티에이징 올인원 50ml 단품/기획 택 1',
 '로레알파리 맨 멀티액션8 안티에이징 올인원 50ml 단품/기획 택 1',
 5.0,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '로레알맨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('멀티액션8 올인원 50ml 단품', 28000, (SELECT id FROM product WHERE name = '로레알파리 맨 멀티액션8 안티에이징 올인원 50ml 단품/기획 택 1'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('멀티액션8올인원 50ml+22ml 2개', 0, (SELECT id FROM product WHERE name = '로레알파리 맨 멀티액션8 안티에이징 올인원 50ml 단품/기획 택 1'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '로레알파리 맨 멀티액션8 안티에이징 올인원 50ml 단품/기획 택 1'), NOW(), NOW()),
(28000, 'SALE', (SELECT id FROM product WHERE name = '로레알파리 맨 멀티액션8 안티에이징 올인원 50ml 단품/기획 택 1'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020842609ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '로레알파리 맨 멀티액션8 안티에이징 올인원 50ml 단품/기획 택 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020842608ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '로레알파리 맨 멀티액션8 안티에이징 올인원 50ml 단품/기획 택 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020842607ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '로레알파리 맨 멀티액션8 안티에이징 올인원 50ml 단품/기획 택 1'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '로레알파리 맨 멀티액션8 안티에이징 올인원 50ml 단품/기획 택 1';


-- ================================

-- 상품: 더페이스샵 더프레시 포맨 수분 플루이드 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('더페이스샵 더프레시 포맨 수분 플루이드 200ml',
 '더페이스샵 더프레시 포맨 수분 플루이드 200ml',
 5.0,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더페이스샵'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '더페이스샵 더프레시 포맨 수분 플루이드 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(21000, 'ORIGINAL', (SELECT id FROM product WHERE name = '더페이스샵 더프레시 포맨 수분 플루이드 200ml'), NOW(), NOW()),
(14700, 'SALE', (SELECT id FROM product WHERE name = '더페이스샵 더프레시 포맨 수분 플루이드 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020970501ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '더페이스샵 더프레시 포맨 수분 플루이드 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '더페이스샵 더프레시 포맨 수분 플루이드 200ml';


-- ================================

-- 상품: 더페이스샵 더젠틀포맨 올인원 에센스 135ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('더페이스샵 더젠틀포맨 올인원 에센스 135ml',
 '더페이스샵 더젠틀포맨 올인원 에센스 135ml',
 5.0,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더페이스샵'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '더페이스샵 더젠틀포맨 올인원 에센스 135ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(27000, 'ORIGINAL', (SELECT id FROM product WHERE name = '더페이스샵 더젠틀포맨 올인원 에센스 135ml'), NOW(), NOW()),
(27000, 'SALE', (SELECT id FROM product WHERE name = '더페이스샵 더젠틀포맨 올인원 에센스 135ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020971402ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '더페이스샵 더젠틀포맨 올인원 에센스 135ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '더페이스샵 더젠틀포맨 올인원 에센스 135ml';


-- ================================

-- 상품: 더페이스샵 더 블랙밤 크림 플루이드 130ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('더페이스샵 더 블랙밤 크림 플루이드 130ml',
 '더페이스샵 더 블랙밤 크림 플루이드 130ml',
 5.0,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더페이스샵'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '더페이스샵 더 블랙밤 크림 플루이드 130ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29000, 'ORIGINAL', (SELECT id FROM product WHERE name = '더페이스샵 더 블랙밤 크림 플루이드 130ml'), NOW(), NOW()),
(29000, 'SALE', (SELECT id FROM product WHERE name = '더페이스샵 더 블랙밤 크림 플루이드 130ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020973101ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '더페이스샵 더 블랙밤 크림 플루이드 130ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '더페이스샵 더 블랙밤 크림 플루이드 130ml';


-- ================================

-- 상품: [NEW] 브링그린 티트리시카포맨올인원로션플러스200mL기획(스팟패치25매증정)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW] 브링그린 티트리시카포맨올인원로션플러스200mL기획(스팟패치25매증정)',
 '[NEW] 브링그린 티트리시카포맨올인원로션플러스200mL기획(스팟패치25매증정)',
 4.8,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '브링그린'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW] 브링그린 티트리시카포맨올인원로션플러스200mL기획(스팟패치25매증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW] 브링그린 티트리시카포맨올인원로션플러스200mL기획(스팟패치25매증정)'), NOW(), NOW()),
(15900, 'SALE', (SELECT id FROM product WHERE name = '[NEW] 브링그린 티트리시카포맨올인원로션플러스200mL기획(스팟패치25매증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020987901ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW] 브링그린 티트리시카포맨올인원로션플러스200mL기획(스팟패치25매증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020987903ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW] 브링그린 티트리시카포맨올인원로션플러스200mL기획(스팟패치25매증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020987902ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW] 브링그린 티트리시카포맨올인원로션플러스200mL기획(스팟패치25매증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW] 브링그린 티트리시카포맨올인원로션플러스200mL기획(스팟패치25매증정)';


-- ================================

-- 상품: 더샘 에코 에너지 올인원 2종 택 1...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('더샘 에코 에너지 올인원 2종 택 1',
 '더샘 에코 에너지 올인원 2종 택 1',
 5.0,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더샘'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('모이스처 밀크', 23000, (SELECT id FROM product WHERE name = '더샘 에코 에너지 올인원 2종 택 1'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('수딩 에센스', 23000, (SELECT id FROM product WHERE name = '더샘 에코 에너지 올인원 2종 택 1'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '더샘 에코 에너지 올인원 2종 택 1'), NOW(), NOW()),
(23000, 'SALE', (SELECT id FROM product WHERE name = '더샘 에코 에너지 올인원 2종 택 1'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021047309ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '더샘 에코 에너지 올인원 2종 택 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021047310ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '더샘 에코 에너지 올인원 2종 택 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021047311ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '더샘 에코 에너지 올인원 2종 택 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021047305ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '더샘 에코 에너지 올인원 2종 택 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021047306ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '더샘 에코 에너지 올인원 2종 택 1'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '더샘 에코 에너지 올인원 2종 택 1';


-- ================================

-- 상품: 더샘 미네랄 옴므 블랙 올인원 플루이드 이엑스...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('더샘 미네랄 옴므 블랙 올인원 플루이드 이엑스',
 '더샘 미네랄 옴므 블랙 올인원 플루이드 이엑스',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더샘'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '더샘 미네랄 옴므 블랙 올인원 플루이드 이엑스'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '더샘 미네랄 옴므 블랙 올인원 플루이드 이엑스'), NOW(), NOW()),
(18200, 'SALE', (SELECT id FROM product WHERE name = '더샘 미네랄 옴므 블랙 올인원 플루이드 이엑스'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021048005ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '더샘 미네랄 옴므 블랙 올인원 플루이드 이엑스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021048002ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '더샘 미네랄 옴므 블랙 올인원 플루이드 이엑스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021048006ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '더샘 미네랄 옴므 블랙 올인원 플루이드 이엑스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021048008ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '더샘 미네랄 옴므 블랙 올인원 플루이드 이엑스'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '더샘 미네랄 옴므 블랙 올인원 플루이드 이엑스';


-- ================================

-- 상품: 비오템옴므 아쿠아파워 올인원 스틱 세트 (+올인원 20ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('비오템옴므 아쿠아파워 올인원 스틱 세트 (+올인원 20ml)',
 '비오템옴므 아쿠아파워 올인원 스틱 세트 (+올인원 20ml)',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비오템'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기획 (+올인원 20ml)', 21000, (SELECT id FROM product WHERE name = '비오템옴므 아쿠아파워 올인원 스틱 세트 (+올인원 20ml)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('올인원 스틱 9g 단품', 30660, (SELECT id FROM product WHERE name = '비오템옴므 아쿠아파워 올인원 스틱 세트 (+올인원 20ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(42000, 'ORIGINAL', (SELECT id FROM product WHERE name = '비오템옴므 아쿠아파워 올인원 스틱 세트 (+올인원 20ml)'), NOW(), NOW()),
(21000, 'SALE', (SELECT id FROM product WHERE name = '비오템옴므 아쿠아파워 올인원 스틱 세트 (+올인원 20ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021066618ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '비오템옴므 아쿠아파워 올인원 스틱 세트 (+올인원 20ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021066614ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '비오템옴므 아쿠아파워 올인원 스틱 세트 (+올인원 20ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '비오템옴므 아쿠아파워 올인원 스틱 세트 (+올인원 20ml)';


-- ================================

-- 상품: [원우PICK]더페이스샵 스피프코드 퍼펙트 올인원 플루이드 145ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[원우PICK]더페이스샵 스피프코드 퍼펙트 올인원 플루이드 145ml',
 '[원우PICK]더페이스샵 스피프코드 퍼펙트 올인원 플루이드 145ml',
 5.0,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더페이스샵'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[원우PICK]더페이스샵 스피프코드 퍼펙트 올인원 플루이드 145ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[원우PICK]더페이스샵 스피프코드 퍼펙트 올인원 플루이드 145ml'), NOW(), NOW()),
(18850, 'SALE', (SELECT id FROM product WHERE name = '[원우PICK]더페이스샵 스피프코드 퍼펙트 올인원 플루이드 145ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021092005ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[원우PICK]더페이스샵 스피프코드 퍼펙트 올인원 플루이드 145ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021092002ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[원우PICK]더페이스샵 스피프코드 퍼펙트 올인원 플루이드 145ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021092001ko.jpeg?l=ko', 3, (SELECT id FROM product WHERE name = '[원우PICK]더페이스샵 스피프코드 퍼펙트 올인원 플루이드 145ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[원우PICK]더페이스샵 스피프코드 퍼펙트 올인원 플루이드 145ml';


-- ================================

-- 상품: 더페이스샵 네오클래식 옴므 블랙 에센셜 올인원 트리트먼트 110ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('더페이스샵 네오클래식 옴므 블랙 에센셜 올인원 트리트먼트 110ml',
 '더페이스샵 네오클래식 옴므 블랙 에센셜 올인원 트리트먼트 110ml',
 4.6,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더페이스샵'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '더페이스샵 네오클래식 옴므 블랙 에센셜 올인원 트리트먼트 110ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '더페이스샵 네오클래식 옴므 블랙 에센셜 올인원 트리트먼트 110ml'), NOW(), NOW()),
(19600, 'SALE', (SELECT id FROM product WHERE name = '더페이스샵 네오클래식 옴므 블랙 에센셜 올인원 트리트먼트 110ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021092201ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '더페이스샵 네오클래식 옴므 블랙 에센셜 올인원 트리트먼트 110ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '더페이스샵 네오클래식 옴므 블랙 에센셜 올인원 트리트먼트 110ml';


-- ================================

-- 상품: 운스트라움 에센셜 올인원 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('운스트라움 에센셜 올인원 150ml',
 '운스트라움 에센셜 올인원 150ml',
 5.0,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '운스트라움'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '운스트라움 에센셜 올인원 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '운스트라움 에센셜 올인원 150ml'), NOW(), NOW()),
(32300, 'SALE', (SELECT id FROM product WHERE name = '운스트라움 에센셜 올인원 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021094805ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '운스트라움 에센셜 올인원 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021094808ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '운스트라움 에센셜 올인원 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021094807ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '운스트라움 에센셜 올인원 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021094806ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '운스트라움 에센셜 올인원 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '운스트라움 에센셜 올인원 150ml';


-- ================================

-- 상품: 무슈제이 세라부스트 올인원 200ml 단품/기획 2종 택1...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('무슈제이 세라부스트 올인원 200ml 단품/기획 2종 택1',
 '무슈제이 세라부스트 올인원 200ml 단품/기획 2종 택1',
 4.8,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '무슈제이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[단품] 세라부스트 200ml', 19900, (SELECT id FROM product WHERE name = '무슈제이 세라부스트 올인원 200ml 단품/기획 2종 택1'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[기획] 세라부스트 200ml+200ml', 23900, (SELECT id FROM product WHERE name = '무슈제이 세라부스트 올인원 200ml 단품/기획 2종 택1'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24900, 'ORIGINAL', (SELECT id FROM product WHERE name = '무슈제이 세라부스트 올인원 200ml 단품/기획 2종 택1'), NOW(), NOW()),
(19900, 'SALE', (SELECT id FROM product WHERE name = '무슈제이 세라부스트 올인원 200ml 단품/기획 2종 택1'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021367904ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '무슈제이 세라부스트 올인원 200ml 단품/기획 2종 택1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021367903ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '무슈제이 세라부스트 올인원 200ml 단품/기획 2종 택1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021367902ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '무슈제이 세라부스트 올인원 200ml 단품/기획 2종 택1'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '무슈제이 세라부스트 올인원 200ml 단품/기획 2종 택1';


-- ================================

-- 상품: [9월 올영픽/단독기획] 키엘 울트라 훼이셜 베리어 스틱 밤 기획/단품...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽/단독기획] 키엘 울트라 훼이셜 베리어 스틱 밤 기획/단품',
 '[9월 올영픽/단독기획] 키엘 울트라 훼이셜 베리어 스틱 밤 기획/단품',
 4.8,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '키엘'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('스틱밤 기획(+크림3ml/구름키링)', 35320, (SELECT id FROM product WHERE name = '[9월 올영픽/단독기획] 키엘 울트라 훼이셜 베리어 스틱 밤 기획/단품'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('스틱밤 단품', 35320, (SELECT id FROM product WHERE name = '[9월 올영픽/단독기획] 키엘 울트라 훼이셜 베리어 스틱 밤 기획/단품'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(42000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽/단독기획] 키엘 울트라 훼이셜 베리어 스틱 밤 기획/단품'), NOW(), NOW()),
(35320, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽/단독기획] 키엘 울트라 훼이셜 베리어 스틱 밤 기획/단품'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021417023ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽/단독기획] 키엘 울트라 훼이셜 베리어 스틱 밤 기획/단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021417021ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽/단독기획] 키엘 울트라 훼이셜 베리어 스틱 밤 기획/단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021417019ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽/단독기획] 키엘 울트라 훼이셜 베리어 스틱 밤 기획/단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021417018ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[9월 올영픽/단독기획] 키엘 울트라 훼이셜 베리어 스틱 밤 기획/단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021417020ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[9월 올영픽/단독기획] 키엘 울트라 훼이셜 베리어 스틱 밤 기획/단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021417001ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[9월 올영픽/단독기획] 키엘 울트라 훼이셜 베리어 스틱 밤 기획/단품'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[9월 올영픽/단독기획] 키엘 울트라 훼이셜 베리어 스틱 밤 기획/단품';


-- ================================

-- 상품: 엠도씨 안티 링클 스킨 플러스 로션 150ml 단품/기획 2종 택1...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('엠도씨 안티 링클 스킨 플러스 로션 150ml 단품/기획 2종 택1',
 '엠도씨 안티 링클 스킨 플러스 로션 150ml 단품/기획 2종 택1',
 4.6,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '엠도씨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '엠도씨 안티 링클 스킨 플러스 로션 150ml 단품/기획 2종 택1'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '엠도씨 안티 링클 스킨 플러스 로션 150ml 단품/기획 2종 택1'), NOW(), NOW()),
(20000, 'SALE', (SELECT id FROM product WHERE name = '엠도씨 안티 링클 스킨 플러스 로션 150ml 단품/기획 2종 택1'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021445901ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '엠도씨 안티 링클 스킨 플러스 로션 150ml 단품/기획 2종 택1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021445903ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '엠도씨 안티 링클 스킨 플러스 로션 150ml 단품/기획 2종 택1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021445902ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '엠도씨 안티 링클 스킨 플러스 로션 150ml 단품/기획 2종 택1'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '엠도씨 안티 링클 스킨 플러스 로션 150ml 단품/기획 2종 택1';


-- ================================

-- 상품: [수분진정] 차앤박 옴므랩 올인원 아쿠아 코어-업 125ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분진정] 차앤박 옴므랩 올인원 아쿠아 코어-업 125ml',
 '[수분진정] 차앤박 옴므랩 올인원 아쿠아 코어-업 125ml',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '차앤박옴므'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분진정] 차앤박 옴므랩 올인원 아쿠아 코어-업 125ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분진정] 차앤박 옴므랩 올인원 아쿠아 코어-업 125ml'), NOW(), NOW()),
(30000, 'SALE', (SELECT id FROM product WHERE name = '[수분진정] 차앤박 옴므랩 올인원 아쿠아 코어-업 125ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021910002ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분진정] 차앤박 옴므랩 올인원 아쿠아 코어-업 125ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021910001ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분진정] 차앤박 옴므랩 올인원 아쿠아 코어-업 125ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분진정] 차앤박 옴므랩 올인원 아쿠아 코어-업 125ml';


-- ================================

-- 상품: [피지/모공케어] 차앤박 옴므랩 올인원 오일컷 퍼펙트 125ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[피지/모공케어] 차앤박 옴므랩 올인원 오일컷 퍼펙트 125ml',
 '[피지/모공케어] 차앤박 옴므랩 올인원 오일컷 퍼펙트 125ml',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '차앤박옴므'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[피지/모공케어] 차앤박 옴므랩 올인원 오일컷 퍼펙트 125ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[피지/모공케어] 차앤박 옴므랩 올인원 오일컷 퍼펙트 125ml'), NOW(), NOW()),
(30000, 'SALE', (SELECT id FROM product WHERE name = '[피지/모공케어] 차앤박 옴므랩 올인원 오일컷 퍼펙트 125ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021910112ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[피지/모공케어] 차앤박 옴므랩 올인원 오일컷 퍼펙트 125ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021910108ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[피지/모공케어] 차앤박 옴므랩 올인원 오일컷 퍼펙트 125ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021910101ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[피지/모공케어] 차앤박 옴므랩 올인원 오일컷 퍼펙트 125ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[피지/모공케어] 차앤박 옴므랩 올인원 오일컷 퍼펙트 125ml';


-- ================================

-- 상품: [탄력장벽] 차앤박 옴므랩 올인원 프로폴리스 에너지 프로틴샷 125ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[탄력장벽] 차앤박 옴므랩 올인원 프로폴리스 에너지 프로틴샷 125ml',
 '[탄력장벽] 차앤박 옴므랩 올인원 프로폴리스 에너지 프로틴샷 125ml',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '차앤박옴므'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[탄력장벽] 차앤박 옴므랩 올인원 프로폴리스 에너지 프로틴샷 125ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[탄력장벽] 차앤박 옴므랩 올인원 프로폴리스 에너지 프로틴샷 125ml'), NOW(), NOW()),
(33000, 'SALE', (SELECT id FROM product WHERE name = '[탄력장벽] 차앤박 옴므랩 올인원 프로폴리스 에너지 프로틴샷 125ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021910202ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[탄력장벽] 차앤박 옴므랩 올인원 프로폴리스 에너지 프로틴샷 125ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021910201ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[탄력장벽] 차앤박 옴므랩 올인원 프로폴리스 에너지 프로틴샷 125ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[탄력장벽] 차앤박 옴므랩 올인원 프로폴리스 에너지 프로틴샷 125ml';


-- ================================

-- 상품: [쿨링진정]메이크프렘 인테카 포맨 수딩 올인원 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[쿨링진정]메이크프렘 인테카 포맨 수딩 올인원 200ml',
 '[쿨링진정]메이크프렘 인테카 포맨 수딩 올인원 200ml',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '메이크프렘'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[쿨링진정]메이크프렘 인테카 포맨 수딩 올인원 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[쿨링진정]메이크프렘 인테카 포맨 수딩 올인원 200ml'), NOW(), NOW()),
(21000, 'SALE', (SELECT id FROM product WHERE name = '[쿨링진정]메이크프렘 인테카 포맨 수딩 올인원 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021984516ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[쿨링진정]메이크프렘 인테카 포맨 수딩 올인원 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021984504ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[쿨링진정]메이크프렘 인테카 포맨 수딩 올인원 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021984510ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[쿨링진정]메이크프렘 인테카 포맨 수딩 올인원 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021984503ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[쿨링진정]메이크프렘 인테카 포맨 수딩 올인원 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021984502ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[쿨링진정]메이크프렘 인테카 포맨 수딩 올인원 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[쿨링진정]메이크프렘 인테카 포맨 수딩 올인원 200ml';


-- ================================

-- 상품: 마몽드 맨 리차징 올인원 플루이드 180ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('마몽드 맨 리차징 올인원 플루이드 180ml',
 '마몽드 맨 리차징 올인원 플루이드 180ml',
 4.6,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '마몽드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '마몽드 맨 리차징 올인원 플루이드 180ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(27000, 'ORIGINAL', (SELECT id FROM product WHERE name = '마몽드 맨 리차징 올인원 플루이드 180ml'), NOW(), NOW()),
(27000, 'SALE', (SELECT id FROM product WHERE name = '마몽드 맨 리차징 올인원 플루이드 180ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022274108ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '마몽드 맨 리차징 올인원 플루이드 180ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022274101ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '마몽드 맨 리차징 올인원 플루이드 180ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022274109ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '마몽드 맨 리차징 올인원 플루이드 180ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022274110ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '마몽드 맨 리차징 올인원 플루이드 180ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022274111ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '마몽드 맨 리차징 올인원 플루이드 180ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022274113ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '마몽드 맨 리차징 올인원 플루이드 180ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '마몽드 맨 리차징 올인원 플루이드 180ml';


-- ================================

-- 상품: [피부고민따라] 아이디얼포맨 올인원 3종 (프레시/시카/선)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[피부고민따라] 아이디얼포맨 올인원 3종 (프레시/시카/선)',
 '[피부고민따라] 아이디얼포맨 올인원 3종 (프레시/시카/선)',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이디얼포맨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[리뉴얼]선 올인원 140ml', 13800, (SELECT id FROM product WHERE name = '[피부고민따라] 아이디얼포맨 올인원 3종 (프레시/시카/선)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[리뉴얼]프레시 올인원 150ml', 0, (SELECT id FROM product WHERE name = '[피부고민따라] 아이디얼포맨 올인원 3종 (프레시/시카/선)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[리뉴얼]시카 올인원 150ml', 0, (SELECT id FROM product WHERE name = '[피부고민따라] 아이디얼포맨 올인원 3종 (프레시/시카/선)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[피부고민따라] 아이디얼포맨 올인원 3종 (프레시/시카/선)'), NOW(), NOW()),
(13800, 'SALE', (SELECT id FROM product WHERE name = '[피부고민따라] 아이디얼포맨 올인원 3종 (프레시/시카/선)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022319612ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[피부고민따라] 아이디얼포맨 올인원 3종 (프레시/시카/선)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022319607ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[피부고민따라] 아이디얼포맨 올인원 3종 (프레시/시카/선)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022319610ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[피부고민따라] 아이디얼포맨 올인원 3종 (프레시/시카/선)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022319606ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[피부고민따라] 아이디얼포맨 올인원 3종 (프레시/시카/선)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022319611ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[피부고민따라] 아이디얼포맨 올인원 3종 (프레시/시카/선)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022319603ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[피부고민따라] 아이디얼포맨 올인원 3종 (프레시/시카/선)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[피부고민따라] 아이디얼포맨 올인원 3종 (프레시/시카/선)';


-- ================================

-- 상품: 비플레인 시카테롤 올인원 200ml 기획/단품 2종 택1...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('비플레인 시카테롤 올인원 200ml 기획/단품 2종 택1',
 '비플레인 시카테롤 올인원 200ml 기획/단품 2종 택1',
 4.8,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비플레인'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[기획] 올인원200ml+녹두폼40ml', 18000, (SELECT id FROM product WHERE name = '비플레인 시카테롤 올인원 200ml 기획/단품 2종 택1'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[단품] 시카테롤 올인원 200ml', 30000, (SELECT id FROM product WHERE name = '비플레인 시카테롤 올인원 200ml 기획/단품 2종 택1'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '비플레인 시카테롤 올인원 200ml 기획/단품 2종 택1'), NOW(), NOW()),
(18000, 'SALE', (SELECT id FROM product WHERE name = '비플레인 시카테롤 올인원 200ml 기획/단품 2종 택1'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022326614ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '비플레인 시카테롤 올인원 200ml 기획/단품 2종 택1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022326610ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '비플레인 시카테롤 올인원 200ml 기획/단품 2종 택1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022326613ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '비플레인 시카테롤 올인원 200ml 기획/단품 2종 택1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022326612ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '비플레인 시카테롤 올인원 200ml 기획/단품 2종 택1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022326611ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '비플레인 시카테롤 올인원 200ml 기획/단품 2종 택1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022326604ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '비플레인 시카테롤 올인원 200ml 기획/단품 2종 택1'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '비플레인 시카테롤 올인원 200ml 기획/단품 2종 택1';


-- ================================

-- 상품: 피지오겔 아쿠아 포맨 오일컷 올인원 100ml (단품/기획)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('피지오겔 아쿠아 포맨 오일컷 올인원 100ml (단품/기획)',
 '피지오겔 아쿠아 포맨 오일컷 올인원 100ml (단품/기획)',
 4.9,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '피지오겔'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '피지오겔 아쿠아 포맨 오일컷 올인원 100ml (단품/기획)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39900, 'ORIGINAL', (SELECT id FROM product WHERE name = '피지오겔 아쿠아 포맨 오일컷 올인원 100ml (단품/기획)'), NOW(), NOW()),
(39900, 'SALE', (SELECT id FROM product WHERE name = '피지오겔 아쿠아 포맨 오일컷 올인원 100ml (단품/기획)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022348332ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '피지오겔 아쿠아 포맨 오일컷 올인원 100ml (단품/기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022348333ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '피지오겔 아쿠아 포맨 오일컷 올인원 100ml (단품/기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022348326ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '피지오겔 아쿠아 포맨 오일컷 올인원 100ml (단품/기획)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '피지오겔 아쿠아 포맨 오일컷 올인원 100ml (단품/기획)';


-- ================================

-- 상품: [리뉴얼/펩타이드/속보습] 닥터지 레드 블레미쉬 포 맨 탄력 올인원 2종 택 1 (단품/증...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[리뉴얼/펩타이드/속보습] 닥터지 레드 블레미쉬 포 맨 탄력 올인원 2종 택 1 (단품/증정 기획)',
 '[리뉴얼/펩타이드/속보습] 닥터지 레드 블레미쉬 포 맨 탄력 올인원 2종 택 1 (단품/증정 기획)',
 4.8,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터지'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[리뉴얼/펩타이드/속보습] 닥터지 레드 블레미쉬 포 맨 탄력 올인원 2종 택 1 (단품/증정 기획)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[리뉴얼/펩타이드/속보습] 닥터지 레드 블레미쉬 포 맨 탄력 올인원 2종 택 1 (단품/증정 기획)'), NOW(), NOW()),
(19200, 'SALE', (SELECT id FROM product WHERE name = '[리뉴얼/펩타이드/속보습] 닥터지 레드 블레미쉬 포 맨 탄력 올인원 2종 택 1 (단품/증정 기획)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022378201ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[리뉴얼/펩타이드/속보습] 닥터지 레드 블레미쉬 포 맨 탄력 올인원 2종 택 1 (단품/증정 기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022378204ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[리뉴얼/펩타이드/속보습] 닥터지 레드 블레미쉬 포 맨 탄력 올인원 2종 택 1 (단품/증정 기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022378203ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[리뉴얼/펩타이드/속보습] 닥터지 레드 블레미쉬 포 맨 탄력 올인원 2종 택 1 (단품/증정 기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022378202ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[리뉴얼/펩타이드/속보습] 닥터지 레드 블레미쉬 포 맨 탄력 올인원 2종 택 1 (단품/증정 기획)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[리뉴얼/펩타이드/속보습] 닥터지 레드 블레미쉬 포 맨 탄력 올인원 2종 택 1 (단품/증정 기획)';


-- ================================

-- 상품: 그라운드랩 올인원 모이스처라이저 스킨 로션 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('그라운드랩 올인원 모이스처라이저 스킨 로션 200ml',
 '그라운드랩 올인원 모이스처라이저 스킨 로션 200ml',
 5.0,
 (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '그라운드랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '그라운드랩 올인원 모이스처라이저 스킨 로션 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '그라운드랩 올인원 모이스처라이저 스킨 로션 200ml'), NOW(), NOW()),
(26000, 'SALE', (SELECT id FROM product WHERE name = '그라운드랩 올인원 모이스처라이저 스킨 로션 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022561402ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '그라운드랩 올인원 모이스처라이저 스킨 로션 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022561403ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '그라운드랩 올인원 모이스처라이저 스킨 로션 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '그라운드랩 올인원 모이스처라이저 스킨 로션 200ml';

-- ================================

-- 상품: [김혜성PICK/여드름피부적합] 아이디얼포맨 시카 올인원 (단품/증정기획)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
    ('[김혜성PICK/여드름피부적합] 아이디얼포맨 시카 올인원 (단품/증정기획)',
     '[김혜성PICK/여드름피부적합] 아이디얼포맨 시카 올인원 (단품/증정기획)',
     4.9,
     (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
     (SELECT id FROM brand WHERE name = '아이디얼포맨'),
     '판매중',
     NOW(),
     NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
    ('기본 옵션', 0, (SELECT id FROM product WHERE name = '[김혜성PICK/여드름피부적합] 아이디얼포맨 시카 올인원 (단품/증정기획)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
                                                                                (26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[김혜성PICK/여드름피부적합] 아이디얼포맨 시카 올인원 (단품/증정기획)'), NOW(), NOW()),
                                                                                (15800, 'SALE', (SELECT id FROM product WHERE name = '[김혜성PICK/여드름피부적합] 아이디얼포맨 시카 올인원 (단품/증정기획)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022277115ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[김혜성PICK/여드름피부적합] 아이디얼포맨 시카 올인원 (단품/증정기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022277116ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[김혜성PICK/여드름피부적합] 아이디얼포맨 시카 올인원 (단품/증정기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022277104ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[김혜성PICK/여드름피부적합] 아이디얼포맨 시카 올인원 (단품/증정기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022277108ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[김혜성PICK/여드름피부적합] 아이디얼포맨 시카 올인원 (단품/증정기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022277102ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[김혜성PICK/여드름피부적합] 아이디얼포맨 시카 올인원 (단품/증정기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022277107ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[김혜성PICK/여드름피부적합] 아이디얼포맨 시카 올인원 (단품/증정기획)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
         JOIN product p ON po.product_id = p.id
WHERE p.name = '[김혜성PICK/여드름피부적합] 아이디얼포맨 시카 올인원 (단품/증정기획)';


-- ================================

-- 상품: 네이처리퍼블릭 아프리카 버드 옴므 올인원 모이스처라이저 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
    ('네이처리퍼블릭 아프리카 버드 옴므 올인원 모이스처라이저 150ml',
     '네이처리퍼블릭 아프리카 버드 옴므 올인원 모이스처라이저 150ml',
     5.0,
     (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
     (SELECT id FROM brand WHERE name = '네이처리퍼블릭'),
     '판매중',
     NOW(),
     NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
    ('기본 옵션', 0, (SELECT id FROM product WHERE name = '네이처리퍼블릭 아프리카 버드 옴므 올인원 모이스처라이저 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
                                                                                (15000, 'ORIGINAL', (SELECT id FROM product WHERE name = '네이처리퍼블릭 아프리카 버드 옴므 올인원 모이스처라이저 150ml'), NOW(), NOW()),
                                                                                (14500, 'SALE', (SELECT id FROM product WHERE name = '네이처리퍼블릭 아프리카 버드 옴므 올인원 모이스처라이저 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022659802ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '네이처리퍼블릭 아프리카 버드 옴므 올인원 모이스처라이저 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022659805ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '네이처리퍼블릭 아프리카 버드 옴므 올인원 모이스처라이저 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022659804ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '네이처리퍼블릭 아프리카 버드 옴므 올인원 모이스처라이저 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022659803ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '네이처리퍼블릭 아프리카 버드 옴므 올인원 모이스처라이저 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
         JOIN product p ON po.product_id = p.id
WHERE p.name = '네이처리퍼블릭 아프리카 버드 옴므 올인원 모이스처라이저 150ml';


-- ================================

-- 상품: 네이처리퍼블릭 맨 인 블루 올인원 모이스처라이저 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
    ('네이처리퍼블릭 맨 인 블루 올인원 모이스처라이저 150ml',
     '네이처리퍼블릭 맨 인 블루 올인원 모이스처라이저 150ml',
     5.0,
     (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
     (SELECT id FROM brand WHERE name = '네이처리퍼블릭'),
     '판매중',
     NOW(),
     NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
    ('기본 옵션', 0, (SELECT id FROM product WHERE name = '네이처리퍼블릭 맨 인 블루 올인원 모이스처라이저 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
                                                                                (14500, 'ORIGINAL', (SELECT id FROM product WHERE name = '네이처리퍼블릭 맨 인 블루 올인원 모이스처라이저 150ml'), NOW(), NOW()),
                                                                                (14000, 'SALE', (SELECT id FROM product WHERE name = '네이처리퍼블릭 맨 인 블루 올인원 모이스처라이저 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022659702ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '네이처리퍼블릭 맨 인 블루 올인원 모이스처라이저 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022659706ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '네이처리퍼블릭 맨 인 블루 올인원 모이스처라이저 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022659705ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '네이처리퍼블릭 맨 인 블루 올인원 모이스처라이저 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022659704ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '네이처리퍼블릭 맨 인 블루 올인원 모이스처라이저 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022659703ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '네이처리퍼블릭 맨 인 블루 올인원 모이스처라이저 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
         JOIN product p ON po.product_id = p.id
WHERE p.name = '네이처리퍼블릭 맨 인 블루 올인원 모이스처라이저 150ml';


-- ================================

-- 상품: 네이처리퍼블릭 아프리카 버드 옴므 올인원 프레시 밸런서 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
    ('네이처리퍼블릭 아프리카 버드 옴므 올인원 프레시 밸런서 150ml',
     '네이처리퍼블릭 아프리카 버드 옴므 올인원 프레시 밸런서 150ml',
     5.0,
     (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
     (SELECT id FROM brand WHERE name = '네이처리퍼블릭'),
     '판매중',
     NOW(),
     NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
    ('기본 옵션', 0, (SELECT id FROM product WHERE name = '네이처리퍼블릭 아프리카 버드 옴므 올인원 프레시 밸런서 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
                                                                                (15000, 'ORIGINAL', (SELECT id FROM product WHERE name = '네이처리퍼블릭 아프리카 버드 옴므 올인원 프레시 밸런서 150ml'), NOW(), NOW()),
                                                                                (14500, 'SALE', (SELECT id FROM product WHERE name = '네이처리퍼블릭 아프리카 버드 옴므 올인원 프레시 밸런서 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022660002ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '네이처리퍼블릭 아프리카 버드 옴므 올인원 프레시 밸런서 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022660007ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '네이처리퍼블릭 아프리카 버드 옴므 올인원 프레시 밸런서 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022660006ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '네이처리퍼블릭 아프리카 버드 옴므 올인원 프레시 밸런서 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022660005ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '네이처리퍼블릭 아프리카 버드 옴므 올인원 프레시 밸런서 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022660004ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '네이처리퍼블릭 아프리카 버드 옴므 올인원 프레시 밸런서 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022660003ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '네이처리퍼블릭 아프리카 버드 옴므 올인원 프레시 밸런서 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
         JOIN product p ON po.product_id = p.id
WHERE p.name = '네이처리퍼블릭 아프리카 버드 옴므 올인원 프레시 밸런서 150ml';


-- ================================

-- 상품: [NEW/2종추가증정] 이니스프리 포레스트포맨 올인원 에센스 100ml 기획(+에센스 25...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
    ('[NEW/2종추가증정] 이니스프리 포레스트포맨 올인원 에센스 100ml 기획(+에센스 25ml+폼30g)',
     '[NEW/2종추가증정] 이니스프리 포레스트포맨 올인원 에센스 100ml 기획(+에센스 25ml+폼30g)',
     5.0,
     (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
     (SELECT id FROM brand WHERE name = '이니스프리'),
     '판매중',
     NOW(),
     NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
    ('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW/2종추가증정] 이니스프리 포레스트포맨 올인원 에센스 100ml 기획(+에센스 25ml+폼30g)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
                                                                                (29000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW/2종추가증정] 이니스프리 포레스트포맨 올인원 에센스 100ml 기획(+에센스 25ml+폼30g)'), NOW(), NOW()),
                                                                                (20450, 'SALE', (SELECT id FROM product WHERE name = '[NEW/2종추가증정] 이니스프리 포레스트포맨 올인원 에센스 100ml 기획(+에센스 25ml+폼30g)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023076213ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW/2종추가증정] 이니스프리 포레스트포맨 올인원 에센스 100ml 기획(+에센스 25ml+폼30g)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023076204ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW/2종추가증정] 이니스프리 포레스트포맨 올인원 에센스 100ml 기획(+에센스 25ml+폼30g)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023076209ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW/2종추가증정] 이니스프리 포레스트포맨 올인원 에센스 100ml 기획(+에센스 25ml+폼30g)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023076206ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[NEW/2종추가증정] 이니스프리 포레스트포맨 올인원 에센스 100ml 기획(+에센스 25ml+폼30g)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023076207ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[NEW/2종추가증정] 이니스프리 포레스트포맨 올인원 에센스 100ml 기획(+에센스 25ml+폼30g)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
         JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW/2종추가증정] 이니스프리 포레스트포맨 올인원 에센스 100ml 기획(+에센스 25ml+폼30g)';


-- ================================

-- 상품: [NEW 올인원] 빌리프 맨올로지 히알루론 리차저 올인원 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
    ('[NEW 올인원] 빌리프 맨올로지 히알루론 리차저 올인원 100ml',
     '[NEW 올인원] 빌리프 맨올로지 히알루론 리차저 올인원 100ml',
     0.0,
     (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
     (SELECT id FROM brand WHERE name = '빌리프'),
     '판매중',
     NOW(),
     NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
    ('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW 올인원] 빌리프 맨올로지 히알루론 리차저 올인원 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
                                                                                (48000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW 올인원] 빌리프 맨올로지 히알루론 리차저 올인원 100ml'), NOW(), NOW()),
                                                                                (48000, 'SALE', (SELECT id FROM product WHERE name = '[NEW 올인원] 빌리프 맨올로지 히알루론 리차저 올인원 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023298802ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW 올인원] 빌리프 맨올로지 히알루론 리차저 올인원 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023298803ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW 올인원] 빌리프 맨올로지 히알루론 리차저 올인원 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023298804ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW 올인원] 빌리프 맨올로지 히알루론 리차저 올인원 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023298805ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[NEW 올인원] 빌리프 맨올로지 히알루론 리차저 올인원 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023298801ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[NEW 올인원] 빌리프 맨올로지 히알루론 리차저 올인원 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
         JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW 올인원] 빌리프 맨올로지 히알루론 리차저 올인원 100ml';


-- ================================

-- 상품: [NEW 올인원] 빌리프 맨올로지 콜라겐 익스트림 올인원 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
    ('[NEW 올인원] 빌리프 맨올로지 콜라겐 익스트림 올인원 100ml',
     '[NEW 올인원] 빌리프 맨올로지 콜라겐 익스트림 올인원 100ml',
     0.0,
     (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
     (SELECT id FROM brand WHERE name = '빌리프'),
     '판매중',
     NOW(),
     NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
    ('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW 올인원] 빌리프 맨올로지 콜라겐 익스트림 올인원 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
                                                                                (48000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW 올인원] 빌리프 맨올로지 콜라겐 익스트림 올인원 100ml'), NOW(), NOW()),
                                                                                (48000, 'SALE', (SELECT id FROM product WHERE name = '[NEW 올인원] 빌리프 맨올로지 콜라겐 익스트림 올인원 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023298902ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW 올인원] 빌리프 맨올로지 콜라겐 익스트림 올인원 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023298903ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW 올인원] 빌리프 맨올로지 콜라겐 익스트림 올인원 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023298904ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW 올인원] 빌리프 맨올로지 콜라겐 익스트림 올인원 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023298905ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[NEW 올인원] 빌리프 맨올로지 콜라겐 익스트림 올인원 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023298901ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[NEW 올인원] 빌리프 맨올로지 콜라겐 익스트림 올인원 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
         JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW 올인원] 빌리프 맨올로지 콜라겐 익스트림 올인원 100ml';


-- ================================

-- 상품: [NEW 올인원] 빌리프 맨101 톤업 모이스춰라이저 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
    ('[NEW 올인원] 빌리프 맨101 톤업 모이스춰라이저 50ml',
     '[NEW 올인원] 빌리프 맨101 톤업 모이스춰라이저 50ml',
     0.0,
     (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
     (SELECT id FROM brand WHERE name = '빌리프'),
     '판매중',
     NOW(),
     NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
    ('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW 올인원] 빌리프 맨101 톤업 모이스춰라이저 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
                                                                                (37000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW 올인원] 빌리프 맨101 톤업 모이스춰라이저 50ml'), NOW(), NOW()),
                                                                                (37000, 'SALE', (SELECT id FROM product WHERE name = '[NEW 올인원] 빌리프 맨101 톤업 모이스춰라이저 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023299305ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW 올인원] 빌리프 맨101 톤업 모이스춰라이저 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023299306ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW 올인원] 빌리프 맨101 톤업 모이스춰라이저 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023299307ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW 올인원] 빌리프 맨101 톤업 모이스춰라이저 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023299304ko.png?l=ko', 4, (SELECT id FROM product WHERE name = '[NEW 올인원] 빌리프 맨101 톤업 모이스춰라이저 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023299301ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[NEW 올인원] 빌리프 맨101 톤업 모이스춰라이저 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
         JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW 올인원] 빌리프 맨101 톤업 모이스춰라이저 50ml';


-- ================================

-- 상품: [대용량]닥터방기원 시카마이드 블레미쉬 카밍 올인원 300ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
    ('[대용량]닥터방기원 시카마이드 블레미쉬 카밍 올인원 300ml',
     '[대용량]닥터방기원 시카마이드 블레미쉬 카밍 올인원 300ml',
     4.9,
     (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
     (SELECT id FROM brand WHERE name = '닥터방기원'),
     '판매중',
     NOW(),
     NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
    ('시카마이드 카밍 올인원', 17900, (SELECT id FROM product WHERE name = '[대용량]닥터방기원 시카마이드 블레미쉬 카밍 올인원 300ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
                                                                                (17900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[대용량]닥터방기원 시카마이드 블레미쉬 카밍 올인원 300ml'), NOW(), NOW()),
                                                                                (17900, 'SALE', (SELECT id FROM product WHERE name = '[대용량]닥터방기원 시카마이드 블레미쉬 카밍 올인원 300ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/B00000018408402ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[대용량]닥터방기원 시카마이드 블레미쉬 카밍 올인원 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/B00000018408403ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[대용량]닥터방기원 시카마이드 블레미쉬 카밍 올인원 300ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
         JOIN product p ON po.product_id = p.id
WHERE p.name = '[대용량]닥터방기원 시카마이드 블레미쉬 카밍 올인원 300ml';


-- ================================

-- 상품: [대용량]닥터방기원 시카마이드 딥 모이스처 밸런싱 올인원 300ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
    ('[대용량]닥터방기원 시카마이드 딥 모이스처 밸런싱 올인원 300ml',
     '[대용량]닥터방기원 시카마이드 딥 모이스처 밸런싱 올인원 300ml',
     5.0,
     (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
     (SELECT id FROM brand WHERE name = '닥터방기원'),
     '판매중',
     NOW(),
     NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
    ('딥 모이스처 밸런싱 올인원', 17900, (SELECT id FROM product WHERE name = '[대용량]닥터방기원 시카마이드 딥 모이스처 밸런싱 올인원 300ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
                                                                                (17900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[대용량]닥터방기원 시카마이드 딥 모이스처 밸런싱 올인원 300ml'), NOW(), NOW()),
                                                                                (17900, 'SALE', (SELECT id FROM product WHERE name = '[대용량]닥터방기원 시카마이드 딥 모이스처 밸런싱 올인원 300ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/B00000018408601ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[대용량]닥터방기원 시카마이드 딥 모이스처 밸런싱 올인원 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/B00000018408602ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[대용량]닥터방기원 시카마이드 딥 모이스처 밸런싱 올인원 300ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
         JOIN product p ON po.product_id = p.id
WHERE p.name = '[대용량]닥터방기원 시카마이드 딥 모이스처 밸런싱 올인원 300ml';


-- ================================

-- 상품: 블랙몬스터 커스텀 올인원 멀티비타...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
    ('블랙몬스터 커스텀 올인원 멀티비타',
     '블랙몬스터 커스텀 올인원 멀티비타',
     5.0,
     (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
     (SELECT id FROM brand WHERE name = '블랙몬스터'),
     '판매중',
     NOW(),
     NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
    ('기본 옵션', 0, (SELECT id FROM product WHERE name = '블랙몬스터 커스텀 올인원 멀티비타'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
                                                                                (29000, 'ORIGINAL', (SELECT id FROM product WHERE name = '블랙몬스터 커스텀 올인원 멀티비타'), NOW(), NOW()),
                                                                                (29000, 'SALE', (SELECT id FROM product WHERE name = '블랙몬스터 커스텀 올인원 멀티비타'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/B00000022387102ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '블랙몬스터 커스텀 올인원 멀티비타'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
         JOIN product p ON po.product_id = p.id
WHERE p.name = '블랙몬스터 커스텀 올인원 멀티비타';


-- ================================

-- 상품: 블랙몬스터 화이트 올인원 더블 세럼...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
    ('블랙몬스터 화이트 올인원 더블 세럼',
     '블랙몬스터 화이트 올인원 더블 세럼',
     5.0,
     (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
     (SELECT id FROM brand WHERE name = '블랙몬스터'),
     '판매중',
     NOW(),
     NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
    ('기본 옵션', 0, (SELECT id FROM product WHERE name = '블랙몬스터 화이트 올인원 더블 세럼'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
                                                                                (29000, 'ORIGINAL', (SELECT id FROM product WHERE name = '블랙몬스터 화이트 올인원 더블 세럼'), NOW(), NOW()),
                                                                                (29000, 'SALE', (SELECT id FROM product WHERE name = '블랙몬스터 화이트 올인원 더블 세럼'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/B00000022387301ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '블랙몬스터 화이트 올인원 더블 세럼'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
         JOIN product p ON po.product_id = p.id
WHERE p.name = '블랙몬스터 화이트 올인원 더블 세럼';


-- ================================

-- 상품: 블랙몬스터 올인원 올데이 보습 올인원...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
    ('블랙몬스터 올인원 올데이 보습 올인원',
     '블랙몬스터 올인원 올데이 보습 올인원',
     0.0,
     (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
     (SELECT id FROM brand WHERE name = '블랙몬스터'),
     '판매중',
     NOW(),
     NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
    ('기본 옵션', 0, (SELECT id FROM product WHERE name = '블랙몬스터 올인원 올데이 보습 올인원'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
                                                                                (12000, 'ORIGINAL', (SELECT id FROM product WHERE name = '블랙몬스터 올인원 올데이 보습 올인원'), NOW(), NOW()),
                                                                                (12000, 'SALE', (SELECT id FROM product WHERE name = '블랙몬스터 올인원 올데이 보습 올인원'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/B00000023297602ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '블랙몬스터 올인원 올데이 보습 올인원'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/B00000023297603ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '블랙몬스터 올인원 올데이 보습 올인원'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
         JOIN product p ON po.product_id = p.id
WHERE p.name = '블랙몬스터 올인원 올데이 보습 올인원';


-- ================================

-- 상품: [업체배송][기프트포장] 헤라 옴므 올인원 스킨 하이드로 트리트먼트 150ML...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
    ('[업체배송][기프트포장] 헤라 옴므 올인원 스킨 하이드로 트리트먼트 150ML',
     '[업체배송][기프트포장] 헤라 옴므 올인원 스킨 하이드로 트리트먼트 150ML',
     0.0,
     (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
     (SELECT id FROM brand WHERE name = '헤라'),
     '판매중',
     NOW(),
     NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
    ('기본 옵션', 0, (SELECT id FROM product WHERE name = '[업체배송][기프트포장] 헤라 옴므 올인원 스킨 하이드로 트리트먼트 150ML'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
                                                                                (48000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[업체배송][기프트포장] 헤라 옴므 올인원 스킨 하이드로 트리트먼트 150ML'), NOW(), NOW()),
                                                                                (43200, 'SALE', (SELECT id FROM product WHERE name = '[업체배송][기프트포장] 헤라 옴므 올인원 스킨 하이드로 트리트먼트 150ML'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/B00000023413104ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[업체배송][기프트포장] 헤라 옴므 올인원 스킨 하이드로 트리트먼트 150ML'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/B00000023413101ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[업체배송][기프트포장] 헤라 옴므 올인원 스킨 하이드로 트리트먼트 150ML'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
         JOIN product p ON po.product_id = p.id
WHERE p.name = '[업체배송][기프트포장] 헤라 옴므 올인원 스킨 하이드로 트리트먼트 150ML';


-- ================================

-- 상품: 미프 모이스처 올인원 리필 기획세트 200ml+150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
    ('미프 모이스처 올인원 리필 기획세트 200ml+150ml',
     '미프 모이스처 올인원 리필 기획세트 200ml+150ml',
     4.4,
     (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
     (SELECT id FROM brand WHERE name = '미프'),
     '판매중',
     NOW(),
     NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
    ('기본 옵션', 0, (SELECT id FROM product WHERE name = '미프 모이스처 올인원 리필 기획세트 200ml+150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
                                                                                (34000, 'ORIGINAL', (SELECT id FROM product WHERE name = '미프 모이스처 올인원 리필 기획세트 200ml+150ml'), NOW(), NOW()),
                                                                                (32900, 'SALE', (SELECT id FROM product WHERE name = '미프 모이스처 올인원 리필 기획세트 200ml+150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0010/A00000010783703ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '미프 모이스처 올인원 리필 기획세트 200ml+150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0010/A00000010783706ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '미프 모이스처 올인원 리필 기획세트 200ml+150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0010/A00000010783705ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '미프 모이스처 올인원 리필 기획세트 200ml+150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0010/A00000010783704ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '미프 모이스처 올인원 리필 기획세트 200ml+150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
         JOIN product p ON po.product_id = p.id
WHERE p.name = '미프 모이스처 올인원 리필 기획세트 200ml+150ml';


-- ================================

-- 상품: 라끌랑 남자를 위한 올인원 로션 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
    ('라끌랑 남자를 위한 올인원 로션 150ml',
     '라끌랑 남자를 위한 올인원 로션 150ml',
     4.6,
     (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
     (SELECT id FROM brand WHERE name = '라끌랑'),
     '판매중',
     NOW(),
     NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
    ('기본 옵션', 0, (SELECT id FROM product WHERE name = '라끌랑 남자를 위한 올인원 로션 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
                                                                                (35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '라끌랑 남자를 위한 올인원 로션 150ml'), NOW(), NOW()),
                                                                                (31500, 'SALE', (SELECT id FROM product WHERE name = '라끌랑 남자를 위한 올인원 로션 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013080901ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '라끌랑 남자를 위한 올인원 로션 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
         JOIN product p ON po.product_id = p.id
WHERE p.name = '라끌랑 남자를 위한 올인원 로션 150ml';


-- ================================

-- 상품: 디오디너리 100% 나이아신아마이드 파우더 20g...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
    ('디오디너리 100% 나이아신아마이드 파우더 20g',
     '디오디너리 100% 나이아신아마이드 파우더 20g',
     4.7,
     (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
     (SELECT id FROM brand WHERE name = '디오디너리'),
     '판매중',
     NOW(),
     NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
    ('기본 옵션', 0, (SELECT id FROM product WHERE name = '디오디너리 100% 나이아신아마이드 파우더 20g'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
                                                                                (8000, 'ORIGINAL', (SELECT id FROM product WHERE name = '디오디너리 100% 나이아신아마이드 파우더 20g'), NOW(), NOW()),
                                                                                (8000, 'SALE', (SELECT id FROM product WHERE name = '디오디너리 100% 나이아신아마이드 파우더 20g'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014397304ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '디오디너리 100% 나이아신아마이드 파우더 20g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014397303ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '디오디너리 100% 나이아신아마이드 파우더 20g'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
         JOIN product p ON po.product_id = p.id
WHERE p.name = '디오디너리 100% 나이아신아마이드 파우더 20g';


-- ================================

-- 상품: 플리프 시카-알로에 카밍 올인원 로션 200ml (트러블 피부용)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
    ('플리프 시카-알로에 카밍 올인원 로션 200ml (트러블 피부용)',
     '플리프 시카-알로에 카밍 올인원 로션 200ml (트러블 피부용)',
     4.8,
     (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
     (SELECT id FROM brand WHERE name = '플리프'),
     '판매중',
     NOW(),
     NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
    ('기본 옵션', 0, (SELECT id FROM product WHERE name = '플리프 시카-알로에 카밍 올인원 로션 200ml (트러블 피부용)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
                                                                                (24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '플리프 시카-알로에 카밍 올인원 로션 200ml (트러블 피부용)'), NOW(), NOW()),
                                                                                (18800, 'SALE', (SELECT id FROM product WHERE name = '플리프 시카-알로에 카밍 올인원 로션 200ml (트러블 피부용)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014583512ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '플리프 시카-알로에 카밍 올인원 로션 200ml (트러블 피부용)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014583513ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '플리프 시카-알로에 카밍 올인원 로션 200ml (트러블 피부용)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
         JOIN product p ON po.product_id = p.id
WHERE p.name = '플리프 시카-알로에 카밍 올인원 로션 200ml (트러블 피부용)';


-- ================================

-- 상품: 플리프 시카-알로에 밸런싱 올인원 로션 (본품200ml+50ml 추가 증정)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
    ('플리프 시카-알로에 밸런싱 올인원 로션 (본품200ml+50ml 추가 증정)',
     '플리프 시카-알로에 밸런싱 올인원 로션 (본품200ml+50ml 추가 증정)',
     4.8,
     (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
     (SELECT id FROM brand WHERE name = '플리프'),
     '판매중',
     NOW(),
     NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
    ('기본 옵션', 0, (SELECT id FROM product WHERE name = '플리프 시카-알로에 밸런싱 올인원 로션 (본품200ml+50ml 추가 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
                                                                                (23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '플리프 시카-알로에 밸런싱 올인원 로션 (본품200ml+50ml 추가 증정)'), NOW(), NOW()),
                                                                                (18400, 'SALE', (SELECT id FROM product WHERE name = '플리프 시카-알로에 밸런싱 올인원 로션 (본품200ml+50ml 추가 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014583808ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '플리프 시카-알로에 밸런싱 올인원 로션 (본품200ml+50ml 추가 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014583809ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '플리프 시카-알로에 밸런싱 올인원 로션 (본품200ml+50ml 추가 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014583807ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '플리프 시카-알로에 밸런싱 올인원 로션 (본품200ml+50ml 추가 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
         JOIN product p ON po.product_id = p.id
WHERE p.name = '플리프 시카-알로에 밸런싱 올인원 로션 (본품200ml+50ml 추가 증정)';


-- ================================

-- 상품: 비얼라우 무화과,부활초 비건 올인원 200g+30g 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
    ('비얼라우 무화과,부활초 비건 올인원 200g+30g 기획',
     '비얼라우 무화과,부활초 비건 올인원 200g+30g 기획',
     5.0,
     (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
     (SELECT id FROM brand WHERE name = '비얼라우'),
     '판매중',
     NOW(),
     NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
    ('기본 옵션', 0, (SELECT id FROM product WHERE name = '비얼라우 무화과,부활초 비건 올인원 200g+30g 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
                                                                                (32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '비얼라우 무화과,부활초 비건 올인원 200g+30g 기획'), NOW(), NOW()),
                                                                                (32000, 'SALE', (SELECT id FROM product WHERE name = '비얼라우 무화과,부활초 비건 올인원 200g+30g 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016127906ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '비얼라우 무화과,부활초 비건 올인원 200g+30g 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016127907ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '비얼라우 무화과,부활초 비건 올인원 200g+30g 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
         JOIN product p ON po.product_id = p.id
WHERE p.name = '비얼라우 무화과,부활초 비건 올인원 200g+30g 기획';


-- ================================

-- 상품: 비얼라우 콤부차,레몬 비건 올인원 200g+30g 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
    ('비얼라우 콤부차,레몬 비건 올인원 200g+30g 기획',
     '비얼라우 콤부차,레몬 비건 올인원 200g+30g 기획',
     5.0,
     (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
     (SELECT id FROM brand WHERE name = '비얼라우'),
     '판매중',
     NOW(),
     NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
    ('기본 옵션', 0, (SELECT id FROM product WHERE name = '비얼라우 콤부차,레몬 비건 올인원 200g+30g 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
                                                                                (32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '비얼라우 콤부차,레몬 비건 올인원 200g+30g 기획'), NOW(), NOW()),
                                                                                (32000, 'SALE', (SELECT id FROM product WHERE name = '비얼라우 콤부차,레몬 비건 올인원 200g+30g 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016128209ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '비얼라우 콤부차,레몬 비건 올인원 200g+30g 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016128210ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '비얼라우 콤부차,레몬 비건 올인원 200g+30g 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
         JOIN product p ON po.product_id = p.id
WHERE p.name = '비얼라우 콤부차,레몬 비건 올인원 200g+30g 기획';


-- ================================

-- 상품: 스케다 스킨 브라이트 올인원 135ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
    ('스케다 스킨 브라이트 올인원 135ml',
     '스케다 스킨 브라이트 올인원 135ml',
     4.7,
     (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
     (SELECT id FROM brand WHERE name = '스케다'),
     '판매중',
     NOW(),
     NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
    ('기본 옵션', 0, (SELECT id FROM product WHERE name = '스케다 스킨 브라이트 올인원 135ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
                                                                                (22000, 'ORIGINAL', (SELECT id FROM product WHERE name = '스케다 스킨 브라이트 올인원 135ml'), NOW(), NOW()),
                                                                                (15400, 'SALE', (SELECT id FROM product WHERE name = '스케다 스킨 브라이트 올인원 135ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016481902ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '스케다 스킨 브라이트 올인원 135ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
         JOIN product p ON po.product_id = p.id
WHERE p.name = '스케다 스킨 브라이트 올인원 135ml';


-- ================================

-- 상품: BRTC 트레이너 옴므 올인원 밀크 200ml 기획 (+50ml 증정)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
    ('BRTC 트레이너 옴므 올인원 밀크 200ml 기획 (+50ml 증정)',
     'BRTC 트레이너 옴므 올인원 밀크 200ml 기획 (+50ml 증정)',
     5.0,
     (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
     (SELECT id FROM brand WHERE name = '비알티씨'),
     '판매중',
     NOW(),
     NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
    ('기본 옵션', 0, (SELECT id FROM product WHERE name = 'BRTC 트레이너 옴므 올인원 밀크 200ml 기획 (+50ml 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
                                                                                (30000, 'ORIGINAL', (SELECT id FROM product WHERE name = 'BRTC 트레이너 옴므 올인원 밀크 200ml 기획 (+50ml 증정)'), NOW(), NOW()),
                                                                                (30000, 'SALE', (SELECT id FROM product WHERE name = 'BRTC 트레이너 옴므 올인원 밀크 200ml 기획 (+50ml 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016560308ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = 'BRTC 트레이너 옴므 올인원 밀크 200ml 기획 (+50ml 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
         JOIN product p ON po.product_id = p.id
WHERE p.name = 'BRTC 트레이너 옴므 올인원 밀크 200ml 기획 (+50ml 증정)';


-- ================================

-- 상품: 아이디얼포맨 시카 올인원(토트넘 콜라보 더블 기획/증정기획)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
    ('아이디얼포맨 시카 올인원(토트넘 콜라보 더블 기획/증정기획)',
     '아이디얼포맨 시카 올인원(토트넘 콜라보 더블 기획/증정기획)',
     4.9,
     (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1),
     (SELECT id FROM brand WHERE name = '아이디얼포맨'),
     '판매중',
     NOW(),
     NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
    ('기본 옵션', 0, (SELECT id FROM product WHERE name = '아이디얼포맨 시카 올인원(토트넘 콜라보 더블 기획/증정기획)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
                                                                                (37800, 'ORIGINAL', (SELECT id FROM product WHERE name = '아이디얼포맨 시카 올인원(토트넘 콜라보 더블 기획/증정기획)'), NOW(), NOW()),
                                                                                (15800, 'SALE', (SELECT id FROM product WHERE name = '아이디얼포맨 시카 올인원(토트넘 콜라보 더블 기획/증정기획)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021739502ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아이디얼포맨 시카 올인원(토트넘 콜라보 더블 기획/증정기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021739504ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아이디얼포맨 시카 올인원(토트넘 콜라보 더블 기획/증정기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
    ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021739503ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아이디얼포맨 시카 올인원(토트넘 콜라보 더블 기획/증정기획)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
         JOIN product p ON po.product_id = p.id
WHERE p.name = '아이디얼포맨 시카 올인원(토트넘 콜라보 더블 기획/증정기획)';

-- ================================
