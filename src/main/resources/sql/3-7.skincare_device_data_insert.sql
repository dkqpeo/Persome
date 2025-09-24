-- 상품: [크래들/젤 증정] [1위 홈케어템/올영단독] 쿼드쎄라 미니튠 (화이트/핑크/실버)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[크래들/젤 증정] [1위 홈케어템/올영단독] 쿼드쎄라 미니튠 (화이트/핑크/실버)',
 '[크래들/젤 증정] [1위 홈케어템/올영단독] 쿼드쎄라 미니튠 (화이트/핑크/실버)',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '쿼드쎄라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[크래들/젤 증정] [1위 홈케어템/올영단독] 쿼드쎄라 미니튠 (화이트/핑크/실버)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(690000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[크래들/젤 증정] [1위 홈케어템/올영단독] 쿼드쎄라 미니튠 (화이트/핑크/실버)'), NOW(), NOW()),
(470450, 'SALE', (SELECT id FROM product WHERE name = '[크래들/젤 증정] [1위 홈케어템/올영단독] 쿼드쎄라 미니튠 (화이트/핑크/실버)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021805916ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[크래들/젤 증정] [1위 홈케어템/올영단독] 쿼드쎄라 미니튠 (화이트/핑크/실버)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021805910ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[크래들/젤 증정] [1위 홈케어템/올영단독] 쿼드쎄라 미니튠 (화이트/핑크/실버)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021805911ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[크래들/젤 증정] [1위 홈케어템/올영단독] 쿼드쎄라 미니튠 (화이트/핑크/실버)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021805912ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[크래들/젤 증정] [1위 홈케어템/올영단독] 쿼드쎄라 미니튠 (화이트/핑크/실버)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021805913ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[크래들/젤 증정] [1위 홈케어템/올영단독] 쿼드쎄라 미니튠 (화이트/핑크/실버)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021805914ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[크래들/젤 증정] [1위 홈케어템/올영단독] 쿼드쎄라 미니튠 (화이트/핑크/실버)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[크래들/젤 증정] [1위 홈케어템/올영단독] 쿼드쎄라 미니튠 (화이트/핑크/실버)';


-- ================================

-- 상품: [뷰티디바이스 1위] [광채토닝] 메디큐브 부스터프로 쿠로미 에디션 기획세트...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[뷰티디바이스 1위] [광채토닝] 메디큐브 부스터프로 쿠로미 에디션 기획세트',
 '[뷰티디바이스 1위] [광채토닝] 메디큐브 부스터프로 쿠로미 에디션 기획세트',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '메디큐브 에이지알'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[뷰티디바이스 1위] [광채토닝] 메디큐브 부스터프로 쿠로미 에디션 기획세트'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(418800, 'ORIGINAL', (SELECT id FROM product WHERE name = '[뷰티디바이스 1위] [광채토닝] 메디큐브 부스터프로 쿠로미 에디션 기획세트'), NOW(), NOW()),
(359000, 'SALE', (SELECT id FROM product WHERE name = '[뷰티디바이스 1위] [광채토닝] 메디큐브 부스터프로 쿠로미 에디션 기획세트'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022465415ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[뷰티디바이스 1위] [광채토닝] 메디큐브 부스터프로 쿠로미 에디션 기획세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022465416ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[뷰티디바이스 1위] [광채토닝] 메디큐브 부스터프로 쿠로미 에디션 기획세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022465417ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[뷰티디바이스 1위] [광채토닝] 메디큐브 부스터프로 쿠로미 에디션 기획세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022465418ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[뷰티디바이스 1위] [광채토닝] 메디큐브 부스터프로 쿠로미 에디션 기획세트'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[뷰티디바이스 1위] [광채토닝] 메디큐브 부스터프로 쿠로미 에디션 기획세트';


-- ================================

-- 상품: [장원영PICK] [뷰티디바이스1위] 메디큐브 에이지알 부스터프로 마이멜로디 에디션 기획세...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[장원영PICK] [뷰티디바이스1위] 메디큐브 에이지알 부스터프로 마이멜로디 에디션 기획세트',
 '[장원영PICK] [뷰티디바이스1위] 메디큐브 에이지알 부스터프로 마이멜로디 에디션 기획세트',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '메디큐브 에이지알'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[기획세트] 마이멜로디 에디션', 359000, (SELECT id FROM product WHERE name = '[장원영PICK] [뷰티디바이스1위] 메디큐브 에이지알 부스터프로 마이멜로디 에디션 기획세트'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[기획세트] 쿠로미 에디션', 359000, (SELECT id FROM product WHERE name = '[장원영PICK] [뷰티디바이스1위] 메디큐브 에이지알 부스터프로 마이멜로디 에디션 기획세트'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[단품] 블랙', 359000, (SELECT id FROM product WHERE name = '[장원영PICK] [뷰티디바이스1위] 메디큐브 에이지알 부스터프로 마이멜로디 에디션 기획세트'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[단품] 핑크', 359000, (SELECT id FROM product WHERE name = '[장원영PICK] [뷰티디바이스1위] 메디큐브 에이지알 부스터프로 마이멜로디 에디션 기획세트'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(418800, 'ORIGINAL', (SELECT id FROM product WHERE name = '[장원영PICK] [뷰티디바이스1위] 메디큐브 에이지알 부스터프로 마이멜로디 에디션 기획세트'), NOW(), NOW()),
(359000, 'SALE', (SELECT id FROM product WHERE name = '[장원영PICK] [뷰티디바이스1위] 메디큐브 에이지알 부스터프로 마이멜로디 에디션 기획세트'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023218314ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[장원영PICK] [뷰티디바이스1위] 메디큐브 에이지알 부스터프로 마이멜로디 에디션 기획세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023218321ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[장원영PICK] [뷰티디바이스1위] 메디큐브 에이지알 부스터프로 마이멜로디 에디션 기획세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023218326ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[장원영PICK] [뷰티디바이스1위] 메디큐브 에이지알 부스터프로 마이멜로디 에디션 기획세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023218327ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[장원영PICK] [뷰티디바이스1위] 메디큐브 에이지알 부스터프로 마이멜로디 에디션 기획세트'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023218328ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[장원영PICK] [뷰티디바이스1위] 메디큐브 에이지알 부스터프로 마이멜로디 에디션 기획세트'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[장원영PICK] [뷰티디바이스1위] 메디큐브 에이지알 부스터프로 마이멜로디 에디션 기획세트';


-- ================================

-- 상품: [유시은pick/1등홈경락템]마미케어 EMS브이쎄라(화이트/핑크/NEW퍼플에디션)(+ 부스...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[유시은pick/1등홈경락템]마미케어 EMS브이쎄라(화이트/핑크/NEW퍼플에디션)(+ 부스팅젤 본품 증정)',
 '[유시은pick/1등홈경락템]마미케어 EMS브이쎄라(화이트/핑크/NEW퍼플에디션)(+ 부스팅젤 본품 증정)',
 4.7,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '마미케어'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('마미케어EMS 화이트(+부스팅젤)', 92000, (SELECT id FROM product WHERE name = '[유시은pick/1등홈경락템]마미케어 EMS브이쎄라(화이트/핑크/NEW퍼플에디션)(+ 부스팅젤 본품 증정)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('마미케어 EMS 핑크(+부스팅젤)', 92000, (SELECT id FROM product WHERE name = '[유시은pick/1등홈경락템]마미케어 EMS브이쎄라(화이트/핑크/NEW퍼플에디션)(+ 부스팅젤 본품 증정)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('마미케어 EMS 퍼플(+부스팅젤)', 0, (SELECT id FROM product WHERE name = '[유시은pick/1등홈경락템]마미케어 EMS브이쎄라(화이트/핑크/NEW퍼플에디션)(+ 부스팅젤 본품 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(109000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[유시은pick/1등홈경락템]마미케어 EMS브이쎄라(화이트/핑크/NEW퍼플에디션)(+ 부스팅젤 본품 증정)'), NOW(), NOW()),
(92000, 'SALE', (SELECT id FROM product WHERE name = '[유시은pick/1등홈경락템]마미케어 EMS브이쎄라(화이트/핑크/NEW퍼플에디션)(+ 부스팅젤 본품 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/B00000022435013ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[유시은pick/1등홈경락템]마미케어 EMS브이쎄라(화이트/핑크/NEW퍼플에디션)(+ 부스팅젤 본품 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/B00000022435004ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[유시은pick/1등홈경락템]마미케어 EMS브이쎄라(화이트/핑크/NEW퍼플에디션)(+ 부스팅젤 본품 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/B00000022435002ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[유시은pick/1등홈경락템]마미케어 EMS브이쎄라(화이트/핑크/NEW퍼플에디션)(+ 부스팅젤 본품 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/B00000022435005ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[유시은pick/1등홈경락템]마미케어 EMS브이쎄라(화이트/핑크/NEW퍼플에디션)(+ 부스팅젤 본품 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/B00000022435003ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[유시은pick/1등홈경락템]마미케어 EMS브이쎄라(화이트/핑크/NEW퍼플에디션)(+ 부스팅젤 본품 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/B00000022435014ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[유시은pick/1등홈경락템]마미케어 EMS브이쎄라(화이트/핑크/NEW퍼플에디션)(+ 부스팅젤 본품 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[유시은pick/1등홈경락템]마미케어 EMS브이쎄라(화이트/핑크/NEW퍼플에디션)(+ 부스팅젤 본품 증정)';


-- ================================

-- 상품: [1위 홈케어 뷰티디바이스] 반코르 리리힐 고주파 마사지기 한정기획(+기미&잡티케어 라디아...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[1위 홈케어 뷰티디바이스] 반코르 리리힐 고주파 마사지기 한정기획(+기미&잡티케어 라디아타 세럼 증정)',
 '[1위 홈케어 뷰티디바이스] 반코르 리리힐 고주파 마사지기 한정기획(+기미&잡티케어 라디아타 세럼 증정)',
 4.7,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '반코르'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[1위 홈케어 뷰티디바이스] 반코르 리리힐 고주파 마사지기 한정기획(+기미&잡티케어 라디아타 세럼 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(199000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1위 홈케어 뷰티디바이스] 반코르 리리힐 고주파 마사지기 한정기획(+기미&잡티케어 라디아타 세럼 증정)'), NOW(), NOW()),
(165300, 'SALE', (SELECT id FROM product WHERE name = '[1위 홈케어 뷰티디바이스] 반코르 리리힐 고주파 마사지기 한정기획(+기미&잡티케어 라디아타 세럼 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021304518ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[1위 홈케어 뷰티디바이스] 반코르 리리힐 고주파 마사지기 한정기획(+기미&잡티케어 라디아타 세럼 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021304506ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[1위 홈케어 뷰티디바이스] 반코르 리리힐 고주파 마사지기 한정기획(+기미&잡티케어 라디아타 세럼 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[1위 홈케어 뷰티디바이스] 반코르 리리힐 고주파 마사지기 한정기획(+기미&잡티케어 라디아타 세럼 증정)';


-- ================================

-- 상품: [장원영PICK] [미백트러블광채] 메디큐브 에이지알 부스터프로 미니플러스 베이지/핑크...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[장원영PICK] [미백트러블광채] 메디큐브 에이지알 부스터프로 미니플러스 베이지/핑크',
 '[장원영PICK] [미백트러블광채] 메디큐브 에이지알 부스터프로 미니플러스 베이지/핑크',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '메디큐브 에이지알'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('미니플러스 베이지', 122000, (SELECT id FROM product WHERE name = '[장원영PICK] [미백트러블광채] 메디큐브 에이지알 부스터프로 미니플러스 베이지/핑크'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('미니플러스 핑크', 122000, (SELECT id FROM product WHERE name = '[장원영PICK] [미백트러블광채] 메디큐브 에이지알 부스터프로 미니플러스 베이지/핑크'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(126000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[장원영PICK] [미백트러블광채] 메디큐브 에이지알 부스터프로 미니플러스 베이지/핑크'), NOW(), NOW()),
(122000, 'SALE', (SELECT id FROM product WHERE name = '[장원영PICK] [미백트러블광채] 메디큐브 에이지알 부스터프로 미니플러스 베이지/핑크'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023115402ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[장원영PICK] [미백트러블광채] 메디큐브 에이지알 부스터프로 미니플러스 베이지/핑크'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023115403ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[장원영PICK] [미백트러블광채] 메디큐브 에이지알 부스터프로 미니플러스 베이지/핑크'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023115404ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[장원영PICK] [미백트러블광채] 메디큐브 에이지알 부스터프로 미니플러스 베이지/핑크'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[장원영PICK] [미백트러블광채] 메디큐브 에이지알 부스터프로 미니플러스 베이지/핑크';


-- ================================

-- 상품: [올리브영단독] 메디큐브 에이지알 미니플러스 마이멜로디 에디션/베이지/핑크 택 1...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[올리브영단독] 메디큐브 에이지알 미니플러스 마이멜로디 에디션/베이지/핑크 택 1',
 '[올리브영단독] 메디큐브 에이지알 미니플러스 마이멜로디 에디션/베이지/핑크 택 1',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '메디큐브 에이지알'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[마이멜로디 에디션] 미니플러스', 122000, (SELECT id FROM product WHERE name = '[올리브영단독] 메디큐브 에이지알 미니플러스 마이멜로디 에디션/베이지/핑크 택 1'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(126000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[올리브영단독] 메디큐브 에이지알 미니플러스 마이멜로디 에디션/베이지/핑크 택 1'), NOW(), NOW()),
(122000, 'SALE', (SELECT id FROM product WHERE name = '[올리브영단독] 메디큐브 에이지알 미니플러스 마이멜로디 에디션/베이지/핑크 택 1'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023218212ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[올리브영단독] 메디큐브 에이지알 미니플러스 마이멜로디 에디션/베이지/핑크 택 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023218216ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[올리브영단독] 메디큐브 에이지알 미니플러스 마이멜로디 에디션/베이지/핑크 택 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023218213ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[올리브영단독] 메디큐브 에이지알 미니플러스 마이멜로디 에디션/베이지/핑크 택 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023218208ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[올리브영단독] 메디큐브 에이지알 미니플러스 마이멜로디 에디션/베이지/핑크 택 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023218209ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[올리브영단독] 메디큐브 에이지알 미니플러스 마이멜로디 에디션/베이지/핑크 택 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023218210ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[올리브영단독] 메디큐브 에이지알 미니플러스 마이멜로디 에디션/베이지/핑크 택 1'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[올리브영단독] 메디큐브 에이지알 미니플러스 마이멜로디 에디션/베이지/핑크 택 1';


-- ================================

-- 상품: [핑크에디션 / 혼바디 최초 흡입형 EMS] 혼바디 린모드샷...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[핑크에디션 / 혼바디 최초 흡입형 EMS] 혼바디 린모드샷',
 '[핑크에디션 / 혼바디 최초 흡입형 EMS] 혼바디 린모드샷',
 4.5,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '혼바디'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[핑크에디션] 혼바디 린모드샷', 122000, (SELECT id FROM product WHERE name = '[핑크에디션 / 혼바디 최초 흡입형 EMS] 혼바디 린모드샷'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(199000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[핑크에디션 / 혼바디 최초 흡입형 EMS] 혼바디 린모드샷'), NOW(), NOW()),
(122000, 'SALE', (SELECT id FROM product WHERE name = '[핑크에디션 / 혼바디 최초 흡입형 EMS] 혼바디 린모드샷'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/B00000021605514ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[핑크에디션 / 혼바디 최초 흡입형 EMS] 혼바디 린모드샷'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/B00000021605511ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[핑크에디션 / 혼바디 최초 흡입형 EMS] 혼바디 린모드샷'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/B00000021605512ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[핑크에디션 / 혼바디 최초 흡입형 EMS] 혼바디 린모드샷'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/B00000021605510ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[핑크에디션 / 혼바디 최초 흡입형 EMS] 혼바디 린모드샷'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/B00000021605513ko.png?l=ko', 5, (SELECT id FROM product WHERE name = '[핑크에디션 / 혼바디 최초 흡입형 EMS] 혼바디 린모드샷'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/B00000021605506ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[핑크에디션 / 혼바디 최초 흡입형 EMS] 혼바디 린모드샷'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[핑크에디션 / 혼바디 최초 흡입형 EMS] 혼바디 린모드샷';


-- ================================

-- 상품: 바나브 UP5(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('바나브 UP5(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정',
 '바나브 UP5(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정',
 4.7,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바나브'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '바나브 UP5(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(228000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바나브 UP5(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'), NOW(), NOW()),
(228000, 'SALE', (SELECT id FROM product WHERE name = '바나브 UP5(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011607810ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바나브 UP5(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011607803ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '바나브 UP5(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '바나브 UP5(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정';


-- ================================

-- 상품: 바나브 타임머신...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('바나브 타임머신',
 '바나브 타임머신',
 4.5,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바나브'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '바나브 타임머신'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(73000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바나브 타임머신'), NOW(), NOW()),
(65500, 'SALE', (SELECT id FROM product WHERE name = '바나브 타임머신'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011609705ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바나브 타임머신'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011609703ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '바나브 타임머신'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '바나브 타임머신';


-- ================================

-- 상품: 페이스팩토리 미용가전 3종 (필링기, 피지 흡입기, 셀라이너)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('페이스팩토리 미용가전 3종 (필링기, 피지 흡입기, 셀라이너)',
 '페이스팩토리 미용가전 3종 (필링기, 피지 흡입기, 셀라이너)',
 4.3,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '페이스팩토리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '페이스팩토리 미용가전 3종 (필링기, 피지 흡입기, 셀라이너)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '페이스팩토리 미용가전 3종 (필링기, 피지 흡입기, 셀라이너)'), NOW(), NOW()),
(32000, 'SALE', (SELECT id FROM product WHERE name = '페이스팩토리 미용가전 3종 (필링기, 피지 흡입기, 셀라이너)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011618307ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '페이스팩토리 미용가전 3종 (필링기, 피지 흡입기, 셀라이너)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '페이스팩토리 미용가전 3종 (필링기, 피지 흡입기, 셀라이너)';


-- ================================

-- 상품: 바나브 UP6(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('바나브 UP6(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정',
 '바나브 UP6(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바나브'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '바나브 UP6(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(320000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바나브 UP6(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'), NOW(), NOW()),
(272000, 'SALE', (SELECT id FROM product WHERE name = '바나브 UP6(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013508808ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바나브 UP6(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013508802ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '바나브 UP6(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '바나브 UP6(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정';


-- ================================

-- 상품: 바나브 버블팝 클렌저(+브러쉬 리필 2개) 추가증정...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('바나브 버블팝 클렌저(+브러쉬 리필 2개) 추가증정',
 '바나브 버블팝 클렌저(+브러쉬 리필 2개) 추가증정',
 4.0,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바나브'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '바나브 버블팝 클렌저(+브러쉬 리필 2개) 추가증정'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(148000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바나브 버블팝 클렌저(+브러쉬 리필 2개) 추가증정'), NOW(), NOW()),
(118400, 'SALE', (SELECT id FROM product WHERE name = '바나브 버블팝 클렌저(+브러쉬 리필 2개) 추가증정'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013610402ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바나브 버블팝 클렌저(+브러쉬 리필 2개) 추가증정'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013610406ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '바나브 버블팝 클렌저(+브러쉬 리필 2개) 추가증정'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '바나브 버블팝 클렌저(+브러쉬 리필 2개) 추가증정';


-- ================================

-- 상품: 바디스핀 마블롤러 특별구성...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('바디스핀 마블롤러 특별구성',
 '바디스핀 마블롤러 특별구성',
 4.4,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바디스핀'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '바디스핀 마블롤러 특별구성'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(338000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바디스핀 마블롤러 특별구성'), NOW(), NOW()),
(109170, 'SALE', (SELECT id FROM product WHERE name = '바디스핀 마블롤러 특별구성'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013977901ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바디스핀 마블롤러 특별구성'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '바디스핀 마블롤러 특별구성';


-- ================================

-- 상품: 페이스팩토리 베스트 미용가전 3종 택1...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('페이스팩토리 베스트 미용가전 3종 택1',
 '페이스팩토리 베스트 미용가전 3종 택1',
 4.7,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '페이스팩토리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '페이스팩토리 베스트 미용가전 3종 택1'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38900, 'ORIGINAL', (SELECT id FROM product WHERE name = '페이스팩토리 베스트 미용가전 3종 택1'), NOW(), NOW()),
(38900, 'SALE', (SELECT id FROM product WHERE name = '페이스팩토리 베스트 미용가전 3종 택1'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014295302ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '페이스팩토리 베스트 미용가전 3종 택1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014295301ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '페이스팩토리 베스트 미용가전 3종 택1'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '페이스팩토리 베스트 미용가전 3종 택1';


-- ================================

-- 상품: 페이스팩토리 셀라이너...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('페이스팩토리 셀라이너',
 '페이스팩토리 셀라이너',
 4.4,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '페이스팩토리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '페이스팩토리 셀라이너'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(79800, 'ORIGINAL', (SELECT id FROM product WHERE name = '페이스팩토리 셀라이너'), NOW(), NOW()),
(79800, 'SALE', (SELECT id FROM product WHERE name = '페이스팩토리 셀라이너'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014363902ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '페이스팩토리 셀라이너'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014363901ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '페이스팩토리 셀라이너'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '페이스팩토리 셀라이너';


-- ================================

-- 상품: 바나브 스킨빔(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('바나브 스킨빔(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정',
 '바나브 스킨빔(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정',
 4.7,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바나브'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '바나브 스킨빔(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(178000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바나브 스킨빔(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'), NOW(), NOW()),
(178000, 'SALE', (SELECT id FROM product WHERE name = '바나브 스킨빔(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014700009ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바나브 스킨빔(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014700008ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '바나브 스킨빔(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '바나브 스킨빔(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정';


-- ================================

-- 상품: SPUUN 피부스푼 스마트 스패츌러...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('SPUUN 피부스푼 스마트 스패츌러',
 'SPUUN 피부스푼 스마트 스패츌러',
 4.7,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'SPUUN'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = 'SPUUN 피부스푼 스마트 스패츌러'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(129000, 'ORIGINAL', (SELECT id FROM product WHERE name = 'SPUUN 피부스푼 스마트 스패츌러'), NOW(), NOW()),
(129000, 'SALE', (SELECT id FROM product WHERE name = 'SPUUN 피부스푼 스마트 스패츌러'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014907519ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = 'SPUUN 피부스푼 스마트 스패츌러'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014907524ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = 'SPUUN 피부스푼 스마트 스패츌러'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014907523ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = 'SPUUN 피부스푼 스마트 스패츌러'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014907521ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = 'SPUUN 피부스푼 스마트 스패츌러'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014907520ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = 'SPUUN 피부스푼 스마트 스패츌러'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = 'SPUUN 피부스푼 스마트 스패츌러';


-- ================================

-- 상품: 실큰 레빗 프레스티지...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('실큰 레빗 프레스티지',
 '실큰 레빗 프레스티지',
 4.7,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '실큰'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '실큰 레빗 프레스티지'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(179000, 'ORIGINAL', (SELECT id FROM product WHERE name = '실큰 레빗 프레스티지'), NOW(), NOW()),
(179000, 'SALE', (SELECT id FROM product WHERE name = '실큰 레빗 프레스티지'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015434401ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '실큰 레빗 프레스티지'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015434402ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '실큰 레빗 프레스티지'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '실큰 레빗 프레스티지';


-- ================================

-- 상품: SPUUN 피부스푼 스마트 스패츌러 기프트 세트(세안밴드 포함 기획)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('SPUUN 피부스푼 스마트 스패츌러 기프트 세트(세안밴드 포함 기획)',
 'SPUUN 피부스푼 스마트 스패츌러 기프트 세트(세안밴드 포함 기획)',
 4.7,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = 'SPUUN'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('스패츌러 본품', 129000, (SELECT id FROM product WHERE name = 'SPUUN 피부스푼 스마트 스패츌러 기프트 세트(세안밴드 포함 기획)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(129000, 'ORIGINAL', (SELECT id FROM product WHERE name = 'SPUUN 피부스푼 스마트 스패츌러 기프트 세트(세안밴드 포함 기획)'), NOW(), NOW()),
(129000, 'SALE', (SELECT id FROM product WHERE name = 'SPUUN 피부스푼 스마트 스패츌러 기프트 세트(세안밴드 포함 기획)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015735404ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = 'SPUUN 피부스푼 스마트 스패츌러 기프트 세트(세안밴드 포함 기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015735409ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = 'SPUUN 피부스푼 스마트 스패츌러 기프트 세트(세안밴드 포함 기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015735408ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = 'SPUUN 피부스푼 스마트 스패츌러 기프트 세트(세안밴드 포함 기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015735406ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = 'SPUUN 피부스푼 스마트 스패츌러 기프트 세트(세안밴드 포함 기획)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015735405ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = 'SPUUN 피부스푼 스마트 스패츌러 기프트 세트(세안밴드 포함 기획)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = 'SPUUN 피부스푼 스마트 스패츌러 기프트 세트(세안밴드 포함 기획)';


-- ================================

-- 상품: 리스프링 시카니들 MTS 리필 키트...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('리스프링 시카니들 MTS 리필 키트',
 '리스프링 시카니들 MTS 리필 키트',
 4.4,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '리스프링'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '리스프링 시카니들 MTS 리필 키트'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(64000, 'ORIGINAL', (SELECT id FROM product WHERE name = '리스프링 시카니들 MTS 리필 키트'), NOW(), NOW()),
(62900, 'SALE', (SELECT id FROM product WHERE name = '리스프링 시카니들 MTS 리필 키트'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015973902ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '리스프링 시카니들 MTS 리필 키트'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '리스프링 시카니들 MTS 리필 키트';


-- ================================

-- 상품: 리스프링 시카니들 MTS 스타터 키트...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('리스프링 시카니들 MTS 스타터 키트',
 '리스프링 시카니들 MTS 스타터 키트',
 4.5,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '리스프링'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '리스프링 시카니들 MTS 스타터 키트'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(20000, 'ORIGINAL', (SELECT id FROM product WHERE name = '리스프링 시카니들 MTS 스타터 키트'), NOW(), NOW()),
(19000, 'SALE', (SELECT id FROM product WHERE name = '리스프링 시카니들 MTS 스타터 키트'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015974102ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '리스프링 시카니들 MTS 스타터 키트'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '리스프링 시카니들 MTS 스타터 키트';


-- ================================

-- 상품: 바나브 UP6 라벤더(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('바나브 UP6 라벤더(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정',
 '바나브 UP6 라벤더(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정',
 0.0,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바나브'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '바나브 UP6 라벤더(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(320000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바나브 UP6 라벤더(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'), NOW(), NOW()),
(320000, 'SALE', (SELECT id FROM product WHERE name = '바나브 UP6 라벤더(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016898508ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바나브 UP6 라벤더(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016898502ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '바나브 UP6 라벤더(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '바나브 UP6 라벤더(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정';


-- ================================

-- 상품: 바나브 UP6 3종 택1(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('바나브 UP6 3종 택1(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정',
 '바나브 UP6 3종 택1(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정',
 5.0,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바나브'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('UP6', 272000, (SELECT id FROM product WHERE name = '바나브 UP6 3종 택1(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('UP6 라벤더', 320000, (SELECT id FROM product WHERE name = '바나브 UP6 3종 택1(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('UP6 골드에디션', 0, (SELECT id FROM product WHERE name = '바나브 UP6 3종 택1(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(320000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바나브 UP6 3종 택1(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'), NOW(), NOW()),
(272000, 'SALE', (SELECT id FROM product WHERE name = '바나브 UP6 3종 택1(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016898707ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바나브 UP6 3종 택1(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016898704ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '바나브 UP6 3종 택1(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016898703ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '바나브 UP6 3종 택1(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016898702ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '바나브 UP6 3종 택1(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '바나브 UP6 3종 택1(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정';


-- ================================

-- 상품: [피지제거/필링] 페이스팩토리 제트 필링기...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[피지제거/필링] 페이스팩토리 제트 필링기',
 '[피지제거/필링] 페이스팩토리 제트 필링기',
 4.7,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '페이스팩토리'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[피지제거/필링] 페이스팩토리 제트 필링기'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(89000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[피지제거/필링] 페이스팩토리 제트 필링기'), NOW(), NOW()),
(89000, 'SALE', (SELECT id FROM product WHERE name = '[피지제거/필링] 페이스팩토리 제트 필링기'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018320602ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[피지제거/필링] 페이스팩토리 제트 필링기'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018320604ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[피지제거/필링] 페이스팩토리 제트 필링기'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018320603ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[피지제거/필링] 페이스팩토리 제트 필링기'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018320601ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[피지제거/필링] 페이스팩토리 제트 필링기'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[피지제거/필링] 페이스팩토리 제트 필링기';


-- ================================

-- 상품: 글로웍스 4D 모션 진동 뷰티디바이스...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('글로웍스 4D 모션 진동 뷰티디바이스',
 '글로웍스 4D 모션 진동 뷰티디바이스',
 4.9,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '글로웍스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '글로웍스 4D 모션 진동 뷰티디바이스'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(80000, 'ORIGINAL', (SELECT id FROM product WHERE name = '글로웍스 4D 모션 진동 뷰티디바이스'), NOW(), NOW()),
(80000, 'SALE', (SELECT id FROM product WHERE name = '글로웍스 4D 모션 진동 뷰티디바이스'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019227202ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '글로웍스 4D 모션 진동 뷰티디바이스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019227201ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '글로웍스 4D 모션 진동 뷰티디바이스'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '글로웍스 4D 모션 진동 뷰티디바이스';


-- ================================

-- 상품: [정품인증이벤트_초음파고주파 더블케어] 리쥬란 리쥬리프 기획(+5만원상당 리쥬란 부스팅 젤...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[정품인증이벤트_초음파고주파 더블케어] 리쥬란 리쥬리프 기획(+5만원상당 리쥬란 부스팅 젤200ml 증정)',
 '[정품인증이벤트_초음파고주파 더블케어] 리쥬란 리쥬리프 기획(+5만원상당 리쥬란 부스팅 젤200ml 증정)',
 5.0,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '리쥬란'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[정품인증이벤트_초음파고주파 더블케어] 리쥬란 리쥬리프 기획(+5만원상당 리쥬란 부스팅 젤200ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020872906ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[정품인증이벤트_초음파고주파 더블케어] 리쥬란 리쥬리프 기획(+5만원상당 리쥬란 부스팅 젤200ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020872909ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[정품인증이벤트_초음파고주파 더블케어] 리쥬란 리쥬리프 기획(+5만원상당 리쥬란 부스팅 젤200ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020872908ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[정품인증이벤트_초음파고주파 더블케어] 리쥬란 리쥬리프 기획(+5만원상당 리쥬란 부스팅 젤200ml 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020872907ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[정품인증이벤트_초음파고주파 더블케어] 리쥬란 리쥬리프 기획(+5만원상당 리쥬란 부스팅 젤200ml 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[정품인증이벤트_초음파고주파 더블케어] 리쥬란 리쥬리프 기획(+5만원상당 리쥬란 부스팅 젤200ml 증정)';


-- ================================

-- 상품: [고주파관리/탄력케어] 메디큐브 울트라튠 40.68...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[고주파관리/탄력케어] 메디큐브 울트라튠 40.68',
 '[고주파관리/탄력케어] 메디큐브 울트라튠 40.68',
 4.7,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '메디큐브 에이지알'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[고주파관리/탄력케어] 메디큐브 울트라튠 40.68'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(479000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[고주파관리/탄력케어] 메디큐브 울트라튠 40.68'), NOW(), NOW()),
(398000, 'SALE', (SELECT id FROM product WHERE name = '[고주파관리/탄력케어] 메디큐브 울트라튠 40.68'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020912205ko.jpeg?l=ko', 1, (SELECT id FROM product WHERE name = '[고주파관리/탄력케어] 메디큐브 울트라튠 40.68'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020912204ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[고주파관리/탄력케어] 메디큐브 울트라튠 40.68'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020912203ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[고주파관리/탄력케어] 메디큐브 울트라튠 40.68'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[고주파관리/탄력케어] 메디큐브 울트라튠 40.68';


-- ================================

-- 상품: [디바이스 라인업] [뷰티디바이스 1위] 메디큐브 부스터프로/미니플러스/하이포커스 샷/울트...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[디바이스 라인업] [뷰티디바이스 1위] 메디큐브 부스터프로/미니플러스/하이포커스 샷/울트라튠 택 1',
 '[디바이스 라인업] [뷰티디바이스 1위] 메디큐브 부스터프로/미니플러스/하이포커스 샷/울트라튠 택 1',
 4.7,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '메디큐브 에이지알'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[미백트러블] 미니플러스 베이지 (단품)', 122000, (SELECT id FROM product WHERE name = '[디바이스 라인업] [뷰티디바이스 1위] 메디큐브 부스터프로/미니플러스/하이포커스 샷/울트라튠 택 1'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[미백트러블] 미니플러스 핑크 (단품)', 122000, (SELECT id FROM product WHERE name = '[디바이스 라인업] [뷰티디바이스 1위] 메디큐브 부스터프로/미니플러스/하이포커스 샷/울트라튠 택 1'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[기획] 부스터프로 마이멜로디 에디션', 359000, (SELECT id FROM product WHERE name = '[디바이스 라인업] [뷰티디바이스 1위] 메디큐브 부스터프로/미니플러스/하이포커스 샷/울트라튠 택 1'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[기획] 부스터프로 쿠로미 에디션', 359000, (SELECT id FROM product WHERE name = '[디바이스 라인업] [뷰티디바이스 1위] 메디큐브 부스터프로/미니플러스/하이포커스 샷/울트라튠 택 1'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[광채토닝] 부스터프로 블랙 (단품)', 359000, (SELECT id FROM product WHERE name = '[디바이스 라인업] [뷰티디바이스 1위] 메디큐브 부스터프로/미니플러스/하이포커스 샷/울트라튠 택 1'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[광채토닝] 부스터프로 핑크 (단품)', 359000, (SELECT id FROM product WHERE name = '[디바이스 라인업] [뷰티디바이스 1위] 메디큐브 부스터프로/미니플러스/하이포커스 샷/울트라튠 택 1'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[윤곽리프팅] 하이포커스 샷', 335000, (SELECT id FROM product WHERE name = '[디바이스 라인업] [뷰티디바이스 1위] 메디큐브 부스터프로/미니플러스/하이포커스 샷/울트라튠 택 1'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[볼륨케어] 울트라튠 40.68', 398000, (SELECT id FROM product WHERE name = '[디바이스 라인업] [뷰티디바이스 1위] 메디큐브 부스터프로/미니플러스/하이포커스 샷/울트라튠 택 1'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('[한정] 부스터프로 키티 에디션', 0, (SELECT id FROM product WHERE name = '[디바이스 라인업] [뷰티디바이스 1위] 메디큐브 부스터프로/미니플러스/하이포커스 샷/울트라튠 택 1'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(126000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[디바이스 라인업] [뷰티디바이스 1위] 메디큐브 부스터프로/미니플러스/하이포커스 샷/울트라튠 택 1'), NOW(), NOW()),
(122000, 'SALE', (SELECT id FROM product WHERE name = '[디바이스 라인업] [뷰티디바이스 1위] 메디큐브 부스터프로/미니플러스/하이포커스 샷/울트라튠 택 1'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020973580ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[디바이스 라인업] [뷰티디바이스 1위] 메디큐브 부스터프로/미니플러스/하이포커스 샷/울트라튠 택 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020973581ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[디바이스 라인업] [뷰티디바이스 1위] 메디큐브 부스터프로/미니플러스/하이포커스 샷/울트라튠 택 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020973582ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[디바이스 라인업] [뷰티디바이스 1위] 메디큐브 부스터프로/미니플러스/하이포커스 샷/울트라튠 택 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020973583ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[디바이스 라인업] [뷰티디바이스 1위] 메디큐브 부스터프로/미니플러스/하이포커스 샷/울트라튠 택 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020973584ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[디바이스 라인업] [뷰티디바이스 1위] 메디큐브 부스터프로/미니플러스/하이포커스 샷/울트라튠 택 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020973585ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[디바이스 라인업] [뷰티디바이스 1위] 메디큐브 부스터프로/미니플러스/하이포커스 샷/울트라튠 택 1'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[디바이스 라인업] [뷰티디바이스 1위] 메디큐브 부스터프로/미니플러스/하이포커스 샷/울트라튠 택 1';


-- ================================

-- 상품: [홈케어템/물광진정] 쿼드쎄라 오리지널 V1...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[홈케어템/물광진정] 쿼드쎄라 오리지널 V1',
 '[홈케어템/물광진정] 쿼드쎄라 오리지널 V1',
 5.0,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '쿼드쎄라'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[홈케어템/물광진정] 쿼드쎄라 오리지널 V1'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(990000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[홈케어템/물광진정] 쿼드쎄라 오리지널 V1'), NOW(), NOW()),
(990000, 'SALE', (SELECT id FROM product WHERE name = '[홈케어템/물광진정] 쿼드쎄라 오리지널 V1'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021858205ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[홈케어템/물광진정] 쿼드쎄라 오리지널 V1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021858206ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[홈케어템/물광진정] 쿼드쎄라 오리지널 V1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021858207ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[홈케어템/물광진정] 쿼드쎄라 오리지널 V1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021858208ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[홈케어템/물광진정] 쿼드쎄라 오리지널 V1'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[홈케어템/물광진정] 쿼드쎄라 오리지널 V1';


-- ================================

-- 상품: 셀로라바이 포텐션 펜타샷...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('셀로라바이 포텐션 펜타샷',
 '셀로라바이 포텐션 펜타샷',
 4.9,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '셀로라바이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '셀로라바이 포텐션 펜타샷'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(329000, 'ORIGINAL', (SELECT id FROM product WHERE name = '셀로라바이 포텐션 펜타샷'), NOW(), NOW()),
(329000, 'SALE', (SELECT id FROM product WHERE name = '셀로라바이 포텐션 펜타샷'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021898409ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '셀로라바이 포텐션 펜타샷'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021898406ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '셀로라바이 포텐션 펜타샷'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021898405ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '셀로라바이 포텐션 펜타샷'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021898404ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '셀로라바이 포텐션 펜타샷'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021898403ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '셀로라바이 포텐션 펜타샷'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '셀로라바이 포텐션 펜타샷';


-- ================================

-- 상품: 셀올로지 멜리턴 샷건 (앰플 증정 기획/ 앰플/ 카트리지)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('셀올로지 멜리턴 샷건 (앰플 증정 기획/ 앰플/ 카트리지)',
 '셀올로지 멜리턴 샷건 (앰플 증정 기획/ 앰플/ 카트리지)',
 4.9,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '셀올로지'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('멜리턴 샷건+카트리지 4개+앰플30ml', 59800, (SELECT id FROM product WHERE name = '셀올로지 멜리턴 샷건 (앰플 증정 기획/ 앰플/ 카트리지)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('앰플 30ml', 19900, (SELECT id FROM product WHERE name = '셀올로지 멜리턴 샷건 (앰플 증정 기획/ 앰플/ 카트리지)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('멜리턴 샷건 카트리지 리필 4개', 9900, (SELECT id FROM product WHERE name = '셀올로지 멜리턴 샷건 (앰플 증정 기획/ 앰플/ 카트리지)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(59800, 'ORIGINAL', (SELECT id FROM product WHERE name = '셀올로지 멜리턴 샷건 (앰플 증정 기획/ 앰플/ 카트리지)'), NOW(), NOW()),
(59800, 'SALE', (SELECT id FROM product WHERE name = '셀올로지 멜리턴 샷건 (앰플 증정 기획/ 앰플/ 카트리지)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021906504ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '셀올로지 멜리턴 샷건 (앰플 증정 기획/ 앰플/ 카트리지)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021906507ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '셀올로지 멜리턴 샷건 (앰플 증정 기획/ 앰플/ 카트리지)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021906506ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '셀올로지 멜리턴 샷건 (앰플 증정 기획/ 앰플/ 카트리지)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '셀올로지 멜리턴 샷건 (앰플 증정 기획/ 앰플/ 카트리지)';


-- ================================

-- 상품: [모공수축] 셀올로지 포어샷 MTS (MTS/앰플/카트리지)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[모공수축] 셀올로지 포어샷 MTS (MTS/앰플/카트리지)',
 '[모공수축] 셀올로지 포어샷 MTS (MTS/앰플/카트리지)',
 4.9,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '셀올로지'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('포어샷 MTS', 77900, (SELECT id FROM product WHERE name = '[모공수축] 셀올로지 포어샷 MTS (MTS/앰플/카트리지)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('포어샷 앰플  30ml', 18900, (SELECT id FROM product WHERE name = '[모공수축] 셀올로지 포어샷 MTS (MTS/앰플/카트리지)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('MTS 카트리지 4개입', 14400, (SELECT id FROM product WHERE name = '[모공수축] 셀올로지 포어샷 MTS (MTS/앰플/카트리지)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(79900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[모공수축] 셀올로지 포어샷 MTS (MTS/앰플/카트리지)'), NOW(), NOW()),
(77900, 'SALE', (SELECT id FROM product WHERE name = '[모공수축] 셀올로지 포어샷 MTS (MTS/앰플/카트리지)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021912506ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[모공수축] 셀올로지 포어샷 MTS (MTS/앰플/카트리지)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021912504ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[모공수축] 셀올로지 포어샷 MTS (MTS/앰플/카트리지)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021912502ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[모공수축] 셀올로지 포어샷 MTS (MTS/앰플/카트리지)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[모공수축] 셀올로지 포어샷 MTS (MTS/앰플/카트리지)';


-- ================================

-- 상품: [모공탄력1위] 셀로라바이 펜타샷 기획세트(+모공세럼30ml+파우치)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[모공탄력1위] 셀로라바이 펜타샷 기획세트(+모공세럼30ml+파우치)',
 '[모공탄력1위] 셀로라바이 펜타샷 기획세트(+모공세럼30ml+파우치)',
 4.6,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '셀로라바이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[모공탄력1위] 셀로라바이 펜타샷 기획세트(+모공세럼30ml+파우치)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(329000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[모공탄력1위] 셀로라바이 펜타샷 기획세트(+모공세럼30ml+파우치)'), NOW(), NOW()),
(274000, 'SALE', (SELECT id FROM product WHERE name = '[모공탄력1위] 셀로라바이 펜타샷 기획세트(+모공세럼30ml+파우치)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022433811ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[모공탄력1위] 셀로라바이 펜타샷 기획세트(+모공세럼30ml+파우치)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022433807ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[모공탄력1위] 셀로라바이 펜타샷 기획세트(+모공세럼30ml+파우치)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022433805ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[모공탄력1위] 셀로라바이 펜타샷 기획세트(+모공세럼30ml+파우치)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022433804ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[모공탄력1위] 셀로라바이 펜타샷 기획세트(+모공세럼30ml+파우치)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[모공탄력1위] 셀로라바이 펜타샷 기획세트(+모공세럼30ml+파우치)';


-- ================================

-- 상품: [초음파관리/윤곽튜닝] 메디큐브 하이포커스 샷...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[초음파관리/윤곽튜닝] 메디큐브 하이포커스 샷',
 '[초음파관리/윤곽튜닝] 메디큐브 하이포커스 샷',
 4.7,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '메디큐브 에이지알'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[초음파관리/윤곽튜닝] 메디큐브 하이포커스 샷'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(335000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[초음파관리/윤곽튜닝] 메디큐브 하이포커스 샷'), NOW(), NOW()),
(335000, 'SALE', (SELECT id FROM product WHERE name = '[초음파관리/윤곽튜닝] 메디큐브 하이포커스 샷'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022465608ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[초음파관리/윤곽튜닝] 메디큐브 하이포커스 샷'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022465602ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[초음파관리/윤곽튜닝] 메디큐브 하이포커스 샷'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022465603ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[초음파관리/윤곽튜닝] 메디큐브 하이포커스 샷'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022465604ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[초음파관리/윤곽튜닝] 메디큐브 하이포커스 샷'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[초음파관리/윤곽튜닝] 메디큐브 하이포커스 샷';


-- ================================

-- 상품: [단독기획] 오드로이 모공수축 중주파마사지기 티타늄샷 기획(+모공수축크림 100ml 본품 ...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[단독기획] 오드로이 모공수축 중주파마사지기 티타늄샷 기획(+모공수축크림 100ml 본품 증정)',
 '[단독기획] 오드로이 모공수축 중주파마사지기 티타늄샷 기획(+모공수축크림 100ml 본품 증정)',
 4.9,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '오드로이'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[단독기획] 오드로이 모공수축 중주파마사지기 티타늄샷 기획(+모공수축크림 100ml 본품 증정)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(243000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독기획] 오드로이 모공수축 중주파마사지기 티타늄샷 기획(+모공수축크림 100ml 본품 증정)'), NOW(), NOW()),
(188100, 'SALE', (SELECT id FROM product WHERE name = '[단독기획] 오드로이 모공수축 중주파마사지기 티타늄샷 기획(+모공수축크림 100ml 본품 증정)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022686609ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[단독기획] 오드로이 모공수축 중주파마사지기 티타늄샷 기획(+모공수축크림 100ml 본품 증정)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022686603ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[단독기획] 오드로이 모공수축 중주파마사지기 티타늄샷 기획(+모공수축크림 100ml 본품 증정)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[단독기획] 오드로이 모공수축 중주파마사지기 티타늄샷 기획(+모공수축크림 100ml 본품 증정)';


-- ================================

-- 상품: 이오시카 M1(엠원) 갈바닉 피부관리기 풀세트(고주파 EMS 쿨링)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('이오시카 M1(엠원) 갈바닉 피부관리기 풀세트(고주파 EMS 쿨링)',
 '이오시카 M1(엠원) 갈바닉 피부관리기 풀세트(고주파 EMS 쿨링)',
 4.7,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '이오시카'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('M1 피부관리기 풀세트', 219000, (SELECT id FROM product WHERE name = '이오시카 M1(엠원) 갈바닉 피부관리기 풀세트(고주파 EMS 쿨링)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(219000, 'ORIGINAL', (SELECT id FROM product WHERE name = '이오시카 M1(엠원) 갈바닉 피부관리기 풀세트(고주파 EMS 쿨링)'), NOW(), NOW()),
(219000, 'SALE', (SELECT id FROM product WHERE name = '이오시카 M1(엠원) 갈바닉 피부관리기 풀세트(고주파 EMS 쿨링)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/B00000014222136ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '이오시카 M1(엠원) 갈바닉 피부관리기 풀세트(고주파 EMS 쿨링)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/B00000014222130ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '이오시카 M1(엠원) 갈바닉 피부관리기 풀세트(고주파 EMS 쿨링)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/B00000014222131ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '이오시카 M1(엠원) 갈바닉 피부관리기 풀세트(고주파 EMS 쿨링)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/B00000014222132ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '이오시카 M1(엠원) 갈바닉 피부관리기 풀세트(고주파 EMS 쿨링)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/B00000014222135ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '이오시카 M1(엠원) 갈바닉 피부관리기 풀세트(고주파 EMS 쿨링)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/B00000014222138ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '이오시카 M1(엠원) 갈바닉 피부관리기 풀세트(고주파 EMS 쿨링)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '이오시카 M1(엠원) 갈바닉 피부관리기 풀세트(고주파 EMS 쿨링)';


-- ================================

-- 상품: [블랙헤드 모공케어] H2 수소 아쿠아 워터 필링기 JOC-H2...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[블랙헤드 모공케어] H2 수소 아쿠아 워터 필링기 JOC-H2',
 '[블랙헤드 모공케어] H2 수소 아쿠아 워터 필링기 JOC-H2',
 3.9,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '라피타'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[블랙헤드 모공케어] H2 수소 아쿠아 워터 필링기 JOC-H2'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(149000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[블랙헤드 모공케어] H2 수소 아쿠아 워터 필링기 JOC-H2'), NOW(), NOW()),
(109000, 'SALE', (SELECT id FROM product WHERE name = '[블랙헤드 모공케어] H2 수소 아쿠아 워터 필링기 JOC-H2'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/B00000014677124ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[블랙헤드 모공케어] H2 수소 아쿠아 워터 필링기 JOC-H2'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/B00000014677127ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[블랙헤드 모공케어] H2 수소 아쿠아 워터 필링기 JOC-H2'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/B00000014677126ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[블랙헤드 모공케어] H2 수소 아쿠아 워터 필링기 JOC-H2'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/B00000014677125ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[블랙헤드 모공케어] H2 수소 아쿠아 워터 필링기 JOC-H2'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[블랙헤드 모공케어] H2 수소 아쿠아 워터 필링기 JOC-H2';


-- ================================

-- 상품: [마사지기능] 포레오 루나 3 (4type) 진동클렌저/뷰티디바이스...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[마사지기능] 포레오 루나 3 (4type) 진동클렌저/뷰티디바이스',
 '[마사지기능] 포레오 루나 3 (4type) 진동클렌저/뷰티디바이스',
 4.7,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '포레오'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('일반 피부', 268200, (SELECT id FROM product WHERE name = '[마사지기능] 포레오 루나 3 (4type) 진동클렌저/뷰티디바이스'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('복합성 피부', 268200, (SELECT id FROM product WHERE name = '[마사지기능] 포레오 루나 3 (4type) 진동클렌저/뷰티디바이스'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('남성그루밍', 268200, (SELECT id FROM product WHERE name = '[마사지기능] 포레오 루나 3 (4type) 진동클렌저/뷰티디바이스'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(298000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[마사지기능] 포레오 루나 3 (4type) 진동클렌저/뷰티디바이스'), NOW(), NOW()),
(268200, 'SALE', (SELECT id FROM product WHERE name = '[마사지기능] 포레오 루나 3 (4type) 진동클렌저/뷰티디바이스'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/B00000017353919ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[마사지기능] 포레오 루나 3 (4type) 진동클렌저/뷰티디바이스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/B00000017353911ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[마사지기능] 포레오 루나 3 (4type) 진동클렌저/뷰티디바이스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/B00000017353906ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[마사지기능] 포레오 루나 3 (4type) 진동클렌저/뷰티디바이스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/B00000017353907ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[마사지기능] 포레오 루나 3 (4type) 진동클렌저/뷰티디바이스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/B00000017353909ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[마사지기능] 포레오 루나 3 (4type) 진동클렌저/뷰티디바이스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/B00000017353908ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[마사지기능] 포레오 루나 3 (4type) 진동클렌저/뷰티디바이스'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[마사지기능] 포레오 루나 3 (4type) 진동클렌저/뷰티디바이스';


-- ================================

-- 상품: [30초퀵클렌징모드] 포레오 루나 3 미니 (5color) 진동클렌저/뷰티디바이스...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[30초퀵클렌징모드] 포레오 루나 3 미니 (5color) 진동클렌저/뷰티디바이스',
 '[30초퀵클렌징모드] 포레오 루나 3 미니 (5color) 진동클렌저/뷰티디바이스',
 5.0,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '포레오'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('푸시아', 174400, (SELECT id FROM product WHERE name = '[30초퀵클렌징모드] 포레오 루나 3 미니 (5color) 진동클렌저/뷰티디바이스'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('썬플라워 옐로우', 174400, (SELECT id FROM product WHERE name = '[30초퀵클렌징모드] 포레오 루나 3 미니 (5color) 진동클렌저/뷰티디바이스'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('민트', 174400, (SELECT id FROM product WHERE name = '[30초퀵클렌징모드] 포레오 루나 3 미니 (5color) 진동클렌저/뷰티디바이스'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('펄 핑크', 174400, (SELECT id FROM product WHERE name = '[30초퀵클렌징모드] 포레오 루나 3 미니 (5color) 진동클렌저/뷰티디바이스'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('미드나잇', 174400, (SELECT id FROM product WHERE name = '[30초퀵클렌징모드] 포레오 루나 3 미니 (5color) 진동클렌저/뷰티디바이스'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(218000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[30초퀵클렌징모드] 포레오 루나 3 미니 (5color) 진동클렌저/뷰티디바이스'), NOW(), NOW()),
(174400, 'SALE', (SELECT id FROM product WHERE name = '[30초퀵클렌징모드] 포레오 루나 3 미니 (5color) 진동클렌저/뷰티디바이스'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/B00000017354123ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[30초퀵클렌징모드] 포레오 루나 3 미니 (5color) 진동클렌저/뷰티디바이스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/B00000017354117ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[30초퀵클렌징모드] 포레오 루나 3 미니 (5color) 진동클렌저/뷰티디바이스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/B00000017354119ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[30초퀵클렌징모드] 포레오 루나 3 미니 (5color) 진동클렌저/뷰티디바이스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/B00000017354118ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[30초퀵클렌징모드] 포레오 루나 3 미니 (5color) 진동클렌저/뷰티디바이스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/B00000017354116ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[30초퀵클렌징모드] 포레오 루나 3 미니 (5color) 진동클렌저/뷰티디바이스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/B00000017354115ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[30초퀵클렌징모드] 포레오 루나 3 미니 (5color) 진동클렌저/뷰티디바이스'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[30초퀵클렌징모드] 포레오 루나 3 미니 (5color) 진동클렌저/뷰티디바이스';


-- ================================

-- 상품: [LED마사지/부모님선물] 포레오 루나 4 플러스 (2type) 진동클렌저/뷰티디바이스...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[LED마사지/부모님선물] 포레오 루나 4 플러스 (2type) 진동클렌저/뷰티디바이스',
 '[LED마사지/부모님선물] 포레오 루나 4 플러스 (2type) 진동클렌저/뷰티디바이스',
 0.0,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '포레오'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('민감성 피부', 489300, (SELECT id FROM product WHERE name = '[LED마사지/부모님선물] 포레오 루나 4 플러스 (2type) 진동클렌저/뷰티디바이스'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('일반 피부', 489300, (SELECT id FROM product WHERE name = '[LED마사지/부모님선물] 포레오 루나 4 플러스 (2type) 진동클렌저/뷰티디바이스'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(699000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[LED마사지/부모님선물] 포레오 루나 4 플러스 (2type) 진동클렌저/뷰티디바이스'), NOW(), NOW()),
(489300, 'SALE', (SELECT id FROM product WHERE name = '[LED마사지/부모님선물] 포레오 루나 4 플러스 (2type) 진동클렌저/뷰티디바이스'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/B00000018036706ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[LED마사지/부모님선물] 포레오 루나 4 플러스 (2type) 진동클렌저/뷰티디바이스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/B00000018036701ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[LED마사지/부모님선물] 포레오 루나 4 플러스 (2type) 진동클렌저/뷰티디바이스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/B00000018036705ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[LED마사지/부모님선물] 포레오 루나 4 플러스 (2type) 진동클렌저/뷰티디바이스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/B00000018036703ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[LED마사지/부모님선물] 포레오 루나 4 플러스 (2type) 진동클렌저/뷰티디바이스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/B00000018036702ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[LED마사지/부모님선물] 포레오 루나 4 플러스 (2type) 진동클렌저/뷰티디바이스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/B00000018036709ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[LED마사지/부모님선물] 포레오 루나 4 플러스 (2type) 진동클렌저/뷰티디바이스'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[LED마사지/부모님선물] 포레오 루나 4 플러스 (2type) 진동클렌저/뷰티디바이스';


-- ================================

-- 상품: [베스트/예민피부추천] 포레오 루나 4 (4type) 진동클렌저/뷰티디바이스...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[베스트/예민피부추천] 포레오 루나 4 (4type) 진동클렌저/뷰티디바이스',
 '[베스트/예민피부추천] 포레오 루나 4 (4type) 진동클렌저/뷰티디바이스',
 5.0,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '포레오'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('민감성 피부', 295800, (SELECT id FROM product WHERE name = '[베스트/예민피부추천] 포레오 루나 4 (4type) 진동클렌저/뷰티디바이스'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('일반 피부', 295800, (SELECT id FROM product WHERE name = '[베스트/예민피부추천] 포레오 루나 4 (4type) 진동클렌저/뷰티디바이스'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('복합성 피부', 295800, (SELECT id FROM product WHERE name = '[베스트/예민피부추천] 포레오 루나 4 (4type) 진동클렌저/뷰티디바이스'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('남성그루밍', 295800, (SELECT id FROM product WHERE name = '[베스트/예민피부추천] 포레오 루나 4 (4type) 진동클렌저/뷰티디바이스'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(348000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[베스트/예민피부추천] 포레오 루나 4 (4type) 진동클렌저/뷰티디바이스'), NOW(), NOW()),
(295800, 'SALE', (SELECT id FROM product WHERE name = '[베스트/예민피부추천] 포레오 루나 4 (4type) 진동클렌저/뷰티디바이스'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/B00000018037210ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[베스트/예민피부추천] 포레오 루나 4 (4type) 진동클렌저/뷰티디바이스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/B00000018037201ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[베스트/예민피부추천] 포레오 루나 4 (4type) 진동클렌저/뷰티디바이스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/B00000018037203ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[베스트/예민피부추천] 포레오 루나 4 (4type) 진동클렌저/뷰티디바이스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/B00000018037204ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[베스트/예민피부추천] 포레오 루나 4 (4type) 진동클렌저/뷰티디바이스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/B00000018037205ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[베스트/예민피부추천] 포레오 루나 4 (4type) 진동클렌저/뷰티디바이스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/B00000018037202ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[베스트/예민피부추천] 포레오 루나 4 (4type) 진동클렌저/뷰티디바이스'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[베스트/예민피부추천] 포레오 루나 4 (4type) 진동클렌저/뷰티디바이스';


-- ================================

-- 상품: [양면브러쉬] 포레오 루나 4 미니 (4color) 진동클렌저/뷰티디바이스...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[양면브러쉬] 포레오 루나 4 미니 (4color) 진동클렌저/뷰티디바이스',
 '[양면브러쉬] 포레오 루나 4 미니 (4color) 진동클렌저/뷰티디바이스',
 0.0,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '포레오'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('펄 핑크', 218700, (SELECT id FROM product WHERE name = '[양면브러쉬] 포레오 루나 4 미니 (4color) 진동클렌저/뷰티디바이스'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('아틱 블루', 218700, (SELECT id FROM product WHERE name = '[양면브러쉬] 포레오 루나 4 미니 (4color) 진동클렌저/뷰티디바이스'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('코랄', 218700, (SELECT id FROM product WHERE name = '[양면브러쉬] 포레오 루나 4 미니 (4color) 진동클렌저/뷰티디바이스'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('라벤더', 0, (SELECT id FROM product WHERE name = '[양면브러쉬] 포레오 루나 4 미니 (4color) 진동클렌저/뷰티디바이스'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(243000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[양면브러쉬] 포레오 루나 4 미니 (4color) 진동클렌저/뷰티디바이스'), NOW(), NOW()),
(218700, 'SALE', (SELECT id FROM product WHERE name = '[양면브러쉬] 포레오 루나 4 미니 (4color) 진동클렌저/뷰티디바이스'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/B00000018037408ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[양면브러쉬] 포레오 루나 4 미니 (4color) 진동클렌저/뷰티디바이스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/B00000018037401ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[양면브러쉬] 포레오 루나 4 미니 (4color) 진동클렌저/뷰티디바이스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/B00000018037407ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[양면브러쉬] 포레오 루나 4 미니 (4color) 진동클렌저/뷰티디바이스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/B00000018037405ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[양면브러쉬] 포레오 루나 4 미니 (4color) 진동클렌저/뷰티디바이스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/B00000018037404ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[양면브러쉬] 포레오 루나 4 미니 (4color) 진동클렌저/뷰티디바이스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/B00000018037403ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[양면브러쉬] 포레오 루나 4 미니 (4color) 진동클렌저/뷰티디바이스'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[양면브러쉬] 포레오 루나 4 미니 (4color) 진동클렌저/뷰티디바이스';


-- ================================

-- 상품: [베스트] 포레오 루나 4 고 (4color) 진동클렌저/뷰티디바이스...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[베스트] 포레오 루나 4 고 (4color) 진동클렌저/뷰티디바이스',
 '[베스트] 포레오 루나 4 고 (4color) 진동클렌저/뷰티디바이스',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '포레오'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('2. 피치', 147900, (SELECT id FROM product WHERE name = '[베스트] 포레오 루나 4 고 (4color) 진동클렌저/뷰티디바이스'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('4. 에버그린', 147900, (SELECT id FROM product WHERE name = '[베스트] 포레오 루나 4 고 (4color) 진동클렌저/뷰티디바이스'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('1. 라벤더', 0, (SELECT id FROM product WHERE name = '[베스트] 포레오 루나 4 고 (4color) 진동클렌저/뷰티디바이스'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('3. 피스타치오', 0, (SELECT id FROM product WHERE name = '[베스트] 포레오 루나 4 고 (4color) 진동클렌저/뷰티디바이스'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(174000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[베스트] 포레오 루나 4 고 (4color) 진동클렌저/뷰티디바이스'), NOW(), NOW()),
(147900, 'SALE', (SELECT id FROM product WHERE name = '[베스트] 포레오 루나 4 고 (4color) 진동클렌저/뷰티디바이스'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/B00000018037609ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[베스트] 포레오 루나 4 고 (4color) 진동클렌저/뷰티디바이스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/B00000018037601ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[베스트] 포레오 루나 4 고 (4color) 진동클렌저/뷰티디바이스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/B00000018037603ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[베스트] 포레오 루나 4 고 (4color) 진동클렌저/뷰티디바이스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/B00000018037604ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[베스트] 포레오 루나 4 고 (4color) 진동클렌저/뷰티디바이스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/B00000018037602ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[베스트] 포레오 루나 4 고 (4color) 진동클렌저/뷰티디바이스'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/B00000018037612ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[베스트] 포레오 루나 4 고 (4color) 진동클렌저/뷰티디바이스'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[베스트] 포레오 루나 4 고 (4color) 진동클렌저/뷰티디바이스';


-- ================================

-- 상품: [한정기획] 센텔리안24 마데카 프라임 탱글 샷 (흡수 탄력 2in1 뷰티 디바이스)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[한정기획] 센텔리안24 마데카 프라임 탱글 샷 (흡수 탄력 2in1 뷰티 디바이스)',
 '[한정기획] 센텔리안24 마데카 프라임 탱글 샷 (흡수 탄력 2in1 뷰티 디바이스)',
 4.3,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '센텔리안24'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('마데카 프라임 탱글 샷', 199000, (SELECT id FROM product WHERE name = '[한정기획] 센텔리안24 마데카 프라임 탱글 샷 (흡수 탄력 2in1 뷰티 디바이스)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(309000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[한정기획] 센텔리안24 마데카 프라임 탱글 샷 (흡수 탄력 2in1 뷰티 디바이스)'), NOW(), NOW()),
(199000, 'SALE', (SELECT id FROM product WHERE name = '[한정기획] 센텔리안24 마데카 프라임 탱글 샷 (흡수 탄력 2in1 뷰티 디바이스)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/B00000019183501ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[한정기획] 센텔리안24 마데카 프라임 탱글 샷 (흡수 탄력 2in1 뷰티 디바이스)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/B00000019183513ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[한정기획] 센텔리안24 마데카 프라임 탱글 샷 (흡수 탄력 2in1 뷰티 디바이스)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/B00000019183514ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[한정기획] 센텔리안24 마데카 프라임 탱글 샷 (흡수 탄력 2in1 뷰티 디바이스)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[한정기획] 센텔리안24 마데카 프라임 탱글 샷 (흡수 탄력 2in1 뷰티 디바이스)';


-- ================================

-- 상품: [장다아PICK/베스트] 게스케 산리오 헬로키티 소닉 페이셜 브러시 4 in 1 (스타라이...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[장다아PICK/베스트] 게스케 산리오 헬로키티 소닉 페이셜 브러시 4 in 1 (스타라이트)',
 '[장다아PICK/베스트] 게스케 산리오 헬로키티 소닉 페이셜 브러시 4 in 1 (스타라이트)',
 4.9,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '게스케'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('스타라이트', 80100, (SELECT id FROM product WHERE name = '[장다아PICK/베스트] 게스케 산리오 헬로키티 소닉 페이셜 브러시 4 in 1 (스타라이트)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(89000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[장다아PICK/베스트] 게스케 산리오 헬로키티 소닉 페이셜 브러시 4 in 1 (스타라이트)'), NOW(), NOW()),
(80100, 'SALE', (SELECT id FROM product WHERE name = '[장다아PICK/베스트] 게스케 산리오 헬로키티 소닉 페이셜 브러시 4 in 1 (스타라이트)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/B00000019187215ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[장다아PICK/베스트] 게스케 산리오 헬로키티 소닉 페이셜 브러시 4 in 1 (스타라이트)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/B00000019187214ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[장다아PICK/베스트] 게스케 산리오 헬로키티 소닉 페이셜 브러시 4 in 1 (스타라이트)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/B00000019187212ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[장다아PICK/베스트] 게스케 산리오 헬로키티 소닉 페이셜 브러시 4 in 1 (스타라이트)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/B00000019187203ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[장다아PICK/베스트] 게스케 산리오 헬로키티 소닉 페이셜 브러시 4 in 1 (스타라이트)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[장다아PICK/베스트] 게스케 산리오 헬로키티 소닉 페이셜 브러시 4 in 1 (스타라이트)';


-- ================================

-- 상품: [눈가주름관리] 게스케 산리오 헬로키티 마이크로커런트 페이스-리프트 펜 6 in 1...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[눈가주름관리] 게스케 산리오 헬로키티 마이크로커런트 페이스-리프트 펜 6 in 1',
 '[눈가주름관리] 게스케 산리오 헬로키티 마이크로커런트 페이스-리프트 펜 6 in 1',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '게스케'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('핑크', 88200, (SELECT id FROM product WHERE name = '[눈가주름관리] 게스케 산리오 헬로키티 마이크로커런트 페이스-리프트 펜 6 in 1'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('퍼플', 0, (SELECT id FROM product WHERE name = '[눈가주름관리] 게스케 산리오 헬로키티 마이크로커런트 페이스-리프트 펜 6 in 1'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(98000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[눈가주름관리] 게스케 산리오 헬로키티 마이크로커런트 페이스-리프트 펜 6 in 1'), NOW(), NOW()),
(88200, 'SALE', (SELECT id FROM product WHERE name = '[눈가주름관리] 게스케 산리오 헬로키티 마이크로커런트 페이스-리프트 펜 6 in 1'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/B00000019187922ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[눈가주름관리] 게스케 산리오 헬로키티 마이크로커런트 페이스-리프트 펜 6 in 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/B00000019187921ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[눈가주름관리] 게스케 산리오 헬로키티 마이크로커런트 페이스-리프트 펜 6 in 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/B00000019187920ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[눈가주름관리] 게스케 산리오 헬로키티 마이크로커런트 페이스-리프트 펜 6 in 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/B00000019187913ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[눈가주름관리] 게스케 산리오 헬로키티 마이크로커런트 페이스-리프트 펜 6 in 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/B00000019187910ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[눈가주름관리] 게스케 산리오 헬로키티 마이크로커런트 페이스-리프트 펜 6 in 1'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[눈가주름관리] 게스케 산리오 헬로키티 마이크로커런트 페이스-리프트 펜 6 in 1';


-- ================================

-- 상품: [장다아PICK/온열진동] 게스케 소닉 써모 페이셜 브러시 6 in 1...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[장다아PICK/온열진동] 게스케 소닉 써모 페이셜 브러시 6 in 1',
 '[장다아PICK/온열진동] 게스케 소닉 써모 페이셜 브러시 6 in 1',
 5.0,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '게스케'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('블랙', 84150, (SELECT id FROM product WHERE name = '[장다아PICK/온열진동] 게스케 소닉 써모 페이셜 브러시 6 in 1'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('마젠타', 84150, (SELECT id FROM product WHERE name = '[장다아PICK/온열진동] 게스케 소닉 써모 페이셜 브러시 6 in 1'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('터콰이즈', 0, (SELECT id FROM product WHERE name = '[장다아PICK/온열진동] 게스케 소닉 써모 페이셜 브러시 6 in 1'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('핑크', 0, (SELECT id FROM product WHERE name = '[장다아PICK/온열진동] 게스케 소닉 써모 페이셜 브러시 6 in 1'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('화이트', 0, (SELECT id FROM product WHERE name = '[장다아PICK/온열진동] 게스케 소닉 써모 페이셜 브러시 6 in 1'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(99000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[장다아PICK/온열진동] 게스케 소닉 써모 페이셜 브러시 6 in 1'), NOW(), NOW()),
(84150, 'SALE', (SELECT id FROM product WHERE name = '[장다아PICK/온열진동] 게스케 소닉 써모 페이셜 브러시 6 in 1'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/B00000019188218ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[장다아PICK/온열진동] 게스케 소닉 써모 페이셜 브러시 6 in 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/B00000019188217ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[장다아PICK/온열진동] 게스케 소닉 써모 페이셜 브러시 6 in 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/B00000019188215ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[장다아PICK/온열진동] 게스케 소닉 써모 페이셜 브러시 6 in 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/B00000019188207ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[장다아PICK/온열진동] 게스케 소닉 써모 페이셜 브러시 6 in 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/B00000019188206ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[장다아PICK/온열진동] 게스케 소닉 써모 페이셜 브러시 6 in 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/B00000019188205ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[장다아PICK/온열진동] 게스케 소닉 써모 페이셜 브러시 6 in 1'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[장다아PICK/온열진동] 게스케 소닉 써모 페이셜 브러시 6 in 1';


-- ================================

-- 상품: [장다아PICK/진동클렌저] 게스케 소닉 페이셜 브러시 5 in 1...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[장다아PICK/진동클렌저] 게스케 소닉 페이셜 브러시 5 in 1',
 '[장다아PICK/진동클렌저] 게스케 소닉 페이셜 브러시 5 in 1',
 4.8,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '게스케'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('그린', 53100, (SELECT id FROM product WHERE name = '[장다아PICK/진동클렌저] 게스케 소닉 페이셜 브러시 5 in 1'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('스타라이트', 53100, (SELECT id FROM product WHERE name = '[장다아PICK/진동클렌저] 게스케 소닉 페이셜 브러시 5 in 1'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('마젠타', 0, (SELECT id FROM product WHERE name = '[장다아PICK/진동클렌저] 게스케 소닉 페이셜 브러시 5 in 1'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('그레이', 0, (SELECT id FROM product WHERE name = '[장다아PICK/진동클렌저] 게스케 소닉 페이셜 브러시 5 in 1'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('아쿠아마린', 0, (SELECT id FROM product WHERE name = '[장다아PICK/진동클렌저] 게스케 소닉 페이셜 브러시 5 in 1'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(59000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[장다아PICK/진동클렌저] 게스케 소닉 페이셜 브러시 5 in 1'), NOW(), NOW()),
(53100, 'SALE', (SELECT id FROM product WHERE name = '[장다아PICK/진동클렌저] 게스케 소닉 페이셜 브러시 5 in 1'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/B00000019188317ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[장다아PICK/진동클렌저] 게스케 소닉 페이셜 브러시 5 in 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/B00000019188316ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[장다아PICK/진동클렌저] 게스케 소닉 페이셜 브러시 5 in 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/B00000019188315ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[장다아PICK/진동클렌저] 게스케 소닉 페이셜 브러시 5 in 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/B00000019188307ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[장다아PICK/진동클렌저] 게스케 소닉 페이셜 브러시 5 in 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/B00000019188306ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[장다아PICK/진동클렌저] 게스케 소닉 페이셜 브러시 5 in 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/B00000019188305ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[장다아PICK/진동클렌저] 게스케 소닉 페이셜 브러시 5 in 1'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[장다아PICK/진동클렌저] 게스케 소닉 페이셜 브러시 5 in 1';


-- ================================

-- 상품: [안은진pick] 센텔리안24 마데카 프라임 인피니티 1000샷 HIFU (흡수+초음파 뷰...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[안은진pick] 센텔리안24 마데카 프라임 인피니티 1000샷 HIFU (흡수+초음파 뷰티 디바이스)',
 '[안은진pick] 센텔리안24 마데카 프라임 인피니티 1000샷 HIFU (흡수+초음파 뷰티 디바이스)',
 0.0,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '센텔리안24'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[안은진pick] 센텔리안24 마데카 프라임 인피니티 1000샷 HIFU (흡수+초음파 뷰티 디바이스)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(609000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[안은진pick] 센텔리안24 마데카 프라임 인피니티 1000샷 HIFU (흡수+초음파 뷰티 디바이스)'), NOW(), NOW()),
(609000, 'SALE', (SELECT id FROM product WHERE name = '[안은진pick] 센텔리안24 마데카 프라임 인피니티 1000샷 HIFU (흡수+초음파 뷰티 디바이스)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/B00000020374809ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[안은진pick] 센텔리안24 마데카 프라임 인피니티 1000샷 HIFU (흡수+초음파 뷰티 디바이스)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/B00000020374803ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[안은진pick] 센텔리안24 마데카 프라임 인피니티 1000샷 HIFU (흡수+초음파 뷰티 디바이스)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/B00000020374802ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[안은진pick] 센텔리안24 마데카 프라임 인피니티 1000샷 HIFU (흡수+초음파 뷰티 디바이스)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/B00000020374806ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[안은진pick] 센텔리안24 마데카 프라임 인피니티 1000샷 HIFU (흡수+초음파 뷰티 디바이스)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[안은진pick] 센텔리안24 마데카 프라임 인피니티 1000샷 HIFU (흡수+초음파 뷰티 디바이스)';


-- ================================

-- 상품: [윤곽관리] 게스케 소닉 페이셜 롤러 4 in 1...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[윤곽관리] 게스케 소닉 페이셜 롤러 4 in 1',
 '[윤곽관리] 게스케 소닉 페이셜 롤러 4 in 1',
 4.0,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '게스케'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('그레이', 70200, (SELECT id FROM product WHERE name = '[윤곽관리] 게스케 소닉 페이셜 롤러 4 in 1'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('핑크', 70200, (SELECT id FROM product WHERE name = '[윤곽관리] 게스케 소닉 페이셜 롤러 4 in 1'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('마젠타', 70200, (SELECT id FROM product WHERE name = '[윤곽관리] 게스케 소닉 페이셜 롤러 4 in 1'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(78000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[윤곽관리] 게스케 소닉 페이셜 롤러 4 in 1'), NOW(), NOW()),
(70200, 'SALE', (SELECT id FROM product WHERE name = '[윤곽관리] 게스케 소닉 페이셜 롤러 4 in 1'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/B00000020584109ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[윤곽관리] 게스케 소닉 페이셜 롤러 4 in 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/B00000020584108ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[윤곽관리] 게스케 소닉 페이셜 롤러 4 in 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/B00000020584107ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[윤곽관리] 게스케 소닉 페이셜 롤러 4 in 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/B00000020584103ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[윤곽관리] 게스케 소닉 페이셜 롤러 4 in 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/B00000020584102ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[윤곽관리] 게스케 소닉 페이셜 롤러 4 in 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/B00000020584101ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[윤곽관리] 게스케 소닉 페이셜 롤러 4 in 1'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[윤곽관리] 게스케 소닉 페이셜 롤러 4 in 1';


-- ================================

-- 상품: [장다아PICK] 게스케 산리오 헬로키티 소닉 페이셜 브러시 4 in 1 (솔리드) / 진...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[장다아PICK] 게스케 산리오 헬로키티 소닉 페이셜 브러시 4 in 1 (솔리드) / 진동클렌저',
 '[장다아PICK] 게스케 산리오 헬로키티 소닉 페이셜 브러시 4 in 1 (솔리드) / 진동클렌저',
 5.0,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '게스케'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[장다아PICK] 게스케 산리오 헬로키티 소닉 페이셜 브러시 4 in 1 (솔리드) / 진동클렌저'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(79000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[장다아PICK] 게스케 산리오 헬로키티 소닉 페이셜 브러시 4 in 1 (솔리드) / 진동클렌저'), NOW(), NOW()),
(67150, 'SALE', (SELECT id FROM product WHERE name = '[장다아PICK] 게스케 산리오 헬로키티 소닉 페이셜 브러시 4 in 1 (솔리드) / 진동클렌저'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/B00000020584209ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[장다아PICK] 게스케 산리오 헬로키티 소닉 페이셜 브러시 4 in 1 (솔리드) / 진동클렌저'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/B00000020584208ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[장다아PICK] 게스케 산리오 헬로키티 소닉 페이셜 브러시 4 in 1 (솔리드) / 진동클렌저'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/B00000020584206ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[장다아PICK] 게스케 산리오 헬로키티 소닉 페이셜 브러시 4 in 1 (솔리드) / 진동클렌저'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/B00000020584202ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[장다아PICK] 게스케 산리오 헬로키티 소닉 페이셜 브러시 4 in 1 (솔리드) / 진동클렌저'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/B00000020584201ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[장다아PICK] 게스케 산리오 헬로키티 소닉 페이셜 브러시 4 in 1 (솔리드) / 진동클렌저'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[장다아PICK] 게스케 산리오 헬로키티 소닉 페이셜 브러시 4 in 1 (솔리드) / 진동클렌저';


-- ================================

-- 상품: [장다아PICK] 게스케 산리오 헬로키티 소닉 웜&쿨 마스크 8 in 1 (스타라이트)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[장다아PICK] 게스케 산리오 헬로키티 소닉 웜&쿨 마스크 8 in 1 (스타라이트)',
 '[장다아PICK] 게스케 산리오 헬로키티 소닉 웜&쿨 마스크 8 in 1 (스타라이트)',
 4.0,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '게스케'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[장다아PICK] 게스케 산리오 헬로키티 소닉 웜&쿨 마스크 8 in 1 (스타라이트)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(179000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[장다아PICK] 게스케 산리오 헬로키티 소닉 웜&쿨 마스크 8 in 1 (스타라이트)'), NOW(), NOW()),
(161100, 'SALE', (SELECT id FROM product WHERE name = '[장다아PICK] 게스케 산리오 헬로키티 소닉 웜&쿨 마스크 8 in 1 (스타라이트)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/B00000020584309ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[장다아PICK] 게스케 산리오 헬로키티 소닉 웜&쿨 마스크 8 in 1 (스타라이트)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/B00000020584308ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[장다아PICK] 게스케 산리오 헬로키티 소닉 웜&쿨 마스크 8 in 1 (스타라이트)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/B00000020584306ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[장다아PICK] 게스케 산리오 헬로키티 소닉 웜&쿨 마스크 8 in 1 (스타라이트)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/B00000020584301ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[장다아PICK] 게스케 산리오 헬로키티 소닉 웜&쿨 마스크 8 in 1 (스타라이트)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[장다아PICK] 게스케 산리오 헬로키티 소닉 웜&쿨 마스크 8 in 1 (스타라이트)';


-- ================================

-- 상품: [피지제거] 게스케 산리오 헬로키티 마이크로커런트 스킨 스크러버 & 블랙헤드 리무버 9 i...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[피지제거] 게스케 산리오 헬로키티 마이크로커런트 스킨 스크러버 & 블랙헤드 리무버 9 in 1',
 '[피지제거] 게스케 산리오 헬로키티 마이크로커런트 스킨 스크러버 & 블랙헤드 리무버 9 in 1',
 0.0,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '게스케'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[피지제거] 게스케 산리오 헬로키티 마이크로커런트 스킨 스크러버 & 블랙헤드 리무버 9 in 1'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(140000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[피지제거] 게스케 산리오 헬로키티 마이크로커런트 스킨 스크러버 & 블랙헤드 리무버 9 in 1'), NOW(), NOW()),
(126000, 'SALE', (SELECT id FROM product WHERE name = '[피지제거] 게스케 산리오 헬로키티 마이크로커런트 스킨 스크러버 & 블랙헤드 리무버 9 in 1'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/B00000020584709ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[피지제거] 게스케 산리오 헬로키티 마이크로커런트 스킨 스크러버 & 블랙헤드 리무버 9 in 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/B00000020584708ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[피지제거] 게스케 산리오 헬로키티 마이크로커런트 스킨 스크러버 & 블랙헤드 리무버 9 in 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/B00000020584707ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[피지제거] 게스케 산리오 헬로키티 마이크로커런트 스킨 스크러버 & 블랙헤드 리무버 9 in 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/B00000020584706ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[피지제거] 게스케 산리오 헬로키티 마이크로커런트 스킨 스크러버 & 블랙헤드 리무버 9 in 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/B00000020584702ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[피지제거] 게스케 산리오 헬로키티 마이크로커런트 스킨 스크러버 & 블랙헤드 리무버 9 in 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/B00000020584701ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '[피지제거] 게스케 산리오 헬로키티 마이크로커런트 스킨 스크러버 & 블랙헤드 리무버 9 in 1'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[피지제거] 게스케 산리오 헬로키티 마이크로커런트 스킨 스크러버 & 블랙헤드 리무버 9 in 1';


-- ================================

-- 상품: [쿨링/붓기제거] 게스케 산리오 헬로키티 웜&쿨 아이 에너자이저 6 in 1...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[쿨링/붓기제거] 게스케 산리오 헬로키티 웜&쿨 아이 에너자이저 6 in 1',
 '[쿨링/붓기제거] 게스케 산리오 헬로키티 웜&쿨 아이 에너자이저 6 in 1',
 0.0,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '게스케'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[쿨링/붓기제거] 게스케 산리오 헬로키티 웜&쿨 아이 에너자이저 6 in 1'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(155000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[쿨링/붓기제거] 게스케 산리오 헬로키티 웜&쿨 아이 에너자이저 6 in 1'), NOW(), NOW()),
(139500, 'SALE', (SELECT id FROM product WHERE name = '[쿨링/붓기제거] 게스케 산리오 헬로키티 웜&쿨 아이 에너자이저 6 in 1'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/B00000020584808ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[쿨링/붓기제거] 게스케 산리오 헬로키티 웜&쿨 아이 에너자이저 6 in 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/B00000020584807ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[쿨링/붓기제거] 게스케 산리오 헬로키티 웜&쿨 아이 에너자이저 6 in 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/B00000020584806ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[쿨링/붓기제거] 게스케 산리오 헬로키티 웜&쿨 아이 에너자이저 6 in 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/B00000020584802ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[쿨링/붓기제거] 게스케 산리오 헬로키티 웜&쿨 아이 에너자이저 6 in 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/B00000020584801ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[쿨링/붓기제거] 게스케 산리오 헬로키티 웜&쿨 아이 에너자이저 6 in 1'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[쿨링/붓기제거] 게스케 산리오 헬로키티 웜&쿨 아이 에너자이저 6 in 1';


-- ================================

-- 상품: [장다아PICK] 게스케 산리오 헬로키티 페이셜 하이드레이션 리프레셔 4 in 1...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[장다아PICK] 게스케 산리오 헬로키티 페이셜 하이드레이션 리프레셔 4 in 1',
 '[장다아PICK] 게스케 산리오 헬로키티 페이셜 하이드레이션 리프레셔 4 in 1',
 4.0,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '게스케'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[장다아PICK] 게스케 산리오 헬로키티 페이셜 하이드레이션 리프레셔 4 in 1'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(89000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[장다아PICK] 게스케 산리오 헬로키티 페이셜 하이드레이션 리프레셔 4 in 1'), NOW(), NOW()),
(80100, 'SALE', (SELECT id FROM product WHERE name = '[장다아PICK] 게스케 산리오 헬로키티 페이셜 하이드레이션 리프레셔 4 in 1'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/B00000020884007ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[장다아PICK] 게스케 산리오 헬로키티 페이셜 하이드레이션 리프레셔 4 in 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/B00000020884006ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[장다아PICK] 게스케 산리오 헬로키티 페이셜 하이드레이션 리프레셔 4 in 1'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/B00000020884005ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[장다아PICK] 게스케 산리오 헬로키티 페이셜 하이드레이션 리프레셔 4 in 1'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[장다아PICK] 게스케 산리오 헬로키티 페이셜 하이드레이션 리프레셔 4 in 1';


-- ================================

-- 상품: 닥터탱글 고주파 뷰티 디바이스 (탄력, 수분, 볼륨, 모공개선)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('닥터탱글 고주파 뷰티 디바이스 (탄력, 수분, 볼륨, 모공개선)',
 '닥터탱글 고주파 뷰티 디바이스 (탄력, 수분, 볼륨, 모공개선)',
 4.7,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터탱글'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '닥터탱글 고주파 뷰티 디바이스 (탄력, 수분, 볼륨, 모공개선)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(289000, 'ORIGINAL', (SELECT id FROM product WHERE name = '닥터탱글 고주파 뷰티 디바이스 (탄력, 수분, 볼륨, 모공개선)'), NOW(), NOW()),
(289000, 'SALE', (SELECT id FROM product WHERE name = '닥터탱글 고주파 뷰티 디바이스 (탄력, 수분, 볼륨, 모공개선)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/B00000020998535ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '닥터탱글 고주파 뷰티 디바이스 (탄력, 수분, 볼륨, 모공개선)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/B00000020998521ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '닥터탱글 고주파 뷰티 디바이스 (탄력, 수분, 볼륨, 모공개선)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '닥터탱글 고주파 뷰티 디바이스 (탄력, 수분, 볼륨, 모공개선)';


-- ================================

-- 상품: 닥터탱글 고주파 마사지기 블랙 에디션...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('닥터탱글 고주파 마사지기 블랙 에디션',
 '닥터탱글 고주파 마사지기 블랙 에디션',
 4.7,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터탱글'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '닥터탱글 고주파 마사지기 블랙 에디션'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(498000, 'ORIGINAL', (SELECT id FROM product WHERE name = '닥터탱글 고주파 마사지기 블랙 에디션'), NOW(), NOW()),
(498000, 'SALE', (SELECT id FROM product WHERE name = '닥터탱글 고주파 마사지기 블랙 에디션'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/B00000021759920ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '닥터탱글 고주파 마사지기 블랙 에디션'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/B00000021759919ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '닥터탱글 고주파 마사지기 블랙 에디션'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/B00000021759916ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '닥터탱글 고주파 마사지기 블랙 에디션'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '닥터탱글 고주파 마사지기 블랙 에디션';


-- ================================

-- 상품: 센텔리안24 마데카 프라임 리추얼 화이트 펄 (고주파 물광 괄사 디바이스)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('센텔리안24 마데카 프라임 리추얼 화이트 펄 (고주파 물광 괄사 디바이스)',
 '센텔리안24 마데카 프라임 리추얼 화이트 펄 (고주파 물광 괄사 디바이스)',
 5.0,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '센텔리안24'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '센텔리안24 마데카 프라임 리추얼 화이트 펄 (고주파 물광 괄사 디바이스)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(349000, 'ORIGINAL', (SELECT id FROM product WHERE name = '센텔리안24 마데카 프라임 리추얼 화이트 펄 (고주파 물광 괄사 디바이스)'), NOW(), NOW()),
(169000, 'SALE', (SELECT id FROM product WHERE name = '센텔리안24 마데카 프라임 리추얼 화이트 펄 (고주파 물광 괄사 디바이스)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/B00000022329501ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '센텔리안24 마데카 프라임 리추얼 화이트 펄 (고주파 물광 괄사 디바이스)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/B00000022329504ko.jpeg?l=ko', 2, (SELECT id FROM product WHERE name = '센텔리안24 마데카 프라임 리추얼 화이트 펄 (고주파 물광 괄사 디바이스)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/B00000022329502ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '센텔리안24 마데카 프라임 리추얼 화이트 펄 (고주파 물광 괄사 디바이스)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '센텔리안24 마데카 프라임 리추얼 화이트 펄 (고주파 물광 괄사 디바이스)';


-- ================================

-- 상품: [미국1위/뷰티디바이스] 누페이스 미니 플러스 (3color)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[미국1위/뷰티디바이스] 누페이스 미니 플러스 (3color)',
 '[미국1위/뷰티디바이스] 누페이스 미니 플러스 (3color)',
 5.0,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '누페이스'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('1. 샌디로즈', 278600, (SELECT id FROM product WHERE name = '[미국1위/뷰티디바이스] 누페이스 미니 플러스 (3color)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('2. 바이올렛더스크', 278600, (SELECT id FROM product WHERE name = '[미국1위/뷰티디바이스] 누페이스 미니 플러스 (3color)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('3. 미드나잇블랙', 278600, (SELECT id FROM product WHERE name = '[미국1위/뷰티디바이스] 누페이스 미니 플러스 (3color)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(398000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[미국1위/뷰티디바이스] 누페이스 미니 플러스 (3color)'), NOW(), NOW()),
(278600, 'SALE', (SELECT id FROM product WHERE name = '[미국1위/뷰티디바이스] 누페이스 미니 플러스 (3color)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/B00000022572601ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[미국1위/뷰티디바이스] 누페이스 미니 플러스 (3color)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/B00000022572605ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[미국1위/뷰티디바이스] 누페이스 미니 플러스 (3color)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/B00000022572604ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[미국1위/뷰티디바이스] 누페이스 미니 플러스 (3color)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/B00000022572603ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[미국1위/뷰티디바이스] 누페이스 미니 플러스 (3color)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/B00000022572602ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[미국1위/뷰티디바이스] 누페이스 미니 플러스 (3color)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[미국1위/뷰티디바이스] 누페이스 미니 플러스 (3color)';


-- ================================

-- 상품: [안은진pick] 센텔리안24 마데카 프라임 (브라이트닝, 흡수, 탄력 뷰티 디바이스)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[안은진pick] 센텔리안24 마데카 프라임 (브라이트닝, 흡수, 탄력 뷰티 디바이스)',
 '[안은진pick] 센텔리안24 마데카 프라임 (브라이트닝, 흡수, 탄력 뷰티 디바이스)',
 4.4,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '센텔리안24'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[안은진pick] 센텔리안24 마데카 프라임 (브라이트닝, 흡수, 탄력 뷰티 디바이스)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(309000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[안은진pick] 센텔리안24 마데카 프라임 (브라이트닝, 흡수, 탄력 뷰티 디바이스)'), NOW(), NOW()),
(223200, 'SALE', (SELECT id FROM product WHERE name = '[안은진pick] 센텔리안24 마데카 프라임 (브라이트닝, 흡수, 탄력 뷰티 디바이스)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/B00000022707401ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[안은진pick] 센텔리안24 마데카 프라임 (브라이트닝, 흡수, 탄력 뷰티 디바이스)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/B00000022707406ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[안은진pick] 센텔리안24 마데카 프라임 (브라이트닝, 흡수, 탄력 뷰티 디바이스)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/B00000022707405ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[안은진pick] 센텔리안24 마데카 프라임 (브라이트닝, 흡수, 탄력 뷰티 디바이스)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/B00000022707404ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[안은진pick] 센텔리안24 마데카 프라임 (브라이트닝, 흡수, 탄력 뷰티 디바이스)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/B00000022707403ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[안은진pick] 센텔리안24 마데카 프라임 (브라이트닝, 흡수, 탄력 뷰티 디바이스)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/B00000022707402ko.png?l=ko', 6, (SELECT id FROM product WHERE name = '[안은진pick] 센텔리안24 마데카 프라임 (브라이트닝, 흡수, 탄력 뷰티 디바이스)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[안은진pick] 센텔리안24 마데카 프라임 (브라이트닝, 흡수, 탄력 뷰티 디바이스)';


-- ================================

-- 상품: [NEW] 닥터탱글 하이퍼부스터...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[NEW] 닥터탱글 하이퍼부스터',
 '[NEW] 닥터탱글 하이퍼부스터',
 4.7,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '닥터탱글'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW] 닥터탱글 하이퍼부스터'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(458000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW] 닥터탱글 하이퍼부스터'), NOW(), NOW()),
(349000, 'SALE', (SELECT id FROM product WHERE name = '[NEW] 닥터탱글 하이퍼부스터'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/B00000022948608ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW] 닥터탱글 하이퍼부스터'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/B00000022948607ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW] 닥터탱글 하이퍼부스터'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[NEW] 닥터탱글 하이퍼부스터';


-- ================================

-- 상품: 글로우엠 부스터 소닉...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('글로우엠 부스터 소닉',
 '글로우엠 부스터 소닉',
 5.0,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '글로우엠'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '글로우엠 부스터 소닉'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(480000, 'ORIGINAL', (SELECT id FROM product WHERE name = '글로우엠 부스터 소닉'), NOW(), NOW()),
(480000, 'SALE', (SELECT id FROM product WHERE name = '글로우엠 부스터 소닉'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/B00000023102506ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '글로우엠 부스터 소닉'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/B00000023102505ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '글로우엠 부스터 소닉'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/B00000023102504ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '글로우엠 부스터 소닉'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/B00000023102503ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '글로우엠 부스터 소닉'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/B00000023102502ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '글로우엠 부스터 소닉'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/B00000023102501ko.jpg?l=ko', 6, (SELECT id FROM product WHERE name = '글로우엠 부스터 소닉'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '글로우엠 부스터 소닉';


-- ================================

-- 상품: [미세전류/윤곽관리] 포레오 베어 2 (2color)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[미세전류/윤곽관리] 포레오 베어 2 (2color)',
 '[미세전류/윤곽관리] 포레오 베어 2 (2color)',
 0.0,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '포레오'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('베어 2 푸시아', 506250, (SELECT id FROM product WHERE name = '[미세전류/윤곽관리] 포레오 베어 2 (2color)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('베어 2 에버그린', 506250, (SELECT id FROM product WHERE name = '[미세전류/윤곽관리] 포레오 베어 2 (2color)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(675000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[미세전류/윤곽관리] 포레오 베어 2 (2color)'), NOW(), NOW()),
(506250, 'SALE', (SELECT id FROM product WHERE name = '[미세전류/윤곽관리] 포레오 베어 2 (2color)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/B00000023155505ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[미세전류/윤곽관리] 포레오 베어 2 (2color)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/B00000023155502ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[미세전류/윤곽관리] 포레오 베어 2 (2color)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/B00000023155501ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[미세전류/윤곽관리] 포레오 베어 2 (2color)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[미세전류/윤곽관리] 포레오 베어 2 (2color)';


-- ================================

-- 상품: [국소부위용/미세전류] 포레오 베어 2 아이&립 (2color)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[국소부위용/미세전류] 포레오 베어 2 아이&립 (2color)',
 '[국소부위용/미세전류] 포레오 베어 2 아이&립 (2color)',
 0.0,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '포레오'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('라벤더', 236600, (SELECT id FROM product WHERE name = '[국소부위용/미세전류] 포레오 베어 2 아이&립 (2color)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('아틱블루', 236600, (SELECT id FROM product WHERE name = '[국소부위용/미세전류] 포레오 베어 2 아이&립 (2color)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(338000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[국소부위용/미세전류] 포레오 베어 2 아이&립 (2color)'), NOW(), NOW()),
(236600, 'SALE', (SELECT id FROM product WHERE name = '[국소부위용/미세전류] 포레오 베어 2 아이&립 (2color)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/B00000023155605ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[국소부위용/미세전류] 포레오 베어 2 아이&립 (2color)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/B00000023155602ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[국소부위용/미세전류] 포레오 베어 2 아이&립 (2color)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/B00000023155601ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[국소부위용/미세전류] 포레오 베어 2 아이&립 (2color)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[국소부위용/미세전류] 포레오 베어 2 아이&립 (2color)';


-- ================================

-- 상품: 바나브 UP6 골드에디션(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('바나브 UP6 골드에디션(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정',
 '바나브 UP6 골드에디션(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정',
 0.0,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '바나브'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '바나브 UP6 골드에디션(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(320000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바나브 UP6 골드에디션(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'), NOW(), NOW()),
(272000, 'SALE', (SELECT id FROM product WHERE name = '바나브 UP6 골드에디션(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016898607ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바나브 UP6 골드에디션(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016898602ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '바나브 UP6 골드에디션(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '바나브 UP6 골드에디션(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정';


-- ================================

-- 상품: [클렌징브러시] 게스케 산리오 헬로키티 페이셜 브러시 3 in 1 (그립)...
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[클렌징브러시] 게스케 산리오 헬로키티 페이셜 브러시 3 in 1 (그립)',
 '[클렌징브러시] 게스케 산리오 헬로키티 페이셜 브러시 3 in 1 (그립)',
 4.6,
 (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
 (SELECT id FROM brand WHERE name = '게스케'),
 '판매중',
 NOW(),
 NOW());

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('퍼플', 0, (SELECT id FROM product WHERE name = '[클렌징브러시] 게스케 산리오 헬로키티 페이셜 브러시 3 in 1 (그립)'));

INSERT INTO product_option (name, additional_amount, product_id) VALUES
('핑크', 0, (SELECT id FROM product WHERE name = '[클렌징브러시] 게스케 산리오 헬로키티 페이셜 브러시 3 in 1 (그립)'));

INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[클렌징브러시] 게스케 산리오 헬로키티 페이셜 브러시 3 in 1 (그립)'), NOW(), NOW()),
(23750, 'SALE', (SELECT id FROM product WHERE name = '[클렌징브러시] 게스케 산리오 헬로키티 페이셜 브러시 3 in 1 (그립)'), NOW(), NOW());

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/B00000019187812ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[클렌징브러시] 게스케 산리오 헬로키티 페이셜 브러시 3 in 1 (그립)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/B00000019187811ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[클렌징브러시] 게스케 산리오 헬로키티 페이셜 브러시 3 in 1 (그립)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/B00000019187810ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[클렌징브러시] 게스케 산리오 헬로키티 페이셜 브러시 3 in 1 (그립)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/B00000019187804ko.jpg?l=ko', 4, (SELECT id FROM product WHERE name = '[클렌징브러시] 게스케 산리오 헬로키티 페이셜 브러시 3 in 1 (그립)'));

INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/B00000019187801ko.jpg?l=ko', 5, (SELECT id FROM product WHERE name = '[클렌징브러시] 게스케 산리오 헬로키티 페이셜 브러시 3 in 1 (그립)'));

INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
SELECT 'SELLING', 100, po.id, NOW()
FROM product_option po
JOIN product p ON po.product_id = p.id
WHERE p.name = '[클렌징브러시] 게스케 산리오 헬로키티 페이셜 브러시 3 in 1 (그립)';


-- ================================
