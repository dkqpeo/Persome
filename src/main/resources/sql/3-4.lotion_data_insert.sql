-- 상품: [미니언즈 한정 에디션] 온그리디언츠 스킨 베리어 카밍 로션 기획(220ml+80ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[미니언즈 한정 에디션] 온그리디언츠 스킨 베리어 카밍 로션 기획(220ml+80ml)',
 '[미니언즈 한정 에디션] 온그리디언츠 스킨 베리어 카밍 로션 기획(220ml+80ml)',
 4.9,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '온그리디언츠'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[미니언즈 한정 에디션] 온그리디언츠 스킨 베리어 카밍 로션 기획(220ml+80ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[미니언즈 한정 에디션] 온그리디언츠 스킨 베리어 카밍 로션 기획(220ml+80ml)'), NOW(), NOW()),
(30510, 'SALE', (SELECT id FROM product WHERE name = '[미니언즈 한정 에디션] 온그리디언츠 스킨 베리어 카밍 로션 기획(220ml+80ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022932208ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[미니언즈 한정 에디션] 온그리디언츠 스킨 베리어 카밍 로션 기획(220ml+80ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022932209ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[미니언즈 한정 에디션] 온그리디언츠 스킨 베리어 카밍 로션 기획(220ml+80ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022932204ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[미니언즈 한정 에디션] 온그리디언츠 스킨 베리어 카밍 로션 기획(220ml+80ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[미니언즈 한정 에디션] 온그리디언츠 스킨 베리어 카밍 로션 기획(220ml+80ml)';


-- ================================

-- 상품: [9월 올영픽]피지오겔 DMT 페이셜 로션 200ml 기획 (+로션 50ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽]피지오겔 DMT 페이셜 로션 200ml 기획 (+로션 50ml)',
 '[9월 올영픽]피지오겔 DMT 페이셜 로션 200ml 기획 (+로션 50ml)',
 4.9,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '피지오겔'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9월 올영픽]피지오겔 DMT 페이셜 로션 200ml 기획 (+로션 50ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽]피지오겔 DMT 페이셜 로션 200ml 기획 (+로션 50ml)'), NOW(), NOW()),
(18390, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽]피지오겔 DMT 페이셜 로션 200ml 기획 (+로션 50ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023218605ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽]피지오겔 DMT 페이셜 로션 200ml 기획 (+로션 50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023218606ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽]피지오겔 DMT 페이셜 로션 200ml 기획 (+로션 50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023218604ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽]피지오겔 DMT 페이셜 로션 200ml 기획 (+로션 50ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[9월 올영픽]피지오겔 DMT 페이셜 로션 200ml 기획 (+로션 50ml)';


-- ================================

-- 상품: 에스트라 아토베리어365 로션 150ml 기획 (하이드로에센스 25ml+세라-히알 속수분 ...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('에스트라 아토베리어365 로션 150ml 기획 (하이드로에센스 25ml+세라-히알 속수분 앰플 7ml)',
 '에스트라 아토베리어365 로션 150ml 기획 (하이드로에센스 25ml+세라-히알 속수분 앰플 7ml)',
 4.9,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에스트라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '에스트라 아토베리어365 로션 150ml 기획 (하이드로에센스 25ml+세라-히알 속수분 앰플 7ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '에스트라 아토베리어365 로션 150ml 기획 (하이드로에센스 25ml+세라-히알 속수분 앰플 7ml)'), NOW(), NOW()),
(28000, 'SALE', (SELECT id FROM product WHERE name = '에스트라 아토베리어365 로션 150ml 기획 (하이드로에센스 25ml+세라-히알 속수분 앰플 7ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022283403ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '에스트라 아토베리어365 로션 150ml 기획 (하이드로에센스 25ml+세라-히알 속수분 앰플 7ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022283404ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '에스트라 아토베리어365 로션 150ml 기획 (하이드로에센스 25ml+세라-히알 속수분 앰플 7ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022283402ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '에스트라 아토베리어365 로션 150ml 기획 (하이드로에센스 25ml+세라-히알 속수분 앰플 7ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '에스트라 아토베리어365 로션 150ml 기획 (하이드로에센스 25ml+세라-히알 속수분 앰플 7ml)';


-- ================================

-- 상품: 제로이드 수딩 로션 160ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('제로이드 수딩 로션 160ml',
 '제로이드 수딩 로션 160ml',
 4.7,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '제로이드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '제로이드 수딩 로션 160ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '제로이드 수딩 로션 160ml'), NOW(), NOW()),
(30000, 'SALE', (SELECT id FROM product WHERE name = '제로이드 수딩 로션 160ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020990408ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '제로이드 수딩 로션 160ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020990401ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '제로이드 수딩 로션 160ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '제로이드 수딩 로션 160ml';


-- ================================

-- 상품: 제로이드 인텐시브 로션 160ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('제로이드 인텐시브 로션 160ml',
 '제로이드 인텐시브 로션 160ml',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '제로이드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '제로이드 인텐시브 로션 160ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '제로이드 인텐시브 로션 160ml'), NOW(), NOW()),
(28800, 'SALE', (SELECT id FROM product WHERE name = '제로이드 인텐시브 로션 160ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020941902ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '제로이드 인텐시브 로션 160ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020941901ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '제로이드 인텐시브 로션 160ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '제로이드 인텐시브 로션 160ml';


-- ================================

-- 상품: 에스트라 아토베리어365 로션 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('에스트라 아토베리어365 로션 150ml',
 '에스트라 아토베리어365 로션 150ml',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에스트라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '에스트라 아토베리어365 로션 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '에스트라 아토베리어365 로션 150ml'), NOW(), NOW()),
(28000, 'SALE', (SELECT id FROM product WHERE name = '에스트라 아토베리어365 로션 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019832102ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '에스트라 아토베리어365 로션 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019832103ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '에스트라 아토베리어365 로션 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '에스트라 아토베리어365 로션 150ml';


-- ================================

-- 상품: [저자극/대용량] 라운드랩 1025 독도 로션 400ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[저자극/대용량] 라운드랩 1025 독도 로션 400ml',
 '[저자극/대용량] 라운드랩 1025 독도 로션 400ml',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라운드랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[저자극/대용량] 라운드랩 1025 독도 로션 400ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[저자극/대용량] 라운드랩 1025 독도 로션 400ml'), NOW(), NOW()),
(25600, 'SALE', (SELECT id FROM product WHERE name = '[저자극/대용량] 라운드랩 1025 독도 로션 400ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016150812ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[저자극/대용량] 라운드랩 1025 독도 로션 400ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016150808ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[저자극/대용량] 라운드랩 1025 독도 로션 400ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016150809ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[저자극/대용량] 라운드랩 1025 독도 로션 400ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016150811ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[저자극/대용량] 라운드랩 1025 독도 로션 400ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[저자극/대용량] 라운드랩 1025 독도 로션 400ml';


-- ================================

-- 상품: [민감진정/화해1위] 라운드랩 포 맨 소나무 진정 시카 로션 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[민감진정/화해1위] 라운드랩 포 맨 소나무 진정 시카 로션 200ml',
 '[민감진정/화해1위] 라운드랩 포 맨 소나무 진정 시카 로션 200ml',
 4.9,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라운드랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[민감진정/화해1위] 라운드랩 포 맨 소나무 진정 시카 로션 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[민감진정/화해1위] 라운드랩 포 맨 소나무 진정 시카 로션 200ml'), NOW(), NOW()),
(18500, 'SALE', (SELECT id FROM product WHERE name = '[민감진정/화해1위] 라운드랩 포 맨 소나무 진정 시카 로션 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019915407ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[민감진정/화해1위] 라운드랩 포 맨 소나무 진정 시카 로션 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019915406ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[민감진정/화해1위] 라운드랩 포 맨 소나무 진정 시카 로션 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019915403ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[민감진정/화해1위] 라운드랩 포 맨 소나무 진정 시카 로션 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[민감진정/화해1위] 라운드랩 포 맨 소나무 진정 시카 로션 200ml';


-- ================================

-- 상품: 피지오겔 레드수딩 AI 진정보습 로션 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('피지오겔 레드수딩 AI 진정보습 로션 200ml',
 '피지오겔 레드수딩 AI 진정보습 로션 200ml',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '피지오겔'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '피지오겔 레드수딩 AI 진정보습 로션 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(37500, 'ORIGINAL', (SELECT id FROM product WHERE name = '피지오겔 레드수딩 AI 진정보습 로션 200ml'), NOW(), NOW()),
(30000, 'SALE', (SELECT id FROM product WHERE name = '피지오겔 레드수딩 AI 진정보습 로션 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012977111ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '피지오겔 레드수딩 AI 진정보습 로션 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012977110ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '피지오겔 레드수딩 AI 진정보습 로션 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012977109ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '피지오겔 레드수딩 AI 진정보습 로션 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012977106ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '피지오겔 레드수딩 AI 진정보습 로션 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '피지오겔 레드수딩 AI 진정보습 로션 200ml';


-- ================================

-- 상품: [수분진정] 라운드랩 포 맨 자작나무 수분 로션 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분진정] 라운드랩 포 맨 자작나무 수분 로션 200ml',
 '[수분진정] 라운드랩 포 맨 자작나무 수분 로션 200ml',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라운드랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분진정] 라운드랩 포 맨 자작나무 수분 로션 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분진정] 라운드랩 포 맨 자작나무 수분 로션 200ml'), NOW(), NOW()),
(24000, 'SALE', (SELECT id FROM product WHERE name = '[수분진정] 라운드랩 포 맨 자작나무 수분 로션 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016349420ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분진정] 라운드랩 포 맨 자작나무 수분 로션 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016349421ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분진정] 라운드랩 포 맨 자작나무 수분 로션 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분진정] 라운드랩 포 맨 자작나무 수분 로션 200ml';


-- ================================

-- 상품: 피지오겔 시카밸런스 포맨 카밍 플루이드 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('피지오겔 시카밸런스 포맨 카밍 플루이드 100ml',
 '피지오겔 시카밸런스 포맨 카밍 플루이드 100ml',
 4.9,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '피지오겔'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '피지오겔 시카밸런스 포맨 카밍 플루이드 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '피지오겔 시카밸런스 포맨 카밍 플루이드 100ml'), NOW(), NOW()),
(29900, 'SALE', (SELECT id FROM product WHERE name = '피지오겔 시카밸런스 포맨 카밍 플루이드 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020539201ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '피지오겔 시카밸런스 포맨 카밍 플루이드 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020539202ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '피지오겔 시카밸런스 포맨 카밍 플루이드 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '피지오겔 시카밸런스 포맨 카밍 플루이드 100ml';


-- ================================

-- 상품: 디오디너리 그랜액티브 레티노이드 2% 에멀전 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('디오디너리 그랜액티브 레티노이드 2% 에멀전 30ml',
 '디오디너리 그랜액티브 레티노이드 2% 에멀전 30ml',
 4.6,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '디오디너리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '디오디너리 그랜액티브 레티노이드 2% 에멀전 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(18400, 'ORIGINAL', (SELECT id FROM product WHERE name = '디오디너리 그랜액티브 레티노이드 2% 에멀전 30ml'), NOW(), NOW()),
(18400, 'SALE', (SELECT id FROM product WHERE name = '디오디너리 그랜액티브 레티노이드 2% 에멀전 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014872904ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '디오디너리 그랜액티브 레티노이드 2% 에멀전 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014872903ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '디오디너리 그랜액티브 레티노이드 2% 에멀전 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '디오디너리 그랜액티브 레티노이드 2% 에멀전 30ml';


-- ================================

-- 상품: 아누아 어성초 70 데일리 로션 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아누아 어성초 70 데일리 로션 200ml',
 '아누아 어성초 70 데일리 로션 200ml',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아누아'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아누아 어성초 70 데일리 로션 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아누아 어성초 70 데일리 로션 200ml'), NOW(), NOW()),
(21900, 'SALE', (SELECT id FROM product WHERE name = '아누아 어성초 70 데일리 로션 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021114002ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아누아 어성초 70 데일리 로션 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021114001ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아누아 어성초 70 데일리 로션 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021114003ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아누아 어성초 70 데일리 로션 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아누아 어성초 70 데일리 로션 200ml';


-- ================================

-- 상품: 폴라초이스 리지스트 데일리 5% 아하 데일리 각질제거제 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('폴라초이스 리지스트 데일리 5% 아하 데일리 각질제거제 50ml',
 '폴라초이스 리지스트 데일리 5% 아하 데일리 각질제거제 50ml',
 4.9,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '폴라초이스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '폴라초이스 리지스트 데일리 5% 아하 데일리 각질제거제 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(55000, 'ORIGINAL', (SELECT id FROM product WHERE name = '폴라초이스 리지스트 데일리 5% 아하 데일리 각질제거제 50ml'), NOW(), NOW()),
(44000, 'SALE', (SELECT id FROM product WHERE name = '폴라초이스 리지스트 데일리 5% 아하 데일리 각질제거제 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014403605ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '폴라초이스 리지스트 데일리 5% 아하 데일리 각질제거제 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014403607ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '폴라초이스 리지스트 데일리 5% 아하 데일리 각질제거제 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014403606ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '폴라초이스 리지스트 데일리 5% 아하 데일리 각질제거제 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '폴라초이스 리지스트 데일리 5% 아하 데일리 각질제거제 50ml';


-- ================================

-- 상품: [장벽/보습]아벤느 트릭세라 뉴트리-플루이드 로션 200ml 더블 기획 *윤광 *광채 크림...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[장벽/보습]아벤느 트릭세라 뉴트리-플루이드 로션 200ml 더블 기획 *윤광 *광채 크림',
 '[장벽/보습]아벤느 트릭세라 뉴트리-플루이드 로션 200ml 더블 기획 *윤광 *광채 크림',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아벤느'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[장벽/보습]아벤느 트릭세라 뉴트리-플루이드 로션 200ml 더블 기획 *윤광 *광채 크림'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(44000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[장벽/보습]아벤느 트릭세라 뉴트리-플루이드 로션 200ml 더블 기획 *윤광 *광채 크림'), NOW(), NOW()),
(44000, 'SALE', (SELECT id FROM product WHERE name = '[장벽/보습]아벤느 트릭세라 뉴트리-플루이드 로션 200ml 더블 기획 *윤광 *광채 크림'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020693405ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[장벽/보습]아벤느 트릭세라 뉴트리-플루이드 로션 200ml 더블 기획 *윤광 *광채 크림'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020693415ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[장벽/보습]아벤느 트릭세라 뉴트리-플루이드 로션 200ml 더블 기획 *윤광 *광채 크림'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020693414ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[장벽/보습]아벤느 트릭세라 뉴트리-플루이드 로션 200ml 더블 기획 *윤광 *광채 크림'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020693413ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[장벽/보습]아벤느 트릭세라 뉴트리-플루이드 로션 200ml 더블 기획 *윤광 *광채 크림'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020693409ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[장벽/보습]아벤느 트릭세라 뉴트리-플루이드 로션 200ml 더블 기획 *윤광 *광채 크림'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020693408ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[장벽/보습]아벤느 트릭세라 뉴트리-플루이드 로션 200ml 더블 기획 *윤광 *광채 크림'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[장벽/보습]아벤느 트릭세라 뉴트리-플루이드 로션 200ml 더블 기획 *윤광 *광채 크림';


-- ================================

-- 상품: [화잘먹로션/속광케어] 온그리디언츠 스킨 베리어 카밍 로션 기획 (220ml+80ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[화잘먹로션/속광케어] 온그리디언츠 스킨 베리어 카밍 로션 기획 (220ml+80ml)',
 '[화잘먹로션/속광케어] 온그리디언츠 스킨 베리어 카밍 로션 기획 (220ml+80ml)',
 4.9,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '온그리디언츠'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('로션 기획(220ml+80ml)', 39900, (SELECT id FROM product WHERE name = '[화잘먹로션/속광케어] 온그리디언츠 스킨 베리어 카밍 로션 기획 (220ml+80ml)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[콜라보] 로션 기획(300ml+스티커)', 30510, (SELECT id FROM product WHERE name = '[화잘먹로션/속광케어] 온그리디언츠 스킨 베리어 카밍 로션 기획 (220ml+80ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[화잘먹로션/속광케어] 온그리디언츠 스킨 베리어 카밍 로션 기획 (220ml+80ml)'), NOW(), NOW()),
(39900, 'SALE', (SELECT id FROM product WHERE name = '[화잘먹로션/속광케어] 온그리디언츠 스킨 베리어 카밍 로션 기획 (220ml+80ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020635215ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[화잘먹로션/속광케어] 온그리디언츠 스킨 베리어 카밍 로션 기획 (220ml+80ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020635209ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[화잘먹로션/속광케어] 온그리디언츠 스킨 베리어 카밍 로션 기획 (220ml+80ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020635214ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[화잘먹로션/속광케어] 온그리디언츠 스킨 베리어 카밍 로션 기획 (220ml+80ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020635207ko.png?l=ko', 4, (SELECT id FROM product WHERE name = '[화잘먹로션/속광케어] 온그리디언츠 스킨 베리어 카밍 로션 기획 (220ml+80ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020635213ko.png?l=ko', 5, (SELECT id FROM product WHERE name = '[화잘먹로션/속광케어] 온그리디언츠 스킨 베리어 카밍 로션 기획 (220ml+80ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020635204ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[화잘먹로션/속광케어] 온그리디언츠 스킨 베리어 카밍 로션 기획 (220ml+80ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[화잘먹로션/속광케어] 온그리디언츠 스킨 베리어 카밍 로션 기획 (220ml+80ml)';


-- ================================

-- 상품: 토리든 다이브인 포맨 저분자 히알루론산 젤 로션 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('토리든 다이브인 포맨 저분자 히알루론산 젤 로션 200ml',
 '토리든 다이브인 포맨 저분자 히알루론산 젤 로션 200ml',
 4.9,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '토리든'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '토리든 다이브인 포맨 저분자 히알루론산 젤 로션 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(22000, 'ORIGINAL', (SELECT id FROM product WHERE name = '토리든 다이브인 포맨 저분자 히알루론산 젤 로션 200ml'), NOW(), NOW()),
(18400, 'SALE', (SELECT id FROM product WHERE name = '토리든 다이브인 포맨 저분자 히알루론산 젤 로션 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020669209ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '토리든 다이브인 포맨 저분자 히알루론산 젤 로션 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020669208ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '토리든 다이브인 포맨 저분자 히알루론산 젤 로션 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '토리든 다이브인 포맨 저분자 히알루론산 젤 로션 200ml';


-- ================================

-- 상품: 아이오페 맨 안티에이징 에멀젼EX 120ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아이오페 맨 안티에이징 에멀젼EX 120ml',
 '아이오페 맨 안티에이징 에멀젼EX 120ml',
 4.9,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이오페'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아이오페 맨 안티에이징 에멀젼EX 120ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(36000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아이오페 맨 안티에이징 에멀젼EX 120ml'), NOW(), NOW()),
(36000, 'SALE', (SELECT id FROM product WHERE name = '아이오페 맨 안티에이징 에멀젼EX 120ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018466408ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '아이오페 맨 안티에이징 에멀젼EX 120ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아이오페 맨 안티에이징 에멀젼EX 120ml';


-- ================================

-- 상품: [속보습] 닥터지 더모이스처 배리어 D 로션 200ml 증정 기획 (200ml+30ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[속보습] 닥터지 더모이스처 배리어 D 로션 200ml 증정 기획 (200ml+30ml)',
 '[속보습] 닥터지 더모이스처 배리어 D 로션 200ml 증정 기획 (200ml+30ml)',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터지'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[속보습] 닥터지 더모이스처 배리어 D 로션 200ml 증정 기획 (200ml+30ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(34000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[속보습] 닥터지 더모이스처 배리어 D 로션 200ml 증정 기획 (200ml+30ml)'), NOW(), NOW()),
(34000, 'SALE', (SELECT id FROM product WHERE name = '[속보습] 닥터지 더모이스처 배리어 D 로션 200ml 증정 기획 (200ml+30ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016365509ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[속보습] 닥터지 더모이스처 배리어 D 로션 200ml 증정 기획 (200ml+30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016365510ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[속보습] 닥터지 더모이스처 배리어 D 로션 200ml 증정 기획 (200ml+30ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[속보습] 닥터지 더모이스처 배리어 D 로션 200ml 증정 기획 (200ml+30ml)';


-- ================================

-- 상품: 리얼베리어 익스트림 로션 150ml 기획 (+50ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('리얼베리어 익스트림 로션 150ml 기획 (+50ml)',
 '리얼베리어 익스트림 로션 150ml 기획 (+50ml)',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '리얼베리어'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '리얼베리어 익스트림 로션 150ml 기획 (+50ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '리얼베리어 익스트림 로션 150ml 기획 (+50ml)'), NOW(), NOW()),
(30000, 'SALE', (SELECT id FROM product WHERE name = '리얼베리어 익스트림 로션 150ml 기획 (+50ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019966502ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '리얼베리어 익스트림 로션 150ml 기획 (+50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019966501ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '리얼베리어 익스트림 로션 150ml 기획 (+50ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '리얼베리어 익스트림 로션 150ml 기획 (+50ml)';


-- ================================

-- 상품: 플라스킨 흰두유 릴리프 단백질 로션 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('플라스킨 흰두유 릴리프 단백질 로션 150ml',
 '플라스킨 흰두유 릴리프 단백질 로션 150ml',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '플라스킨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '플라스킨 흰두유 릴리프 단백질 로션 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '플라스킨 흰두유 릴리프 단백질 로션 150ml'), NOW(), NOW()),
(25000, 'SALE', (SELECT id FROM product WHERE name = '플라스킨 흰두유 릴리프 단백질 로션 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019983409ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '플라스킨 흰두유 릴리프 단백질 로션 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019983405ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '플라스킨 흰두유 릴리프 단백질 로션 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019983404ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '플라스킨 흰두유 릴리프 단백질 로션 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019983403ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '플라스킨 흰두유 릴리프 단백질 로션 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019983401ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '플라스킨 흰두유 릴리프 단백질 로션 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019983410ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '플라스킨 흰두유 릴리프 단백질 로션 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '플라스킨 흰두유 릴리프 단백질 로션 150ml';


-- ================================

-- 상품: [진정/속보습] 센텔리안24 마데카 데일리 리페어 에센스로션 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[진정/속보습] 센텔리안24 마데카 데일리 리페어 에센스로션 100ml',
 '[진정/속보습] 센텔리안24 마데카 데일리 리페어 에센스로션 100ml',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '센텔리안24'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[진정/속보습] 센텔리안24 마데카 데일리 리페어 에센스로션 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[진정/속보습] 센텔리안24 마데카 데일리 리페어 에센스로션 100ml'), NOW(), NOW()),
(21000, 'SALE', (SELECT id FROM product WHERE name = '[진정/속보습] 센텔리안24 마데카 데일리 리페어 에센스로션 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017925706ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[진정/속보습] 센텔리안24 마데카 데일리 리페어 에센스로션 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017925705ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[진정/속보습] 센텔리안24 마데카 데일리 리페어 에센스로션 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[진정/속보습] 센텔리안24 마데카 데일리 리페어 에센스로션 100ml';


-- ================================

-- 상품: [저자극] 라운드랩 1025 독도 로션 200ml 기획 (+50ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[저자극] 라운드랩 1025 독도 로션 200ml 기획 (+50ml)',
 '[저자극] 라운드랩 1025 독도 로션 200ml 기획 (+50ml)',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라운드랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[저자극] 라운드랩 1025 독도 로션 200ml 기획 (+50ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(20000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[저자극] 라운드랩 1025 독도 로션 200ml 기획 (+50ml)'), NOW(), NOW()),
(17900, 'SALE', (SELECT id FROM product WHERE name = '[저자극] 라운드랩 1025 독도 로션 200ml 기획 (+50ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014557626ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[저자극] 라운드랩 1025 독도 로션 200ml 기획 (+50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014557627ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[저자극] 라운드랩 1025 독도 로션 200ml 기획 (+50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014557624ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[저자극] 라운드랩 1025 독도 로션 200ml 기획 (+50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014557625ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[저자극] 라운드랩 1025 독도 로션 200ml 기획 (+50ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[저자극] 라운드랩 1025 독도 로션 200ml 기획 (+50ml)';


-- ================================

-- 상품: 싸이닉 더 심플 데일리 로션 260ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('싸이닉 더 심플 데일리 로션 260ml',
 '싸이닉 더 심플 데일리 로션 260ml',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '싸이닉'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '싸이닉 더 심플 데일리 로션 260ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(18000, 'ORIGINAL', (SELECT id FROM product WHERE name = '싸이닉 더 심플 데일리 로션 260ml'), NOW(), NOW()),
(9900, 'SALE', (SELECT id FROM product WHERE name = '싸이닉 더 심플 데일리 로션 260ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013707813ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '싸이닉 더 심플 데일리 로션 260ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '싸이닉 더 심플 데일리 로션 260ml';


-- ================================

-- 상품: 온그리디언츠 스킨 베리어 카밍 로션 스틱포 4ml*5ea...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('온그리디언츠 스킨 베리어 카밍 로션 스틱포 4ml*5ea',
 '온그리디언츠 스킨 베리어 카밍 로션 스틱포 4ml*5ea',
 4.9,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '온그리디언츠'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '온그리디언츠 스킨 베리어 카밍 로션 스틱포 4ml*5ea'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(3800, 'ORIGINAL', (SELECT id FROM product WHERE name = '온그리디언츠 스킨 베리어 카밍 로션 스틱포 4ml*5ea'), NOW(), NOW()),
(3800, 'SALE', (SELECT id FROM product WHERE name = '온그리디언츠 스킨 베리어 카밍 로션 스틱포 4ml*5ea'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023092001ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '온그리디언츠 스킨 베리어 카밍 로션 스틱포 4ml*5ea'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023092002ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '온그리디언츠 스킨 베리어 카밍 로션 스틱포 4ml*5ea'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '온그리디언츠 스킨 베리어 카밍 로션 스틱포 4ml*5ea';


-- ================================

-- 상품: 엠도씨 릴리프 에센스 에멀젼 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('엠도씨 릴리프 에센스 에멀젼 100ml',
 '엠도씨 릴리프 에센스 에멀젼 100ml',
 4.7,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '엠도씨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '엠도씨 릴리프 에센스 에멀젼 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(22000, 'ORIGINAL', (SELECT id FROM product WHERE name = '엠도씨 릴리프 에센스 에멀젼 100ml'), NOW(), NOW()),
(22000, 'SALE', (SELECT id FROM product WHERE name = '엠도씨 릴리프 에센스 에멀젼 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001108703ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '엠도씨 릴리프 에센스 에멀젼 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001108701ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '엠도씨 릴리프 에센스 에멀젼 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '엠도씨 릴리프 에센스 에멀젼 100ml';


-- ================================

-- 상품: 엠도씨 세붐 스트라이크 세럼 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('엠도씨 세붐 스트라이크 세럼 100ml',
 '엠도씨 세붐 스트라이크 세럼 100ml',
 4.7,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '엠도씨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '엠도씨 세붐 스트라이크 세럼 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(20000, 'ORIGINAL', (SELECT id FROM product WHERE name = '엠도씨 세붐 스트라이크 세럼 100ml'), NOW(), NOW()),
(17000, 'SALE', (SELECT id FROM product WHERE name = '엠도씨 세붐 스트라이크 세럼 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001108804ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '엠도씨 세붐 스트라이크 세럼 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001108801ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '엠도씨 세붐 스트라이크 세럼 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '엠도씨 세붐 스트라이크 세럼 100ml';


-- ================================

-- 상품: 피지오겔 DMT 데일리보습 로션 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('피지오겔 DMT 데일리보습 로션 200ml',
 '피지오겔 DMT 데일리보습 로션 200ml',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '피지오겔'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '피지오겔 DMT 데일리보습 로션 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '피지오겔 DMT 데일리보습 로션 200ml'), NOW(), NOW()),
(18390, 'SALE', (SELECT id FROM product WHERE name = '피지오겔 DMT 데일리보습 로션 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001280908ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '피지오겔 DMT 데일리보습 로션 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001280907ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '피지오겔 DMT 데일리보습 로션 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001280903ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '피지오겔 DMT 데일리보습 로션 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '피지오겔 DMT 데일리보습 로션 200ml';


-- ================================

-- 상품: 라끄베르 옴므 리차지 에멀전 180ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('라끄베르 옴므 리차지 에멀전 180ml',
 '라끄베르 옴므 리차지 에멀전 180ml',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라끄베르'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 에멀전 180ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(16000, 'ORIGINAL', (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 에멀전 180ml'), NOW(), NOW()),
(12000, 'SALE', (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 에멀전 180ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001674902ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 에멀전 180ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '라끄베르 옴므 리차지 에멀전 180ml';


-- ================================

-- 상품: 코스알엑스 오일-프리 울트라 모이스쳐라이징 로션 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('코스알엑스 오일-프리 울트라 모이스쳐라이징 로션 100ml',
 '코스알엑스 오일-프리 울트라 모이스쳐라이징 로션 100ml',
 4.5,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '코스알엑스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '코스알엑스 오일-프리 울트라 모이스쳐라이징 로션 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(19000, 'ORIGINAL', (SELECT id FROM product WHERE name = '코스알엑스 오일-프리 울트라 모이스쳐라이징 로션 100ml'), NOW(), NOW()),
(19000, 'SALE', (SELECT id FROM product WHERE name = '코스알엑스 오일-프리 울트라 모이스쳐라이징 로션 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0010/A00000010332002ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '코스알엑스 오일-프리 울트라 모이스쳐라이징 로션 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '코스알엑스 오일-프리 울트라 모이스쳐라이징 로션 100ml';


-- ================================

-- 상품: 크리니크 안티-블레미쉬 솔루션 올-오버 클리어링 트리트먼트 오일-프리 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('크리니크 안티-블레미쉬 솔루션 올-오버 클리어링 트리트먼트 오일-프리 50ml',
 '크리니크 안티-블레미쉬 솔루션 올-오버 클리어링 트리트먼트 오일-프리 50ml',
 4.5,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '크리니크'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '크리니크 안티-블레미쉬 솔루션 올-오버 클리어링 트리트먼트 오일-프리 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(42000, 'ORIGINAL', (SELECT id FROM product WHERE name = '크리니크 안티-블레미쉬 솔루션 올-오버 클리어링 트리트먼트 오일-프리 50ml'), NOW(), NOW()),
(35700, 'SALE', (SELECT id FROM product WHERE name = '크리니크 안티-블레미쉬 솔루션 올-오버 클리어링 트리트먼트 오일-프리 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0010/A00000010414602ko.jpeg?l=ko', 1, (SELECT id FROM product WHERE name = '크리니크 안티-블레미쉬 솔루션 올-오버 클리어링 트리트먼트 오일-프리 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '크리니크 안티-블레미쉬 솔루션 올-오버 클리어링 트리트먼트 오일-프리 50ml';


-- ================================

-- 상품: 크리니크 드라마티컬리 디퍼런트 모이스춰라이징 로션 125ml (건복합용) 기획/단품...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('크리니크 드라마티컬리 디퍼런트 모이스춰라이징 로션 125ml (건복합용) 기획/단품',
 '크리니크 드라마티컬리 디퍼런트 모이스춰라이징 로션 125ml (건복합용) 기획/단품',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '크리니크'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '크리니크 드라마티컬리 디퍼런트 모이스춰라이징 로션 125ml (건복합용) 기획/단품'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(58000, 'ORIGINAL', (SELECT id FROM product WHERE name = '크리니크 드라마티컬리 디퍼런트 모이스춰라이징 로션 125ml (건복합용) 기획/단품'), NOW(), NOW()),
(49300, 'SALE', (SELECT id FROM product WHERE name = '크리니크 드라마티컬리 디퍼런트 모이스춰라이징 로션 125ml (건복합용) 기획/단품'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0010/A00000010417311ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '크리니크 드라마티컬리 디퍼런트 모이스춰라이징 로션 125ml (건복합용) 기획/단품'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0010/A00000010417308ko.jpeg?l=ko', 2, (SELECT id FROM product WHERE name = '크리니크 드라마티컬리 디퍼런트 모이스춰라이징 로션 125ml (건복합용) 기획/단품'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '크리니크 드라마티컬리 디퍼런트 모이스춰라이징 로션 125ml (건복합용) 기획/단품';


-- ================================

-- 상품: 크리니크 드라마티컬리 디퍼런트 모이스춰라이징 젤 125ml (지복합용)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('크리니크 드라마티컬리 디퍼런트 모이스춰라이징 젤 125ml (지복합용)',
 '크리니크 드라마티컬리 디퍼런트 모이스춰라이징 젤 125ml (지복합용)',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '크리니크'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '크리니크 드라마티컬리 디퍼런트 모이스춰라이징 젤 125ml (지복합용)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(58000, 'ORIGINAL', (SELECT id FROM product WHERE name = '크리니크 드라마티컬리 디퍼런트 모이스춰라이징 젤 125ml (지복합용)'), NOW(), NOW()),
(49300, 'SALE', (SELECT id FROM product WHERE name = '크리니크 드라마티컬리 디퍼런트 모이스춰라이징 젤 125ml (지복합용)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0010/A00000010417607ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '크리니크 드라마티컬리 디퍼런트 모이스춰라이징 젤 125ml (지복합용)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0010/A00000010417604ko.jpeg?l=ko', 2, (SELECT id FROM product WHERE name = '크리니크 드라마티컬리 디퍼런트 모이스춰라이징 젤 125ml (지복합용)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '크리니크 드라마티컬리 디퍼런트 모이스춰라이징 젤 125ml (지복합용)';


-- ================================

-- 상품: 크리니크 드라마티컬리 디퍼런트 하이드레이팅 젤리 125ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('크리니크 드라마티컬리 디퍼런트 하이드레이팅 젤리 125ml',
 '크리니크 드라마티컬리 디퍼런트 하이드레이팅 젤리 125ml',
 4.6,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '크리니크'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '크리니크 드라마티컬리 디퍼런트 하이드레이팅 젤리 125ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(58000, 'ORIGINAL', (SELECT id FROM product WHERE name = '크리니크 드라마티컬리 디퍼런트 하이드레이팅 젤리 125ml'), NOW(), NOW()),
(49300, 'SALE', (SELECT id FROM product WHERE name = '크리니크 드라마티컬리 디퍼런트 하이드레이팅 젤리 125ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011538602ko.jpeg?l=ko', 1, (SELECT id FROM product WHERE name = '크리니크 드라마티컬리 디퍼런트 하이드레이팅 젤리 125ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '크리니크 드라마티컬리 디퍼런트 하이드레이팅 젤리 125ml';


-- ================================

-- 상품: [유수분밸런싱/산뜻수분젤] 셀퓨전씨 트리악 모이스처 젤 오인트 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[유수분밸런싱/산뜻수분젤] 셀퓨전씨 트리악 모이스처 젤 오인트 100ml',
 '[유수분밸런싱/산뜻수분젤] 셀퓨전씨 트리악 모이스처 젤 오인트 100ml',
 4.7,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '셀퓨전씨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[유수분밸런싱/산뜻수분젤] 셀퓨전씨 트리악 모이스처 젤 오인트 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[유수분밸런싱/산뜻수분젤] 셀퓨전씨 트리악 모이스처 젤 오인트 100ml'), NOW(), NOW()),
(28000, 'SALE', (SELECT id FROM product WHERE name = '[유수분밸런싱/산뜻수분젤] 셀퓨전씨 트리악 모이스처 젤 오인트 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011541908ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[유수분밸런싱/산뜻수분젤] 셀퓨전씨 트리악 모이스처 젤 오인트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011541907ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[유수분밸런싱/산뜻수분젤] 셀퓨전씨 트리악 모이스처 젤 오인트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011541906ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[유수분밸런싱/산뜻수분젤] 셀퓨전씨 트리악 모이스처 젤 오인트 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[유수분밸런싱/산뜻수분젤] 셀퓨전씨 트리악 모이스처 젤 오인트 100ml';


-- ================================

-- 상품: [피지&보습 로션]눅스 아쿠아벨라 로션 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[피지&보습 로션]눅스 아쿠아벨라 로션 50ml',
 '[피지&보습 로션]눅스 아쿠아벨라 로션 50ml',
 4.7,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '눅스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[피지&보습 로션]눅스 아쿠아벨라 로션 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(36000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[피지&보습 로션]눅스 아쿠아벨라 로션 50ml'), NOW(), NOW()),
(36000, 'SALE', (SELECT id FROM product WHERE name = '[피지&보습 로션]눅스 아쿠아벨라 로션 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011660104ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[피지&보습 로션]눅스 아쿠아벨라 로션 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011660105ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[피지&보습 로션]눅스 아쿠아벨라 로션 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[피지&보습 로션]눅스 아쿠아벨라 로션 50ml';


-- ================================

-- 상품: 싸이닉 더 심플 데일리 로션 145ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('싸이닉 더 심플 데일리 로션 145ml',
 '싸이닉 더 심플 데일리 로션 145ml',
 4.7,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '싸이닉'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '싸이닉 더 심플 데일리 로션 145ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(18000, 'ORIGINAL', (SELECT id FROM product WHERE name = '싸이닉 더 심플 데일리 로션 145ml'), NOW(), NOW()),
(18000, 'SALE', (SELECT id FROM product WHERE name = '싸이닉 더 심플 데일리 로션 145ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012126815ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '싸이닉 더 심플 데일리 로션 145ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '싸이닉 더 심플 데일리 로션 145ml';


-- ================================

-- 상품: [면도후자극완화수딩밤]눅스 맨 애프터쉐이브 수딩 밤 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[면도후자극완화수딩밤]눅스 맨 애프터쉐이브 수딩 밤 50ml',
 '[면도후자극완화수딩밤]눅스 맨 애프터쉐이브 수딩 밤 50ml',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '눅스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[면도후자극완화수딩밤]눅스 맨 애프터쉐이브 수딩 밤 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[면도후자극완화수딩밤]눅스 맨 애프터쉐이브 수딩 밤 50ml'), NOW(), NOW()),
(29700, 'SALE', (SELECT id FROM product WHERE name = '[면도후자극완화수딩밤]눅스 맨 애프터쉐이브 수딩 밤 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012584506ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[면도후자극완화수딩밤]눅스 맨 애프터쉐이브 수딩 밤 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012584505ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[면도후자극완화수딩밤]눅스 맨 애프터쉐이브 수딩 밤 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[면도후자극완화수딩밤]눅스 맨 애프터쉐이브 수딩 밤 50ml';


-- ================================

-- 상품: [증량] 닥터자르트 컨트롤에이 티트리먼트 모이스처라이저 100ml (티트리 약산성 보습크림...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[증량] 닥터자르트 컨트롤에이 티트리먼트 모이스처라이저 100ml (티트리 약산성 보습크림)',
 '[증량] 닥터자르트 컨트롤에이 티트리먼트 모이스처라이저 100ml (티트리 약산성 보습크림)',
 4.7,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터자르트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[증량] 닥터자르트 컨트롤에이 티트리먼트 모이스처라이저 100ml (티트리 약산성 보습크림)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(50000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[증량] 닥터자르트 컨트롤에이 티트리먼트 모이스처라이저 100ml (티트리 약산성 보습크림)'), NOW(), NOW()),
(50000, 'SALE', (SELECT id FROM product WHERE name = '[증량] 닥터자르트 컨트롤에이 티트리먼트 모이스처라이저 100ml (티트리 약산성 보습크림)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012832204ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[증량] 닥터자르트 컨트롤에이 티트리먼트 모이스처라이저 100ml (티트리 약산성 보습크림)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012832202ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[증량] 닥터자르트 컨트롤에이 티트리먼트 모이스처라이저 100ml (티트리 약산성 보습크림)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[증량] 닥터자르트 컨트롤에이 티트리먼트 모이스처라이저 100ml (티트리 약산성 보습크림)';


-- ================================

-- 상품: 라네즈옴므 액티브워터 모이스처라이저 125ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('라네즈옴므 액티브워터 모이스처라이저 125ml',
 '라네즈옴므 액티브워터 모이스처라이저 125ml',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라네즈'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '라네즈옴므 액티브워터 모이스처라이저 125ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(27000, 'ORIGINAL', (SELECT id FROM product WHERE name = '라네즈옴므 액티브워터 모이스처라이저 125ml'), NOW(), NOW()),
(27000, 'SALE', (SELECT id FROM product WHERE name = '라네즈옴므 액티브워터 모이스처라이저 125ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013765211ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '라네즈옴므 액티브워터 모이스처라이저 125ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '라네즈옴므 액티브워터 모이스처라이저 125ml';


-- ================================

-- 상품: 미프 리페어 앤 리프팅...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('미프 리페어 앤 리프팅',
 '미프 리페어 앤 리프팅',
 4.9,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '미프'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '미프 리페어 앤 리프팅'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '미프 리페어 앤 리프팅'), NOW(), NOW()),
(32000, 'SALE', (SELECT id FROM product WHERE name = '미프 리페어 앤 리프팅'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014089108ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '미프 리페어 앤 리프팅'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014089110ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '미프 리페어 앤 리프팅'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014089109ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '미프 리페어 앤 리프팅'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '미프 리페어 앤 리프팅';


-- ================================

-- 상품: 디오디너리 내추럴 모이스처라이징 팩터스 + HA 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('디오디너리 내추럴 모이스처라이징 팩터스 + HA 100ml',
 '디오디너리 내추럴 모이스처라이징 팩터스 + HA 100ml',
 4.6,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '디오디너리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '디오디너리 내추럴 모이스처라이징 팩터스 + HA 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(21300, 'ORIGINAL', (SELECT id FROM product WHERE name = '디오디너리 내추럴 모이스처라이징 팩터스 + HA 100ml'), NOW(), NOW()),
(21300, 'SALE', (SELECT id FROM product WHERE name = '디오디너리 내추럴 모이스처라이징 팩터스 + HA 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014130902ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '디오디너리 내추럴 모이스처라이징 팩터스 + HA 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014130903ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '디오디너리 내추럴 모이스처라이징 팩터스 + HA 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '디오디너리 내추럴 모이스처라이징 팩터스 + HA 100ml';


-- ================================

-- 상품: 디오디너리 내추럴 모이스처라이징 팩터스 + HA 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('디오디너리 내추럴 모이스처라이징 팩터스 + HA 30ml',
 '디오디너리 내추럴 모이스처라이징 팩터스 + HA 30ml',
 4.7,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '디오디너리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '디오디너리 내추럴 모이스처라이징 팩터스 + HA 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(10200, 'ORIGINAL', (SELECT id FROM product WHERE name = '디오디너리 내추럴 모이스처라이징 팩터스 + HA 30ml'), NOW(), NOW()),
(10200, 'SALE', (SELECT id FROM product WHERE name = '디오디너리 내추럴 모이스처라이징 팩터스 + HA 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014131702ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '디오디너리 내추럴 모이스처라이징 팩터스 + HA 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014131703ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '디오디너리 내추럴 모이스처라이징 팩터스 + HA 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '디오디너리 내추럴 모이스처라이징 팩터스 + HA 30ml';


-- ================================

-- 상품: 디오디너리 비타민C 서스펜션 23% + HA 스피어스 2% 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('디오디너리 비타민C 서스펜션 23% + HA 스피어스 2% 30ml',
 '디오디너리 비타민C 서스펜션 23% + HA 스피어스 2% 30ml',
 4.3,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '디오디너리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '디오디너리 비타민C 서스펜션 23% + HA 스피어스 2% 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(12300, 'ORIGINAL', (SELECT id FROM product WHERE name = '디오디너리 비타민C 서스펜션 23% + HA 스피어스 2% 30ml'), NOW(), NOW()),
(12300, 'SALE', (SELECT id FROM product WHERE name = '디오디너리 비타민C 서스펜션 23% + HA 스피어스 2% 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014131904ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '디오디너리 비타민C 서스펜션 23% + HA 스피어스 2% 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014131903ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '디오디너리 비타민C 서스펜션 23% + HA 스피어스 2% 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '디오디너리 비타민C 서스펜션 23% + HA 스피어스 2% 30ml';


-- ================================

-- 상품: 크리니크 포맨 맥시멈 하이드레이터 72-아워 오토-리플레니싱 하이드레이터...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('크리니크 포맨 맥시멈 하이드레이터 72-아워 오토-리플레니싱 하이드레이터',
 '크리니크 포맨 맥시멈 하이드레이터 72-아워 오토-리플레니싱 하이드레이터',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '크리니크'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '크리니크 포맨 맥시멈 하이드레이터 72-아워 오토-리플레니싱 하이드레이터'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(49000, 'ORIGINAL', (SELECT id FROM product WHERE name = '크리니크 포맨 맥시멈 하이드레이터 72-아워 오토-리플레니싱 하이드레이터'), NOW(), NOW()),
(41650, 'SALE', (SELECT id FROM product WHERE name = '크리니크 포맨 맥시멈 하이드레이터 72-아워 오토-리플레니싱 하이드레이터'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014261802ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '크리니크 포맨 맥시멈 하이드레이터 72-아워 오토-리플레니싱 하이드레이터'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014261804ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '크리니크 포맨 맥시멈 하이드레이터 72-아워 오토-리플레니싱 하이드레이터'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '크리니크 포맨 맥시멈 하이드레이터 72-아워 오토-리플레니싱 하이드레이터';


-- ================================

-- 상품: 라네즈옴므 블루에너지 에센스인로션 125ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('라네즈옴므 블루에너지 에센스인로션 125ml',
 '라네즈옴므 블루에너지 에센스인로션 125ml',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라네즈'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '라네즈옴므 블루에너지 에센스인로션 125ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '라네즈옴므 블루에너지 에센스인로션 125ml'), NOW(), NOW()),
(32000, 'SALE', (SELECT id FROM product WHERE name = '라네즈옴므 블루에너지 에센스인로션 125ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014319609ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '라네즈옴므 블루에너지 에센스인로션 125ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '라네즈옴므 블루에너지 에센스인로션 125ml';


-- ================================

-- 상품: 폴라초이스 스킨 발란싱 수분 젤 60ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('폴라초이스 스킨 발란싱 수분 젤 60ml',
 '폴라초이스 스킨 발란싱 수분 젤 60ml',
 4.6,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '폴라초이스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '폴라초이스 스킨 발란싱 수분 젤 60ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(53000, 'ORIGINAL', (SELECT id FROM product WHERE name = '폴라초이스 스킨 발란싱 수분 젤 60ml'), NOW(), NOW()),
(42400, 'SALE', (SELECT id FROM product WHERE name = '폴라초이스 스킨 발란싱 수분 젤 60ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014404104ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '폴라초이스 스킨 발란싱 수분 젤 60ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014404106ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '폴라초이스 스킨 발란싱 수분 젤 60ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014404105ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '폴라초이스 스킨 발란싱 수분 젤 60ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '폴라초이스 스킨 발란싱 수분 젤 60ml';


-- ================================

-- 상품: 아크웰 리얼 아쿠아 밸런싱 로션 140ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아크웰 리얼 아쿠아 밸런싱 로션 140ml',
 '아크웰 리얼 아쿠아 밸런싱 로션 140ml',
 4.9,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아크웰'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아크웰 리얼 아쿠아 밸런싱 로션 140ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아크웰 리얼 아쿠아 밸런싱 로션 140ml'), NOW(), NOW()),
(18000, 'SALE', (SELECT id FROM product WHERE name = '아크웰 리얼 아쿠아 밸런싱 로션 140ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014480311ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아크웰 리얼 아쿠아 밸런싱 로션 140ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014480310ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아크웰 리얼 아쿠아 밸런싱 로션 140ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014480313ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아크웰 리얼 아쿠아 밸런싱 로션 140ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아크웰 리얼 아쿠아 밸런싱 로션 140ml';


-- ================================

-- 상품: [고보습 에멀전] 하다라보 고쿠쥰밀크140ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[고보습 에멀전] 하다라보 고쿠쥰밀크140ml',
 '[고보습 에멀전] 하다라보 고쿠쥰밀크140ml',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '하다라보'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[고보습 에멀전] 하다라보 고쿠쥰밀크140ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(17000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[고보습 에멀전] 하다라보 고쿠쥰밀크140ml'), NOW(), NOW()),
(11900, 'SALE', (SELECT id FROM product WHERE name = '[고보습 에멀전] 하다라보 고쿠쥰밀크140ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014491709ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[고보습 에멀전] 하다라보 고쿠쥰밀크140ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014491708ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[고보습 에멀전] 하다라보 고쿠쥰밀크140ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014491706ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[고보습 에멀전] 하다라보 고쿠쥰밀크140ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[고보습 에멀전] 하다라보 고쿠쥰밀크140ml';


-- ================================

-- 상품: [고보습에멀젼] 하다라보 고쿠쥰 프리미엄 밀크140ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[고보습에멀젼] 하다라보 고쿠쥰 프리미엄 밀크140ml',
 '[고보습에멀젼] 하다라보 고쿠쥰 프리미엄 밀크140ml',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '하다라보'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[고보습에멀젼] 하다라보 고쿠쥰 프리미엄 밀크140ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(20000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[고보습에멀젼] 하다라보 고쿠쥰 프리미엄 밀크140ml'), NOW(), NOW()),
(20000, 'SALE', (SELECT id FROM product WHERE name = '[고보습에멀젼] 하다라보 고쿠쥰 프리미엄 밀크140ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014626313ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[고보습에멀젼] 하다라보 고쿠쥰 프리미엄 밀크140ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014626311ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[고보습에멀젼] 하다라보 고쿠쥰 프리미엄 밀크140ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014626312ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[고보습에멀젼] 하다라보 고쿠쥰 프리미엄 밀크140ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014626310ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[고보습에멀젼] 하다라보 고쿠쥰 프리미엄 밀크140ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[고보습에멀젼] 하다라보 고쿠쥰 프리미엄 밀크140ml';


-- ================================

-- 상품: AHC 온리 포맨 로션 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('AHC 온리 포맨 로션 150ml',
 'AHC 온리 포맨 로션 150ml',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'AHC'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = 'AHC 온리 포맨 로션 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = 'AHC 온리 포맨 로션 150ml'), NOW(), NOW()),
(25000, 'SALE', (SELECT id FROM product WHERE name = 'AHC 온리 포맨 로션 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014766105ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = 'AHC 온리 포맨 로션 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014766107ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = 'AHC 온리 포맨 로션 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014766106ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = 'AHC 온리 포맨 로션 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014766104ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = 'AHC 온리 포맨 로션 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = 'AHC 온리 포맨 로션 150ml';


-- ================================

-- 상품: 아크네스 모이스처 플루이드 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아크네스 모이스처 플루이드 150ml',
 '아크네스 모이스처 플루이드 150ml',
 4.7,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아크네스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아크네스 모이스처 플루이드 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(15000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아크네스 모이스처 플루이드 150ml'), NOW(), NOW()),
(15000, 'SALE', (SELECT id FROM product WHERE name = '아크네스 모이스처 플루이드 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015081606ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아크네스 모이스처 플루이드 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015081607ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아크네스 모이스처 플루이드 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아크네스 모이스처 플루이드 150ml';


-- ================================

-- 상품: 마녀공장 비피다 바이옴 앰플 로션 300ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('마녀공장 비피다 바이옴 앰플 로션 300ml',
 '마녀공장 비피다 바이옴 앰플 로션 300ml',
 4.7,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '마녀공장'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '마녀공장 비피다 바이옴 앰플 로션 300ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '마녀공장 비피다 바이옴 앰플 로션 300ml'), NOW(), NOW()),
(25000, 'SALE', (SELECT id FROM product WHERE name = '마녀공장 비피다 바이옴 앰플 로션 300ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015228605ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '마녀공장 비피다 바이옴 앰플 로션 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015228606ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '마녀공장 비피다 바이옴 앰플 로션 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015228607ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '마녀공장 비피다 바이옴 앰플 로션 300ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '마녀공장 비피다 바이옴 앰플 로션 300ml';


-- ================================

-- 상품: 달팡 인트랄 액티브 스태빌라이징 로션 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('달팡 인트랄 액티브 스태빌라이징 로션 100ml',
 '달팡 인트랄 액티브 스태빌라이징 로션 100ml',
 4.5,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '달팡'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '달팡 인트랄 액티브 스태빌라이징 로션 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(108000, 'ORIGINAL', (SELECT id FROM product WHERE name = '달팡 인트랄 액티브 스태빌라이징 로션 100ml'), NOW(), NOW()),
(91800, 'SALE', (SELECT id FROM product WHERE name = '달팡 인트랄 액티브 스태빌라이징 로션 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015462605ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '달팡 인트랄 액티브 스태빌라이징 로션 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '달팡 인트랄 액티브 스태빌라이징 로션 100ml';


-- ================================

-- 상품: 라네즈 워터뱅크 블루히알루로닉 에멀젼(중건성) 120ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('라네즈 워터뱅크 블루히알루로닉 에멀젼(중건성) 120ml',
 '라네즈 워터뱅크 블루히알루로닉 에멀젼(중건성) 120ml',
 4.6,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라네즈'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '라네즈 워터뱅크 블루히알루로닉 에멀젼(중건성) 120ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(36000, 'ORIGINAL', (SELECT id FROM product WHERE name = '라네즈 워터뱅크 블루히알루로닉 에멀젼(중건성) 120ml'), NOW(), NOW()),
(36000, 'SALE', (SELECT id FROM product WHERE name = '라네즈 워터뱅크 블루히알루로닉 에멀젼(중건성) 120ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016205404ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '라네즈 워터뱅크 블루히알루로닉 에멀젼(중건성) 120ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '라네즈 워터뱅크 블루히알루로닉 에멀젼(중건성) 120ml';


-- ================================

-- 상품: [장벽강화] 마리엔메이 비타민C+비피다 로션 120ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[장벽강화] 마리엔메이 비타민C+비피다 로션 120ml',
 '[장벽강화] 마리엔메이 비타민C+비피다 로션 120ml',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '마리엔메이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[장벽강화] 마리엔메이 비타민C+비피다 로션 120ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(19500, 'ORIGINAL', (SELECT id FROM product WHERE name = '[장벽강화] 마리엔메이 비타민C+비피다 로션 120ml'), NOW(), NOW()),
(19500, 'SALE', (SELECT id FROM product WHERE name = '[장벽강화] 마리엔메이 비타민C+비피다 로션 120ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016261508ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[장벽강화] 마리엔메이 비타민C+비피다 로션 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016261509ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[장벽강화] 마리엔메이 비타민C+비피다 로션 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016261504ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[장벽강화] 마리엔메이 비타민C+비피다 로션 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016261503ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[장벽강화] 마리엔메이 비타민C+비피다 로션 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016261502ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[장벽강화] 마리엔메이 비타민C+비피다 로션 120ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[장벽강화] 마리엔메이 비타민C+비피다 로션 120ml';


-- ================================

-- 상품: 랩시리즈 올인원 디펜스 로션 SPF35 PA++++ 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('랩시리즈 올인원 디펜스 로션 SPF35 PA++++ 50ml',
 '랩시리즈 올인원 디펜스 로션 SPF35 PA++++ 50ml',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '랩시리즈'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '랩시리즈 올인원 디펜스 로션 SPF35 PA++++ 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(58000, 'ORIGINAL', (SELECT id FROM product WHERE name = '랩시리즈 올인원 디펜스 로션 SPF35 PA++++ 50ml'), NOW(), NOW()),
(49300, 'SALE', (SELECT id FROM product WHERE name = '랩시리즈 올인원 디펜스 로션 SPF35 PA++++ 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016642711ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '랩시리즈 올인원 디펜스 로션 SPF35 PA++++ 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016642713ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '랩시리즈 올인원 디펜스 로션 SPF35 PA++++ 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '랩시리즈 올인원 디펜스 로션 SPF35 PA++++ 50ml';


-- ================================

-- 상품: 크리니크 포맨 오일-프리 모이스춰라이저 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('크리니크 포맨 오일-프리 모이스춰라이저 100ml',
 '크리니크 포맨 오일-프리 모이스춰라이저 100ml',
 5.0,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '크리니크'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '크리니크 포맨 오일-프리 모이스춰라이저 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(61000, 'ORIGINAL', (SELECT id FROM product WHERE name = '크리니크 포맨 오일-프리 모이스춰라이저 100ml'), NOW(), NOW()),
(51850, 'SALE', (SELECT id FROM product WHERE name = '크리니크 포맨 오일-프리 모이스춰라이저 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016647402ko.jpeg?l=ko', 1, (SELECT id FROM product WHERE name = '크리니크 포맨 오일-프리 모이스춰라이저 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '크리니크 포맨 오일-프리 모이스춰라이저 100ml';


-- ================================

-- 상품: 피지오겔 DMT 포맨 플루이드 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('피지오겔 DMT 포맨 플루이드 100ml',
 '피지오겔 DMT 포맨 플루이드 100ml',
 4.9,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '피지오겔'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '피지오겔 DMT 포맨 플루이드 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '피지오겔 DMT 포맨 플루이드 100ml'), NOW(), NOW()),
(35000, 'SALE', (SELECT id FROM product WHERE name = '피지오겔 DMT 포맨 플루이드 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016918207ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '피지오겔 DMT 포맨 플루이드 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016918204ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '피지오겔 DMT 포맨 플루이드 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '피지오겔 DMT 포맨 플루이드 100ml';


-- ================================

-- 상품: 비오템옴므 티쀼르 모이스춰라이저 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('비오템옴므 티쀼르 모이스춰라이저 50ml',
 '비오템옴므 티쀼르 모이스춰라이저 50ml',
 4.7,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비오템'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '비오템옴므 티쀼르 모이스춰라이저 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(110000, 'ORIGINAL', (SELECT id FROM product WHERE name = '비오템옴므 티쀼르 모이스춰라이저 50ml'), NOW(), NOW()),
(93500, 'SALE', (SELECT id FROM product WHERE name = '비오템옴므 티쀼르 모이스춰라이저 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017042110ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '비오템옴므 티쀼르 모이스춰라이저 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017042105ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '비오템옴므 티쀼르 모이스춰라이저 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017042109ko.jpeg?l=ko', 3, (SELECT id FROM product WHERE name = '비오템옴므 티쀼르 모이스춰라이저 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '비오템옴므 티쀼르 모이스춰라이저 50ml';


-- ================================

-- 상품: [미백잡티] 유세린 이븐래디언스 모이스처라이저 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[미백잡티] 유세린 이븐래디언스 모이스처라이저 50ml',
 '[미백잡티] 유세린 이븐래디언스 모이스처라이저 50ml',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유세린'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[미백잡티] 유세린 이븐래디언스 모이스처라이저 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[미백잡티] 유세린 이븐래디언스 모이스처라이저 50ml'), NOW(), NOW()),
(38000, 'SALE', (SELECT id FROM product WHERE name = '[미백잡티] 유세린 이븐래디언스 모이스처라이저 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017069018ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[미백잡티] 유세린 이븐래디언스 모이스처라이저 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017069014ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[미백잡티] 유세린 이븐래디언스 모이스처라이저 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017069015ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[미백잡티] 유세린 이븐래디언스 모이스처라이저 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[미백잡티] 유세린 이븐래디언스 모이스처라이저 50ml';


-- ================================

-- 상품: 크리니크 드라마티컬리 디퍼런트 모이스춰라이징 로션 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('크리니크 드라마티컬리 디퍼런트 모이스춰라이징 로션 30ml',
 '크리니크 드라마티컬리 디퍼런트 모이스춰라이징 로션 30ml',
 4.7,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '크리니크'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '크리니크 드라마티컬리 디퍼런트 모이스춰라이징 로션 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(13000, 'ORIGINAL', (SELECT id FROM product WHERE name = '크리니크 드라마티컬리 디퍼런트 모이스춰라이징 로션 30ml'), NOW(), NOW()),
(11050, 'SALE', (SELECT id FROM product WHERE name = '크리니크 드라마티컬리 디퍼런트 모이스춰라이징 로션 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017457602ko.jpeg?l=ko', 1, (SELECT id FROM product WHERE name = '크리니크 드라마티컬리 디퍼런트 모이스춰라이징 로션 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '크리니크 드라마티컬리 디퍼런트 모이스춰라이징 로션 30ml';


-- ================================

-- 상품: 일소 데일리 모이스처 소프트닝 로션 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('일소 데일리 모이스처 소프트닝 로션 150ml',
 '일소 데일리 모이스처 소프트닝 로션 150ml',
 4.7,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '일소'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '일소 데일리 모이스처 소프트닝 로션 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '일소 데일리 모이스처 소프트닝 로션 150ml'), NOW(), NOW()),
(23000, 'SALE', (SELECT id FROM product WHERE name = '일소 데일리 모이스처 소프트닝 로션 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017470905ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '일소 데일리 모이스처 소프트닝 로션 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017470906ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '일소 데일리 모이스처 소프트닝 로션 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017470904ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '일소 데일리 모이스처 소프트닝 로션 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017470903ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '일소 데일리 모이스처 소프트닝 로션 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017470902ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '일소 데일리 모이스처 소프트닝 로션 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017470901ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '일소 데일리 모이스처 소프트닝 로션 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '일소 데일리 모이스처 소프트닝 로션 150ml';


-- ================================

-- 상품: 크리니크 포 맨 안티 에이지 모이스춰라이저 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('크리니크 포 맨 안티 에이지 모이스춰라이저 100ml',
 '크리니크 포 맨 안티 에이지 모이스춰라이저 100ml',
 5.0,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '크리니크'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '크리니크 포 맨 안티 에이지 모이스춰라이저 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(76000, 'ORIGINAL', (SELECT id FROM product WHERE name = '크리니크 포 맨 안티 에이지 모이스춰라이저 100ml'), NOW(), NOW()),
(64600, 'SALE', (SELECT id FROM product WHERE name = '크리니크 포 맨 안티 에이지 모이스춰라이저 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017605902ko.jpeg?l=ko', 1, (SELECT id FROM product WHERE name = '크리니크 포 맨 안티 에이지 모이스춰라이저 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '크리니크 포 맨 안티 에이지 모이스춰라이저 100ml';


-- ================================

-- 상품: 헤라 옴므 파워부스팅 모이스춰라이저 110ML...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('헤라 옴므 파워부스팅 모이스춰라이저 110ML',
 '헤라 옴므 파워부스팅 모이스춰라이저 110ML',
 5.0,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '헤라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '헤라 옴므 파워부스팅 모이스춰라이저 110ML'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(69000, 'ORIGINAL', (SELECT id FROM product WHERE name = '헤라 옴므 파워부스팅 모이스춰라이저 110ML'), NOW(), NOW()),
(58650, 'SALE', (SELECT id FROM product WHERE name = '헤라 옴므 파워부스팅 모이스춰라이저 110ML'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017807602ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '헤라 옴므 파워부스팅 모이스춰라이저 110ML'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017807603ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '헤라 옴므 파워부스팅 모이스춰라이저 110ML'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017807604ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '헤라 옴므 파워부스팅 모이스춰라이저 110ML'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '헤라 옴므 파워부스팅 모이스춰라이저 110ML';


-- ================================

-- 상품: 레이지소사이어티 시카 애프터쉐이브 로션 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('레이지소사이어티 시카 애프터쉐이브 로션 100ml',
 '레이지소사이어티 시카 애프터쉐이브 로션 100ml',
 4.7,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '레이지소사이어티'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '레이지소사이어티 시카 애프터쉐이브 로션 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(14900, 'ORIGINAL', (SELECT id FROM product WHERE name = '레이지소사이어티 시카 애프터쉐이브 로션 100ml'), NOW(), NOW()),
(13900, 'SALE', (SELECT id FROM product WHERE name = '레이지소사이어티 시카 애프터쉐이브 로션 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018093401ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '레이지소사이어티 시카 애프터쉐이브 로션 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '레이지소사이어티 시카 애프터쉐이브 로션 100ml';


-- ================================

-- 상품: [수분진정] 이니스프리 그린티 히알루론산 로션 170ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[수분진정] 이니스프리 그린티 히알루론산 로션 170ml',
 '[수분진정] 이니스프리 그린티 히알루론산 로션 170ml',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '이니스프리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분진정] 이니스프리 그린티 히알루론산 로션 170ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(21000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분진정] 이니스프리 그린티 히알루론산 로션 170ml'), NOW(), NOW()),
(15750, 'SALE', (SELECT id FROM product WHERE name = '[수분진정] 이니스프리 그린티 히알루론산 로션 170ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018321014ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분진정] 이니스프리 그린티 히알루론산 로션 170ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018321015ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분진정] 이니스프리 그린티 히알루론산 로션 170ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018321016ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분진정] 이니스프리 그린티 히알루론산 로션 170ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018321017ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[수분진정] 이니스프리 그린티 히알루론산 로션 170ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018321018ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[수분진정] 이니스프리 그린티 히알루론산 로션 170ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[수분진정] 이니스프리 그린티 히알루론산 로션 170ml';


-- ================================

-- 상품: 프리메라 오가니언스 베리어 리페어 하이드레이션 크림 에멀젼 160ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('프리메라 오가니언스 베리어 리페어 하이드레이션 크림 에멀젼 160ml',
 '프리메라 오가니언스 베리어 리페어 하이드레이션 크림 에멀젼 160ml',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '프리메라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '프리메라 오가니언스 베리어 리페어 하이드레이션 크림 에멀젼 160ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(37000, 'ORIGINAL', (SELECT id FROM product WHERE name = '프리메라 오가니언스 베리어 리페어 하이드레이션 크림 에멀젼 160ml'), NOW(), NOW()),
(37000, 'SALE', (SELECT id FROM product WHERE name = '프리메라 오가니언스 베리어 리페어 하이드레이션 크림 에멀젼 160ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018332603ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '프리메라 오가니언스 베리어 리페어 하이드레이션 크림 에멀젼 160ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018332604ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '프리메라 오가니언스 베리어 리페어 하이드레이션 크림 에멀젼 160ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '프리메라 오가니언스 베리어 리페어 하이드레이션 크림 에멀젼 160ml';


-- ================================

-- 상품: [시카보다 4배*강한] 한율 어린쑥 수분진정 플루이드 125ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[시카보다 4배*강한] 한율 어린쑥 수분진정 플루이드 125ml',
 '[시카보다 4배*강한] 한율 어린쑥 수분진정 플루이드 125ml',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '한율'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[시카보다 4배*강한] 한율 어린쑥 수분진정 플루이드 125ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[시카보다 4배*강한] 한율 어린쑥 수분진정 플루이드 125ml'), NOW(), NOW()),
(25600, 'SALE', (SELECT id FROM product WHERE name = '[시카보다 4배*강한] 한율 어린쑥 수분진정 플루이드 125ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018374410ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[시카보다 4배*강한] 한율 어린쑥 수분진정 플루이드 125ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018374409ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[시카보다 4배*강한] 한율 어린쑥 수분진정 플루이드 125ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018374408ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[시카보다 4배*강한] 한율 어린쑥 수분진정 플루이드 125ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018374405ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[시카보다 4배*강한] 한율 어린쑥 수분진정 플루이드 125ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018374403ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[시카보다 4배*강한] 한율 어린쑥 수분진정 플루이드 125ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018374402ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[시카보다 4배*강한] 한율 어린쑥 수분진정 플루이드 125ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[시카보다 4배*강한] 한율 어린쑥 수분진정 플루이드 125ml';


-- ================================

-- 상품: [민감진정] 라운드랩 소나무 진정 시카 로션 250ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[민감진정] 라운드랩 소나무 진정 시카 로션 250ml',
 '[민감진정] 라운드랩 소나무 진정 시카 로션 250ml',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라운드랩'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[민감진정] 라운드랩 소나무 진정 시카 로션 250ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[민감진정] 라운드랩 소나무 진정 시카 로션 250ml'), NOW(), NOW()),
(21200, 'SALE', (SELECT id FROM product WHERE name = '[민감진정] 라운드랩 소나무 진정 시카 로션 250ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018478901ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[민감진정] 라운드랩 소나무 진정 시카 로션 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018478906ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[민감진정] 라운드랩 소나무 진정 시카 로션 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018478905ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[민감진정] 라운드랩 소나무 진정 시카 로션 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018478904ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[민감진정] 라운드랩 소나무 진정 시카 로션 250ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[민감진정] 라운드랩 소나무 진정 시카 로션 250ml';


-- ================================

-- 상품: 라끄베르 옴므 리차지 시카 에멀전 180ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('라끄베르 옴므 리차지 시카 에멀전 180ml',
 '라끄베르 옴므 리차지 시카 에멀전 180ml',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라끄베르'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 시카 에멀전 180ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(16000, 'ORIGINAL', (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 시카 에멀전 180ml'), NOW(), NOW()),
(12000, 'SALE', (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 시카 에멀전 180ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018515701ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 시카 에멀전 180ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '라끄베르 옴므 리차지 시카 에멀전 180ml';


-- ================================

-- 상품: 헤라 옴므 에센스인에멀전 110ML...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('헤라 옴므 에센스인에멀전 110ML',
 '헤라 옴므 에센스인에멀전 110ML',
 4.9,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '헤라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '헤라 옴므 에센스인에멀전 110ML'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(42000, 'ORIGINAL', (SELECT id FROM product WHERE name = '헤라 옴므 에센스인에멀전 110ML'), NOW(), NOW()),
(35700, 'SALE', (SELECT id FROM product WHERE name = '헤라 옴므 에센스인에멀전 110ML'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018765506ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '헤라 옴므 에센스인에멀전 110ML'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018765505ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '헤라 옴므 에센스인에멀전 110ML'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018765504ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '헤라 옴므 에센스인에멀전 110ML'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018765503ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '헤라 옴므 에센스인에멀전 110ML'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '헤라 옴므 에센스인에멀전 110ML';


-- ================================

-- 상품: 한율 빨간쌀 보습탄력 에멀젼 125ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('한율 빨간쌀 보습탄력 에멀젼 125ml',
 '한율 빨간쌀 보습탄력 에멀젼 125ml',
 4.9,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '한율'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '한율 빨간쌀 보습탄력 에멀젼 125ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(43000, 'ORIGINAL', (SELECT id FROM product WHERE name = '한율 빨간쌀 보습탄력 에멀젼 125ml'), NOW(), NOW()),
(43000, 'SALE', (SELECT id FROM product WHERE name = '한율 빨간쌀 보습탄력 에멀젼 125ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018894804ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '한율 빨간쌀 보습탄력 에멀젼 125ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018894803ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '한율 빨간쌀 보습탄력 에멀젼 125ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018894802ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '한율 빨간쌀 보습탄력 에멀젼 125ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '한율 빨간쌀 보습탄력 에멀젼 125ml';


-- ================================

-- 상품: 헤라 하이드로 리플렉팅 플루이드 140ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('헤라 하이드로 리플렉팅 플루이드 140ml',
 '헤라 하이드로 리플렉팅 플루이드 140ml',
 4.9,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '헤라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '헤라 하이드로 리플렉팅 플루이드 140ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(58000, 'ORIGINAL', (SELECT id FROM product WHERE name = '헤라 하이드로 리플렉팅 플루이드 140ml'), NOW(), NOW()),
(49300, 'SALE', (SELECT id FROM product WHERE name = '헤라 하이드로 리플렉팅 플루이드 140ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018958901ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '헤라 하이드로 리플렉팅 플루이드 140ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018958907ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '헤라 하이드로 리플렉팅 플루이드 140ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '헤라 하이드로 리플렉팅 플루이드 140ml';


-- ================================

-- 상품: [72시간보습로션] 닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 밀키 로션 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[72시간보습로션] 닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 밀키 로션 50ml',
 '[72시간보습로션] 닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 밀키 로션 50ml',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터자르트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[72시간보습로션] 닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 밀키 로션 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(50000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[72시간보습로션] 닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 밀키 로션 50ml'), NOW(), NOW()),
(50000, 'SALE', (SELECT id FROM product WHERE name = '[72시간보습로션] 닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 밀키 로션 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019809003ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[72시간보습로션] 닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 밀키 로션 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019809001ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[72시간보습로션] 닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 밀키 로션 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019809002ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[72시간보습로션] 닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 밀키 로션 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[72시간보습로션] 닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 밀키 로션 50ml';


-- ================================

-- 상품: [속보습/수분로션] 닥터지 더모이스처 배리어 D 로션 300ml 기획 (+멀티밤 1g)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[속보습/수분로션] 닥터지 더모이스처 배리어 D 로션 300ml 기획 (+멀티밤 1g)',
 '[속보습/수분로션] 닥터지 더모이스처 배리어 D 로션 300ml 기획 (+멀티밤 1g)',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터지'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[속보습/수분로션] 닥터지 더모이스처 배리어 D 로션 300ml 기획 (+멀티밤 1g)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(37000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[속보습/수분로션] 닥터지 더모이스처 배리어 D 로션 300ml 기획 (+멀티밤 1g)'), NOW(), NOW()),
(25900, 'SALE', (SELECT id FROM product WHERE name = '[속보습/수분로션] 닥터지 더모이스처 배리어 D 로션 300ml 기획 (+멀티밤 1g)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019853902ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[속보습/수분로션] 닥터지 더모이스처 배리어 D 로션 300ml 기획 (+멀티밤 1g)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019853903ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[속보습/수분로션] 닥터지 더모이스처 배리어 D 로션 300ml 기획 (+멀티밤 1g)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019853905ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[속보습/수분로션] 닥터지 더모이스처 배리어 D 로션 300ml 기획 (+멀티밤 1g)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019853907ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[속보습/수분로션] 닥터지 더모이스처 배리어 D 로션 300ml 기획 (+멀티밤 1g)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[속보습/수분로션] 닥터지 더모이스처 배리어 D 로션 300ml 기획 (+멀티밤 1g)';


-- ================================

-- 상품: [올영단독]닥터자르트 포어레미디 스무딩 프라이머 (본품30ml+15ml 추가 증정)(단품/...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[올영단독]닥터자르트 포어레미디 스무딩 프라이머 (본품30ml+15ml 추가 증정)(단품/기획)',
 '[올영단독]닥터자르트 포어레미디 스무딩 프라이머 (본품30ml+15ml 추가 증정)(단품/기획)',
 4.4,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터자르트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[올영단독]닥터자르트 포어레미디 스무딩 프라이머 (본품30ml+15ml 추가 증정)(단품/기획)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(41000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[올영단독]닥터자르트 포어레미디 스무딩 프라이머 (본품30ml+15ml 추가 증정)(단품/기획)'), NOW(), NOW()),
(26650, 'SALE', (SELECT id FROM product WHERE name = '[올영단독]닥터자르트 포어레미디 스무딩 프라이머 (본품30ml+15ml 추가 증정)(단품/기획)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019959404ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[올영단독]닥터자르트 포어레미디 스무딩 프라이머 (본품30ml+15ml 추가 증정)(단품/기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019959406ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[올영단독]닥터자르트 포어레미디 스무딩 프라이머 (본품30ml+15ml 추가 증정)(단품/기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019959405ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[올영단독]닥터자르트 포어레미디 스무딩 프라이머 (본품30ml+15ml 추가 증정)(단품/기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019959401ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[올영단독]닥터자르트 포어레미디 스무딩 프라이머 (본품30ml+15ml 추가 증정)(단품/기획)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[올영단독]닥터자르트 포어레미디 스무딩 프라이머 (본품30ml+15ml 추가 증정)(단품/기획)';


-- ================================

-- 상품: 랩시리즈 데일리 레스큐 페이스 로션 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('랩시리즈 데일리 레스큐 페이스 로션 50ml',
 '랩시리즈 데일리 레스큐 페이스 로션 50ml',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '랩시리즈'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '랩시리즈 데일리 레스큐 페이스 로션 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(81000, 'ORIGINAL', (SELECT id FROM product WHERE name = '랩시리즈 데일리 레스큐 페이스 로션 50ml'), NOW(), NOW()),
(68850, 'SALE', (SELECT id FROM product WHERE name = '랩시리즈 데일리 레스큐 페이스 로션 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019982505ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '랩시리즈 데일리 레스큐 페이스 로션 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '랩시리즈 데일리 레스큐 페이스 로션 50ml';


-- ================================

-- 상품: [화잘먹/윤광미백] 식물나라 뽀얀쌀 맑은톤 로션 300mL...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[화잘먹/윤광미백] 식물나라 뽀얀쌀 맑은톤 로션 300mL',
 '[화잘먹/윤광미백] 식물나라 뽀얀쌀 맑은톤 로션 300mL',
 4.6,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '식물나라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[화잘먹/윤광미백] 식물나라 뽀얀쌀 맑은톤 로션 300mL'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(15800, 'ORIGINAL', (SELECT id FROM product WHERE name = '[화잘먹/윤광미백] 식물나라 뽀얀쌀 맑은톤 로션 300mL'), NOW(), NOW()),
(10800, 'SALE', (SELECT id FROM product WHERE name = '[화잘먹/윤광미백] 식물나라 뽀얀쌀 맑은톤 로션 300mL'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020101103ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[화잘먹/윤광미백] 식물나라 뽀얀쌀 맑은톤 로션 300mL'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020101104ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[화잘먹/윤광미백] 식물나라 뽀얀쌀 맑은톤 로션 300mL'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[화잘먹/윤광미백] 식물나라 뽀얀쌀 맑은톤 로션 300mL';


-- ================================

-- 상품: [탄력에멀전] 바이오힐 보 프로바이오덤 3D 리프팅 에멀전 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[탄력에멀전] 바이오힐 보 프로바이오덤 3D 리프팅 에멀전 150ml',
 '[탄력에멀전] 바이오힐 보 프로바이오덤 3D 리프팅 에멀전 150ml',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오힐보'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[탄력에멀전] 바이오힐 보 프로바이오덤 3D 리프팅 에멀전 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[탄력에멀전] 바이오힐 보 프로바이오덤 3D 리프팅 에멀전 150ml'), NOW(), NOW()),
(22900, 'SALE', (SELECT id FROM product WHERE name = '[탄력에멀전] 바이오힐 보 프로바이오덤 3D 리프팅 에멀전 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020324706ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[탄력에멀전] 바이오힐 보 프로바이오덤 3D 리프팅 에멀전 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020324704ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[탄력에멀전] 바이오힐 보 프로바이오덤 3D 리프팅 에멀전 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020324702ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[탄력에멀전] 바이오힐 보 프로바이오덤 3D 리프팅 에멀전 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020324703ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[탄력에멀전] 바이오힐 보 프로바이오덤 3D 리프팅 에멀전 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020324705ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[탄력에멀전] 바이오힐 보 프로바이오덤 3D 리프팅 에멀전 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[탄력에멀전] 바이오힐 보 프로바이오덤 3D 리프팅 에멀전 150ml';


-- ================================

-- 상품: 비욘드 엔젤아쿠아 보습 장벽 로션 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('비욘드 엔젤아쿠아 보습 장벽 로션 200ml',
 '비욘드 엔젤아쿠아 보습 장벽 로션 200ml',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비욘드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 보습 장벽 로션 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 보습 장벽 로션 200ml'), NOW(), NOW()),
(21850, 'SALE', (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 보습 장벽 로션 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020385503ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 보습 장벽 로션 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020385502ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 보습 장벽 로션 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020385504ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 보습 장벽 로션 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020385501ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '비욘드 엔젤아쿠아 보습 장벽 로션 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '비욘드 엔젤아쿠아 보습 장벽 로션 200ml';


-- ================================

-- 상품: [에이든팍 PICK] 다슈 보이 파란 수분초 로션 150ml 기획 (+수분크림 50ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[에이든팍 PICK] 다슈 보이 파란 수분초 로션 150ml 기획 (+수분크림 50ml)',
 '[에이든팍 PICK] 다슈 보이 파란 수분초 로션 150ml 기획 (+수분크림 50ml)',
 4.9,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '다슈'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[에이든팍 PICK] 다슈 보이 파란 수분초 로션 150ml 기획 (+수분크림 50ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[에이든팍 PICK] 다슈 보이 파란 수분초 로션 150ml 기획 (+수분크림 50ml)'), NOW(), NOW()),
(14800, 'SALE', (SELECT id FROM product WHERE name = '[에이든팍 PICK] 다슈 보이 파란 수분초 로션 150ml 기획 (+수분크림 50ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020415803ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[에이든팍 PICK] 다슈 보이 파란 수분초 로션 150ml 기획 (+수분크림 50ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020415801ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[에이든팍 PICK] 다슈 보이 파란 수분초 로션 150ml 기획 (+수분크림 50ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[에이든팍 PICK] 다슈 보이 파란 수분초 로션 150ml 기획 (+수분크림 50ml)';


-- ================================

-- 상품: 멜린앤게츠 비타민 E 페이스 모이스쳐라이저 118ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('멜린앤게츠 비타민 E 페이스 모이스쳐라이저 118ml',
 '멜린앤게츠 비타민 E 페이스 모이스쳐라이저 118ml',
 4.4,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '멜린앤게츠'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '멜린앤게츠 비타민 E 페이스 모이스쳐라이저 118ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(79000, 'ORIGINAL', (SELECT id FROM product WHERE name = '멜린앤게츠 비타민 E 페이스 모이스쳐라이저 118ml'), NOW(), NOW()),
(63200, 'SALE', (SELECT id FROM product WHERE name = '멜린앤게츠 비타민 E 페이스 모이스쳐라이저 118ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020450002ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '멜린앤게츠 비타민 E 페이스 모이스쳐라이저 118ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020450003ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '멜린앤게츠 비타민 E 페이스 모이스쳐라이저 118ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020450001ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '멜린앤게츠 비타민 E 페이스 모이스쳐라이저 118ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '멜린앤게츠 비타민 E 페이스 모이스쳐라이저 118ml';


-- ================================

-- 상품: 더후 공진향 탄력 에멀젼 110ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('더후 공진향 탄력 에멀젼 110ml',
 '더후 공진향 탄력 에멀젼 110ml',
 4.5,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더후'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '더후 공진향 탄력 에멀젼 110ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(77000, 'ORIGINAL', (SELECT id FROM product WHERE name = '더후 공진향 탄력 에멀젼 110ml'), NOW(), NOW()),
(77000, 'SALE', (SELECT id FROM product WHERE name = '더후 공진향 탄력 에멀젼 110ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020464914ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '더후 공진향 탄력 에멀젼 110ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020464912ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '더후 공진향 탄력 에멀젼 110ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020464903ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '더후 공진향 탄력 에멀젼 110ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '더후 공진향 탄력 에멀젼 110ml';


-- ================================

-- 상품: AHC 콜라 쥬비네이션 리프트4 트리트먼트 에멀젼 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('AHC 콜라 쥬비네이션 리프트4 트리트먼트 에멀젼 100ml',
 'AHC 콜라 쥬비네이션 리프트4 트리트먼트 에멀젼 100ml',
 5.0,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'AHC'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = 'AHC 콜라 쥬비네이션 리프트4 트리트먼트 에멀젼 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = 'AHC 콜라 쥬비네이션 리프트4 트리트먼트 에멀젼 100ml'), NOW(), NOW()),
(24000, 'SALE', (SELECT id FROM product WHERE name = 'AHC 콜라 쥬비네이션 리프트4 트리트먼트 에멀젼 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020488103ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = 'AHC 콜라 쥬비네이션 리프트4 트리트먼트 에멀젼 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020488104ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = 'AHC 콜라 쥬비네이션 리프트4 트리트먼트 에멀젼 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020488102ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = 'AHC 콜라 쥬비네이션 리프트4 트리트먼트 에멀젼 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = 'AHC 콜라 쥬비네이션 리프트4 트리트먼트 에멀젼 100ml';


-- ================================

-- 상품: [장벽개선] 메디톡스 뉴라덤 뉴로락토 모이스처라이저 80ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[장벽개선] 메디톡스 뉴라덤 뉴로락토 모이스처라이저 80ml',
 '[장벽개선] 메디톡스 뉴라덤 뉴로락토 모이스처라이저 80ml',
 4.7,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '뉴라덤'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[장벽개선] 메디톡스 뉴라덤 뉴로락토 모이스처라이저 80ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[장벽개선] 메디톡스 뉴라덤 뉴로락토 모이스처라이저 80ml'), NOW(), NOW()),
(33000, 'SALE', (SELECT id FROM product WHERE name = '[장벽개선] 메디톡스 뉴라덤 뉴로락토 모이스처라이저 80ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020684603ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[장벽개선] 메디톡스 뉴라덤 뉴로락토 모이스처라이저 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020684605ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[장벽개선] 메디톡스 뉴라덤 뉴로락토 모이스처라이저 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020684604ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[장벽개선] 메디톡스 뉴라덤 뉴로락토 모이스처라이저 80ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[장벽개선] 메디톡스 뉴라덤 뉴로락토 모이스처라이저 80ml';


-- ================================

-- 상품: [선케어/반톤업] 닥터지 레드 블레미쉬 포 맨 올인원 톤 로션 50ml 기획 (+젠틀폼 3...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[선케어/반톤업] 닥터지 레드 블레미쉬 포 맨 올인원 톤 로션 50ml 기획 (+젠틀폼 30ml)',
 '[선케어/반톤업] 닥터지 레드 블레미쉬 포 맨 올인원 톤 로션 50ml 기획 (+젠틀폼 30ml)',
 4.7,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터지'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[선케어/반톤업] 닥터지 레드 블레미쉬 포 맨 올인원 톤 로션 50ml 기획 (+젠틀폼 30ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[선케어/반톤업] 닥터지 레드 블레미쉬 포 맨 올인원 톤 로션 50ml 기획 (+젠틀폼 30ml)'), NOW(), NOW()),
(24000, 'SALE', (SELECT id FROM product WHERE name = '[선케어/반톤업] 닥터지 레드 블레미쉬 포 맨 올인원 톤 로션 50ml 기획 (+젠틀폼 30ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020745621ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[선케어/반톤업] 닥터지 레드 블레미쉬 포 맨 올인원 톤 로션 50ml 기획 (+젠틀폼 30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020745618ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[선케어/반톤업] 닥터지 레드 블레미쉬 포 맨 올인원 톤 로션 50ml 기획 (+젠틀폼 30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020745617ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[선케어/반톤업] 닥터지 레드 블레미쉬 포 맨 올인원 톤 로션 50ml 기획 (+젠틀폼 30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020745616ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[선케어/반톤업] 닥터지 레드 블레미쉬 포 맨 올인원 톤 로션 50ml 기획 (+젠틀폼 30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020745615ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[선케어/반톤업] 닥터지 레드 블레미쉬 포 맨 올인원 톤 로션 50ml 기획 (+젠틀폼 30ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020745614ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[선케어/반톤업] 닥터지 레드 블레미쉬 포 맨 올인원 톤 로션 50ml 기획 (+젠틀폼 30ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[선케어/반톤업] 닥터지 레드 블레미쉬 포 맨 올인원 톤 로션 50ml 기획 (+젠틀폼 30ml)';


-- ================================

-- 상품: [여드름/진정케어] 포엘리에 옴므 병풀잎수 66.86% 시카 로션 145ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[여드름/진정케어] 포엘리에 옴므 병풀잎수 66.86% 시카 로션 145ml',
 '[여드름/진정케어] 포엘리에 옴므 병풀잎수 66.86% 시카 로션 145ml',
 4.9,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '포엘리에'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[여드름/진정케어] 포엘리에 옴므 병풀잎수 66.86% 시카 로션 145ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(19600, 'ORIGINAL', (SELECT id FROM product WHERE name = '[여드름/진정케어] 포엘리에 옴므 병풀잎수 66.86% 시카 로션 145ml'), NOW(), NOW()),
(19600, 'SALE', (SELECT id FROM product WHERE name = '[여드름/진정케어] 포엘리에 옴므 병풀잎수 66.86% 시카 로션 145ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020802915ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[여드름/진정케어] 포엘리에 옴므 병풀잎수 66.86% 시카 로션 145ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020802906ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[여드름/진정케어] 포엘리에 옴므 병풀잎수 66.86% 시카 로션 145ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020802905ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[여드름/진정케어] 포엘리에 옴므 병풀잎수 66.86% 시카 로션 145ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020802908ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[여드름/진정케어] 포엘리에 옴므 병풀잎수 66.86% 시카 로션 145ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[여드름/진정케어] 포엘리에 옴므 병풀잎수 66.86% 시카 로션 145ml';


-- ================================

-- 상품: 스콧해미쉬 블루 블렌디드 로션 에센스 180ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('스콧해미쉬 블루 블렌디드 로션 에센스 180ml',
 '스콧해미쉬 블루 블렌디드 로션 에센스 180ml',
 5.0,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '스콧해미쉬'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '스콧해미쉬 블루 블렌디드 로션 에센스 180ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(55000, 'ORIGINAL', (SELECT id FROM product WHERE name = '스콧해미쉬 블루 블렌디드 로션 에센스 180ml'), NOW(), NOW()),
(55000, 'SALE', (SELECT id FROM product WHERE name = '스콧해미쉬 블루 블렌디드 로션 에센스 180ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020872102ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '스콧해미쉬 블루 블렌디드 로션 에센스 180ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020872101ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '스콧해미쉬 블루 블렌디드 로션 에센스 180ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '스콧해미쉬 블루 블렌디드 로션 에센스 180ml';


-- ================================

-- 상품: [오리지널 PDRN 부스팅]리쥬란 리커버 힐러 부스팅 젤 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[오리지널 PDRN 부스팅]리쥬란 리커버 힐러 부스팅 젤 200ml',
 '[오리지널 PDRN 부스팅]리쥬란 리커버 힐러 부스팅 젤 200ml',
 4.9,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '리쥬란'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[오리지널 PDRN 부스팅]리쥬란 리커버 힐러 부스팅 젤 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(45000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[오리지널 PDRN 부스팅]리쥬란 리커버 힐러 부스팅 젤 200ml'), NOW(), NOW()),
(45000, 'SALE', (SELECT id FROM product WHERE name = '[오리지널 PDRN 부스팅]리쥬란 리커버 힐러 부스팅 젤 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020872403ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[오리지널 PDRN 부스팅]리쥬란 리커버 힐러 부스팅 젤 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020872401ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[오리지널 PDRN 부스팅]리쥬란 리커버 힐러 부스팅 젤 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[오리지널 PDRN 부스팅]리쥬란 리커버 힐러 부스팅 젤 200ml';


-- ================================

-- 상품: [콜라겐/레티놀]아이디얼 포 맨 퍼펙트 탄력 로션 150mL...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[콜라겐/레티놀]아이디얼 포 맨 퍼펙트 탄력 로션 150mL',
 '[콜라겐/레티놀]아이디얼 포 맨 퍼펙트 탄력 로션 150mL',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이디얼포맨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('200ml(리뉴얼)', 14900, (SELECT id FROM product WHERE name = '[콜라겐/레티놀]아이디얼 포 맨 퍼펙트 탄력 로션 150mL'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('150ml', 14900, (SELECT id FROM product WHERE name = '[콜라겐/레티놀]아이디얼 포 맨 퍼펙트 탄력 로션 150mL'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(18000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[콜라겐/레티놀]아이디얼 포 맨 퍼펙트 탄력 로션 150mL'), NOW(), NOW()),
(14900, 'SALE', (SELECT id FROM product WHERE name = '[콜라겐/레티놀]아이디얼 포 맨 퍼펙트 탄력 로션 150mL'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020889705ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[콜라겐/레티놀]아이디얼 포 맨 퍼펙트 탄력 로션 150mL'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020889702ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[콜라겐/레티놀]아이디얼 포 맨 퍼펙트 탄력 로션 150mL'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020889707ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[콜라겐/레티놀]아이디얼 포 맨 퍼펙트 탄력 로션 150mL'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[콜라겐/레티놀]아이디얼 포 맨 퍼펙트 탄력 로션 150mL';


-- ================================

-- 상품: 로레알파리 맨 이드라파워 수분 올인원 50ml 단품/기획 택 1...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('로레알파리 맨 이드라파워 수분 올인원 50ml 단품/기획 택 1',
 '로레알파리 맨 이드라파워 수분 올인원 50ml 단품/기획 택 1',
 4.9,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '로레알맨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('이드라파워 수분 올인원+폼클렌징 2개', 18900, (SELECT id FROM product WHERE name = '로레알파리 맨 이드라파워 수분 올인원 50ml 단품/기획 택 1'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('이드라파워 수분 올인원 50ml', 18900, (SELECT id FROM product WHERE name = '로레알파리 맨 이드라파워 수분 올인원 50ml 단품/기획 택 1'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '로레알파리 맨 이드라파워 수분 올인원 50ml 단품/기획 택 1'), NOW(), NOW()),
(18900, 'SALE', (SELECT id FROM product WHERE name = '로레알파리 맨 이드라파워 수분 올인원 50ml 단품/기획 택 1'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020913008ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '로레알파리 맨 이드라파워 수분 올인원 50ml 단품/기획 택 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020913007ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '로레알파리 맨 이드라파워 수분 올인원 50ml 단품/기획 택 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020913009ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '로레알파리 맨 이드라파워 수분 올인원 50ml 단품/기획 택 1'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '로레알파리 맨 이드라파워 수분 올인원 50ml 단품/기획 택 1';


-- ================================

-- 상품: 더페이스샵 더젠틀포맨 안티에이징 로션 135ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('더페이스샵 더젠틀포맨 안티에이징 로션 135ml',
 '더페이스샵 더젠틀포맨 안티에이징 로션 135ml',
 5.0,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더페이스샵'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '더페이스샵 더젠틀포맨 안티에이징 로션 135ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '더페이스샵 더젠틀포맨 안티에이징 로션 135ml'), NOW(), NOW()),
(23000, 'SALE', (SELECT id FROM product WHERE name = '더페이스샵 더젠틀포맨 안티에이징 로션 135ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020971302ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '더페이스샵 더젠틀포맨 안티에이징 로션 135ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '더페이스샵 더젠틀포맨 안티에이징 로션 135ml';


-- ================================

-- 상품: 더페이스샵 더 블랙밤 로션 130ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('더페이스샵 더 블랙밤 로션 130ml',
 '더페이스샵 더 블랙밤 로션 130ml',
 5.0,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더페이스샵'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '더페이스샵 더 블랙밤 로션 130ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '더페이스샵 더 블랙밤 로션 130ml'), NOW(), NOW()),
(26000, 'SALE', (SELECT id FROM product WHERE name = '더페이스샵 더 블랙밤 로션 130ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020972601ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '더페이스샵 더 블랙밤 로션 130ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '더페이스샵 더 블랙밤 로션 130ml';


-- ================================

-- 상품: 운스트라움 디 오리진 로션 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('운스트라움 디 오리진 로션 150ml',
 '운스트라움 디 오리진 로션 150ml',
 4.7,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '운스트라움'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '운스트라움 디 오리진 로션 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '운스트라움 디 오리진 로션 150ml'), NOW(), NOW()),
(24000, 'SALE', (SELECT id FROM product WHERE name = '운스트라움 디 오리진 로션 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021094901ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '운스트라움 디 오리진 로션 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021094903ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '운스트라움 디 오리진 로션 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021094902ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '운스트라움 디 오리진 로션 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '운스트라움 디 오리진 로션 150ml';


-- ================================

-- 상품: 설화수 맨 본윤유액 90ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('설화수 맨 본윤유액 90ml',
 '설화수 맨 본윤유액 90ml',
 3.0,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '설화수'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '설화수 맨 본윤유액 90ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(52000, 'ORIGINAL', (SELECT id FROM product WHERE name = '설화수 맨 본윤유액 90ml'), NOW(), NOW()),
(46800, 'SALE', (SELECT id FROM product WHERE name = '설화수 맨 본윤유액 90ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021149301ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '설화수 맨 본윤유액 90ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021149307ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '설화수 맨 본윤유액 90ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '설화수 맨 본윤유액 90ml';


-- ================================

-- 상품: [100시간 수분보습]LBB 올 데이 케어 인 로션 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[100시간 수분보습]LBB 올 데이 케어 인 로션 50ml',
 '[100시간 수분보습]LBB 올 데이 케어 인 로션 50ml',
 5.0,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'LBB'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[100시간 수분보습]LBB 올 데이 케어 인 로션 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(68000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[100시간 수분보습]LBB 올 데이 케어 인 로션 50ml'), NOW(), NOW()),
(61200, 'SALE', (SELECT id FROM product WHERE name = '[100시간 수분보습]LBB 올 데이 케어 인 로션 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021193006ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[100시간 수분보습]LBB 올 데이 케어 인 로션 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021193004ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[100시간 수분보습]LBB 올 데이 케어 인 로션 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021193003ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[100시간 수분보습]LBB 올 데이 케어 인 로션 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[100시간 수분보습]LBB 올 데이 케어 인 로션 50ml';


-- ================================

-- 상품: [NEW]오브제 포어 제로 오일 컨트롤 로션 70ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW]오브제 포어 제로 오일 컨트롤 로션 70ml',
 '[NEW]오브제 포어 제로 오일 컨트롤 로션 70ml',
 4.9,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '오브제'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW]오브제 포어 제로 오일 컨트롤 로션 70ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW]오브제 포어 제로 오일 컨트롤 로션 70ml'), NOW(), NOW()),
(17800, 'SALE', (SELECT id FROM product WHERE name = '[NEW]오브제 포어 제로 오일 컨트롤 로션 70ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021225107ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW]오브제 포어 제로 오일 컨트롤 로션 70ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021225106ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW]오브제 포어 제로 오일 컨트롤 로션 70ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021225105ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW]오브제 포어 제로 오일 컨트롤 로션 70ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021225103ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[NEW]오브제 포어 제로 오일 컨트롤 로션 70ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW]오브제 포어 제로 오일 컨트롤 로션 70ml';


-- ================================

-- 상품: 더마라인 디렉소 PDRN 솔루션 액티빙 에멀전 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('더마라인 디렉소 PDRN 솔루션 액티빙 에멀전 200ml',
 '더마라인 디렉소 PDRN 솔루션 액티빙 에멀전 200ml',
 5.0,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더마라인'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '더마라인 디렉소 PDRN 솔루션 액티빙 에멀전 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(55000, 'ORIGINAL', (SELECT id FROM product WHERE name = '더마라인 디렉소 PDRN 솔루션 액티빙 에멀전 200ml'), NOW(), NOW()),
(55000, 'SALE', (SELECT id FROM product WHERE name = '더마라인 디렉소 PDRN 솔루션 액티빙 에멀전 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021338701ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '더마라인 디렉소 PDRN 솔루션 액티빙 에멀전 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021338702ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '더마라인 디렉소 PDRN 솔루션 액티빙 에멀전 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '더마라인 디렉소 PDRN 솔루션 액티빙 에멀전 200ml';


-- ================================

-- 상품: 연작 카밍 앤 컴포팅 에멀전 125ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('연작 카밍 앤 컴포팅 에멀전 125ml',
 '연작 카밍 앤 컴포팅 에멀전 125ml',
 4.7,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '연작'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '연작 카밍 앤 컴포팅 에멀전 125ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(45000, 'ORIGINAL', (SELECT id FROM product WHERE name = '연작 카밍 앤 컴포팅 에멀전 125ml'), NOW(), NOW()),
(42750, 'SALE', (SELECT id FROM product WHERE name = '연작 카밍 앤 컴포팅 에멀전 125ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021395104ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '연작 카밍 앤 컴포팅 에멀전 125ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021395101ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '연작 카밍 앤 컴포팅 에멀전 125ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021395102ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '연작 카밍 앤 컴포팅 에멀전 125ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '연작 카밍 앤 컴포팅 에멀전 125ml';


-- ================================

-- 상품: [9월 올영픽] 키엘 칼렌듈라 스킨수딩 앤 스테빌라이징 에멀젼 125ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽] 키엘 칼렌듈라 스킨수딩 앤 스테빌라이징 에멀젼 125ml',
 '[9월 올영픽] 키엘 칼렌듈라 스킨수딩 앤 스테빌라이징 에멀젼 125ml',
 4.6,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '키엘'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 칼렌듈라 스킨수딩 앤 스테빌라이징 에멀젼 125ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(72000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 칼렌듈라 스킨수딩 앤 스테빌라이징 에멀젼 125ml'), NOW(), NOW()),
(60560, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 칼렌듈라 스킨수딩 앤 스테빌라이징 에멀젼 125ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021414110ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 칼렌듈라 스킨수딩 앤 스테빌라이징 에멀젼 125ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021414109ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 칼렌듈라 스킨수딩 앤 스테빌라이징 에멀젼 125ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021414105ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 칼렌듈라 스킨수딩 앤 스테빌라이징 에멀젼 125ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021414101ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[9월 올영픽] 키엘 칼렌듈라 스킨수딩 앤 스테빌라이징 에멀젼 125ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[9월 올영픽] 키엘 칼렌듈라 스킨수딩 앤 스테빌라이징 에멀젼 125ml';


-- ================================

-- 상품: 비오템옴므 아쿠아파워 어드밴스드 젤 PRO 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('비오템옴므 아쿠아파워 어드밴스드 젤 PRO 100ml',
 '비오템옴므 아쿠아파워 어드밴스드 젤 PRO 100ml',
 4.9,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비오템'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '비오템옴므 아쿠아파워 어드밴스드 젤 PRO 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(92000, 'ORIGINAL', (SELECT id FROM product WHERE name = '비오템옴므 아쿠아파워 어드밴스드 젤 PRO 100ml'), NOW(), NOW()),
(82850, 'SALE', (SELECT id FROM product WHERE name = '비오템옴므 아쿠아파워 어드밴스드 젤 PRO 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021500908ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '비오템옴므 아쿠아파워 어드밴스드 젤 PRO 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021500904ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '비오템옴므 아쿠아파워 어드밴스드 젤 PRO 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '비오템옴므 아쿠아파워 어드밴스드 젤 PRO 100ml';


-- ================================

-- 상품: 그라운드플랜 젤모이스처 110ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('그라운드플랜 젤모이스처 110ml',
 '그라운드플랜 젤모이스처 110ml',
 5.0,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '그라운드플랜'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '그라운드플랜 젤모이스처 110ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(41000, 'ORIGINAL', (SELECT id FROM product WHERE name = '그라운드플랜 젤모이스처 110ml'), NOW(), NOW()),
(36900, 'SALE', (SELECT id FROM product WHERE name = '그라운드플랜 젤모이스처 110ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021519705ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '그라운드플랜 젤모이스처 110ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021519702ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '그라운드플랜 젤모이스처 110ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021519701ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '그라운드플랜 젤모이스처 110ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021519704ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '그라운드플랜 젤모이스처 110ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '그라운드플랜 젤모이스처 110ml';


-- ================================

-- 상품: [보습장벽] 마몽드 프로바이오틱스 세라마이드 에멀젼 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[보습장벽] 마몽드 프로바이오틱스 세라마이드 에멀젼 150ml',
 '[보습장벽] 마몽드 프로바이오틱스 세라마이드 에멀젼 150ml',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '마몽드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[보습장벽] 마몽드 프로바이오틱스 세라마이드 에멀젼 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[보습장벽] 마몽드 프로바이오틱스 세라마이드 에멀젼 150ml'), NOW(), NOW()),
(26000, 'SALE', (SELECT id FROM product WHERE name = '[보습장벽] 마몽드 프로바이오틱스 세라마이드 에멀젼 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021647005ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[보습장벽] 마몽드 프로바이오틱스 세라마이드 에멀젼 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021647004ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[보습장벽] 마몽드 프로바이오틱스 세라마이드 에멀젼 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021647001ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[보습장벽] 마몽드 프로바이오틱스 세라마이드 에멀젼 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021647003ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[보습장벽] 마몽드 프로바이오틱스 세라마이드 에멀젼 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021647002ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[보습장벽] 마몽드 프로바이오틱스 세라마이드 에멀젼 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021647007ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[보습장벽] 마몽드 프로바이오틱스 세라마이드 에멀젼 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[보습장벽] 마몽드 프로바이오틱스 세라마이드 에멀젼 150ml';


-- ================================

-- 상품: 설화수 자음유액EX 125ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('설화수 자음유액EX 125ml',
 '설화수 자음유액EX 125ml',
 4.9,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '설화수'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '설화수 자음유액EX 125ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(78000, 'ORIGINAL', (SELECT id FROM product WHERE name = '설화수 자음유액EX 125ml'), NOW(), NOW()),
(70200, 'SALE', (SELECT id FROM product WHERE name = '설화수 자음유액EX 125ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022183112ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '설화수 자음유액EX 125ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022183101ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '설화수 자음유액EX 125ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022183106ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '설화수 자음유액EX 125ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022183107ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '설화수 자음유액EX 125ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022183108ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '설화수 자음유액EX 125ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022183109ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '설화수 자음유액EX 125ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '설화수 자음유액EX 125ml';


-- ================================

-- 상품: 마몽드 맨 리차징 로션 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('마몽드 맨 리차징 로션 150ml',
 '마몽드 맨 리차징 로션 150ml',
 5.0,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '마몽드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '마몽드 맨 리차징 로션 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(20000, 'ORIGINAL', (SELECT id FROM product WHERE name = '마몽드 맨 리차징 로션 150ml'), NOW(), NOW()),
(20000, 'SALE', (SELECT id FROM product WHERE name = '마몽드 맨 리차징 로션 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022274007ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '마몽드 맨 리차징 로션 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022274001ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '마몽드 맨 리차징 로션 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022274009ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '마몽드 맨 리차징 로션 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022274010ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '마몽드 맨 리차징 로션 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022274011ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '마몽드 맨 리차징 로션 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022274013ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '마몽드 맨 리차징 로션 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '마몽드 맨 리차징 로션 150ml';


-- ================================

-- 상품: [미백/잡티케어] 달바 비타 토닝 세럼 로션 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[미백/잡티케어] 달바 비타 토닝 세럼 로션 100ml',
 '[미백/잡티케어] 달바 비타 토닝 세럼 로션 100ml',
 4.9,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '달바'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[미백/잡티케어] 달바 비타 토닝 세럼 로션 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(42000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[미백/잡티케어] 달바 비타 토닝 세럼 로션 100ml'), NOW(), NOW()),
(42000, 'SALE', (SELECT id FROM product WHERE name = '[미백/잡티케어] 달바 비타 토닝 세럼 로션 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022342707ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[미백/잡티케어] 달바 비타 토닝 세럼 로션 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022342708ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[미백/잡티케어] 달바 비타 토닝 세럼 로션 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022342709ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[미백/잡티케어] 달바 비타 토닝 세럼 로션 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022342710ko.png?l=ko', 4, (SELECT id FROM product WHERE name = '[미백/잡티케어] 달바 비타 토닝 세럼 로션 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[미백/잡티케어] 달바 비타 토닝 세럼 로션 100ml';


-- ================================

-- 상품: [리뉴얼] 스킨푸드 블랙슈가 퍼펙트 에멀전 2X 포 맨 180ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[리뉴얼] 스킨푸드 블랙슈가 퍼펙트 에멀전 2X 포 맨 180ml',
 '[리뉴얼] 스킨푸드 블랙슈가 퍼펙트 에멀전 2X 포 맨 180ml',
 4.7,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '스킨푸드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[리뉴얼] 스킨푸드 블랙슈가 퍼펙트 에멀전 2X 포 맨 180ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(22000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[리뉴얼] 스킨푸드 블랙슈가 퍼펙트 에멀전 2X 포 맨 180ml'), NOW(), NOW()),
(15400, 'SALE', (SELECT id FROM product WHERE name = '[리뉴얼] 스킨푸드 블랙슈가 퍼펙트 에멀전 2X 포 맨 180ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022424001ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[리뉴얼] 스킨푸드 블랙슈가 퍼펙트 에멀전 2X 포 맨 180ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[리뉴얼] 스킨푸드 블랙슈가 퍼펙트 에멀전 2X 포 맨 180ml';


-- ================================

-- 상품: 이니스프리 그린티 로션 포맨 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('이니스프리 그린티 로션 포맨 150ml',
 '이니스프리 그린티 로션 포맨 150ml',
 4.6,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '이니스프리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '이니스프리 그린티 로션 포맨 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(22000, 'ORIGINAL', (SELECT id FROM product WHERE name = '이니스프리 그린티 로션 포맨 150ml'), NOW(), NOW()),
(22000, 'SALE', (SELECT id FROM product WHERE name = '이니스프리 그린티 로션 포맨 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022610006ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '이니스프리 그린티 로션 포맨 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022610005ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '이니스프리 그린티 로션 포맨 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022610004ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '이니스프리 그린티 로션 포맨 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022610003ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '이니스프리 그린티 로션 포맨 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '이니스프리 그린티 로션 포맨 150ml';


-- ================================

-- 상품: 브리올옴므 퍼펙트 화이트닝 로션 120ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('브리올옴므 퍼펙트 화이트닝 로션 120ml',
 '브리올옴므 퍼펙트 화이트닝 로션 120ml',
 5.0,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '브리올옴므'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '브리올옴므 퍼펙트 화이트닝 로션 120ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '브리올옴므 퍼펙트 화이트닝 로션 120ml'), NOW(), NOW()),
(24700, 'SALE', (SELECT id FROM product WHERE name = '브리올옴므 퍼펙트 화이트닝 로션 120ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022722601ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '브리올옴므 퍼펙트 화이트닝 로션 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022722602ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '브리올옴므 퍼펙트 화이트닝 로션 120ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '브리올옴므 퍼펙트 화이트닝 로션 120ml';


-- ================================

-- 상품: [NEW] 토리든 밸런스풀 포맨 시카 오일프리 로션 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW] 토리든 밸런스풀 포맨 시카 오일프리 로션 200ml',
 '[NEW] 토리든 밸런스풀 포맨 시카 오일프리 로션 200ml',
 4.7,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '토리든'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW] 토리든 밸런스풀 포맨 시카 오일프리 로션 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW] 토리든 밸런스풀 포맨 시카 오일프리 로션 200ml'), NOW(), NOW()),
(21850, 'SALE', (SELECT id FROM product WHERE name = '[NEW] 토리든 밸런스풀 포맨 시카 오일프리 로션 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022895503ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW] 토리든 밸런스풀 포맨 시카 오일프리 로션 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022895504ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW] 토리든 밸런스풀 포맨 시카 오일프리 로션 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW] 토리든 밸런스풀 포맨 시카 오일프리 로션 200ml';


-- ================================

-- 상품: [NEW] 아이오페 XMD 스템3 클리니컬 리커버리 에멀전 130ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW] 아이오페 XMD 스템3 클리니컬 리커버리 에멀전 130ml',
 '[NEW] 아이오페 XMD 스템3 클리니컬 리커버리 에멀전 130ml',
 5.0,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이오페'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW] 아이오페 XMD 스템3 클리니컬 리커버리 에멀전 130ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(48000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW] 아이오페 XMD 스템3 클리니컬 리커버리 에멀전 130ml'), NOW(), NOW()),
(48000, 'SALE', (SELECT id FROM product WHERE name = '[NEW] 아이오페 XMD 스템3 클리니컬 리커버리 에멀전 130ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022948802ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW] 아이오페 XMD 스템3 클리니컬 리커버리 에멀전 130ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022948801ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW] 아이오페 XMD 스템3 클리니컬 리커버리 에멀전 130ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW] 아이오페 XMD 스템3 클리니컬 리커버리 에멀전 130ml';


-- ================================

-- 상품: 토니모리 원더 세라마이드 모찌 에멀전 300ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('토니모리 원더 세라마이드 모찌 에멀전 300ml',
 '토니모리 원더 세라마이드 모찌 에멀전 300ml',
 4.9,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '토니모리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '토니모리 원더 세라마이드 모찌 에멀전 300ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(15000, 'ORIGINAL', (SELECT id FROM product WHERE name = '토니모리 원더 세라마이드 모찌 에멀전 300ml'), NOW(), NOW()),
(13500, 'SALE', (SELECT id FROM product WHERE name = '토니모리 원더 세라마이드 모찌 에멀전 300ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023129701ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '토니모리 원더 세라마이드 모찌 에멀전 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023129702ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '토니모리 원더 세라마이드 모찌 에멀전 300ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '토니모리 원더 세라마이드 모찌 에멀전 300ml';


-- ================================

-- 상품: [화잘먹] 식물나라 뽀얀쌀 맑은톤 토너&로션 세트...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[화잘먹] 식물나라 뽀얀쌀 맑은톤 토너&로션 세트',
 '[화잘먹] 식물나라 뽀얀쌀 맑은톤 토너&로션 세트',
 4.6,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '식물나라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[화잘먹] 식물나라 뽀얀쌀 맑은톤 토너&로션 세트'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(22800, 'ORIGINAL', (SELECT id FROM product WHERE name = '[화잘먹] 식물나라 뽀얀쌀 맑은톤 토너&로션 세트'), NOW(), NOW()),
(12900, 'SALE', (SELECT id FROM product WHERE name = '[화잘먹] 식물나라 뽀얀쌀 맑은톤 토너&로션 세트'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023221701ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[화잘먹] 식물나라 뽀얀쌀 맑은톤 토너&로션 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023221702ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[화잘먹] 식물나라 뽀얀쌀 맑은톤 토너&로션 세트'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[화잘먹] 식물나라 뽀얀쌀 맑은톤 토너&로션 세트';


-- ================================

-- 상품: [NEW] 랑콤 제니피끄 얼티미트 로션 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW] 랑콤 제니피끄 얼티미트 로션 150ml',
 '[NEW] 랑콤 제니피끄 얼티미트 로션 150ml',
 5.0,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '랑콤'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW] 랑콤 제니피끄 얼티미트 로션 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(105000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW] 랑콤 제니피끄 얼티미트 로션 150ml'), NOW(), NOW()),
(89250, 'SALE', (SELECT id FROM product WHERE name = '[NEW] 랑콤 제니피끄 얼티미트 로션 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023295401ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW] 랑콤 제니피끄 얼티미트 로션 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023295402ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW] 랑콤 제니피끄 얼티미트 로션 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023295403ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW] 랑콤 제니피끄 얼티미트 로션 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW] 랑콤 제니피끄 얼티미트 로션 150ml';


-- ================================

-- 상품: [NEW] 빌리프 맨올로지 프로텍티브 엑토인 에멀전 125ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW] 빌리프 맨올로지 프로텍티브 엑토인 에멀전 125ml',
 '[NEW] 빌리프 맨올로지 프로텍티브 엑토인 에멀전 125ml',
 0.0,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '빌리프'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW] 빌리프 맨올로지 프로텍티브 엑토인 에멀전 125ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(39000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW] 빌리프 맨올로지 프로텍티브 엑토인 에멀전 125ml'), NOW(), NOW()),
(39000, 'SALE', (SELECT id FROM product WHERE name = '[NEW] 빌리프 맨올로지 프로텍티브 엑토인 에멀전 125ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023299902ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW] 빌리프 맨올로지 프로텍티브 엑토인 에멀전 125ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023299903ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW] 빌리프 맨올로지 프로텍티브 엑토인 에멀전 125ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023299904ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW] 빌리프 맨올로지 프로텍티브 엑토인 에멀전 125ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023299901ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[NEW] 빌리프 맨올로지 프로텍티브 엑토인 에멀전 125ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW] 빌리프 맨올로지 프로텍티브 엑토인 에멀전 125ml';


-- ================================

-- 상품: [나카플로 공동개발] 미닉 노세범 블루 캐모마일 수분 젤 로션 80ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[나카플로 공동개발] 미닉 노세범 블루 캐모마일 수분 젤 로션 80ml',
 '[나카플로 공동개발] 미닉 노세범 블루 캐모마일 수분 젤 로션 80ml',
 5.0,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '미닉'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[나카플로 공동개발] 미닉 노세범 블루 캐모마일 수분 젤 로션 80ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[나카플로 공동개발] 미닉 노세범 블루 캐모마일 수분 젤 로션 80ml'), NOW(), NOW()),
(32000, 'SALE', (SELECT id FROM product WHERE name = '[나카플로 공동개발] 미닉 노세범 블루 캐모마일 수분 젤 로션 80ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023300401ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[나카플로 공동개발] 미닉 노세범 블루 캐모마일 수분 젤 로션 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023300403ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[나카플로 공동개발] 미닉 노세범 블루 캐모마일 수분 젤 로션 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023300402ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[나카플로 공동개발] 미닉 노세범 블루 캐모마일 수분 젤 로션 80ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[나카플로 공동개발] 미닉 노세범 블루 캐모마일 수분 젤 로션 80ml';


-- ================================

-- 상품: [NEW 화잘먹 피부 밀착 로션] 아렌시아 레드 스무디 로션 5 200ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW 화잘먹 피부 밀착 로션] 아렌시아 레드 스무디 로션 5 200ml',
 '[NEW 화잘먹 피부 밀착 로션] 아렌시아 레드 스무디 로션 5 200ml',
 0.0,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아렌시아'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW 화잘먹 피부 밀착 로션] 아렌시아 레드 스무디 로션 5 200ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW 화잘먹 피부 밀착 로션] 아렌시아 레드 스무디 로션 5 200ml'), NOW(), NOW()),
(23400, 'SALE', (SELECT id FROM product WHERE name = '[NEW 화잘먹 피부 밀착 로션] 아렌시아 레드 스무디 로션 5 200ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023357702ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW 화잘먹 피부 밀착 로션] 아렌시아 레드 스무디 로션 5 200ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023357701ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW 화잘먹 피부 밀착 로션] 아렌시아 레드 스무디 로션 5 200ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW 화잘먹 피부 밀착 로션] 아렌시아 레드 스무디 로션 5 200ml';


-- ================================

-- 상품: [보들보들보들로션/속건조] 브링그린 블루빈 B5-PDRN 마일드 로션 230ml (+블루빈...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[보들보들보들로션/속건조] 브링그린 블루빈 B5-PDRN 마일드 로션 230ml (+블루빈크림 7ml)',
 '[보들보들보들로션/속건조] 브링그린 블루빈 B5-PDRN 마일드 로션 230ml (+블루빈크림 7ml)',
 5.0,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '브링그린'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[보들보들보들로션/속건조] 브링그린 블루빈 B5-PDRN 마일드 로션 230ml (+블루빈크림 7ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(21000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[보들보들보들로션/속건조] 브링그린 블루빈 B5-PDRN 마일드 로션 230ml (+블루빈크림 7ml)'), NOW(), NOW()),
(21000, 'SALE', (SELECT id FROM product WHERE name = '[보들보들보들로션/속건조] 브링그린 블루빈 B5-PDRN 마일드 로션 230ml (+블루빈크림 7ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023438006ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[보들보들보들로션/속건조] 브링그린 블루빈 B5-PDRN 마일드 로션 230ml (+블루빈크림 7ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023438008ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[보들보들보들로션/속건조] 브링그린 블루빈 B5-PDRN 마일드 로션 230ml (+블루빈크림 7ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023438004ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[보들보들보들로션/속건조] 브링그린 블루빈 B5-PDRN 마일드 로션 230ml (+블루빈크림 7ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023438009ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[보들보들보들로션/속건조] 브링그린 블루빈 B5-PDRN 마일드 로션 230ml (+블루빈크림 7ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[보들보들보들로션/속건조] 브링그린 블루빈 B5-PDRN 마일드 로션 230ml (+블루빈크림 7ml)';


-- ================================

-- 상품: 크리니크 포 맨 모이스춰라이징 로션 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('크리니크 포 맨 모이스춰라이징 로션 100ml',
 '크리니크 포 맨 모이스춰라이징 로션 100ml',
 4.9,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '크리니크'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '크리니크 포 맨 모이스춰라이징 로션 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(61000, 'ORIGINAL', (SELECT id FROM product WHERE name = '크리니크 포 맨 모이스춰라이징 로션 100ml'), NOW(), NOW()),
(51850, 'SALE', (SELECT id FROM product WHERE name = '크리니크 포 맨 모이스춰라이징 로션 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0010/A00000010497202ko.jpeg?l=ko', 1, (SELECT id FROM product WHERE name = '크리니크 포 맨 모이스춰라이징 로션 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '크리니크 포 맨 모이스춰라이징 로션 100ml';


-- ================================

-- 상품: 보닌 퓨어 에센셜 에멀전...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('보닌 퓨어 에센셜 에멀전',
 '보닌 퓨어 에센셜 에멀전',
 4.8,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '보닌'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '보닌 퓨어 에센셜 에멀전'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(20000, 'ORIGINAL', (SELECT id FROM product WHERE name = '보닌 퓨어 에센셜 에멀전'), NOW(), NOW()),
(11900, 'SALE', (SELECT id FROM product WHERE name = '보닌 퓨어 에센셜 에멀전'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014942701ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '보닌 퓨어 에센셜 에멀전'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '보닌 퓨어 에센셜 에멀전';


-- ================================

-- 상품: 이지에프올로지 인헨싱 밸런싱 로션 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('이지에프올로지 인헨싱 밸런싱 로션 50ml',
 '이지에프올로지 인헨싱 밸런싱 로션 50ml',
 4.7,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'EGF올로지'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '이지에프올로지 인헨싱 밸런싱 로션 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(63000, 'ORIGINAL', (SELECT id FROM product WHERE name = '이지에프올로지 인헨싱 밸런싱 로션 50ml'), NOW(), NOW()),
(63000, 'SALE', (SELECT id FROM product WHERE name = '이지에프올로지 인헨싱 밸런싱 로션 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017103401ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '이지에프올로지 인헨싱 밸런싱 로션 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '이지에프올로지 인헨싱 밸런싱 로션 50ml';


-- ================================

-- 상품: 키엘 울트라 훼이셜 모이스춰라이저 125ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('키엘 울트라 훼이셜 모이스춰라이저 125ml',
 '키엘 울트라 훼이셜 모이스춰라이저 125ml',
 4.9,
 (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '키엘'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '키엘 울트라 훼이셜 모이스춰라이저 125ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(53000, 'ORIGINAL', (SELECT id FROM product WHERE name = '키엘 울트라 훼이셜 모이스춰라이저 125ml'), NOW(), NOW()),
(47700, 'SALE', (SELECT id FROM product WHERE name = '키엘 울트라 훼이셜 모이스춰라이저 125ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021417607ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '키엘 울트라 훼이셜 모이스춰라이저 125ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021417604ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '키엘 울트라 훼이셜 모이스춰라이저 125ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021417601ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '키엘 울트라 훼이셜 모이스춰라이저 125ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '키엘 울트라 훼이셜 모이스춰라이저 125ml';


-- ================================
