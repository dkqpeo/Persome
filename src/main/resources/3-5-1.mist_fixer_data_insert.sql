-- ==============================================
-- 미스트/픽서 JSON 데이터 기반 INSERT 스크립트
-- Entity 구조에 맞춘 완전한 삽입 스크립트
-- ==============================================

-- 실행 전 다음 스크립트들을 순서대로 실행해야 합니다:
-- 1. 2.category_data_insert.sql
-- 2. 1.Persome_brand_scrept.sql

-- ==============================================
-- 1. 미스트/픽서 상품 기본 정보 삽입 (24개)
-- ==============================================

-- 미스트/픽서 상품 삽입
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('쏘내추럴 올 데이 메이크업 픽서 120ml (안개분사 캔타입)', '쏘내추럴 올 데이 메이크업 픽서 120ml (안개분사 캔타입)', 4.7, (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '쏘내추럴'), '판매중', NOW(), NOW()),
('[NO.1 미스트세럼/슬로우에이징] 달바 퍼스트 스프레이 세럼 100ml', '[NO.1 미스트세럼/슬로우에이징] 달바 퍼스트 스프레이 세럼 100ml', 4.8, (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '달바'), '판매중', NOW(), NOW()),
('[9월 올영픽/유혜주 PICK] 메디큐브 PDRN 콜라겐 젤리미스트 100ml 기획 (+앰플 5ml+수분크림 10ml)', '[9월 올영픽/유혜주 PICK] 메디큐브 PDRN 콜라겐 젤리미스트 100ml 기획 (+앰플 5ml+수분크림 10ml)', 4.8, (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '메디큐브'), '판매중', NOW(), NOW()),
('아벤느 오 떼르말 미스트 300ml*2 + 50ml 기획', '아벤느 오 떼르말 미스트 300ml*2 + 50ml 기획', 4.8, (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '아벤느'), '판매중', NOW(), NOW()),
('[재구매1위/퀵보습진정] 바이오힐 보 판테셀 리페어시카 크림미스트 120mL [기내용/단품/더블기획]', '[재구매1위/퀵보습진정] 바이오힐 보 판테셀 리페어시카 크림미스트 120mL [기내용/단품/더블기획]', 4.8, (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '바이오힐보'), '판매중', NOW(), NOW()),
('[NO.1 미스트세럼] 달바 퍼스트 스프레이 세럼 100ml 2개 기획', '[NO.1 미스트세럼] 달바 퍼스트 스프레이 세럼 100ml 2개 기획', 4.9, (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '달바'), '판매중', NOW(), NOW()),
('쏘내추럴 올 데이 메이크업 픽서 75ml 기획(+15ml 젤 픽서)', '쏘내추럴 올 데이 메이크업 픽서 75ml 기획(+15ml 젤 픽서)', 4.7, (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '쏘내추럴'), '판매중', NOW(), NOW()),
('[미니언즈 한정] 온그리디언츠 스킨 베리어 속광 미스트 기획 (100ml+50ml+키링)', '[미니언즈 한정] 온그리디언츠 스킨 베리어 속광 미스트 기획 (100ml+50ml+키링)', 4.9, (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '온그리디언츠'), '판매중', NOW(), NOW()),
('[뿌리는8종콜라겐] 아로셀 슈퍼 콜라겐 앰플 미스트 80ml', '[뿌리는8종콜라겐] 아로셀 슈퍼 콜라겐 앰플 미스트 80ml', NULL, (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '아로셀'), '판매중', NOW(), NOW()),
('차앤박(CNP) 프로폴리스 에너지 앰플 미스트 250ml', '차앤박(CNP) 프로폴리스 에너지 앰플 미스트 250ml', 4.8, (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '차앤박'), '판매중', NOW(), NOW()),
('아벤느 오 떼르말 미스트 150ml 2입 기획', '아벤느 오 떼르말 미스트 150ml 2입 기획', 4.8, (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '아벤느'), '판매중', NOW(), NOW()),
('[NEW] 쏘내추럴 올 데이 블러 메이크업 세팅 픽서 75ml', '[NEW] 쏘내추럴 올 데이 블러 메이크업 세팅 픽서 75ml', 4.9, (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '쏘내추럴'), '판매중', NOW(), NOW()),
('[안개분사미스트]에스트라 아토베리어365 크림미스트 120ml', '[안개분사미스트]에스트라 아토베리어365 크림미스트 120ml', 4.7, (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '에스트라'), '판매중', NOW(), NOW()),
('[산뜻보습] 달바 바이탈 스프레이 세럼 100ml', '[산뜻보습] 달바 바이탈 스프레이 세럼 100ml', 4.7, (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '달바'), '판매중', NOW(), NOW()),
('[뿌리는 속광탄력/화잘먹 미스트] 에스네이처 아쿠아 스쿠알란 미스트 100ml', '[뿌리는 속광탄력/화잘먹 미스트] 에스네이처 아쿠아 스쿠알란 미스트 100ml', 4.8, (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '에스네이처'), '판매중', NOW(), NOW()),
('런드리유 클린 페이스 고체 미스트 카밍 100g', '런드리유 클린 페이스 고체 미스트 카밍 100g', 4.9, (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '런드리유'), '판매중', NOW(), NOW()),
('쏘내추럴 올 데이 타이트 메이크업 세팅 픽서 35ml', '쏘내추럴 올 데이 타이트 메이크업 세팅 픽서 35ml', 4.8, (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '쏘내추럴'), '판매중', NOW(), NOW()),
('[3중장벽강화 미스트] 유리아쥬 오떼르말 더블 기획 (150ml+150ml)', '[3중장벽강화 미스트] 유리아쥬 오떼르말 더블 기획 (150ml+150ml)', 4.7, (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '유리아쥬'), '판매중', NOW(), NOW()),
('[메이크업아티스트 PICK]에스테덤 셀룰러 워터 미스트 200ml (항산화 미스트)', '[메이크업아티스트 PICK]에스테덤 셀룰러 워터 미스트 200ml (항산화 미스트)', 4.6, (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '에스테덤'), '판매중', NOW(), NOW()),
('아벤느 오 떼르말 미스트 300ml 2입 기획', '아벤느 오 떼르말 미스트 300ml 2입 기획', 4.8, (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '아벤느'), '판매중', NOW(), NOW()),
('아벤느 오 떼르말 미스트 50ml', '아벤느 오 떼르말 미스트 50ml', 4.8, (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '아벤느'), '판매중', NOW(), NOW()),
('[뿌리는프렙] 연작 스킨 퍼펙팅 글로우 업 프렙 워터 50ml 기획 (+20ml 추가구성)', '[뿌리는프렙] 연작 스킨 퍼펙팅 글로우 업 프렙 워터 50ml 기획 (+20ml 추가구성)', 4.7, (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '연작'), '판매중', NOW(), NOW()),
('[탄탄미스트] 바이오힐 보 프로바이오덤 3D 리프팅 크림 미스트 100ml [단품]', '[탄탄미스트] 바이오힐 보 프로바이오덤 3D 리프팅 크림 미스트 100ml [단품]', 4.8, (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '바이오힐보'), '판매중', NOW(), NOW()),
('[올영단독/NEW] 제나벨 PDRN 듀얼 글로우 세럼 미스트 100ml', '[올영단독/NEW] 제나벨 PDRN 듀얼 글로우 세럼 미스트 100ml', 5.0, (SELECT id FROM category WHERE name = '미스트/픽서' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '제나벨'), '판매중', NOW(), NOW());

-- ==============================================
-- 2. 미스트/픽서 상품 옵션 삽입 (27개)
-- ==============================================

-- 미스트/픽서 옵션 삽입
INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 메이크업 픽서 120ml (안개분사 캔타입)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NO.1 미스트세럼/슬로우에이징] 달바 퍼스트 스프레이 세럼 100ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9월 올영픽/유혜주 PICK] 메디큐브 PDRN 콜라겐 젤리미스트 100ml 기획 (+앰플 5ml+수분크림 10ml)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 300ml*2 + 50ml 기획')),
('120mL+120mL 기획세트', 17500, (SELECT id FROM product WHERE name = '[재구매1위/퀵보습진정] 바이오힐 보 판테셀 리페어시카 크림미스트 120mL [기내용/단품/더블기획]')),
('120mL', 11000, (SELECT id FROM product WHERE name = '[재구매1위/퀵보습진정] 바이오힐 보 판테셀 리페어시카 크림미스트 120mL [기내용/단품/더블기획]')),
('60mL', 0, (SELECT id FROM product WHERE name = '[재구매1위/퀵보습진정] 바이오힐 보 판테셀 리페어시카 크림미스트 120mL [기내용/단품/더블기획]')),
('퍼스트 세럼 더블기획', 0, (SELECT id FROM product WHERE name = '[NO.1 미스트세럼] 달바 퍼스트 스프레이 세럼 100ml 2개 기획')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 메이크업 픽서 75ml 기획(+15ml 젤 픽서)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[미니언즈 한정] 온그리디언츠 스킨 베리어 속광 미스트 기획 (100ml+50ml+키링)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[뿌리는8종콜라겐] 아로셀 슈퍼 콜라겐 앰플 미스트 80ml')),
('250ml', 0, (SELECT id FROM product WHERE name = '차앤박(CNP) 프로폴리스 에너지 앰플 미스트 250ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 150ml 2입 기획')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW] 쏘내추럴 올 데이 블러 메이크업 세팅 픽서 75ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[안개분사미스트]에스트라 아토베리어365 크림미스트 120ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[산뜻보습] 달바 바이탈 스프레이 세럼 100ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[뿌리는 속광탄력/화잘먹 미스트] 에스네이처 아쿠아 스쿠알란 미스트 100ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '런드리유 클린 페이스 고체 미스트 카밍 100g')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 타이트 메이크업 세팅 픽서 35ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[3중장벽강화 미스트] 유리아쥬 오떼르말 더블 기획 (150ml+150ml)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[메이크업아티스트 PICK]에스테덤 셀룰러 워터 미스트 200ml (항산화 미스트)')),
('2입 기획', 0, (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 300ml 2입 기획')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 50ml')),
('기획 50ml+20ml', 0, (SELECT id FROM product WHERE name = '[뿌리는프렙] 연작 스킨 퍼펙팅 글로우 업 프렙 워터 50ml 기획 (+20ml 추가구성)')),
('단품 50ml', 1500, (SELECT id FROM product WHERE name = '[뿌리는프렙] 연작 스킨 퍼펙팅 글로우 업 프렙 워터 50ml 기획 (+20ml 추가구성)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[탄탄미스트] 바이오힐 보 프로바이오덤 3D 리프팅 크림 미스트 100ml [단품]')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[올영단독/NEW] 제나벨 PDRN 듀얼 글로우 세럼 미스트 100ml'));

-- ==============================================
-- 3. 미스트/픽서 상품 가격 삽입 (48개 - 정가/할인가)
-- ==============================================

-- 미스트/픽서 가격 삽입
INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 메이크업 픽서 120ml (안개분사 캔타입)'), NOW(), NOW()),
(16800, 'SALE', (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 메이크업 픽서 120ml (안개분사 캔타입)'), NOW(), NOW()),
(29900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NO.1 미스트세럼/슬로우에이징] 달바 퍼스트 스프레이 세럼 100ml'), NOW(), NOW()),
(20900, 'SALE', (SELECT id FROM product WHERE name = '[NO.1 미스트세럼/슬로우에이징] 달바 퍼스트 스프레이 세럼 100ml'), NOW(), NOW()),
(27800, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽/유혜주 PICK] 메디큐브 PDRN 콜라겐 젤리미스트 100ml 기획 (+앰플 5ml+수분크림 10ml)'), NOW(), NOW()),
(19200, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽/유혜주 PICK] 메디큐브 PDRN 콜라겐 젤리미스트 100ml 기획 (+앰플 5ml+수분크림 10ml)'), NOW(), NOW()),
(34000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 300ml*2 + 50ml 기획'), NOW(), NOW()),
(27900, 'SALE', (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 300ml*2 + 50ml 기획'), NOW(), NOW()),
(25200, 'ORIGINAL', (SELECT id FROM product WHERE name = '[재구매1위/퀵보습진정] 바이오힐 보 판테셀 리페어시카 크림미스트 120mL [기내용/단품/더블기획]'), NOW(), NOW()),
(24500, 'SALE', (SELECT id FROM product WHERE name = '[재구매1위/퀵보습진정] 바이오힐 보 판테셀 리페어시카 크림미스트 120mL [기내용/단품/더블기획]'), NOW(), NOW()),
(59800, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NO.1 미스트세럼] 달바 퍼스트 스프레이 세럼 100ml 2개 기획'), NOW(), NOW()),
(59800, 'SALE', (SELECT id FROM product WHERE name = '[NO.1 미스트세럼] 달바 퍼스트 스프레이 세럼 100ml 2개 기획'), NOW(), NOW()),
(18000, 'ORIGINAL', (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 메이크업 픽서 75ml 기획(+15ml 젤 픽서)'), NOW(), NOW()),
(13500, 'SALE', (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 메이크업 픽서 75ml 기획(+15ml 젤 픽서)'), NOW(), NOW()),
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[미니언즈 한정] 온그리디언츠 스킨 베리어 속광 미스트 기획 (100ml+50ml+키링)'), NOW(), NOW()),
(21500, 'SALE', (SELECT id FROM product WHERE name = '[미니언즈 한정] 온그리디언츠 스킨 베리어 속광 미스트 기획 (100ml+50ml+키링)'), NOW(), NOW()),
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[뿌리는8종콜라겐] 아로셀 슈퍼 콜라겐 앰플 미스트 80ml'), NOW(), NOW()),
(28000, 'SALE', (SELECT id FROM product WHERE name = '[뿌리는8종콜라겐] 아로셀 슈퍼 콜라겐 앰플 미스트 80ml'), NOW(), NOW()),
(27000, 'ORIGINAL', (SELECT id FROM product WHERE name = '차앤박(CNP) 프로폴리스 에너지 앰플 미스트 250ml'), NOW(), NOW()),
(27000, 'SALE', (SELECT id FROM product WHERE name = '차앤박(CNP) 프로폴리스 에너지 앰플 미스트 250ml'), NOW(), NOW()),
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 150ml 2입 기획'), NOW(), NOW()),
(20900, 'SALE', (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 150ml 2입 기획'), NOW(), NOW()),
(20000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW] 쏘내추럴 올 데이 블러 메이크업 세팅 픽서 75ml'), NOW(), NOW()),
(20000, 'SALE', (SELECT id FROM product WHERE name = '[NEW] 쏘내추럴 올 데이 블러 메이크업 세팅 픽서 75ml'), NOW(), NOW()),
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[안개분사미스트]에스트라 아토베리어365 크림미스트 120ml'), NOW(), NOW()),
(20700, 'SALE', (SELECT id FROM product WHERE name = '[안개분사미스트]에스트라 아토베리어365 크림미스트 120ml'), NOW(), NOW()),
(29000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[산뜻보습] 달바 바이탈 스프레이 세럼 100ml'), NOW(), NOW()),
(29000, 'SALE', (SELECT id FROM product WHERE name = '[산뜻보습] 달바 바이탈 스프레이 세럼 100ml'), NOW(), NOW()),
(27000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[뿌리는 속광탄력/화잘먹 미스트] 에스네이처 아쿠아 스쿠알란 미스트 100ml'), NOW(), NOW()),
(27000, 'SALE', (SELECT id FROM product WHERE name = '[뿌리는 속광탄력/화잘먹 미스트] 에스네이처 아쿠아 스쿠알란 미스트 100ml'), NOW(), NOW()),
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '런드리유 클린 페이스 고체 미스트 카밍 100g'), NOW(), NOW()),
(25000, 'SALE', (SELECT id FROM product WHERE name = '런드리유 클린 페이스 고체 미스트 카밍 100g'), NOW(), NOW()),
(10500, 'ORIGINAL', (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 타이트 메이크업 세팅 픽서 35ml'), NOW(), NOW()),
(7870, 'SALE', (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 타이트 메이크업 세팅 픽서 35ml'), NOW(), NOW()),
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[3중장벽강화 미스트] 유리아쥬 오떼르말 더블 기획 (150ml+150ml)'), NOW(), NOW()),
(18700, 'SALE', (SELECT id FROM product WHERE name = '[3중장벽강화 미스트] 유리아쥬 오떼르말 더블 기획 (150ml+150ml)'), NOW(), NOW()),
(49000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[메이크업아티스트 PICK]에스테덤 셀룰러 워터 미스트 200ml (항산화 미스트)'), NOW(), NOW()),
(34300, 'SALE', (SELECT id FROM product WHERE name = '[메이크업아티스트 PICK]에스테덤 셀룰러 워터 미스트 200ml (항산화 미스트)'), NOW(), NOW()),
(34000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 300ml 2입 기획'), NOW(), NOW()),
(34000, 'SALE', (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 300ml 2입 기획'), NOW(), NOW()),
(10000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 50ml'), NOW(), NOW()),
(9500, 'SALE', (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 50ml'), NOW(), NOW()),
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[뿌리는프렙] 연작 스킨 퍼펙팅 글로우 업 프렙 워터 50ml 기획 (+20ml 추가구성)'), NOW(), NOW()),
(28500, 'SALE', (SELECT id FROM product WHERE name = '[뿌리는프렙] 연작 스킨 퍼펙팅 글로우 업 프렙 워터 50ml 기획 (+20ml 추가구성)'), NOW(), NOW()),
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[탄탄미스트] 바이오힐 보 프로바이오덤 3D 리프팅 크림 미스트 100ml [단품]'), NOW(), NOW()),
(28000, 'SALE', (SELECT id FROM product WHERE name = '[탄탄미스트] 바이오힐 보 프로바이오덤 3D 리프팅 크림 미스트 100ml [단품]'), NOW(), NOW()),
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[올영단독/NEW] 제나벨 PDRN 듀얼 글로우 세럼 미스트 100ml'), NOW(), NOW()),
(28000, 'SALE', (SELECT id FROM product WHERE name = '[올영단독/NEW] 제나벨 PDRN 듀얼 글로우 세럼 미스트 100ml'), NOW(), NOW());

-- ==============================================
-- 4. 미스트/픽서 상품 이미지 삽입 (총 67개 이미지)
-- ==============================================

-- 미스트/픽서 이미지 삽입
INSERT INTO product_img (img_url, img_order, product_id) VALUES
-- 쏘내추럴 올 데이 메이크업 픽서 120ml
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013876216ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 메이크업 픽서 120ml (안개분사 캔타입)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013876213ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 메이크업 픽서 120ml (안개분사 캔타입)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013876212ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 메이크업 픽서 120ml (안개분사 캔타입)')),

-- 달바 퍼스트 스프레이 세럼 100ml
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017131221ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NO.1 미스트세럼/슬로우에이징] 달바 퍼스트 스프레이 세럼 100ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017131222ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NO.1 미스트세럼/슬로우에이징] 달바 퍼스트 스프레이 세럼 100ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017131218ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NO.1 미스트세럼/슬로우에이징] 달바 퍼스트 스프레이 세럼 100ml')),

-- 메디큐브 PDRN 콜라겐 젤리미스트
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023222011ko.jpeg?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽/유혜주 PICK] 메디큐브 PDRN 콜라겐 젤리미스트 100ml 기획 (+앰플 5ml+수분크림 10ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023222012ko.jpeg?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽/유혜주 PICK] 메디큐브 PDRN 콜라겐 젤리미스트 100ml 기획 (+앰플 5ml+수분크림 10ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023222002ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽/유혜주 PICK] 메디큐브 PDRN 콜라겐 젤리미스트 100ml 기획 (+앰플 5ml+수분크림 10ml)')),

-- 아벤느 오 떼르말 미스트 300ml*2 + 50ml 기획
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016643614ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 300ml*2 + 50ml 기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016643612ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 300ml*2 + 50ml 기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016643610ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 300ml*2 + 50ml 기획')),

-- 바이오힐 보 판테셀 리페어시카 크림미스트
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018900402ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[재구매1위/퀵보습진정] 바이오힐 보 판테셀 리페어시카 크림미스트 120mL [기내용/단품/더블기획]')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018900404ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[재구매1위/퀵보습진정] 바이오힐 보 판테셀 리페어시카 크림미스트 120mL [기내용/단품/더블기획]')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018900403ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[재구매1위/퀵보습진정] 바이오힐 보 판테셀 리페어시카 크림미스트 120mL [기내용/단품/더블기획]')),

-- 달바 퍼스트 스프레이 세럼 100ml 2개 기획
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A000000179685111ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NO.1 미스트세럼] 달바 퍼스트 스프레이 세럼 100ml 2개 기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A000000179685101ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NO.1 미스트세럼] 달바 퍼스트 스프레이 세럼 100ml 2개 기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017968589ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NO.1 미스트세럼] 달바 퍼스트 스프레이 세럼 100ml 2개 기획')),

-- 쏘내추럴 올 데이 메이크업 픽서 75ml 기획
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017349326ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 메이크업 픽서 75ml 기획(+15ml 젤 픽서)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017349324ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 메이크업 픽서 75ml 기획(+15ml 젤 픽서)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017349323ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '쏘내추럴 올 데이 메이크업 픽서 75ml 기획(+15ml 젤 픽서)')),

-- 온그리디언츠 스킨 베리어 속광 미스트 기획
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023219103ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[미니언즈 한정] 온그리디언츠 스킨 베리어 속광 미스트 기획 (100ml+50ml+키링)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023219101ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[미니언즈 한정] 온그리디언츠 스킨 베리어 속광 미스트 기획 (100ml+50ml+키링)')),

-- 아로셀 슈퍼 콜라겐 앰플 미스트
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023308003ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[뿌리는8종콜라겐] 아로셀 슈퍼 콜라겐 앰플 미스트 80ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023308002ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[뿌리는8종콜라겐] 아로셀 슈퍼 콜라겐 앰플 미스트 80ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023308001ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[뿌리는8종콜라겐] 아로셀 슈퍼 콜라겐 앰플 미스트 80ml')),

-- 차앤박 프로폴리스 에너지 앰플 미스트
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016651013ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '차앤박(CNP) 프로폴리스 에너지 앰플 미스트 250ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016651008ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '차앤박(CNP) 프로폴리스 에너지 앰플 미스트 250ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016651004ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '차앤박(CNP) 프로폴리스 에너지 앰플 미스트 250ml')),

-- 아벤느 오 떼르말 미스트 150ml 2입 기획
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001050716ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 150ml 2입 기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001050721ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 150ml 2입 기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001050720ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아벤느 오 떼르말 미스트 150ml 2입 기획')),

-- 쏘내추럴 올 데이 블러 메이크업 세팅 픽서
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022648106ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW] 쏘내추럴 올 데이 블러 메이크업 세팅 픽서 75ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022648105ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW] 쏘내추럴 올 데이 블러 메이크업 세팅 픽서 75ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022648104ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW] 쏘내추럴 올 데이 블러 메이크업 세팅 픽서 75ml')),

-- 에스트라 아토베리어365 크림미스트
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013013816ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[안개분사미스트]에스트라 아토베리어365 크림미스트 120ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013013817ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[안개분사미스트]에스트라 아토베리어365 크림미스트 120ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013013815ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[안개분사미스트]에스트라 아토베리어365 크림미스트 120ml'));

-- ==============================================
-- 5. 미스트/픽서 상품 재고 삽입 (27개 옵션)
-- ==============================================

-- 미스트/픽서 재고 삽입 (각 옵션별 기본 재고 100개)
INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at) 
SELECT 'SELLING', 100, po.id, NOW() 
FROM product_option po 
JOIN product p ON po.product_id = p.id 
JOIN category c ON p.category_id = c.id 
WHERE c.name = '미스트/픽서';

-- ==============================================
-- 스크립트 실행 완료 메시지
-- ==============================================
SELECT 'JSON 기반 미스트/픽서 데이터 삽입이 완료되었습니다.' as message;