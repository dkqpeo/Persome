-- 상품: [NO.1 미스트세럼/슬로우에이징] 달바 퍼스트 스프레이 세럼 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NO.1 미스트세럼/슬로우에이징] 달바 퍼스트 스프레이 세럼 100ml',
 '[NO.1 미스트세럼/슬로우에이징] 달바 퍼스트 스프레이 세럼 100ml',
 4.8,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '달바'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NO.1 미스트세럼/슬로우에이징] 달바 퍼스트 스프레이 세럼 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NO.1 미스트세럼/슬로우에이징] 달바 퍼스트 스프레이 세럼 100ml'), NOW(), NOW()),
(20900, 'SALE', (SELECT id FROM product WHERE name = '[NO.1 미스트세럼/슬로우에이징] 달바 퍼스트 스프레이 세럼 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017131221ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NO.1 미스트세럼/슬로우에이징] 달바 퍼스트 스프레이 세럼 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017131222ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NO.1 미스트세럼/슬로우에이징] 달바 퍼스트 스프레이 세럼 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017131218ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NO.1 미스트세럼/슬로우에이징] 달바 퍼스트 스프레이 세럼 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017131223ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[NO.1 미스트세럼/슬로우에이징] 달바 퍼스트 스프레이 세럼 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NO.1 미스트세럼/슬로우에이징] 달바 퍼스트 스프레이 세럼 100ml';


-- ================================

-- 상품: 쏘내추럴 올 데이 메이크업 픽서 120ml (안개분사 캔타입)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('쏘내추럴 올 데이 메이크업 픽서 120ml (안개분사 캔타입)',
 '쏘내추럴 올 데이 메이크업 픽서 120ml (안개분사 캔타입)',
 4.7,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '쏘내추럴'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 메이크업 픽서 120ml (안개분사 캔타입)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 메이크업 픽서 120ml (안개분사 캔타입)'), NOW(), NOW()),
(16800, 'SALE', (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 메이크업 픽서 120ml (안개분사 캔타입)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013876216ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 메이크업 픽서 120ml (안개분사 캔타입)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013876213ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 메이크업 픽서 120ml (안개분사 캔타입)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013876212ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 메이크업 픽서 120ml (안개분사 캔타입)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013876214ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 메이크업 픽서 120ml (안개분사 캔타입)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '쏘내추럴 올 데이 메이크업 픽서 120ml (안개분사 캔타입)';


-- ================================

-- 상품: 아벤느 오 떼르말 미스트 300ml*2 + 50ml 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아벤느 오 떼르말 미스트 300ml*2 + 50ml 기획',
 '아벤느 오 떼르말 미스트 300ml*2 + 50ml 기획',
 4.8,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아벤느'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 300ml*2 + 50ml 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(34000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 300ml*2 + 50ml 기획'), NOW(), NOW()),
(27900, 'SALE', (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 300ml*2 + 50ml 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016643614ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 300ml*2 + 50ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016643612ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 300ml*2 + 50ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016643610ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 300ml*2 + 50ml 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아벤느 오 떼르말 미스트 300ml*2 + 50ml 기획';


-- ================================

-- 상품: [유혜주PICK/리뷰이벤트] 메디큐브 PDRN 젤리 미스트 세럼 100ml 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[유혜주PICK/리뷰이벤트] 메디큐브 PDRN 젤리 미스트 세럼 100ml 기획',
 '[유혜주PICK/리뷰이벤트] 메디큐브 PDRN 젤리 미스트 세럼 100ml 기획',
 4.8,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '메디큐브'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[유혜주PICK/리뷰이벤트] 메디큐브 PDRN 젤리 미스트 세럼 100ml 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(27800, 'ORIGINAL', (SELECT id FROM product WHERE name = '[유혜주PICK/리뷰이벤트] 메디큐브 PDRN 젤리 미스트 세럼 100ml 기획'), NOW(), NOW()),
(19200, 'SALE', (SELECT id FROM product WHERE name = '[유혜주PICK/리뷰이벤트] 메디큐브 PDRN 젤리 미스트 세럼 100ml 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023222016ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[유혜주PICK/리뷰이벤트] 메디큐브 PDRN 젤리 미스트 세럼 100ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023222011ko.jpeg?l=ko', 2, (SELECT id FROM product WHERE name = '[유혜주PICK/리뷰이벤트] 메디큐브 PDRN 젤리 미스트 세럼 100ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023222012ko.jpeg?l=ko', 3, (SELECT id FROM product WHERE name = '[유혜주PICK/리뷰이벤트] 메디큐브 PDRN 젤리 미스트 세럼 100ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023222002ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[유혜주PICK/리뷰이벤트] 메디큐브 PDRN 젤리 미스트 세럼 100ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023222004ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[유혜주PICK/리뷰이벤트] 메디큐브 PDRN 젤리 미스트 세럼 100ml 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023222005ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[유혜주PICK/리뷰이벤트] 메디큐브 PDRN 젤리 미스트 세럼 100ml 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[유혜주PICK/리뷰이벤트] 메디큐브 PDRN 젤리 미스트 세럼 100ml 기획';


-- ================================

-- 상품: [재구매1위/퀵보습진정] 바이오힐 보 판테셀 리페어시카 크림미스트 120mL [기내용/단품...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[재구매1위/퀵보습진정] 바이오힐 보 판테셀 리페어시카 크림미스트 120mL [기내용/단품/더블기획]',
 '[재구매1위/퀵보습진정] 바이오힐 보 판테셀 리페어시카 크림미스트 120mL [기내용/단품/더블기획]',
 4.8,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오힐보'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[재구매1위/퀵보습진정] 바이오힐 보 판테셀 리페어시카 크림미스트 120mL [기내용/단품/더블기획]'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25200, 'ORIGINAL', (SELECT id FROM product WHERE name = '[재구매1위/퀵보습진정] 바이오힐 보 판테셀 리페어시카 크림미스트 120mL [기내용/단품/더블기획]'), NOW(), NOW()),
(24500, 'SALE', (SELECT id FROM product WHERE name = '[재구매1위/퀵보습진정] 바이오힐 보 판테셀 리페어시카 크림미스트 120mL [기내용/단품/더블기획]'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018900402ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[재구매1위/퀵보습진정] 바이오힐 보 판테셀 리페어시카 크림미스트 120mL [기내용/단품/더블기획]'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018900404ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[재구매1위/퀵보습진정] 바이오힐 보 판테셀 리페어시카 크림미스트 120mL [기내용/단품/더블기획]'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018900403ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[재구매1위/퀵보습진정] 바이오힐 보 판테셀 리페어시카 크림미스트 120mL [기내용/단품/더블기획]'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018900407ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[재구매1위/퀵보습진정] 바이오힐 보 판테셀 리페어시카 크림미스트 120mL [기내용/단품/더블기획]'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018900406ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[재구매1위/퀵보습진정] 바이오힐 보 판테셀 리페어시카 크림미스트 120mL [기내용/단품/더블기획]'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018900405ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[재구매1위/퀵보습진정] 바이오힐 보 판테셀 리페어시카 크림미스트 120mL [기내용/단품/더블기획]'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[재구매1위/퀵보습진정] 바이오힐 보 판테셀 리페어시카 크림미스트 120mL [기내용/단품/더블기획]';


-- ================================

-- 상품: 쏘내추럴 올 데이 타이트 메이크업 세팅 픽서 35ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('쏘내추럴 올 데이 타이트 메이크업 세팅 픽서 35ml',
 '쏘내추럴 올 데이 타이트 메이크업 세팅 픽서 35ml',
 4.7,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '쏘내추럴'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 타이트 메이크업 세팅 픽서 35ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(10500, 'ORIGINAL', (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 타이트 메이크업 세팅 픽서 35ml'), NOW(), NOW()),
(7870, 'SALE', (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 타이트 메이크업 세팅 픽서 35ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023247501ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 타이트 메이크업 세팅 픽서 35ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023247508ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 타이트 메이크업 세팅 픽서 35ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023247507ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 타이트 메이크업 세팅 픽서 35ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023247506ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 타이트 메이크업 세팅 픽서 35ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023247505ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 타이트 메이크업 세팅 픽서 35ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023247509ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 타이트 메이크업 세팅 픽서 35ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '쏘내추럴 올 데이 타이트 메이크업 세팅 픽서 35ml';


-- ================================

-- 상품: [피로하고 건조한 눈 케어] 프라나롬 캐모마일 하이드롤라 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[피로하고 건조한 눈 케어] 프라나롬 캐모마일 하이드롤라 150ml',
 '[피로하고 건조한 눈 케어] 프라나롬 캐모마일 하이드롤라 150ml',
 4.4,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '프라나롬'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[피로하고 건조한 눈 케어] 프라나롬 캐모마일 하이드롤라 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(37000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[피로하고 건조한 눈 케어] 프라나롬 캐모마일 하이드롤라 150ml'), NOW(), NOW()),
(29970, 'SALE', (SELECT id FROM product WHERE name = '[피로하고 건조한 눈 케어] 프라나롬 캐모마일 하이드롤라 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021355505ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[피로하고 건조한 눈 케어] 프라나롬 캐모마일 하이드롤라 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021355502ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[피로하고 건조한 눈 케어] 프라나롬 캐모마일 하이드롤라 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021355501ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[피로하고 건조한 눈 케어] 프라나롬 캐모마일 하이드롤라 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[피로하고 건조한 눈 케어] 프라나롬 캐모마일 하이드롤라 150ml';


-- ================================

-- 상품: [크림 증정/청담샵 화잘먹] 톰 콜라겐 앰플 미스트 73.8ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[크림 증정/청담샵 화잘먹] 톰 콜라겐 앰플 미스트 73.8ml',
 '[크림 증정/청담샵 화잘먹] 톰 콜라겐 앰플 미스트 73.8ml',
 5.0,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '톰'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[크림 증정/청담샵 화잘먹] 톰 콜라겐 앰플 미스트 73.8ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(49000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[크림 증정/청담샵 화잘먹] 톰 콜라겐 앰플 미스트 73.8ml'), NOW(), NOW()),
(29500, 'SALE', (SELECT id FROM product WHERE name = '[크림 증정/청담샵 화잘먹] 톰 콜라겐 앰플 미스트 73.8ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023163118ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[크림 증정/청담샵 화잘먹] 톰 콜라겐 앰플 미스트 73.8ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023163112ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[크림 증정/청담샵 화잘먹] 톰 콜라겐 앰플 미스트 73.8ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023163107ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[크림 증정/청담샵 화잘먹] 톰 콜라겐 앰플 미스트 73.8ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023163105ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[크림 증정/청담샵 화잘먹] 톰 콜라겐 앰플 미스트 73.8ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023163102ko.png?l=ko', 5, (SELECT id FROM product WHERE name = '[크림 증정/청담샵 화잘먹] 톰 콜라겐 앰플 미스트 73.8ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[크림 증정/청담샵 화잘먹] 톰 콜라겐 앰플 미스트 73.8ml';


-- ================================

-- 상품: [NO.1 미스트세럼] 달바 퍼스트 스프레이 세럼 100ml 2개 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NO.1 미스트세럼] 달바 퍼스트 스프레이 세럼 100ml 2개 기획',
 '[NO.1 미스트세럼] 달바 퍼스트 스프레이 세럼 100ml 2개 기획',
 4.9,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '달바'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('퍼스트 세럼 더블기획', 59800, (SELECT id FROM product WHERE name = '[NO.1 미스트세럼] 달바 퍼스트 스프레이 세럼 100ml 2개 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(59800, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NO.1 미스트세럼] 달바 퍼스트 스프레이 세럼 100ml 2개 기획'), NOW(), NOW()),
(59800, 'SALE', (SELECT id FROM product WHERE name = '[NO.1 미스트세럼] 달바 퍼스트 스프레이 세럼 100ml 2개 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A000000179685111ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NO.1 미스트세럼] 달바 퍼스트 스프레이 세럼 100ml 2개 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A000000179685101ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NO.1 미스트세럼] 달바 퍼스트 스프레이 세럼 100ml 2개 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017968589ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NO.1 미스트세럼] 달바 퍼스트 스프레이 세럼 100ml 2개 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017968572ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[NO.1 미스트세럼] 달바 퍼스트 스프레이 세럼 100ml 2개 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017968576ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[NO.1 미스트세럼] 달바 퍼스트 스프레이 세럼 100ml 2개 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017968573ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[NO.1 미스트세럼] 달바 퍼스트 스프레이 세럼 100ml 2개 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NO.1 미스트세럼] 달바 퍼스트 스프레이 세럼 100ml 2개 기획';


-- ================================

-- 상품: [소올PICK&공동개발] 휩드 무화버터 비건 밀크폼 팩미스트 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[소올PICK&공동개발] 휩드 무화버터 비건 밀크폼 팩미스트 150ml',
 '[소올PICK&공동개발] 휩드 무화버터 비건 밀크폼 팩미스트 150ml',
 4.7,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '휩드'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[소올PICK&공동개발] 휩드 무화버터 비건 밀크폼 팩미스트 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[소올PICK&공동개발] 휩드 무화버터 비건 밀크폼 팩미스트 150ml'), NOW(), NOW()),
(20800, 'SALE', (SELECT id FROM product WHERE name = '[소올PICK&공동개발] 휩드 무화버터 비건 밀크폼 팩미스트 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023297507ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[소올PICK&공동개발] 휩드 무화버터 비건 밀크폼 팩미스트 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023297504ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[소올PICK&공동개발] 휩드 무화버터 비건 밀크폼 팩미스트 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023297506ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[소올PICK&공동개발] 휩드 무화버터 비건 밀크폼 팩미스트 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023297505ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[소올PICK&공동개발] 휩드 무화버터 비건 밀크폼 팩미스트 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023297503ko.png?l=ko', 5, (SELECT id FROM product WHERE name = '[소올PICK&공동개발] 휩드 무화버터 비건 밀크폼 팩미스트 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[소올PICK&공동개발] 휩드 무화버터 비건 밀크폼 팩미스트 150ml';


-- ================================

-- 상품: 쏘내추럴 올 데이 메이크업 픽서 더블기획 (120ml+120ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('쏘내추럴 올 데이 메이크업 픽서 더블기획 (120ml+120ml)',
 '쏘내추럴 올 데이 메이크업 픽서 더블기획 (120ml+120ml)',
 4.7,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '쏘내추럴'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 메이크업 픽서 더블기획 (120ml+120ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(42000, 'ORIGINAL', (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 메이크업 픽서 더블기획 (120ml+120ml)'), NOW(), NOW()),
(42000, 'SALE', (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 메이크업 픽서 더블기획 (120ml+120ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016211421ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 메이크업 픽서 더블기획 (120ml+120ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016211418ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 메이크업 픽서 더블기획 (120ml+120ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016211419ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 메이크업 픽서 더블기획 (120ml+120ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016211422ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 메이크업 픽서 더블기획 (120ml+120ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '쏘내추럴 올 데이 메이크업 픽서 더블기획 (120ml+120ml)';


-- ================================

-- 상품: 아비브 부활초 미스트 세럼 글로우 스프레이 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아비브 부활초 미스트 세럼 글로우 스프레이 100ml',
 '아비브 부활초 미스트 세럼 글로우 스프레이 100ml',
 4.6,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아비브'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아비브 부활초 미스트 세럼 글로우 스프레이 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아비브 부활초 미스트 세럼 글로우 스프레이 100ml'), NOW(), NOW()),
(17500, 'SALE', (SELECT id FROM product WHERE name = '아비브 부활초 미스트 세럼 글로우 스프레이 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021607605ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아비브 부활초 미스트 세럼 글로우 스프레이 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021607604ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아비브 부활초 미스트 세럼 글로우 스프레이 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아비브 부활초 미스트 세럼 글로우 스프레이 100ml';


-- ================================

-- 상품: [긴급진정] 달바 바이탈 스프레이 세럼 100ml 2개 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[긴급진정] 달바 바이탈 스프레이 세럼 100ml 2개 기획',
 '[긴급진정] 달바 바이탈 스프레이 세럼 100ml 2개 기획',
 4.9,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '달바'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('바이탈 세럼 더블기획', 35200, (SELECT id FROM product WHERE name = '[긴급진정] 달바 바이탈 스프레이 세럼 100ml 2개 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(58000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[긴급진정] 달바 바이탈 스프레이 세럼 100ml 2개 기획'), NOW(), NOW()),
(35200, 'SALE', (SELECT id FROM product WHERE name = '[긴급진정] 달바 바이탈 스프레이 세럼 100ml 2개 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018108036ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[긴급진정] 달바 바이탈 스프레이 세럼 100ml 2개 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018108028ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[긴급진정] 달바 바이탈 스프레이 세럼 100ml 2개 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018108034ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[긴급진정] 달바 바이탈 스프레이 세럼 100ml 2개 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[긴급진정] 달바 바이탈 스프레이 세럼 100ml 2개 기획';


-- ================================

-- 상품: 쏘내추럴 비건 메이크업 캄 픽서 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('쏘내추럴 비건 메이크업 캄 픽서 100ml',
 '쏘내추럴 비건 메이크업 캄 픽서 100ml',
 4.6,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '쏘내추럴'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '쏘내추럴 비건 메이크업 캄 픽서 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(22000, 'ORIGINAL', (SELECT id FROM product WHERE name = '쏘내추럴 비건 메이크업 캄 픽서 100ml'), NOW(), NOW()),
(15400, 'SALE', (SELECT id FROM product WHERE name = '쏘내추럴 비건 메이크업 캄 픽서 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015260014ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '쏘내추럴 비건 메이크업 캄 픽서 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015260010ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '쏘내추럴 비건 메이크업 캄 픽서 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015260011ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '쏘내추럴 비건 메이크업 캄 픽서 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015260012ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '쏘내추럴 비건 메이크업 캄 픽서 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '쏘내추럴 비건 메이크업 캄 픽서 100ml';


-- ================================

-- 상품: 케어놀로지 리블루 밸런싱 크림 인 미스트 120ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('케어놀로지 리블루 밸런싱 크림 인 미스트 120ml',
 '케어놀로지 리블루 밸런싱 크림 인 미스트 120ml',
 4.6,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '케어놀로지'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '케어놀로지 리블루 밸런싱 크림 인 미스트 120ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(34000, 'ORIGINAL', (SELECT id FROM product WHERE name = '케어놀로지 리블루 밸런싱 크림 인 미스트 120ml'), NOW(), NOW()),
(28900, 'SALE', (SELECT id FROM product WHERE name = '케어놀로지 리블루 밸런싱 크림 인 미스트 120ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021420206ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '케어놀로지 리블루 밸런싱 크림 인 미스트 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021420207ko.jpeg?l=ko', 2, (SELECT id FROM product WHERE name = '케어놀로지 리블루 밸런싱 크림 인 미스트 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021420205ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '케어놀로지 리블루 밸런싱 크림 인 미스트 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021420204ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '케어놀로지 리블루 밸런싱 크림 인 미스트 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021420203ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '케어놀로지 리블루 밸런싱 크림 인 미스트 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021420201ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '케어놀로지 리블루 밸런싱 크림 인 미스트 120ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '케어놀로지 리블루 밸런싱 크림 인 미스트 120ml';


-- ================================

-- 상품: 쏘내추럴 올 데이 메이크업 픽서 75ml 기획(+15ml 젤 픽서)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('쏘내추럴 올 데이 메이크업 픽서 75ml 기획(+15ml 젤 픽서)',
 '쏘내추럴 올 데이 메이크업 픽서 75ml 기획(+15ml 젤 픽서)',
 4.7,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '쏘내추럴'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 메이크업 픽서 75ml 기획(+15ml 젤 픽서)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(18000, 'ORIGINAL', (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 메이크업 픽서 75ml 기획(+15ml 젤 픽서)'), NOW(), NOW()),
(13500, 'SALE', (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 메이크업 픽서 75ml 기획(+15ml 젤 픽서)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017349326ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 메이크업 픽서 75ml 기획(+15ml 젤 픽서)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017349324ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 메이크업 픽서 75ml 기획(+15ml 젤 픽서)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017349323ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 메이크업 픽서 75ml 기획(+15ml 젤 픽서)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017349327ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 메이크업 픽서 75ml 기획(+15ml 젤 픽서)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '쏘내추럴 올 데이 메이크업 픽서 75ml 기획(+15ml 젤 픽서)';


-- ================================

-- 상품: 차앤박(CNP) 프로폴리스 에너지 앰플 미스트 250ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('차앤박(CNP) 프로폴리스 에너지 앰플 미스트 250ml',
 '차앤박(CNP) 프로폴리스 에너지 앰플 미스트 250ml',
 4.8,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '차앤박'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '차앤박(CNP) 프로폴리스 에너지 앰플 미스트 250ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(27000, 'ORIGINAL', (SELECT id FROM product WHERE name = '차앤박(CNP) 프로폴리스 에너지 앰플 미스트 250ml'), NOW(), NOW()),
(27000, 'SALE', (SELECT id FROM product WHERE name = '차앤박(CNP) 프로폴리스 에너지 앰플 미스트 250ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016651008ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '차앤박(CNP) 프로폴리스 에너지 앰플 미스트 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016651004ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '차앤박(CNP) 프로폴리스 에너지 앰플 미스트 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016651006ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '차앤박(CNP) 프로폴리스 에너지 앰플 미스트 250ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016651002ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '차앤박(CNP) 프로폴리스 에너지 앰플 미스트 250ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '차앤박(CNP) 프로폴리스 에너지 앰플 미스트 250ml';


-- ================================

-- 상품: [뿌리는 속광탄력/화잘먹 미스트] 에스네이처 아쿠아 스쿠알란 미스트 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[뿌리는 속광탄력/화잘먹 미스트] 에스네이처 아쿠아 스쿠알란 미스트 100ml',
 '[뿌리는 속광탄력/화잘먹 미스트] 에스네이처 아쿠아 스쿠알란 미스트 100ml',
 4.8,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에스네이처'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[뿌리는 속광탄력/화잘먹 미스트] 에스네이처 아쿠아 스쿠알란 미스트 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(27000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[뿌리는 속광탄력/화잘먹 미스트] 에스네이처 아쿠아 스쿠알란 미스트 100ml'), NOW(), NOW()),
(27000, 'SALE', (SELECT id FROM product WHERE name = '[뿌리는 속광탄력/화잘먹 미스트] 에스네이처 아쿠아 스쿠알란 미스트 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A000000213148113ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[뿌리는 속광탄력/화잘먹 미스트] 에스네이처 아쿠아 스쿠알란 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A000000213148102ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[뿌리는 속광탄력/화잘먹 미스트] 에스네이처 아쿠아 스쿠알란 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A000000213148103ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[뿌리는 속광탄력/화잘먹 미스트] 에스네이처 아쿠아 스쿠알란 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A000000213148104ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[뿌리는 속광탄력/화잘먹 미스트] 에스네이처 아쿠아 스쿠알란 미스트 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[뿌리는 속광탄력/화잘먹 미스트] 에스네이처 아쿠아 스쿠알란 미스트 100ml';


-- ================================

-- 상품: 오우썸 리하이드레이팅 더블 미스트 세럼 120ml (2102)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('오우썸 리하이드레이팅 더블 미스트 세럼 120ml (2102)',
 '오우썸 리하이드레이팅 더블 미스트 세럼 120ml (2102)',
 4.7,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '오우썸'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '오우썸 리하이드레이팅 더블 미스트 세럼 120ml (2102)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(18500, 'ORIGINAL', (SELECT id FROM product WHERE name = '오우썸 리하이드레이팅 더블 미스트 세럼 120ml (2102)'), NOW(), NOW()),
(11000, 'SALE', (SELECT id FROM product WHERE name = '오우썸 리하이드레이팅 더블 미스트 세럼 120ml (2102)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014922103ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '오우썸 리하이드레이팅 더블 미스트 세럼 120ml (2102)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014922102ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '오우썸 리하이드레이팅 더블 미스트 세럼 120ml (2102)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '오우썸 리하이드레이팅 더블 미스트 세럼 120ml (2102)';


-- ================================

-- 상품: [쿨링/붓기완화] 메디톡스 뉴라덤 카밍 오로라 미스트 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[쿨링/붓기완화] 메디톡스 뉴라덤 카밍 오로라 미스트 100ml',
 '[쿨링/붓기완화] 메디톡스 뉴라덤 카밍 오로라 미스트 100ml',
 4.9,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '뉴라덤'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[쿨링/붓기완화] 메디톡스 뉴라덤 카밍 오로라 미스트 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(27000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[쿨링/붓기완화] 메디톡스 뉴라덤 카밍 오로라 미스트 100ml'), NOW(), NOW()),
(23200, 'SALE', (SELECT id FROM product WHERE name = '[쿨링/붓기완화] 메디톡스 뉴라덤 카밍 오로라 미스트 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020685113ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[쿨링/붓기완화] 메디톡스 뉴라덤 카밍 오로라 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020685104ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[쿨링/붓기완화] 메디톡스 뉴라덤 카밍 오로라 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020685105ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[쿨링/붓기완화] 메디톡스 뉴라덤 카밍 오로라 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020685106ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[쿨링/붓기완화] 메디톡스 뉴라덤 카밍 오로라 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020685107ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[쿨링/붓기완화] 메디톡스 뉴라덤 카밍 오로라 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020685110ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[쿨링/붓기완화] 메디톡스 뉴라덤 카밍 오로라 미스트 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[쿨링/붓기완화] 메디톡스 뉴라덤 카밍 오로라 미스트 100ml';


-- ================================

-- 상품: 이즈앤트리 히아루론산 워터 미스트...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('이즈앤트리 히아루론산 워터 미스트',
 '이즈앤트리 히아루론산 워터 미스트',
 4.8,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '이즈앤트리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '이즈앤트리 히아루론산 워터 미스트'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(16500, 'ORIGINAL', (SELECT id FROM product WHERE name = '이즈앤트리 히아루론산 워터 미스트'), NOW(), NOW()),
(9900, 'SALE', (SELECT id FROM product WHERE name = '이즈앤트리 히아루론산 워터 미스트'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011716312ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '이즈앤트리 히아루론산 워터 미스트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011716310ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '이즈앤트리 히아루론산 워터 미스트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011716311ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '이즈앤트리 히아루론산 워터 미스트'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '이즈앤트리 히아루론산 워터 미스트';


-- ================================

-- 상품: 아벤느 오 떼르말 미스트 150ml 2입 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아벤느 오 떼르말 미스트 150ml 2입 기획',
 '아벤느 오 떼르말 미스트 150ml 2입 기획',
 4.8,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아벤느'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 150ml 2입 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 150ml 2입 기획'), NOW(), NOW()),
(20900, 'SALE', (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 150ml 2입 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001050716ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 150ml 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001050721ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 150ml 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001050720ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 150ml 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001050719ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 150ml 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001050718ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 150ml 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001050717ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 150ml 2입 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아벤느 오 떼르말 미스트 150ml 2입 기획';


-- ================================

-- 상품: [월레스와그로밋콜라보] 숨37 시크릿 모공 세라마이드 버블 오일 에센스 미스트 60ml 단...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[월레스와그로밋콜라보] 숨37 시크릿 모공 세라마이드 버블 오일 에센스 미스트 60ml 단품/기획',
 '[월레스와그로밋콜라보] 숨37 시크릿 모공 세라마이드 버블 오일 에센스 미스트 60ml 단품/기획',
 5.0,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '숨37'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[기획] 60ml(+그립톡 증정)', 20900, (SELECT id FROM product WHERE name = '[월레스와그로밋콜라보] 숨37 시크릿 모공 세라마이드 버블 오일 에센스 미스트 60ml 단품/기획'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[단품] 60ml', 20900, (SELECT id FROM product WHERE name = '[월레스와그로밋콜라보] 숨37 시크릿 모공 세라마이드 버블 오일 에센스 미스트 60ml 단품/기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[월레스와그로밋콜라보] 숨37 시크릿 모공 세라마이드 버블 오일 에센스 미스트 60ml 단품/기획'), NOW(), NOW()),
(20900, 'SALE', (SELECT id FROM product WHERE name = '[월레스와그로밋콜라보] 숨37 시크릿 모공 세라마이드 버블 오일 에센스 미스트 60ml 단품/기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021993014ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[월레스와그로밋콜라보] 숨37 시크릿 모공 세라마이드 버블 오일 에센스 미스트 60ml 단품/기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021993015ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[월레스와그로밋콜라보] 숨37 시크릿 모공 세라마이드 버블 오일 에센스 미스트 60ml 단품/기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021993008ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[월레스와그로밋콜라보] 숨37 시크릿 모공 세라마이드 버블 오일 에센스 미스트 60ml 단품/기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021993011ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[월레스와그로밋콜라보] 숨37 시크릿 모공 세라마이드 버블 오일 에센스 미스트 60ml 단품/기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021993012ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[월레스와그로밋콜라보] 숨37 시크릿 모공 세라마이드 버블 오일 에센스 미스트 60ml 단품/기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021993013ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[월레스와그로밋콜라보] 숨37 시크릿 모공 세라마이드 버블 오일 에센스 미스트 60ml 단품/기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[월레스와그로밋콜라보] 숨37 시크릿 모공 세라마이드 버블 오일 에센스 미스트 60ml 단품/기획';


-- ================================

-- 상품: [안개분사미스트]에스트라 아토베리어365 크림미스트 120ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[안개분사미스트]에스트라 아토베리어365 크림미스트 120ml',
 '[안개분사미스트]에스트라 아토베리어365 크림미스트 120ml',
 4.7,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에스트라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[안개분사미스트]에스트라 아토베리어365 크림미스트 120ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[안개분사미스트]에스트라 아토베리어365 크림미스트 120ml'), NOW(), NOW()),
(20700, 'SALE', (SELECT id FROM product WHERE name = '[안개분사미스트]에스트라 아토베리어365 크림미스트 120ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013013816ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[안개분사미스트]에스트라 아토베리어365 크림미스트 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013013817ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[안개분사미스트]에스트라 아토베리어365 크림미스트 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013013815ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[안개분사미스트]에스트라 아토베리어365 크림미스트 120ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[안개분사미스트]에스트라 아토베리어365 크림미스트 120ml';


-- ================================

-- 상품: [NEW] 쏘내추럴 워터 글로우 메이크업 세팅 픽서 75ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW] 쏘내추럴 워터 글로우 메이크업 세팅 픽서 75ml',
 '[NEW] 쏘내추럴 워터 글로우 메이크업 세팅 픽서 75ml',
 4.9,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '쏘내추럴'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW] 쏘내추럴 워터 글로우 메이크업 세팅 픽서 75ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(18000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW] 쏘내추럴 워터 글로우 메이크업 세팅 픽서 75ml'), NOW(), NOW()),
(18000, 'SALE', (SELECT id FROM product WHERE name = '[NEW] 쏘내추럴 워터 글로우 메이크업 세팅 픽서 75ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022648207ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW] 쏘내추럴 워터 글로우 메이크업 세팅 픽서 75ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022648206ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW] 쏘내추럴 워터 글로우 메이크업 세팅 픽서 75ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022648205ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW] 쏘내추럴 워터 글로우 메이크업 세팅 픽서 75ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022648204ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[NEW] 쏘내추럴 워터 글로우 메이크업 세팅 픽서 75ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022648203ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[NEW] 쏘내추럴 워터 글로우 메이크업 세팅 픽서 75ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022648202ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[NEW] 쏘내추럴 워터 글로우 메이크업 세팅 픽서 75ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW] 쏘내추럴 워터 글로우 메이크업 세팅 픽서 75ml';


-- ================================

-- 상품: 아벤느 오떼르말 미스트 300ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아벤느 오떼르말 미스트 300ml',
 '아벤느 오떼르말 미스트 300ml',
 4.8,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아벤느'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아벤느 오떼르말 미스트 300ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아벤느 오떼르말 미스트 300ml'), NOW(), NOW()),
(16900, 'SALE', (SELECT id FROM product WHERE name = '아벤느 오떼르말 미스트 300ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001669715ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아벤느 오떼르말 미스트 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001669719ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아벤느 오떼르말 미스트 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001669718ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아벤느 오떼르말 미스트 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001669717ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '아벤느 오떼르말 미스트 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001669716ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '아벤느 오떼르말 미스트 300ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001669714ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '아벤느 오떼르말 미스트 300ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아벤느 오떼르말 미스트 300ml';


-- ================================

-- 상품: 라로슈포제 세로징크 세범 컨트롤 토닝 미스트 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('라로슈포제 세로징크 세범 컨트롤 토닝 미스트 150ml',
 '라로슈포제 세로징크 세범 컨트롤 토닝 미스트 150ml',
 4.7,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라로슈포제'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '라로슈포제 세로징크 세범 컨트롤 토닝 미스트 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(17000, 'ORIGINAL', (SELECT id FROM product WHERE name = '라로슈포제 세로징크 세범 컨트롤 토닝 미스트 150ml'), NOW(), NOW()),
(15300, 'SALE', (SELECT id FROM product WHERE name = '라로슈포제 세로징크 세범 컨트롤 토닝 미스트 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001468604ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '라로슈포제 세로징크 세범 컨트롤 토닝 미스트 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001468602ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '라로슈포제 세로징크 세범 컨트롤 토닝 미스트 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '라로슈포제 세로징크 세범 컨트롤 토닝 미스트 150ml';


-- ================================

-- 상품: [민감진정] 바이오힐 보 판테셀 리페어시카 앰플미스트 100mL...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[민감진정] 바이오힐 보 판테셀 리페어시카 앰플미스트 100mL',
 '[민감진정] 바이오힐 보 판테셀 리페어시카 앰플미스트 100mL',
 4.6,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오힐보'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[민감진정] 바이오힐 보 판테셀 리페어시카 앰플미스트 100mL'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[민감진정] 바이오힐 보 판테셀 리페어시카 앰플미스트 100mL'), NOW(), NOW()),
(13500, 'SALE', (SELECT id FROM product WHERE name = '[민감진정] 바이오힐 보 판테셀 리페어시카 앰플미스트 100mL'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019230401ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[민감진정] 바이오힐 보 판테셀 리페어시카 앰플미스트 100mL'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019230402ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[민감진정] 바이오힐 보 판테셀 리페어시카 앰플미스트 100mL'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019230404ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[민감진정] 바이오힐 보 판테셀 리페어시카 앰플미스트 100mL'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[민감진정] 바이오힐 보 판테셀 리페어시카 앰플미스트 100mL';


-- ================================

-- 상품: 쏘내추럴 리얼 매트 메이크업 세팅 픽서 75ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('쏘내추럴 리얼 매트 메이크업 세팅 픽서 75ml',
 '쏘내추럴 리얼 매트 메이크업 세팅 픽서 75ml',
 4.7,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '쏘내추럴'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '쏘내추럴 리얼 매트 메이크업 세팅 픽서 75ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(19000, 'ORIGINAL', (SELECT id FROM product WHERE name = '쏘내추럴 리얼 매트 메이크업 세팅 픽서 75ml'), NOW(), NOW()),
(13300, 'SALE', (SELECT id FROM product WHERE name = '쏘내추럴 리얼 매트 메이크업 세팅 픽서 75ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013214812ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '쏘내추럴 리얼 매트 메이크업 세팅 픽서 75ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013214809ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '쏘내추럴 리얼 매트 메이크업 세팅 픽서 75ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013214810ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '쏘내추럴 리얼 매트 메이크업 세팅 픽서 75ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013214811ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '쏘내추럴 리얼 매트 메이크업 세팅 픽서 75ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '쏘내추럴 리얼 매트 메이크업 세팅 픽서 75ml';


-- ================================

-- 상품: [미니사이즈/1등 속보습] 라네즈 크림스킨 미스트 30ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[미니사이즈/1등 속보습] 라네즈 크림스킨 미스트 30ml',
 '[미니사이즈/1등 속보습] 라네즈 크림스킨 미스트 30ml',
 4.7,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라네즈'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[미니사이즈/1등 속보습] 라네즈 크림스킨 미스트 30ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(12000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[미니사이즈/1등 속보습] 라네즈 크림스킨 미스트 30ml'), NOW(), NOW()),
(8640, 'SALE', (SELECT id FROM product WHERE name = '[미니사이즈/1등 속보습] 라네즈 크림스킨 미스트 30ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023096736ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[미니사이즈/1등 속보습] 라네즈 크림스킨 미스트 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023096738ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[미니사이즈/1등 속보습] 라네즈 크림스킨 미스트 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023096737ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[미니사이즈/1등 속보습] 라네즈 크림스킨 미스트 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023096733ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[미니사이즈/1등 속보습] 라네즈 크림스킨 미스트 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023096734ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[미니사이즈/1등 속보습] 라네즈 크림스킨 미스트 30ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023096735ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[미니사이즈/1등 속보습] 라네즈 크림스킨 미스트 30ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[미니사이즈/1등 속보습] 라네즈 크림스킨 미스트 30ml';


-- ================================

-- 상품: 에비앙 브뤼미자뙤르 페이셜미스트 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('에비앙 브뤼미자뙤르 페이셜미스트 50ml',
 '에비앙 브뤼미자뙤르 페이셜미스트 50ml',
 4.7,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에비앙'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '에비앙 브뤼미자뙤르 페이셜미스트 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(7000, 'ORIGINAL', (SELECT id FROM product WHERE name = '에비앙 브뤼미자뙤르 페이셜미스트 50ml'), NOW(), NOW()),
(7000, 'SALE', (SELECT id FROM product WHERE name = '에비앙 브뤼미자뙤르 페이셜미스트 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0000/A00000000158803ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '에비앙 브뤼미자뙤르 페이셜미스트 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '에비앙 브뤼미자뙤르 페이셜미스트 50ml';


-- ================================

-- 상품: [3중장벽강화 미스트] 유리아쥬 오떼르말 50ml(N)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[3중장벽강화 미스트] 유리아쥬 오떼르말 50ml(N)',
 '[3중장벽강화 미스트] 유리아쥬 오떼르말 50ml(N)',
 4.8,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유리아쥬'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[3중장벽강화 미스트] 유리아쥬 오떼르말 50ml(N)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(8000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[3중장벽강화 미스트] 유리아쥬 오떼르말 50ml(N)'), NOW(), NOW()),
(6400, 'SALE', (SELECT id FROM product WHERE name = '[3중장벽강화 미스트] 유리아쥬 오떼르말 50ml(N)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0000/A00000000232607ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[3중장벽강화 미스트] 유리아쥬 오떼르말 50ml(N)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0000/A00000000232608ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[3중장벽강화 미스트] 유리아쥬 오떼르말 50ml(N)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0000/A00000000232606ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[3중장벽강화 미스트] 유리아쥬 오떼르말 50ml(N)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[3중장벽강화 미스트] 유리아쥬 오떼르말 50ml(N)';


-- ================================

-- 상품: 라로슈포제 오떼르말 온천수 미스트 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('라로슈포제 오떼르말 온천수 미스트 150ml',
 '라로슈포제 오떼르말 온천수 미스트 150ml',
 4.8,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라로슈포제'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '라로슈포제 오떼르말 온천수 미스트 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '라로슈포제 오떼르말 온천수 미스트 150ml'), NOW(), NOW()),
(23000, 'SALE', (SELECT id FROM product WHERE name = '라로슈포제 오떼르말 온천수 미스트 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001048502ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '라로슈포제 오떼르말 온천수 미스트 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '라로슈포제 오떼르말 온천수 미스트 150ml';


-- ================================

-- 상품: 아벤느 오 떼르말 미스트 300ml 2입 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아벤느 오 떼르말 미스트 300ml 2입 기획',
 '아벤느 오 떼르말 미스트 300ml 2입 기획',
 4.8,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아벤느'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 300ml 2입 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(34000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 300ml 2입 기획'), NOW(), NOW()),
(34000, 'SALE', (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 300ml 2입 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001049841ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 300ml 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001049846ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 300ml 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001049845ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 300ml 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001049844ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 300ml 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001049840ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 300ml 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001049839ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 300ml 2입 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아벤느 오 떼르말 미스트 300ml 2입 기획';


-- ================================

-- 상품: [3중장벽강화 미스트] 유리아쥬 오떼르말 더블 기획 (150ml+150ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[3중장벽강화 미스트] 유리아쥬 오떼르말 더블 기획 (150ml+150ml)',
 '[3중장벽강화 미스트] 유리아쥬 오떼르말 더블 기획 (150ml+150ml)',
 4.7,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유리아쥬'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[3중장벽강화 미스트] 유리아쥬 오떼르말 더블 기획 (150ml+150ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[3중장벽강화 미스트] 유리아쥬 오떼르말 더블 기획 (150ml+150ml)'), NOW(), NOW()),
(18700, 'SALE', (SELECT id FROM product WHERE name = '[3중장벽강화 미스트] 유리아쥬 오떼르말 더블 기획 (150ml+150ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001435728ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[3중장벽강화 미스트] 유리아쥬 오떼르말 더블 기획 (150ml+150ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001435729ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[3중장벽강화 미스트] 유리아쥬 오떼르말 더블 기획 (150ml+150ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001435727ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[3중장벽강화 미스트] 유리아쥬 오떼르말 더블 기획 (150ml+150ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001435726ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[3중장벽강화 미스트] 유리아쥬 오떼르말 더블 기획 (150ml+150ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[3중장벽강화 미스트] 유리아쥬 오떼르말 더블 기획 (150ml+150ml)';


-- ================================

-- 상품: [3중장벽강화 미스트] 유리아쥬 오떼르말 더블 기획 (300ml+300ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[3중장벽강화 미스트] 유리아쥬 오떼르말 더블 기획 (300ml+300ml)',
 '[3중장벽강화 미스트] 유리아쥬 오떼르말 더블 기획 (300ml+300ml)',
 4.7,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유리아쥬'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[3중장벽강화 미스트] 유리아쥬 오떼르말 더블 기획 (300ml+300ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(31500, 'ORIGINAL', (SELECT id FROM product WHERE name = '[3중장벽강화 미스트] 유리아쥬 오떼르말 더블 기획 (300ml+300ml)'), NOW(), NOW()),
(31500, 'SALE', (SELECT id FROM product WHERE name = '[3중장벽강화 미스트] 유리아쥬 오떼르말 더블 기획 (300ml+300ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001435825ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[3중장벽강화 미스트] 유리아쥬 오떼르말 더블 기획 (300ml+300ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001435826ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[3중장벽강화 미스트] 유리아쥬 오떼르말 더블 기획 (300ml+300ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001435824ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[3중장벽강화 미스트] 유리아쥬 오떼르말 더블 기획 (300ml+300ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001435823ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[3중장벽강화 미스트] 유리아쥬 오떼르말 더블 기획 (300ml+300ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[3중장벽강화 미스트] 유리아쥬 오떼르말 더블 기획 (300ml+300ml)';


-- ================================

-- 상품: 에비앙 브뤼미자뙤르 페이셜 스프레이 300ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('에비앙 브뤼미자뙤르 페이셜 스프레이 300ml',
 '에비앙 브뤼미자뙤르 페이셜 스프레이 300ml',
 4.7,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에비앙'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '에비앙 브뤼미자뙤르 페이셜 스프레이 300ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(16000, 'ORIGINAL', (SELECT id FROM product WHERE name = '에비앙 브뤼미자뙤르 페이셜 스프레이 300ml'), NOW(), NOW()),
(14400, 'SALE', (SELECT id FROM product WHERE name = '에비앙 브뤼미자뙤르 페이셜 스프레이 300ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001496003ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '에비앙 브뤼미자뙤르 페이셜 스프레이 300ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '에비앙 브뤼미자뙤르 페이셜 스프레이 300ml';


-- ================================

-- 상품: 아벤느 오 떼르말 미스트 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아벤느 오 떼르말 미스트 50ml',
 '아벤느 오 떼르말 미스트 50ml',
 4.8,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아벤느'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(10000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 50ml'), NOW(), NOW()),
(9500, 'SALE', (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001669411ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001669414ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001669413ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001669412ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001669410ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아벤느 오 떼르말 미스트 50ml';


-- ================================

-- 상품: 쌍빠 어딕트 포어리스 매직 에센스 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('쌍빠 어딕트 포어리스 매직 에센스 100ml',
 '쌍빠 어딕트 포어리스 매직 에센스 100ml',
 4.5,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '쌍빠'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '쌍빠 어딕트 포어리스 매직 에센스 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(19000, 'ORIGINAL', (SELECT id FROM product WHERE name = '쌍빠 어딕트 포어리스 매직 에센스 100ml'), NOW(), NOW()),
(19000, 'SALE', (SELECT id FROM product WHERE name = '쌍빠 어딕트 포어리스 매직 에센스 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0010/A00000010270413ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '쌍빠 어딕트 포어리스 매직 에센스 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0010/A00000010270412ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '쌍빠 어딕트 포어리스 매직 에센스 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '쌍빠 어딕트 포어리스 매직 에센스 100ml';


-- ================================

-- 상품: 크리니크 모이스춰 써지 페이스 스프레이 125ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('크리니크 모이스춰 써지 페이스 스프레이 125ml',
 '크리니크 모이스춰 써지 페이스 스프레이 125ml',
 4.4,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '크리니크'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '크리니크 모이스춰 써지 페이스 스프레이 125ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '크리니크 모이스춰 써지 페이스 스프레이 125ml'), NOW(), NOW()),
(32300, 'SALE', (SELECT id FROM product WHERE name = '크리니크 모이스춰 써지 페이스 스프레이 125ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0010/A00000010415902ko.jpeg?l=ko', 1, (SELECT id FROM product WHERE name = '크리니크 모이스춰 써지 페이스 스프레이 125ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '크리니크 모이스춰 써지 페이스 스프레이 125ml';


-- ================================

-- 상품: 쌍빠 어딕트 글로우 매직에센스 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('쌍빠 어딕트 글로우 매직에센스 100ml',
 '쌍빠 어딕트 글로우 매직에센스 100ml',
 4.6,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '쌍빠'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '쌍빠 어딕트 글로우 매직에센스 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(19000, 'ORIGINAL', (SELECT id FROM product WHERE name = '쌍빠 어딕트 글로우 매직에센스 100ml'), NOW(), NOW()),
(9900, 'SALE', (SELECT id FROM product WHERE name = '쌍빠 어딕트 글로우 매직에센스 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0010/A00000010707606ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '쌍빠 어딕트 글로우 매직에센스 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0010/A00000010707607ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '쌍빠 어딕트 글로우 매직에센스 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0010/A00000010707605ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '쌍빠 어딕트 글로우 매직에센스 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '쌍빠 어딕트 글로우 매직에센스 100ml';


-- ================================

-- 상품: [강력진정/산뜻보습] 닥터자르트 시카페어 페이셜 카밍 미스트 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[강력진정/산뜻보습] 닥터자르트 시카페어 페이셜 카밍 미스트 150ml',
 '[강력진정/산뜻보습] 닥터자르트 시카페어 페이셜 카밍 미스트 150ml',
 4.7,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터자르트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[강력진정/산뜻보습] 닥터자르트 시카페어 페이셜 카밍 미스트 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(22000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[강력진정/산뜻보습] 닥터자르트 시카페어 페이셜 카밍 미스트 150ml'), NOW(), NOW()),
(22000, 'SALE', (SELECT id FROM product WHERE name = '[강력진정/산뜻보습] 닥터자르트 시카페어 페이셜 카밍 미스트 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011550008ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[강력진정/산뜻보습] 닥터자르트 시카페어 페이셜 카밍 미스트 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011550006ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[강력진정/산뜻보습] 닥터자르트 시카페어 페이셜 카밍 미스트 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[강력진정/산뜻보습] 닥터자르트 시카페어 페이셜 카밍 미스트 150ml';


-- ================================

-- 상품: [산뜻보습] 달바 바이탈 스프레이 세럼 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[산뜻보습] 달바 바이탈 스프레이 세럼 100ml',
 '[산뜻보습] 달바 바이탈 스프레이 세럼 100ml',
 4.7,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '달바'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[산뜻보습] 달바 바이탈 스프레이 세럼 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(29000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[산뜻보습] 달바 바이탈 스프레이 세럼 100ml'), NOW(), NOW()),
(29000, 'SALE', (SELECT id FROM product WHERE name = '[산뜻보습] 달바 바이탈 스프레이 세럼 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014245732ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[산뜻보습] 달바 바이탈 스프레이 세럼 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014245733ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[산뜻보습] 달바 바이탈 스프레이 세럼 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014245734ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[산뜻보습] 달바 바이탈 스프레이 세럼 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014245735ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[산뜻보습] 달바 바이탈 스프레이 세럼 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[산뜻보습] 달바 바이탈 스프레이 세럼 100ml';


-- ================================

-- 상품: 에스테덤 셀룰러 워터 미스트 100ml (항산화 미스트)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('에스테덤 셀룰러 워터 미스트 100ml (항산화 미스트)',
 '에스테덤 셀룰러 워터 미스트 100ml (항산화 미스트)',
 4.7,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에스테덤'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '에스테덤 셀룰러 워터 미스트 100ml (항산화 미스트)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(36000, 'ORIGINAL', (SELECT id FROM product WHERE name = '에스테덤 셀룰러 워터 미스트 100ml (항산화 미스트)'), NOW(), NOW()),
(36000, 'SALE', (SELECT id FROM product WHERE name = '에스테덤 셀룰러 워터 미스트 100ml (항산화 미스트)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014988035ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '에스테덤 셀룰러 워터 미스트 100ml (항산화 미스트)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014988025ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '에스테덤 셀룰러 워터 미스트 100ml (항산화 미스트)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014988029ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '에스테덤 셀룰러 워터 미스트 100ml (항산화 미스트)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014988028ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '에스테덤 셀룰러 워터 미스트 100ml (항산화 미스트)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '에스테덤 셀룰러 워터 미스트 100ml (항산화 미스트)';


-- ================================

-- 상품: 마녀공장 비피다 앰플 영양 미스트 120ml (안개분사형)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('마녀공장 비피다 앰플 영양 미스트 120ml (안개분사형)',
 '마녀공장 비피다 앰플 영양 미스트 120ml (안개분사형)',
 4.8,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '마녀공장'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '마녀공장 비피다 앰플 영양 미스트 120ml (안개분사형)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(22000, 'ORIGINAL', (SELECT id FROM product WHERE name = '마녀공장 비피다 앰플 영양 미스트 120ml (안개분사형)'), NOW(), NOW()),
(22000, 'SALE', (SELECT id FROM product WHERE name = '마녀공장 비피다 앰플 영양 미스트 120ml (안개분사형)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015228004ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '마녀공장 비피다 앰플 영양 미스트 120ml (안개분사형)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015228002ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '마녀공장 비피다 앰플 영양 미스트 120ml (안개분사형)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '마녀공장 비피다 앰플 영양 미스트 120ml (안개분사형)';


-- ================================

-- 상품: 차앤박(CNP) 프로폴리스 에너지 앰플 미스트 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('차앤박(CNP) 프로폴리스 에너지 앰플 미스트 100ml',
 '차앤박(CNP) 프로폴리스 에너지 앰플 미스트 100ml',
 4.8,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '차앤박'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '차앤박(CNP) 프로폴리스 에너지 앰플 미스트 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(17000, 'ORIGINAL', (SELECT id FROM product WHERE name = '차앤박(CNP) 프로폴리스 에너지 앰플 미스트 100ml'), NOW(), NOW()),
(17000, 'SALE', (SELECT id FROM product WHERE name = '차앤박(CNP) 프로폴리스 에너지 앰플 미스트 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015481910ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '차앤박(CNP) 프로폴리스 에너지 앰플 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015481907ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '차앤박(CNP) 프로폴리스 에너지 앰플 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015481901ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '차앤박(CNP) 프로폴리스 에너지 앰플 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015481906ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '차앤박(CNP) 프로폴리스 에너지 앰플 미스트 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '차앤박(CNP) 프로폴리스 에너지 앰플 미스트 100ml';


-- ================================

-- 상품: [선물추천] 달바 오리지널 & 프리미엄 미스트 세럼 기프트 세트...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[선물추천] 달바 오리지널 & 프리미엄 미스트 세럼 기프트 세트',
 '[선물추천] 달바 오리지널 & 프리미엄 미스트 세럼 기프트 세트',
 4.9,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '달바'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[선물추천] 달바 오리지널 & 프리미엄 미스트 세럼 기프트 세트'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(55000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[선물추천] 달바 오리지널 & 프리미엄 미스트 세럼 기프트 세트'), NOW(), NOW()),
(55000, 'SALE', (SELECT id FROM product WHERE name = '[선물추천] 달바 오리지널 & 프리미엄 미스트 세럼 기프트 세트'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016573830ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[선물추천] 달바 오리지널 & 프리미엄 미스트 세럼 기프트 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016573822ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[선물추천] 달바 오리지널 & 프리미엄 미스트 세럼 기프트 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016573827ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[선물추천] 달바 오리지널 & 프리미엄 미스트 세럼 기프트 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016573824ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[선물추천] 달바 오리지널 & 프리미엄 미스트 세럼 기프트 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016573825ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[선물추천] 달바 오리지널 & 프리미엄 미스트 세럼 기프트 세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016573831ko.jpeg?l=ko', 6, (SELECT id FROM product WHERE name = '[선물추천] 달바 오리지널 & 프리미엄 미스트 세럼 기프트 세트'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[선물추천] 달바 오리지널 & 프리미엄 미스트 세럼 기프트 세트';


-- ================================

-- 상품: [리뷰이벤트]에스테덤 셀룰러 워터 미스트 200ml (항산화 미스트)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[리뷰이벤트]에스테덤 셀룰러 워터 미스트 200ml (항산화 미스트)',
 '[리뷰이벤트]에스테덤 셀룰러 워터 미스트 200ml (항산화 미스트)',
 4.6,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '에스테덤'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[리뷰이벤트]에스테덤 셀룰러 워터 미스트 200ml (항산화 미스트)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(49000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[리뷰이벤트]에스테덤 셀룰러 워터 미스트 200ml (항산화 미스트)'), NOW(), NOW()),
(35280, 'SALE', (SELECT id FROM product WHERE name = '[리뷰이벤트]에스테덤 셀룰러 워터 미스트 200ml (항산화 미스트)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017088136ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[리뷰이벤트]에스테덤 셀룰러 워터 미스트 200ml (항산화 미스트)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017088130ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[리뷰이벤트]에스테덤 셀룰러 워터 미스트 200ml (항산화 미스트)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017088134ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[리뷰이벤트]에스테덤 셀룰러 워터 미스트 200ml (항산화 미스트)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017088133ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[리뷰이벤트]에스테덤 셀룰러 워터 미스트 200ml (항산화 미스트)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[리뷰이벤트]에스테덤 셀룰러 워터 미스트 200ml (항산화 미스트)';


-- ================================

-- 상품: 시드물 비 테라피 미스트 120ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('시드물 비 테라피 미스트 120ml',
 '시드물 비 테라피 미스트 120ml',
 4.7,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '시드물'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '시드물 비 테라피 미스트 120ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(15800, 'ORIGINAL', (SELECT id FROM product WHERE name = '시드물 비 테라피 미스트 120ml'), NOW(), NOW()),
(15800, 'SALE', (SELECT id FROM product WHERE name = '시드물 비 테라피 미스트 120ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017682802ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '시드물 비 테라피 미스트 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017682801ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '시드물 비 테라피 미스트 120ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '시드물 비 테라피 미스트 120ml';


-- ================================

-- 상품: 숨37 워터풀 하이드레이팅 젤 미스트 60ml+60ml 2종 옵션...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('숨37 워터풀 하이드레이팅 젤 미스트 60ml+60ml 2종 옵션',
 '숨37 워터풀 하이드레이팅 젤 미스트 60ml+60ml 2종 옵션',
 4.9,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '숨37'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '숨37 워터풀 하이드레이팅 젤 미스트 60ml+60ml 2종 옵션'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(47000, 'ORIGINAL', (SELECT id FROM product WHERE name = '숨37 워터풀 하이드레이팅 젤 미스트 60ml+60ml 2종 옵션'), NOW(), NOW()),
(37600, 'SALE', (SELECT id FROM product WHERE name = '숨37 워터풀 하이드레이팅 젤 미스트 60ml+60ml 2종 옵션'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018621508ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '숨37 워터풀 하이드레이팅 젤 미스트 60ml+60ml 2종 옵션'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018621509ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '숨37 워터풀 하이드레이팅 젤 미스트 60ml+60ml 2종 옵션'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018621504ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '숨37 워터풀 하이드레이팅 젤 미스트 60ml+60ml 2종 옵션'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018621502ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '숨37 워터풀 하이드레이팅 젤 미스트 60ml+60ml 2종 옵션'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018621507ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '숨37 워터풀 하이드레이팅 젤 미스트 60ml+60ml 2종 옵션'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '숨37 워터풀 하이드레이팅 젤 미스트 60ml+60ml 2종 옵션';


-- ================================

-- 상품: [리뉴얼] 자트인사이트 울트라 셋팅 진짜 픽서 50ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[리뉴얼] 자트인사이트 울트라 셋팅 진짜 픽서 50ml',
 '[리뉴얼] 자트인사이트 울트라 셋팅 진짜 픽서 50ml',
 4.7,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '자트인사이트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[리뉴얼] 자트인사이트 울트라 셋팅 진짜 픽서 50ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(14900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[리뉴얼] 자트인사이트 울트라 셋팅 진짜 픽서 50ml'), NOW(), NOW()),
(11900, 'SALE', (SELECT id FROM product WHERE name = '[리뉴얼] 자트인사이트 울트라 셋팅 진짜 픽서 50ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018970802ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[리뉴얼] 자트인사이트 울트라 셋팅 진짜 픽서 50ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018970804ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[리뉴얼] 자트인사이트 울트라 셋팅 진짜 픽서 50ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[리뉴얼] 자트인사이트 울트라 셋팅 진짜 픽서 50ml';


-- ================================

-- 상품: 아벤느 오떼르말 미스트 50ml 2입 기획...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아벤느 오떼르말 미스트 50ml 2입 기획',
 '아벤느 오떼르말 미스트 50ml 2입 기획',
 4.8,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아벤느'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아벤느 오떼르말 미스트 50ml 2입 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(18000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아벤느 오떼르말 미스트 50ml 2입 기획'), NOW(), NOW()),
(18000, 'SALE', (SELECT id FROM product WHERE name = '아벤느 오떼르말 미스트 50ml 2입 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020072407ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아벤느 오떼르말 미스트 50ml 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020072411ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아벤느 오떼르말 미스트 50ml 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020072410ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아벤느 오떼르말 미스트 50ml 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020072409ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '아벤느 오떼르말 미스트 50ml 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020072408ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '아벤느 오떼르말 미스트 50ml 2입 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020072404ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '아벤느 오떼르말 미스트 50ml 2입 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아벤느 오떼르말 미스트 50ml 2입 기획';


-- ================================

-- 상품: [탄탄미스트] 바이오힐 보 프로바이오덤 3D 리프팅 크림 미스트 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[탄탄미스트] 바이오힐 보 프로바이오덤 3D 리프팅 크림 미스트 100ml',
 '[탄탄미스트] 바이오힐 보 프로바이오덤 3D 리프팅 크림 미스트 100ml',
 4.8,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오힐보'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[탄탄미스트] 바이오힐 보 프로바이오덤 3D 리프팅 크림 미스트 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[탄탄미스트] 바이오힐 보 프로바이오덤 3D 리프팅 크림 미스트 100ml'), NOW(), NOW()),
(28000, 'SALE', (SELECT id FROM product WHERE name = '[탄탄미스트] 바이오힐 보 프로바이오덤 3D 리프팅 크림 미스트 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020128704ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[탄탄미스트] 바이오힐 보 프로바이오덤 3D 리프팅 크림 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020128702ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[탄탄미스트] 바이오힐 보 프로바이오덤 3D 리프팅 크림 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020128703ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[탄탄미스트] 바이오힐 보 프로바이오덤 3D 리프팅 크림 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020128701ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[탄탄미스트] 바이오힐 보 프로바이오덤 3D 리프팅 크림 미스트 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[탄탄미스트] 바이오힐 보 프로바이오덤 3D 리프팅 크림 미스트 100ml';


-- ================================

-- 상품: [시원하게 진정되는] 원오브뎀 카밍 샷 듀 드롭 미스트 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[시원하게 진정되는] 원오브뎀 카밍 샷 듀 드롭 미스트 150ml',
 '[시원하게 진정되는] 원오브뎀 카밍 샷 듀 드롭 미스트 150ml',
 4.9,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '원오브뎀'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[시원하게 진정되는] 원오브뎀 카밍 샷 듀 드롭 미스트 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[시원하게 진정되는] 원오브뎀 카밍 샷 듀 드롭 미스트 150ml'), NOW(), NOW()),
(26000, 'SALE', (SELECT id FROM product WHERE name = '[시원하게 진정되는] 원오브뎀 카밍 샷 듀 드롭 미스트 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020657604ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[시원하게 진정되는] 원오브뎀 카밍 샷 듀 드롭 미스트 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020657610ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[시원하게 진정되는] 원오브뎀 카밍 샷 듀 드롭 미스트 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020657603ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[시원하게 진정되는] 원오브뎀 카밍 샷 듀 드롭 미스트 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020657602ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[시원하게 진정되는] 원오브뎀 카밍 샷 듀 드롭 미스트 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020657601ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[시원하게 진정되는] 원오브뎀 카밍 샷 듀 드롭 미스트 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[시원하게 진정되는] 원오브뎀 카밍 샷 듀 드롭 미스트 150ml';


-- ================================

-- 상품: 엠도씨 세붐 스트라이크 안티 트러블 미스트 55g...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('엠도씨 세붐 스트라이크 안티 트러블 미스트 55g',
 '엠도씨 세붐 스트라이크 안티 트러블 미스트 55g',
 4.3,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '엠도씨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '엠도씨 세붐 스트라이크 안티 트러블 미스트 55g'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '엠도씨 세붐 스트라이크 안티 트러블 미스트 55g'), NOW(), NOW()),
(23000, 'SALE', (SELECT id FROM product WHERE name = '엠도씨 세붐 스트라이크 안티 트러블 미스트 55g'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020776001ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '엠도씨 세붐 스트라이크 안티 트러블 미스트 55g'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '엠도씨 세붐 스트라이크 안티 트러블 미스트 55g';


-- ================================

-- 상품: [슬로우에이징/청담샵Pick] 아이다 글루타치온 브라이트닝 앰플 미스트 60ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[슬로우에이징/청담샵Pick] 아이다 글루타치온 브라이트닝 앰플 미스트 60ml',
 '[슬로우에이징/청담샵Pick] 아이다 글루타치온 브라이트닝 앰플 미스트 60ml',
 4.8,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이다'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[슬로우에이징/청담샵Pick] 아이다 글루타치온 브라이트닝 앰플 미스트 60ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[슬로우에이징/청담샵Pick] 아이다 글루타치온 브라이트닝 앰플 미스트 60ml'), NOW(), NOW()),
(32000, 'SALE', (SELECT id FROM product WHERE name = '[슬로우에이징/청담샵Pick] 아이다 글루타치온 브라이트닝 앰플 미스트 60ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020820803ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[슬로우에이징/청담샵Pick] 아이다 글루타치온 브라이트닝 앰플 미스트 60ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020820804ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[슬로우에이징/청담샵Pick] 아이다 글루타치온 브라이트닝 앰플 미스트 60ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020820801ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[슬로우에이징/청담샵Pick] 아이다 글루타치온 브라이트닝 앰플 미스트 60ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[슬로우에이징/청담샵Pick] 아이다 글루타치온 브라이트닝 앰플 미스트 60ml';


-- ================================

-- 상품: [아이돌속광미스트] 유이크 바이옴 베리어 크림 미스트 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[아이돌속광미스트] 유이크 바이옴 베리어 크림 미스트 100ml',
 '[아이돌속광미스트] 유이크 바이옴 베리어 크림 미스트 100ml',
 4.8,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '유이크'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[아이돌속광미스트] 유이크 바이옴 베리어 크림 미스트 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[아이돌속광미스트] 유이크 바이옴 베리어 크림 미스트 100ml'), NOW(), NOW()),
(23000, 'SALE', (SELECT id FROM product WHERE name = '[아이돌속광미스트] 유이크 바이옴 베리어 크림 미스트 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020844820ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[아이돌속광미스트] 유이크 바이옴 베리어 크림 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020844816ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[아이돌속광미스트] 유이크 바이옴 베리어 크림 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020844817ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[아이돌속광미스트] 유이크 바이옴 베리어 크림 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020844813ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[아이돌속광미스트] 유이크 바이옴 베리어 크림 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020844809ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[아이돌속광미스트] 유이크 바이옴 베리어 크림 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020844805ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[아이돌속광미스트] 유이크 바이옴 베리어 크림 미스트 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[아이돌속광미스트] 유이크 바이옴 베리어 크림 미스트 100ml';


-- ================================

-- 상품: 올리세 퓨어워터 미스트 300ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('올리세 퓨어워터 미스트 300ml',
 '올리세 퓨어워터 미스트 300ml',
 4.8,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '올리세'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '올리세 퓨어워터 미스트 300ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(9900, 'ORIGINAL', (SELECT id FROM product WHERE name = '올리세 퓨어워터 미스트 300ml'), NOW(), NOW()),
(9900, 'SALE', (SELECT id FROM product WHERE name = '올리세 퓨어워터 미스트 300ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021240901ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '올리세 퓨어워터 미스트 300ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '올리세 퓨어워터 미스트 300ml';


-- ================================

-- 상품: [재구매1위/퀵보습진정] 바이오힐 보 판테셀 리페어시카 크림미스트 120mL+120mL 기...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[재구매1위/퀵보습진정] 바이오힐 보 판테셀 리페어시카 크림미스트 120mL+120mL 기획',
 '[재구매1위/퀵보습진정] 바이오힐 보 판테셀 리페어시카 크림미스트 120mL+120mL 기획',
 4.8,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바이오힐보'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[재구매1위/퀵보습진정] 바이오힐 보 판테셀 리페어시카 크림미스트 120mL+120mL 기획'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25200, 'ORIGINAL', (SELECT id FROM product WHERE name = '[재구매1위/퀵보습진정] 바이오힐 보 판테셀 리페어시카 크림미스트 120mL+120mL 기획'), NOW(), NOW()),
(24500, 'SALE', (SELECT id FROM product WHERE name = '[재구매1위/퀵보습진정] 바이오힐 보 판테셀 리페어시카 크림미스트 120mL+120mL 기획'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021246714ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[재구매1위/퀵보습진정] 바이오힐 보 판테셀 리페어시카 크림미스트 120mL+120mL 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021246716ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[재구매1위/퀵보습진정] 바이오힐 보 판테셀 리페어시카 크림미스트 120mL+120mL 기획'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021246717ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[재구매1위/퀵보습진정] 바이오힐 보 판테셀 리페어시카 크림미스트 120mL+120mL 기획'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[재구매1위/퀵보습진정] 바이오힐 보 판테셀 리페어시카 크림미스트 120mL+120mL 기획';


-- ================================

-- 상품: 아이디플라코스메틱 리얼애프터케어 미스트 120ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('아이디플라코스메틱 리얼애프터케어 미스트 120ml',
 '아이디플라코스메틱 리얼애프터케어 미스트 120ml',
 5.0,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아이디플라코스메틱'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아이디플라코스메틱 리얼애프터케어 미스트 120ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아이디플라코스메틱 리얼애프터케어 미스트 120ml'), NOW(), NOW()),
(30000, 'SALE', (SELECT id FROM product WHERE name = '아이디플라코스메틱 리얼애프터케어 미스트 120ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021431601ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아이디플라코스메틱 리얼애프터케어 미스트 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021431608ko.jpeg?l=ko', 2, (SELECT id FROM product WHERE name = '아이디플라코스메틱 리얼애프터케어 미스트 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021431605ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아이디플라코스메틱 리얼애프터케어 미스트 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021431604ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '아이디플라코스메틱 리얼애프터케어 미스트 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021431603ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '아이디플라코스메틱 리얼애프터케어 미스트 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021431602ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '아이디플라코스메틱 리얼애프터케어 미스트 120ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '아이디플라코스메틱 리얼애프터케어 미스트 120ml';


-- ================================

-- 상품: [1등수분미스트] 그라운드플랜 미스트 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[1등수분미스트] 그라운드플랜 미스트 100ml',
 '[1등수분미스트] 그라운드플랜 미스트 100ml',
 5.0,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '그라운드플랜'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[1등수분미스트] 그라운드플랜 미스트 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(34000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1등수분미스트] 그라운드플랜 미스트 100ml'), NOW(), NOW()),
(34000, 'SALE', (SELECT id FROM product WHERE name = '[1등수분미스트] 그라운드플랜 미스트 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021515206ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[1등수분미스트] 그라운드플랜 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021515202ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[1등수분미스트] 그라운드플랜 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021515204ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[1등수분미스트] 그라운드플랜 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021515201ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[1등수분미스트] 그라운드플랜 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021515205ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[1등수분미스트] 그라운드플랜 미스트 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[1등수분미스트] 그라운드플랜 미스트 100ml';


-- ================================

-- 상품: [NEW/수부지미스트] 한율 어린쑥 트러블 진정 미스트 120ml 리필 기획 (+어린쑥 미...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW/수부지미스트] 한율 어린쑥 트러블 진정 미스트 120ml 리필 기획 (+어린쑥 미스트 120ml 리필)',
 '[NEW/수부지미스트] 한율 어린쑥 트러블 진정 미스트 120ml 리필 기획 (+어린쑥 미스트 120ml 리필)',
 4.8,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '한율'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW/수부지미스트] 한율 어린쑥 트러블 진정 미스트 120ml 리필 기획 (+어린쑥 미스트 120ml 리필)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW/수부지미스트] 한율 어린쑥 트러블 진정 미스트 120ml 리필 기획 (+어린쑥 미스트 120ml 리필)'), NOW(), NOW()),
(22300, 'SALE', (SELECT id FROM product WHERE name = '[NEW/수부지미스트] 한율 어린쑥 트러블 진정 미스트 120ml 리필 기획 (+어린쑥 미스트 120ml 리필)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022068807ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW/수부지미스트] 한율 어린쑥 트러블 진정 미스트 120ml 리필 기획 (+어린쑥 미스트 120ml 리필)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022068801ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW/수부지미스트] 한율 어린쑥 트러블 진정 미스트 120ml 리필 기획 (+어린쑥 미스트 120ml 리필)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW/수부지미스트] 한율 어린쑥 트러블 진정 미스트 120ml 리필 기획 (+어린쑥 미스트 120ml 리필)';


-- ================================

-- 상품: [NEW] 숨37 시크릿 에센스 미스트 60ml 리필 기획 (+60ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW] 숨37 시크릿 에센스 미스트 60ml 리필 기획 (+60ml)',
 '[NEW] 숨37 시크릿 에센스 미스트 60ml 리필 기획 (+60ml)',
 5.0,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '숨37'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW] 숨37 시크릿 에센스 미스트 60ml 리필 기획 (+60ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(54000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW] 숨37 시크릿 에센스 미스트 60ml 리필 기획 (+60ml)'), NOW(), NOW()),
(43200, 'SALE', (SELECT id FROM product WHERE name = '[NEW] 숨37 시크릿 에센스 미스트 60ml 리필 기획 (+60ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022362303ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW] 숨37 시크릿 에센스 미스트 60ml 리필 기획 (+60ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022362304ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW] 숨37 시크릿 에센스 미스트 60ml 리필 기획 (+60ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022362301ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW] 숨37 시크릿 에센스 미스트 60ml 리필 기획 (+60ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW] 숨37 시크릿 에센스 미스트 60ml 리필 기획 (+60ml)';


-- ================================

-- 상품: [잡티미백/톤업]비건이펙트 비타씨 글루타치온 미스트 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[잡티미백/톤업]비건이펙트 비타씨 글루타치온 미스트 100ml',
 '[잡티미백/톤업]비건이펙트 비타씨 글루타치온 미스트 100ml',
 4.1,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '비건이펙트'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[잡티미백/톤업]비건이펙트 비타씨 글루타치온 미스트 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(18500, 'ORIGINAL', (SELECT id FROM product WHERE name = '[잡티미백/톤업]비건이펙트 비타씨 글루타치온 미스트 100ml'), NOW(), NOW()),
(18500, 'SALE', (SELECT id FROM product WHERE name = '[잡티미백/톤업]비건이펙트 비타씨 글루타치온 미스트 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022444608ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[잡티미백/톤업]비건이펙트 비타씨 글루타치온 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022444607ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[잡티미백/톤업]비건이펙트 비타씨 글루타치온 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022444606ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[잡티미백/톤업]비건이펙트 비타씨 글루타치온 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022444605ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[잡티미백/톤업]비건이펙트 비타씨 글루타치온 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022444604ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[잡티미백/톤업]비건이펙트 비타씨 글루타치온 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022444602ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[잡티미백/톤업]비건이펙트 비타씨 글루타치온 미스트 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[잡티미백/톤업]비건이펙트 비타씨 글루타치온 미스트 100ml';


-- ================================

-- 상품: 레이지소사이어티 올인원 크림 스프레이 120ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('레이지소사이어티 올인원 크림 스프레이 120ml',
 '레이지소사이어티 올인원 크림 스프레이 120ml',
 5.0,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '레이지소사이어티'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '레이지소사이어티 올인원 크림 스프레이 120ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24900, 'ORIGINAL', (SELECT id FROM product WHERE name = '레이지소사이어티 올인원 크림 스프레이 120ml'), NOW(), NOW()),
(19900, 'SALE', (SELECT id FROM product WHERE name = '레이지소사이어티 올인원 크림 스프레이 120ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022453701ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '레이지소사이어티 올인원 크림 스프레이 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022453705ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '레이지소사이어티 올인원 크림 스프레이 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022453704ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '레이지소사이어티 올인원 크림 스프레이 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022453703ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '레이지소사이어티 올인원 크림 스프레이 120ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022453702ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '레이지소사이어티 올인원 크림 스프레이 120ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '레이지소사이어티 올인원 크림 스프레이 120ml';


-- ================================

-- 상품: [뿌리는PDRN] 차앤박 더마앤서 스킨 부스팅 피디알엔 세럼 미스트 100g...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[뿌리는PDRN] 차앤박 더마앤서 스킨 부스팅 피디알엔 세럼 미스트 100g',
 '[뿌리는PDRN] 차앤박 더마앤서 스킨 부스팅 피디알엔 세럼 미스트 100g',
 4.8,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '차앤박'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[뿌리는PDRN] 차앤박 더마앤서 스킨 부스팅 피디알엔 세럼 미스트 100g'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(18000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[뿌리는PDRN] 차앤박 더마앤서 스킨 부스팅 피디알엔 세럼 미스트 100g'), NOW(), NOW()),
(13500, 'SALE', (SELECT id FROM product WHERE name = '[뿌리는PDRN] 차앤박 더마앤서 스킨 부스팅 피디알엔 세럼 미스트 100g'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022560307ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[뿌리는PDRN] 차앤박 더마앤서 스킨 부스팅 피디알엔 세럼 미스트 100g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022560303ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[뿌리는PDRN] 차앤박 더마앤서 스킨 부스팅 피디알엔 세럼 미스트 100g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022560302ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[뿌리는PDRN] 차앤박 더마앤서 스킨 부스팅 피디알엔 세럼 미스트 100g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022560301ko.png?l=ko', 4, (SELECT id FROM product WHERE name = '[뿌리는PDRN] 차앤박 더마앤서 스킨 부스팅 피디알엔 세럼 미스트 100g'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[뿌리는PDRN] 차앤박 더마앤서 스킨 부스팅 피디알엔 세럼 미스트 100g';


-- ================================

-- 상품: [NEW] 쏘내추럴 올 데이 블러 메이크업 세팅 픽서 75ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW] 쏘내추럴 올 데이 블러 메이크업 세팅 픽서 75ml',
 '[NEW] 쏘내추럴 올 데이 블러 메이크업 세팅 픽서 75ml',
 4.8,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '쏘내추럴'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW] 쏘내추럴 올 데이 블러 메이크업 세팅 픽서 75ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(20000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW] 쏘내추럴 올 데이 블러 메이크업 세팅 픽서 75ml'), NOW(), NOW()),
(20000, 'SALE', (SELECT id FROM product WHERE name = '[NEW] 쏘내추럴 올 데이 블러 메이크업 세팅 픽서 75ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022648106ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW] 쏘내추럴 올 데이 블러 메이크업 세팅 픽서 75ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022648105ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW] 쏘내추럴 올 데이 블러 메이크업 세팅 픽서 75ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022648104ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW] 쏘내추럴 올 데이 블러 메이크업 세팅 픽서 75ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022648103ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[NEW] 쏘내추럴 올 데이 블러 메이크업 세팅 픽서 75ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022648102ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[NEW] 쏘내추럴 올 데이 블러 메이크업 세팅 픽서 75ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW] 쏘내추럴 올 데이 블러 메이크업 세팅 픽서 75ml';


-- ================================

-- 상품: [화잘먹미스트] 오드로이 모공수축 시카 83.7 콜라겐 미스트 앰플 로프디 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[화잘먹미스트] 오드로이 모공수축 시카 83.7 콜라겐 미스트 앰플 로프디 100ml',
 '[화잘먹미스트] 오드로이 모공수축 시카 83.7 콜라겐 미스트 앰플 로프디 100ml',
 4.9,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '오드로이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[화잘먹미스트] 오드로이 모공수축 시카 83.7 콜라겐 미스트 앰플 로프디 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(23500, 'ORIGINAL', (SELECT id FROM product WHERE name = '[화잘먹미스트] 오드로이 모공수축 시카 83.7 콜라겐 미스트 앰플 로프디 100ml'), NOW(), NOW()),
(19970, 'SALE', (SELECT id FROM product WHERE name = '[화잘먹미스트] 오드로이 모공수축 시카 83.7 콜라겐 미스트 앰플 로프디 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022714407ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[화잘먹미스트] 오드로이 모공수축 시카 83.7 콜라겐 미스트 앰플 로프디 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022714402ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[화잘먹미스트] 오드로이 모공수축 시카 83.7 콜라겐 미스트 앰플 로프디 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[화잘먹미스트] 오드로이 모공수축 시카 83.7 콜라겐 미스트 앰플 로프디 100ml';


-- ================================

-- 상품: 런드리유 클린 페이스 고체 미스트 카밍 100g...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('런드리유 클린 페이스 고체 미스트 카밍 100g',
 '런드리유 클린 페이스 고체 미스트 카밍 100g',
 4.9,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '런드리유'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '런드리유 클린 페이스 고체 미스트 카밍 100g'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '런드리유 클린 페이스 고체 미스트 카밍 100g'), NOW(), NOW()),
(25000, 'SALE', (SELECT id FROM product WHERE name = '런드리유 클린 페이스 고체 미스트 카밍 100g'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022958811ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '런드리유 클린 페이스 고체 미스트 카밍 100g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022958804ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '런드리유 클린 페이스 고체 미스트 카밍 100g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022958803ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '런드리유 클린 페이스 고체 미스트 카밍 100g'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022958802ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '런드리유 클린 페이스 고체 미스트 카밍 100g'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '런드리유 클린 페이스 고체 미스트 카밍 100g';


-- ================================

-- 상품: [미니언즈 한정] 온그리디언츠 스킨 베리어 속광 미스트 기획 (100ml+50ml+키링)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[미니언즈 한정] 온그리디언츠 스킨 베리어 속광 미스트 기획 (100ml+50ml+키링)',
 '[미니언즈 한정] 온그리디언츠 스킨 베리어 속광 미스트 기획 (100ml+50ml+키링)',
 4.8,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '온그리디언츠'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[미니언즈 한정] 온그리디언츠 스킨 베리어 속광 미스트 기획 (100ml+50ml+키링)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[미니언즈 한정] 온그리디언츠 스킨 베리어 속광 미스트 기획 (100ml+50ml+키링)'), NOW(), NOW()),
(21500, 'SALE', (SELECT id FROM product WHERE name = '[미니언즈 한정] 온그리디언츠 스킨 베리어 속광 미스트 기획 (100ml+50ml+키링)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023219103ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[미니언즈 한정] 온그리디언츠 스킨 베리어 속광 미스트 기획 (100ml+50ml+키링)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023219101ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[미니언즈 한정] 온그리디언츠 스킨 베리어 속광 미스트 기획 (100ml+50ml+키링)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[미니언즈 한정] 온그리디언츠 스킨 베리어 속광 미스트 기획 (100ml+50ml+키링)';


-- ================================

-- 상품: [뿌리는8종콜라겐] 아로셀 슈퍼 콜라겐 앰플 미스트 80ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[뿌리는8종콜라겐] 아로셀 슈퍼 콜라겐 앰플 미스트 80ml',
 '[뿌리는8종콜라겐] 아로셀 슈퍼 콜라겐 앰플 미스트 80ml',
 5.0,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아로셀'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[뿌리는8종콜라겐] 아로셀 슈퍼 콜라겐 앰플 미스트 80ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[뿌리는8종콜라겐] 아로셀 슈퍼 콜라겐 앰플 미스트 80ml'), NOW(), NOW()),
(28000, 'SALE', (SELECT id FROM product WHERE name = '[뿌리는8종콜라겐] 아로셀 슈퍼 콜라겐 앰플 미스트 80ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023308003ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[뿌리는8종콜라겐] 아로셀 슈퍼 콜라겐 앰플 미스트 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023308002ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[뿌리는8종콜라겐] 아로셀 슈퍼 콜라겐 앰플 미스트 80ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023308001ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[뿌리는8종콜라겐] 아로셀 슈퍼 콜라겐 앰플 미스트 80ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[뿌리는8종콜라겐] 아로셀 슈퍼 콜라겐 앰플 미스트 80ml';


-- ================================

-- 상품: [올영단독/NEW] 제나벨 PDRN 듀얼 글로우 세럼 미스트 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[올영단독/NEW] 제나벨 PDRN 듀얼 글로우 세럼 미스트 100ml',
 '[올영단독/NEW] 제나벨 PDRN 듀얼 글로우 세럼 미스트 100ml',
 5.0,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '제나벨'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[올영단독/NEW] 제나벨 PDRN 듀얼 글로우 세럼 미스트 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[올영단독/NEW] 제나벨 PDRN 듀얼 글로우 세럼 미스트 100ml'), NOW(), NOW()),
(22400, 'SALE', (SELECT id FROM product WHERE name = '[올영단독/NEW] 제나벨 PDRN 듀얼 글로우 세럼 미스트 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023317904ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[올영단독/NEW] 제나벨 PDRN 듀얼 글로우 세럼 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023317903ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[올영단독/NEW] 제나벨 PDRN 듀얼 글로우 세럼 미스트 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[올영단독/NEW] 제나벨 PDRN 듀얼 글로우 세럼 미스트 100ml';


-- ================================

-- 상품: [NEW/탱글젤리광채]메디큐브 PDRN 핑크 콜라겐 글로우 젤리 미스트 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW/탱글젤리광채]메디큐브 PDRN 핑크 콜라겐 글로우 젤리 미스트 100ml',
 '[NEW/탱글젤리광채]메디큐브 PDRN 핑크 콜라겐 글로우 젤리 미스트 100ml',
 0.0,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '메디큐브'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW/탱글젤리광채]메디큐브 PDRN 핑크 콜라겐 글로우 젤리 미스트 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(27800, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW/탱글젤리광채]메디큐브 PDRN 핑크 콜라겐 글로우 젤리 미스트 100ml'), NOW(), NOW()),
(19200, 'SALE', (SELECT id FROM product WHERE name = '[NEW/탱글젤리광채]메디큐브 PDRN 핑크 콜라겐 글로우 젤리 미스트 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023322801ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW/탱글젤리광채]메디큐브 PDRN 핑크 콜라겐 글로우 젤리 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023322805ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW/탱글젤리광채]메디큐브 PDRN 핑크 콜라겐 글로우 젤리 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023322804ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW/탱글젤리광채]메디큐브 PDRN 핑크 콜라겐 글로우 젤리 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023322803ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[NEW/탱글젤리광채]메디큐브 PDRN 핑크 콜라겐 글로우 젤리 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023322802ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[NEW/탱글젤리광채]메디큐브 PDRN 핑크 콜라겐 글로우 젤리 미스트 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW/탱글젤리광채]메디큐브 PDRN 핑크 콜라겐 글로우 젤리 미스트 100ml';


-- ================================

-- 상품: [겉쫀속촉/화잘먹] 웰더마 PDRN 엑소좀 젤리 겔 미스트 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[겉쫀속촉/화잘먹] 웰더마 PDRN 엑소좀 젤리 겔 미스트 100ml',
 '[겉쫀속촉/화잘먹] 웰더마 PDRN 엑소좀 젤리 겔 미스트 100ml',
 5.0,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '웰더마'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[겉쫀속촉/화잘먹] 웰더마 PDRN 엑소좀 젤리 겔 미스트 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[겉쫀속촉/화잘먹] 웰더마 PDRN 엑소좀 젤리 겔 미스트 100ml'), NOW(), NOW()),
(18900, 'SALE', (SELECT id FROM product WHERE name = '[겉쫀속촉/화잘먹] 웰더마 PDRN 엑소좀 젤리 겔 미스트 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023357805ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[겉쫀속촉/화잘먹] 웰더마 PDRN 엑소좀 젤리 겔 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023357802ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[겉쫀속촉/화잘먹] 웰더마 PDRN 엑소좀 젤리 겔 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023357803ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[겉쫀속촉/화잘먹] 웰더마 PDRN 엑소좀 젤리 겔 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023357804ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[겉쫀속촉/화잘먹] 웰더마 PDRN 엑소좀 젤리 겔 미스트 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[겉쫀속촉/화잘먹] 웰더마 PDRN 엑소좀 젤리 겔 미스트 100ml';


-- ================================

-- 상품: [한정기획]아벤느 오 떼르말 300ml 2입 기획 (+150ml)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[한정기획]아벤느 오 떼르말 300ml 2입 기획 (+150ml)',
 '[한정기획]아벤느 오 떼르말 300ml 2입 기획 (+150ml)',
 4.8,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '아벤느'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[한정기획]아벤느 오 떼르말 300ml 2입 기획 (+150ml)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(45000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[한정기획]아벤느 오 떼르말 300ml 2입 기획 (+150ml)'), NOW(), NOW()),
(45000, 'SALE', (SELECT id FROM product WHERE name = '[한정기획]아벤느 오 떼르말 300ml 2입 기획 (+150ml)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023434515ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[한정기획]아벤느 오 떼르말 300ml 2입 기획 (+150ml)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023434516ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[한정기획]아벤느 오 떼르말 300ml 2입 기획 (+150ml)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[한정기획]아벤느 오 떼르말 300ml 2입 기획 (+150ml)';


-- ================================

-- 상품: [24시간 메이크업 고정]더샘 커버 퍼펙션 메이크업 컴플릿 픽서 100ml (온)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[24시간 메이크업 고정]더샘 커버 퍼펙션 메이크업 컴플릿 픽서 100ml (온)',
 '[24시간 메이크업 고정]더샘 커버 퍼펙션 메이크업 컴플릿 픽서 100ml (온)',
 0.0,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더샘'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[24시간 메이크업 고정]더샘 커버 퍼펙션 메이크업 컴플릿 픽서 100ml (온)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(18000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[24시간 메이크업 고정]더샘 커버 퍼펙션 메이크업 컴플릿 픽서 100ml (온)'), NOW(), NOW()),
(18000, 'SALE', (SELECT id FROM product WHERE name = '[24시간 메이크업 고정]더샘 커버 퍼펙션 메이크업 컴플릿 픽서 100ml (온)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023504002ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[24시간 메이크업 고정]더샘 커버 퍼펙션 메이크업 컴플릿 픽서 100ml (온)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023504004ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[24시간 메이크업 고정]더샘 커버 퍼펙션 메이크업 컴플릿 픽서 100ml (온)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023504003ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[24시간 메이크업 고정]더샘 커버 퍼펙션 메이크업 컴플릿 픽서 100ml (온)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[24시간 메이크업 고정]더샘 커버 퍼펙션 메이크업 컴플릿 픽서 100ml (온)';


-- ================================

-- 상품: [화잘먹 젤리미스트] 빛클 살구콜라겐 젤세럼 미스트 100ml (미니 하트 공병 증정)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[화잘먹 젤리미스트] 빛클 살구콜라겐 젤세럼 미스트 100ml (미니 하트 공병 증정)',
 '[화잘먹 젤리미스트] 빛클 살구콜라겐 젤세럼 미스트 100ml (미니 하트 공병 증정)',
 5.0,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '빛클'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[화잘먹 젤리미스트] 빛클 살구콜라겐 젤세럼 미스트 100ml (미니 하트 공병 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38500, 'ORIGINAL', (SELECT id FROM product WHERE name = '[화잘먹 젤리미스트] 빛클 살구콜라겐 젤세럼 미스트 100ml (미니 하트 공병 증정)'), NOW(), NOW()),
(38500, 'SALE', (SELECT id FROM product WHERE name = '[화잘먹 젤리미스트] 빛클 살구콜라겐 젤세럼 미스트 100ml (미니 하트 공병 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023516504ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[화잘먹 젤리미스트] 빛클 살구콜라겐 젤세럼 미스트 100ml (미니 하트 공병 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023516502ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[화잘먹 젤리미스트] 빛클 살구콜라겐 젤세럼 미스트 100ml (미니 하트 공병 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023516501ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[화잘먹 젤리미스트] 빛클 살구콜라겐 젤세럼 미스트 100ml (미니 하트 공병 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[화잘먹 젤리미스트] 빛클 살구콜라겐 젤세럼 미스트 100ml (미니 하트 공병 증정)';


-- ================================

-- 상품: 블랙몬스터 화이트 스킨미스트...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('블랙몬스터 화이트 스킨미스트',
 '블랙몬스터 화이트 스킨미스트',
 0.0,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '블랙몬스터'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '블랙몬스터 화이트 스킨미스트'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(19000, 'ORIGINAL', (SELECT id FROM product WHERE name = '블랙몬스터 화이트 스킨미스트'), NOW(), NOW()),
(19000, 'SALE', (SELECT id FROM product WHERE name = '블랙몬스터 화이트 스킨미스트'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/B00000022391901ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '블랙몬스터 화이트 스킨미스트'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '블랙몬스터 화이트 스킨미스트';


-- ================================

-- 상품: 숨37 워터풀 하이드레이팅 젤 미스트 60ml 기획(리필 60ml*2)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('숨37 워터풀 하이드레이팅 젤 미스트 60ml 기획(리필 60ml*2)',
 '숨37 워터풀 하이드레이팅 젤 미스트 60ml 기획(리필 60ml*2)',
 4.8,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '숨37'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '숨37 워터풀 하이드레이팅 젤 미스트 60ml 기획(리필 60ml*2)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(54000, 'ORIGINAL', (SELECT id FROM product WHERE name = '숨37 워터풀 하이드레이팅 젤 미스트 60ml 기획(리필 60ml*2)'), NOW(), NOW()),
(43200, 'SALE', (SELECT id FROM product WHERE name = '숨37 워터풀 하이드레이팅 젤 미스트 60ml 기획(리필 60ml*2)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020480601ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '숨37 워터풀 하이드레이팅 젤 미스트 60ml 기획(리필 60ml*2)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020480602ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '숨37 워터풀 하이드레이팅 젤 미스트 60ml 기획(리필 60ml*2)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '숨37 워터풀 하이드레이팅 젤 미스트 60ml 기획(리필 60ml*2)';


-- ================================

-- 상품: 파이코어 디퍼런씨 블루바이옴 리페어 세럼 미스트 100ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('파이코어 디퍼런씨 블루바이옴 리페어 세럼 미스트 100ml',
 '파이코어 디퍼런씨 블루바이옴 리페어 세럼 미스트 100ml',
 5.0,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '파이코어'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '파이코어 디퍼런씨 블루바이옴 리페어 세럼 미스트 100ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '파이코어 디퍼런씨 블루바이옴 리페어 세럼 미스트 100ml'), NOW(), NOW()),
(25800, 'SALE', (SELECT id FROM product WHERE name = '파이코어 디퍼런씨 블루바이옴 리페어 세럼 미스트 100ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021311604ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '파이코어 디퍼런씨 블루바이옴 리페어 세럼 미스트 100ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021311605ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '파이코어 디퍼런씨 블루바이옴 리페어 세럼 미스트 100ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '파이코어 디퍼런씨 블루바이옴 리페어 세럼 미스트 100ml';


-- ================================

-- 상품: [100% 로즈 꽃수] 프라나롬 로즈 하이드롤라 150ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[100% 로즈 꽃수] 프라나롬 로즈 하이드롤라 150ml',
 '[100% 로즈 꽃수] 프라나롬 로즈 하이드롤라 150ml',
 4.8,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '프라나롬'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[100% 로즈 꽃수] 프라나롬 로즈 하이드롤라 150ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(37000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[100% 로즈 꽃수] 프라나롬 로즈 하이드롤라 150ml'), NOW(), NOW()),
(29970, 'SALE', (SELECT id FROM product WHERE name = '[100% 로즈 꽃수] 프라나롬 로즈 하이드롤라 150ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021355602ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[100% 로즈 꽃수] 프라나롬 로즈 하이드롤라 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021355603ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[100% 로즈 꽃수] 프라나롬 로즈 하이드롤라 150ml'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021355601ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[100% 로즈 꽃수] 프라나롬 로즈 하이드롤라 150ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[100% 로즈 꽃수] 프라나롬 로즈 하이드롤라 150ml';


-- ================================

-- 상품: [아이돌광채][NEW] 더하르나이 시카이드 크림 미스트 120ml (안개분사 화잘먹 미스트...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[아이돌광채][NEW] 더하르나이 시카이드 크림 미스트 120ml (안개분사 화잘먹 미스트)',
 '[아이돌광채][NEW] 더하르나이 시카이드 크림 미스트 120ml (안개분사 화잘먹 미스트)',
 4.7,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더하르나이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[아이돌광채][NEW] 더하르나이 시카이드 크림 미스트 120ml (안개분사 화잘먹 미스트)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[아이돌광채][NEW] 더하르나이 시카이드 크림 미스트 120ml (안개분사 화잘먹 미스트)'), NOW(), NOW()),
(26000, 'SALE', (SELECT id FROM product WHERE name = '[아이돌광채][NEW] 더하르나이 시카이드 크림 미스트 120ml (안개분사 화잘먹 미스트)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021391624ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[아이돌광채][NEW] 더하르나이 시카이드 크림 미스트 120ml (안개분사 화잘먹 미스트)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021391622ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[아이돌광채][NEW] 더하르나이 시카이드 크림 미스트 120ml (안개분사 화잘먹 미스트)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[아이돌광채][NEW] 더하르나이 시카이드 크림 미스트 120ml (안개분사 화잘먹 미스트)';


-- ================================

-- 상품: [뿌리는 진정 토너] 더말로지카 울트라카밍 미스트 177ml...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[뿌리는 진정 토너] 더말로지카 울트라카밍 미스트 177ml',
 '[뿌리는 진정 토너] 더말로지카 울트라카밍 미스트 177ml',
 0.0,
 (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '더말로지카'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[뿌리는 진정 토너] 더말로지카 울트라카밍 미스트 177ml'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(53000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[뿌리는 진정 토너] 더말로지카 울트라카밍 미스트 177ml'), NOW(), NOW()),
(46900, 'SALE', (SELECT id FROM product WHERE name = '[뿌리는 진정 토너] 더말로지카 울트라카밍 미스트 177ml'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021544704ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[뿌리는 진정 토너] 더말로지카 울트라카밍 미스트 177ml'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[뿌리는 진정 토너] 더말로지카 울트라카밍 미스트 177ml';


-- ================================
