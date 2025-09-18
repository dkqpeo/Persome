-- ==============================================
-- 스킨케어세트 JSON 데이터 기반 INSERT 스크립트
-- Entity 구조에 맞춘 완전한 삽입 스크립트
-- ==============================================

-- 실행 전 다음 스크립트들을 순서대로 실행해야 합니다:
-- 1. 2.category_data_insert.sql
-- 2. 1.Persome_brand_scrept.sql

-- ==============================================
-- 1. 스킨케어세트 상품 기본 정보 삽입 (24개)
-- ==============================================

-- 스킨케어세트 상품 삽입
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('(NEW) 헤라 옴므 블랙 액티브 세트 2종(토너 125ml+에멀전 110ml)', '(NEW) 헤라 옴므 블랙 액티브 세트 2종(토너 125ml+에멀전 110ml)', 5.0, (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '헤라'), '판매중', NOW(), NOW()),
('[리프팅/선물세트]AHC 프리미어 앰플 인 아이크림 기프트 세트 40ml*4ea', '[리프팅/선물세트]AHC 프리미어 앰플 인 아이크림 기프트 세트 40ml*4ea', 4.8, (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = 'AHC'), '판매중', NOW(), NOW()),
('[탄탄세트] 바이오힐 보 프로바이오덤 3D 리프팅 스킨케어 2종 기획 (에센셜 토너 150ml+에멀전 150ml)', '[탄탄세트] 바이오힐 보 프로바이오덤 3D 리프팅 스킨케어 2종 기획 (에센셜 토너 150ml+에멀전 150ml)', 4.9, (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '바이오힐보'), '판매중', NOW(), NOW()),
('[9월 올영픽/토너 대용량] 라운드랩 포 맨 소나무 진정 토너/로션 2종 기획 (토너300ml+로션200ml)', '[9월 올영픽/토너 대용량] 라운드랩 포 맨 소나무 진정 토너/로션 2종 기획 (토너300ml+로션200ml)', 4.9, (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '라운드랩'), '판매중', NOW(), NOW()),
('설화수 자음 2종 기획 / 반용량 기획', '설화수 자음 2종 기획 / 반용량 기획', 4.9, (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '설화수'), '판매중', NOW(), NOW()),
('[속광수분장벽] 온그리디언츠 속광 듀오 세트(카밍 소프너 250ml+카밍 로션 80ml)', '[속광수분장벽] 온그리디언츠 속광 듀오 세트(카밍 소프너 250ml+카밍 로션 80ml)', 4.8, (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '온그리디언츠'), '판매중', NOW(), NOW()),
('[토닝세트] 바이오힐 보 비타시너지 기미잡티 토닝 스킨케어 2종 (토닝토너 150ml+토닝크림 150ml)', '[토닝세트] 바이오힐 보 비타시너지 기미잡티 토닝 스킨케어 2종 (토닝토너 150ml+토닝크림 150ml)', 4.8, (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '바이오힐보'), '판매중', NOW(), NOW()),
('오브제 포어 제로 토너/로션 2종 기획', '오브제 포어 제로 토너/로션 2종 기획', 4.9, (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '오브제'), '판매중', NOW(), NOW()),
('[토너&에멀젼세트/기획] 하다라보 고쿠쥰 프리미엄 로션&밀크 기획', '[토너&에멀젼세트/기획] 하다라보 고쿠쥰 프리미엄 로션&밀크 기획', 4.7, (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '하다라보'), '판매중', NOW(), NOW()),
('[한정기획] 피지오겔 시카밸런스 포맨 2종 (+플루이드 100ml or 크림 70ml)', '[한정기획] 피지오겔 시카밸런스 포맨 2종 (+플루이드 100ml or 크림 70ml)', 4.9, (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '피지오겔'), '판매중', NOW(), NOW()),
('[토너&로션] 마녀공장 비피다 바이옴 앰플 토너 300ml + 비피다 앰플 로션 300ml 세트', '[토너&로션] 마녀공장 비피다 바이옴 앰플 토너 300ml + 비피다 앰플 로션 300ml 세트', 4.7, (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '마녀공장'), '판매중', NOW(), NOW()),
('토리든 다이브인 포맨 저분자 히알루론산 스킨/젤로션 2종 기획(+스킨30ml+젤로션20ml)', '토리든 다이브인 포맨 저분자 히알루론산 스킨/젤로션 2종 기획(+스킨30ml+젤로션20ml)', 4.9, (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '토리든'), '판매중', NOW(), NOW()),
('오딧세이 챕터5xMMY 생츄어리 2종세트(토너 140ml+모이스처라이저 110ml)', '오딧세이 챕터5xMMY 생츄어리 2종세트(토너 140ml+모이스처라이저 110ml)', 5.0, (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '오딧세이'), '판매중', NOW(), NOW()),
('[올리브영 단독] AHC 온리포맨 스킨케어 2종 기프트 세트', '[올리브영 단독] AHC 온리포맨 스킨케어 2종 기프트 세트', 4.8, (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = 'AHC'), '판매중', NOW(), NOW()),
('[클렌징폼증정] 이니스프리 포레스트 프레시 스킨 로션 2종 세트', '[클렌징폼증정] 이니스프리 포레스트 프레시 스킨 로션 2종 세트', 5.0, (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '이니스프리'), '판매중', NOW(), NOW()),
('[new] 닥터지 레드 블레미쉬 포 맨 토너/진정올인원 2종 기획 (+미니어처 2종)', '[new] 닥터지 레드 블레미쉬 포 맨 토너/진정올인원 2종 기획 (+미니어처 2종)', 4.8, (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '닥터지'), '판매중', NOW(), NOW()),
('[NEW] 닥터지 블랙 스네일 레티놀 3종 기프트 세트 2종 (크림 50ml + 앰플 50ml + 마스크팩 1매)', '[NEW] 닥터지 블랙 스네일 레티놀 3종 기프트 세트 2종 (크림 50ml + 앰플 50ml + 마스크팩 1매)', 4.8, (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '닥터지'), '판매중', NOW(), NOW()),
('라끄베르 옴므 리차지 2종세트 (애프터쉐이브185ml+에멀전180ml+미니어처 2종 증정)', '라끄베르 옴므 리차지 2종세트 (애프터쉐이브185ml+에멀전180ml+미니어처 2종 증정)', 4.7, (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '라끄베르'), '판매중', NOW(), NOW()),
('[수분강화] 라운드랩 포 맨 자작나무 토너/크림 2종 기획 (+쉐이빙폼 40ml)', '[수분강화] 라운드랩 포 맨 자작나무 토너/크림 2종 기획 (+쉐이빙폼 40ml)', 4.8, (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '라운드랩'), '판매중', NOW(), NOW()),
('[9월 올영픽/토너 대용량] 라운드랩 포 맨 소나무 진정 토너/크림 2종 기획 (토너300ml+크림75ml)', '[9월 올영픽/토너 대용량] 라운드랩 포 맨 소나무 진정 토너/크림 2종 기획 (토너300ml+크림75ml)', 4.9, (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '라운드랩'), '판매중', NOW(), NOW()),
('[선물추천] 눅스 베스트셀러 기프트세트(드라이오일 30ml + 레브드미엘 스틱레브르4g)', '[선물추천] 눅스 베스트셀러 기프트세트(드라이오일 30ml + 레브드미엘 스틱레브르4g)', 4.8, (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '눅스'), '판매중', NOW(), NOW()),
('[NEW]아이디얼포맨 퍼펙트 탄력 스킨&로션 2종 세트', '[NEW]아이디얼포맨 퍼펙트 탄력 스킨&로션 2종 세트', 4.9, (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '아이디얼포맨'), '판매중', NOW(), NOW()),
('라끄베르 옴므 리차지 시카 2종세트 (애프터쉐이브185ml+에멀전180m+미니어처 2종 증정)', '라끄베르 옴므 리차지 시카 2종세트 (애프터쉐이브185ml+에멀전180m+미니어처 2종 증정)', 4.9, (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '라끄베르'), '판매중', NOW(), NOW()),
('[여행용스킨케어] 닥터디퍼런트 베스트 트라이얼 키트', '[여행용스킨케어] 닥터디퍼런트 베스트 트라이얼 키트', 4.8, (SELECT id FROM category WHERE name = '스킨케어세트' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '닥터디퍼런트'), '판매중', NOW(), NOW());

-- ==============================================
-- 2. 스킨케어세트 상품 옵션 삽입 (30개)
-- ==============================================

-- 스킨케어세트 옵션 삽입
INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '(NEW) 헤라 옴므 블랙 액티브 세트 2종(토너 125ml+에멀전 110ml)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[리프팅/선물세트]AHC 프리미어 앰플 인 아이크림 기프트 세트 40ml*4ea')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[탄탄세트] 바이오힐 보 프로바이오덤 3D 리프팅 스킨케어 2종 기획 (에센셜 토너 150ml+에멀전 150ml)')),
('토너300ml 대용량+로션200ml', 0, (SELECT id FROM product WHERE name = '[9월 올영픽/토너 대용량] 라운드랩 포 맨 소나무 진정 토너/로션 2종 기획 (토너300ml+로션200ml)')),
('토너200ml+로션200ml+위칙세정티슈', 0, (SELECT id FROM product WHERE name = '[9월 올영픽/토너 대용량] 라운드랩 포 맨 소나무 진정 토너/로션 2종 기획 (토너300ml+로션200ml)')),
('토너200ml+로션200ml+클렌저', 0, (SELECT id FROM product WHERE name = '[9월 올영픽/토너 대용량] 라운드랩 포 맨 소나무 진정 토너/로션 2종 기획 (토너300ml+로션200ml)')),
('[NEW] 자음 2종 기획', 58500, (SELECT id FROM product WHERE name = '설화수 자음 2종 기획 / 반용량 기획')),
('자음 2종 반용량 기획', 0, (SELECT id FROM product WHERE name = '설화수 자음 2종 기획 / 반용량 기획')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[속광수분장벽] 온그리디언츠 속광 듀오 세트(카밍 소프너 250ml+카밍 로션 80ml)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[토닝세트] 바이오힐 보 비타시너지 기미잡티 토닝 스킨케어 2종 (토닝토너 150ml+토닝크림 150ml)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '오브제 포어 제로 토너/로션 2종 기획')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[토너&에멀젼세트/기획] 하다라보 고쿠쥰 프리미엄 로션&밀크 기획')),
('토너200ml+플루이드100ml', 0, (SELECT id FROM product WHERE name = '[한정기획] 피지오겔 시카밸런스 포맨 2종 (+플루이드 100ml or 크림 70ml)')),
('토너200ml+크림70ml', 0, (SELECT id FROM product WHERE name = '[한정기획] 피지오겔 시카밸런스 포맨 2종 (+플루이드 100ml or 크림 70ml)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[토너&로션] 마녀공장 비피다 바이옴 앰플 토너 300ml + 비피다 앰플 로션 300ml 세트')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '토리든 다이브인 포맨 저분자 히알루론산 스킨/젤로션 2종 기획(+스킨30ml+젤로션20ml)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '오딧세이 챕터5xMMY 생츄어리 2종세트(토너 140ml+모이스처라이저 110ml)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[올리브영 단독] AHC 온리포맨 스킨케어 2종 기프트 세트')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[클렌징폼증정] 이니스프리 포레스트 프레시 스킨 로션 2종 세트')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[new] 닥터지 레드 블레미쉬 포 맨 토너/진정올인원 2종 기획 (+미니어처 2종)')),
('링클마스크1매+크림50ml+앰플50ml', 0, (SELECT id FROM product WHERE name = '[NEW] 닥터지 블랙 스네일 레티놀 3종 기프트 세트 2종 (크림 50ml + 앰플 50ml + 마스크팩 1매)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 2종세트 (애프터쉐이브185ml+에멀전180ml+미니어처 2종 증정)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분강화] 라운드랩 포 맨 자작나무 토너/크림 2종 기획 (+쉐이빙폼 40ml)')),
('토너300ml 대용량+크림75ml', 0, (SELECT id FROM product WHERE name = '[9월 올영픽/토너 대용량] 라운드랩 포 맨 소나무 진정 토너/크림 2종 기획 (토너300ml+크림75ml)')),
('토너200ml+크림75ml+위칙세정티슈', 0, (SELECT id FROM product WHERE name = '[9월 올영픽/토너 대용량] 라운드랩 포 맨 소나무 진정 토너/크림 2종 기획 (토너300ml+크림75ml)')),
('토너200ml+크림75ml+클렌저', 0, (SELECT id FROM product WHERE name = '[9월 올영픽/토너 대용량] 라운드랩 포 맨 소나무 진정 토너/크림 2종 기획 (토너300ml+크림75ml)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[선물추천] 눅스 베스트셀러 기프트세트(드라이오일 30ml + 레브드미엘 스틱레브르4g)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW]아이디얼포맨 퍼펙트 탄력 스킨&로션 2종 세트')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 시카 2종세트 (애프터쉐이브185ml+에멀전180m+미니어처 2종 증정)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[여행용스킨케어] 닥터디퍼런트 베스트 트라이얼 키트'));

-- ==============================================
-- 3. 스킨케어세트 상품 가격 삽입 (48개 - 정가/할인가)
-- ==============================================

-- 스킨케어세트 가격 삽입
INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(116000, 'ORIGINAL', (SELECT id FROM product WHERE name = '(NEW) 헤라 옴므 블랙 액티브 세트 2종(토너 125ml+에멀전 110ml)'), NOW(), NOW()),
(116000, 'SALE', (SELECT id FROM product WHERE name = '(NEW) 헤라 옴므 블랙 액티브 세트 2종(토너 125ml+에멀전 110ml)'), NOW(), NOW()),
(124000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[리프팅/선물세트]AHC 프리미어 앰플 인 아이크림 기프트 세트 40ml*4ea'), NOW(), NOW()),
(39990, 'SALE', (SELECT id FROM product WHERE name = '[리프팅/선물세트]AHC 프리미어 앰플 인 아이크림 기프트 세트 40ml*4ea'), NOW(), NOW()),
(54000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[탄탄세트] 바이오힐 보 프로바이오덤 3D 리프팅 스킨케어 2종 기획 (에센셜 토너 150ml+에멀전 150ml)'), NOW(), NOW()),
(37800, 'SALE', (SELECT id FROM product WHERE name = '[탄탄세트] 바이오힐 보 프로바이오덤 3D 리프팅 스킨케어 2종 기획 (에센셜 토너 150ml+에멀전 150ml)'), NOW(), NOW()),
(43000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽/토너 대용량] 라운드랩 포 맨 소나무 진정 토너/로션 2종 기획 (토너300ml+로션200ml)'), NOW(), NOW()),
(29800, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽/토너 대용량] 라운드랩 포 맨 소나무 진정 토너/로션 2종 기획 (토너300ml+로션200ml)'), NOW(), NOW()),
(150000, 'ORIGINAL', (SELECT id FROM product WHERE name = '설화수 자음 2종 기획 / 반용량 기획'), NOW(), NOW()),
(135000, 'SALE', (SELECT id FROM product WHERE name = '설화수 자음 2종 기획 / 반용량 기획'), NOW(), NOW()),
(27000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[속광수분장벽] 온그리디언츠 속광 듀오 세트(카밍 소프너 250ml+카밍 로션 80ml)'), NOW(), NOW()),
(17500, 'SALE', (SELECT id FROM product WHERE name = '[속광수분장벽] 온그리디언츠 속광 듀오 세트(카밍 소프너 250ml+카밍 로션 80ml)'), NOW(), NOW()),
(42000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[토닝세트] 바이오힐 보 비타시너지 기미잡티 토닝 스킨케어 2종 (토닝토너 150ml+토닝크림 150ml)'), NOW(), NOW()),
(29400, 'SALE', (SELECT id FROM product WHERE name = '[토닝세트] 바이오힐 보 비타시너지 기미잡티 토닝 스킨케어 2종 (토닝토너 150ml+토닝크림 150ml)'), NOW(), NOW()),
(42000, 'ORIGINAL', (SELECT id FROM product WHERE name = '오브제 포어 제로 토너/로션 2종 기획'), NOW(), NOW()),
(42000, 'SALE', (SELECT id FROM product WHERE name = '오브제 포어 제로 토너/로션 2종 기획'), NOW(), NOW()),
(34000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[토너&에멀젼세트/기획] 하다라보 고쿠쥰 프리미엄 로션&밀크 기획'), NOW(), NOW()),
(23800, 'SALE', (SELECT id FROM product WHERE name = '[토너&에멀젼세트/기획] 하다라보 고쿠쥰 프리미엄 로션&밀크 기획'), NOW(), NOW()),
(69000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[한정기획] 피지오겔 시카밸런스 포맨 2종 (+플루이드 100ml or 크림 70ml)'), NOW(), NOW()),
(69000, 'SALE', (SELECT id FROM product WHERE name = '[한정기획] 피지오겔 시카밸런스 포맨 2종 (+플루이드 100ml or 크림 70ml)'), NOW(), NOW()),
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[토너&로션] 마녀공장 비피다 바이옴 앰플 토너 300ml + 비피다 앰플 로션 300ml 세트'), NOW(), NOW()),
(29900, 'SALE', (SELECT id FROM product WHERE name = '[토너&로션] 마녀공장 비피다 바이옴 앰플 토너 300ml + 비피다 앰플 로션 300ml 세트'), NOW(), NOW()),
(37000, 'ORIGINAL', (SELECT id FROM product WHERE name = '토리든 다이브인 포맨 저분자 히알루론산 스킨/젤로션 2종 기획(+스킨30ml+젤로션20ml)'), NOW(), NOW()),
(29600, 'SALE', (SELECT id FROM product WHERE name = '토리든 다이브인 포맨 저분자 히알루론산 스킨/젤로션 2종 기획(+스킨30ml+젤로션20ml)'), NOW(), NOW()),
(82000, 'ORIGINAL', (SELECT id FROM product WHERE name = '오딧세이 챕터5xMMY 생츄어리 2종세트(토너 140ml+모이스처라이저 110ml)'), NOW(), NOW()),
(59900, 'SALE', (SELECT id FROM product WHERE name = '오딧세이 챕터5xMMY 생츄어리 2종세트(토너 140ml+모이스처라이저 110ml)'), NOW(), NOW()),
(49000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[올리브영 단독] AHC 온리포맨 스킨케어 2종 기프트 세트'), NOW(), NOW()),
(49000, 'SALE', (SELECT id FROM product WHERE name = '[올리브영 단독] AHC 온리포맨 스킨케어 2종 기프트 세트'), NOW(), NOW()),
(47000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[클렌징폼증정] 이니스프리 포레스트 프레시 스킨 로션 2종 세트'), NOW(), NOW()),
(47000, 'SALE', (SELECT id FROM product WHERE name = '[클렌징폼증정] 이니스프리 포레스트 프레시 스킨 로션 2종 세트'), NOW(), NOW()),
(61000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[new] 닥터지 레드 블레미쉬 포 맨 토너/진정올인원 2종 기획 (+미니어처 2종)'), NOW(), NOW()),
(42700, 'SALE', (SELECT id FROM product WHERE name = '[new] 닥터지 레드 블레미쉬 포 맨 토너/진정올인원 2종 기획 (+미니어처 2종)'), NOW(), NOW()),
(43000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW] 닥터지 블랙 스네일 레티놀 3종 기프트 세트 2종 (크림 50ml + 앰플 50ml + 마스크팩 1매)'), NOW(), NOW()),
(34400, 'SALE', (SELECT id FROM product WHERE name = '[NEW] 닥터지 블랙 스네일 레티놀 3종 기프트 세트 2종 (크림 50ml + 앰플 50ml + 마스크팩 1매)'), NOW(), NOW()),
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 2종세트 (애프터쉐이브185ml+에멀전180ml+미니어처 2종 증정)'), NOW(), NOW()),
(32000, 'SALE', (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 2종세트 (애프터쉐이브185ml+에멀전180ml+미니어처 2종 증정)'), NOW(), NOW()),
(44000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분강화] 라운드랩 포 맨 자작나무 토너/크림 2종 기획 (+쉐이빙폼 40ml)'), NOW(), NOW()),
(31300, 'SALE', (SELECT id FROM product WHERE name = '[수분강화] 라운드랩 포 맨 자작나무 토너/크림 2종 기획 (+쉐이빙폼 40ml)'), NOW(), NOW()),
(45000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽/토너 대용량] 라운드랩 포 맨 소나무 진정 토너/크림 2종 기획 (토너300ml+크림75ml)'), NOW(), NOW()),
(29800, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽/토너 대용량] 라운드랩 포 맨 소나무 진정 토너/크림 2종 기획 (토너300ml+크림75ml)'), NOW(), NOW()),
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[선물추천] 눅스 베스트셀러 기프트세트(드라이오일 30ml + 레브드미엘 스틱레브르4g)'), NOW(), NOW()),
(29700, 'SALE', (SELECT id FROM product WHERE name = '[선물추천] 눅스 베스트셀러 기프트세트(드라이오일 30ml + 레브드미엘 스틱레브르4g)'), NOW(), NOW()),
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW]아이디얼포맨 퍼펙트 탄력 스킨&로션 2종 세트'), NOW(), NOW()),
(26800, 'SALE', (SELECT id FROM product WHERE name = '[NEW]아이디얼포맨 퍼펙트 탄력 스킨&로션 2종 세트'), NOW(), NOW()),
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 시카 2종세트 (애프터쉐이브185ml+에멀전180m+미니어처 2종 증정)'), NOW(), NOW()),
(21000, 'SALE', (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 시카 2종세트 (애프터쉐이브185ml+에멀전180m+미니어처 2종 증정)'), NOW(), NOW()),
(9900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[여행용스킨케어] 닥터디퍼런트 베스트 트라이얼 키트'), NOW(), NOW()),
(9900, 'SALE', (SELECT id FROM product WHERE name = '[여행용스킨케어] 닥터디퍼런트 베스트 트라이얼 키트'), NOW(), NOW());

-- ==============================================
-- 4. 스킨케어세트 상품 이미지 삽입 (총 67개 이미지)
-- ==============================================

-- 스킨케어세트 이미지 삽입
INSERT INTO product_img (img_url, img_order, product_id) VALUES
-- 헤라 옴므 블랙 액티브 세트
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022958001ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '(NEW) 헤라 옴므 블랙 액티브 세트 2종(토너 125ml+에멀전 110ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022958003ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '(NEW) 헤라 옴므 블랙 액티브 세트 2종(토너 125ml+에멀전 110ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022958002ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '(NEW) 헤라 옴므 블랙 액티브 세트 2종(토너 125ml+에멀전 110ml)')),

-- AHC 프리미어 앰플 인 아이크림 기프트 세트
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021029403ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[리프팅/선물세트]AHC 프리미어 앰플 인 아이크림 기프트 세트 40ml*4ea')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021029405ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[리프팅/선물세트]AHC 프리미어 앰플 인 아이크림 기프트 세트 40ml*4ea')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021029404ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[리프팅/선물세트]AHC 프리미어 앰플 인 아이크림 기프트 세트 40ml*4ea')),

-- 바이오힐 보 프로바이오덤 3D 리프팅 스킨케어 2종 기획
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020325002ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[탄탄세트] 바이오힐 보 프로바이오덤 3D 리프팅 스킨케어 2종 기획 (에센셜 토너 150ml+에멀전 150ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020325007ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[탄탄세트] 바이오힐 보 프로바이오덤 3D 리프팅 스킨케어 2종 기획 (에센셜 토너 150ml+에멀전 150ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020325004ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[탄탄세트] 바이오힐 보 프로바이오덤 3D 리프팅 스킨케어 2종 기획 (에센셜 토너 150ml+에멀전 150ml)')),

-- 라운드랩 포 맨 소나무 진정 토너/로션 2종 기획
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189511ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽/토너 대용량] 라운드랩 포 맨 소나무 진정 토너/로션 2종 기획 (토너300ml+로션200ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189503ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽/토너 대용량] 라운드랩 포 맨 소나무 진정 토너/로션 2종 기획 (토너300ml+로션200ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189504ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽/토너 대용량] 라운드랩 포 맨 소나무 진정 토너/로션 2종 기획 (토너300ml+로션200ml)')),

-- 설화수 자음 2종 기획
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020463426ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '설화수 자음 2종 기획 / 반용량 기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020463430ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '설화수 자음 2종 기획 / 반용량 기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020463421ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '설화수 자음 2종 기획 / 반용량 기획')),

-- 온그리디언츠 속광 듀오 세트
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022157704ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[속광수분장벽] 온그리디언츠 속광 듀오 세트(카밍 소프너 250ml+카밍 로션 80ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022157702ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[속광수분장벽] 온그리디언츠 속광 듀오 세트(카밍 소프너 250ml+카밍 로션 80ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022157701ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[속광수분장벽] 온그리디언츠 속광 듀오 세트(카밍 소프너 250ml+카밍 로션 80ml)')),

-- 바이오힐 보 비타시너지 기미잡티 토닝 스킨케어 2종
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022441502ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[토닝세트] 바이오힐 보 비타시너지 기미잡티 토닝 스킨케어 2종 (토닝토너 150ml+토닝크림 150ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022441504ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[토닝세트] 바이오힐 보 비타시너지 기미잡티 토닝 스킨케어 2종 (토닝토너 150ml+토닝크림 150ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022441503ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[토닝세트] 바이오힐 보 비타시너지 기미잡티 토닝 스킨케어 2종 (토닝토너 150ml+토닝크림 150ml)')),

-- 오브제 포어 제로 토너/로션 2종 기획
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021625513ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '오브제 포어 제로 토너/로션 2종 기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021625512ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '오브제 포어 제로 토너/로션 2종 기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021625504ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '오브제 포어 제로 토너/로션 2종 기획')),

-- 하다라보 고쿠쥰 프리미엄 로션&밀크 기획
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015189212ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[토너&에멀젼세트/기획] 하다라보 고쿠쥰 프리미엄 로션&밀크 기획')),

-- 피지오겔 시카밸런스 포맨 2종
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020459010ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[한정기획] 피지오겔 시카밸런스 포맨 2종 (+플루이드 100ml or 크림 70ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020459008ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[한정기획] 피지오겔 시카밸런스 포맨 2종 (+플루이드 100ml or 크림 70ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020459002ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[한정기획] 피지오겔 시카밸런스 포맨 2종 (+플루이드 100ml or 크림 70ml)')),

-- 마녀공장 비피다 바이옴 앰플 토너/로션 세트
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014999215ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[토너&로션] 마녀공장 비피다 바이옴 앰플 토너 300ml + 비피다 앰플 로션 300ml 세트')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014999216ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[토너&로션] 마녀공장 비피다 바이옴 앰플 토너 300ml + 비피다 앰플 로션 300ml 세트')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014999217ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[토너&로션] 마녀공장 비피다 바이옴 앰플 토너 300ml + 비피다 앰플 로션 300ml 세트')),

-- 토리든 다이브인 포맨 저분자 히알루론산 스킨/젤로션 2종 기획
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020711516ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '토리든 다이브인 포맨 저분자 히알루론산 스킨/젤로션 2종 기획(+스킨30ml+젤로션20ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020711517ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '토리든 다이브인 포맨 저분자 히알루론산 스킨/젤로션 2종 기획(+스킨30ml+젤로션20ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020711511ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '토리든 다이브인 포맨 저분자 히알루론산 스킨/젤로션 2종 기획(+스킨30ml+젤로션20ml)')),

-- 오딧세이 챕터5xMMY 생츄어리 2종세트
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021559117ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '오딧세이 챕터5xMMY 생츄어리 2종세트(토너 140ml+모이스처라이저 110ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021559123ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '오딧세이 챕터5xMMY 생츄어리 2종세트(토너 140ml+모이스처라이저 110ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021559122ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '오딧세이 챕터5xMMY 생츄어리 2종세트(토너 140ml+모이스처라이저 110ml)')),

-- AHC 온리포맨 스킨케어 2종 기프트 세트
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017348906ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[올리브영 단독] AHC 온리포맨 스킨케어 2종 기프트 세트')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017348907ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[올리브영 단독] AHC 온리포맨 스킨케어 2종 기프트 세트')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017348908ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[올리브영 단독] AHC 온리포맨 스킨케어 2종 기프트 세트')),

-- 이니스프리 포레스트 프레시 스킨 로션 2종 세트
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022609709ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[클렌징폼증정] 이니스프리 포레스트 프레시 스킨 로션 2종 세트')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022609707ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[클렌징폼증정] 이니스프리 포레스트 프레시 스킨 로션 2종 세트')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022609706ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[클렌징폼증정] 이니스프리 포레스트 프레시 스킨 로션 2종 세트')),

-- 닥터지 레드 블레미쉬 포 맨 토너/진정올인원 2종 기획
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022378001ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[new] 닥터지 레드 블레미쉬 포 맨 토너/진정올인원 2종 기획 (+미니어처 2종)')),

-- 닥터지 블랙 스네일 레티놀 3종 기프트 세트
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023299203ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW] 닥터지 블랙 스네일 레티놀 3종 기프트 세트 2종 (크림 50ml + 앰플 50ml + 마스크팩 1매)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023299202ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW] 닥터지 블랙 스네일 레티놀 3종 기프트 세트 2종 (크림 50ml + 앰플 50ml + 마스크팩 1매)')),

-- 라끄베르 옴므 리차지 2종세트
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001675008ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 2종세트 (애프터쉐이브185ml+에멀전180ml+미니어처 2종 증정)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001675007ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 2종세트 (애프터쉐이브185ml+에멀전180ml+미니어처 2종 증정)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001675003ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 2종세트 (애프터쉐이브185ml+에멀전180ml+미니어처 2종 증정)')),

-- 라운드랩 포 맨 자작나무 토너/크림 2종 기획
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019597005ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분강화] 라운드랩 포 맨 자작나무 토너/크림 2종 기획 (+쉐이빙폼 40ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019597002ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분강화] 라운드랩 포 맨 자작나무 토너/크림 2종 기획 (+쉐이빙폼 40ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019597007ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분강화] 라운드랩 포 맨 자작나무 토너/크림 2종 기획 (+쉐이빙폼 40ml)')),

-- 라운드랩 포 맨 소나무 진정 토너/크림 2종 기획
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189712ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽/토너 대용량] 라운드랩 포 맨 소나무 진정 토너/크림 2종 기획 (토너300ml+크림75ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189703ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽/토너 대용량] 라운드랩 포 맨 소나무 진정 토너/크림 2종 기획 (토너300ml+크림75ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189704ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽/토너 대용량] 라운드랩 포 맨 소나무 진정 토너/크림 2종 기획 (토너300ml+크림75ml)')),

-- 눅스 베스트셀러 기프트세트
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016879009ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[선물추천] 눅스 베스트셀러 기프트세트(드라이오일 30ml + 레브드미엘 스틱레브르4g)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016879013ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[선물추천] 눅스 베스트셀러 기프트세트(드라이오일 30ml + 레브드미엘 스틱레브르4g)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016879010ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[선물추천] 눅스 베스트셀러 기프트세트(드라이오일 30ml + 레브드미엘 스틱레브르4g)')),

-- 아이디얼포맨 퍼펙트 탄력 스킨&로션 2종 세트
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023086801ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW]아이디얼포맨 퍼펙트 탄력 스킨&로션 2종 세트')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023086805ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW]아이디얼포맨 퍼펙트 탄력 스킨&로션 2종 세트')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023086804ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW]아이디얼포맨 퍼펙트 탄력 스킨&로션 2종 세트')),

-- 라끄베르 옴므 리차지 시카 2종세트
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018515503ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 시카 2종세트 (애프터쉐이브185ml+에멀전180m+미니어처 2종 증정)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018515505ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 시카 2종세트 (애프터쉐이브185ml+에멀전180m+미니어처 2종 증정)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018515502ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '라끄베르 옴므 리차지 시카 2종세트 (애프터쉐이브185ml+에멀전180m+미니어처 2종 증정)')),

-- 닥터디퍼런트 베스트 트라이얼 키트
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017330212ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[여행용스킨케어] 닥터디퍼런트 베스트 트라이얼 키트')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017330211ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[여행용스킨케어] 닥터디퍼런트 베스트 트라이얼 키트')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017330210ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[여행용스킨케어] 닥터디퍼런트 베스트 트라이얼 키트'));

-- ==============================================
-- 5. 스킨케어세트 상품 재고 삽입 (30개 옵션)
-- ==============================================

-- 스킨케어세트 재고 삽입 (각 옵션별 기본 재고 100개)
INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at) 
SELECT 'SELLING', 100, po.id, NOW() 
FROM product_option po 
JOIN product p ON po.product_id = p.id 
JOIN category c ON p.category_id = c.id 
WHERE c.name = '스킨케어세트';

-- ==============================================
-- 스크립트 실행 완료 메시지
-- ==============================================
SELECT 'JSON 기반 스킨케어세트 데이터 삽입이 완료되었습니다.' as message;