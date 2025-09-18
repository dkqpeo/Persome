-- ==============================================
-- 스킨토너 JSON 데이터 기반 INSERT 스크립트
-- Entity 구조에 맞춘 완전한 삽입 스크립트
-- ==============================================

-- 실행 전 다음 스크립트들을 순서대로 실행해야 합니다:
-- 1. 2.category_data_insert.sql
-- 2. 1.Persome_brand_scrept.sql

-- 기존 데이터 삭제 (필요시)
-- DELETE FROM inventory;
-- DELETE FROM product_img;
-- DELETE FROM product_price;
-- DELETE FROM product_option;
-- DELETE FROM product;

-- ==============================================
-- 1. 스킨토너 상품 기본 정보 삽입 (24개)
-- ==============================================

-- 스킨토너 상품 삽입
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽] 바이오더마 하이드라비오 토너 500ml 2입 기획', '[9월 올영픽] 바이오더마 하이드라비오 토너 500ml 2입 기획', 4.8, ( SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '바이오더마'), '판매중', NOW(), NOW()),
('[증량기획] 토리든 다이브인 저분자 히알루론산 토너 300ml 기획(+100ml 추가 증정)', '[증량기획] 토리든 다이브인 저분자 히알루론산 토너 300ml 기획(+100ml 추가 증정)', 4.8, ( SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '토리든'), '판매중', NOW(), NOW()),
('[피지쓱싹] 브링그린 티트리시카수딩토너 250mL/500mL 기획', '[피지쓱싹] 브링그린 티트리시카수딩토너 250mL/500mL 기획', 4.8, ( SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '브링그린'), '판매중', NOW(), NOW()),
('[한정] 라운드랩 1025 독도 토너 300ml 기획 (+100ml+늘어나는 스킨 패드 30매)', '[한정] 라운드랩 1025 독도 토너 300ml 기획 (+100ml+늘어나는 스킨 패드 30매)', 4.9, ( SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '라운드랩'), '판매중', NOW(), NOW()),
('[9월 올영픽/NEW 단독기획] 아누아 피디알엔 100 히알루론산 부스터 토너 250ml 기획 (+40ml)', '[9월 올영픽/NEW 단독기획] 아누아 피디알엔 100 히알루론산 부스터 토너 250ml 기획 (+40ml)', 4.9, ( SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '아누아'), '판매중', NOW(), NOW()),
('[대용량] 아누아 어성초 77 수딩 토너 500ml', '[대용량] 아누아 어성초 77 수딩 토너 500ml', 4.8, ( SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '아누아'), '판매중', NOW(), NOW()),
('에스트라 에이시카365 수분토너 pH4.5 200ml', '에스트라 에이시카365 수분토너 pH4.5 200ml', 4.8, ( SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '에스트라'), '판매중', NOW(), NOW()),
('[9월 올영픽] 아누아 어성초 77 수딩 토너 250ml 기획 (+로션 100ml)', '[9월 올영픽] 아누아 어성초 77 수딩 토너 250ml 기획 (+로션 100ml)', 4.8, ( SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '아누아'), '판매중', NOW(), NOW()),
('[수분진정] 아비브 어성초 카밍 토너 스킨부스터 200ml', '[수분진정] 아비브 어성초 카밍 토너 스킨부스터 200ml', 4.7, ( SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '아비브'), '판매중', NOW(), NOW()),
('[1등 속보습] 라네즈 크림스킨 170ml 단품기획 (+50ml)', '[1등 속보습] 라네즈 크림스킨 170ml 단품기획 (+50ml)', 4.8, ( SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '라네즈'), '판매중', NOW(), NOW()),
('[첫수분토너] 웰라쥬 리얼 히알루로닉 100 토너 300ml 기획 (+화장솜 60매)', '[첫수분토너] 웰라쥬 리얼 히알루로닉 100 토너 300ml 기획 (+화장솜 60매)', 4.9, ( SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '웰라쥬'), '판매중', NOW(), NOW()),
('바이오더마 하이드라비오 토너 250ml', '바이오더마 하이드라비오 토너 250ml', 4.8, ( SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '바이오더마'), '판매중', NOW(), NOW()),
('라로슈포제 똘러리앙 울트라 로션 400ML (대용량)', '라로슈포제 똘러리앙 울트라 로션 400ML (대용량)', 4.9, ( SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '라로슈포제'), '판매중', NOW(), NOW()),
('[수분생기] 라운드랩 자작나무 수분 토너 1+1 기획 (300ml+300ml)', '[수분생기] 라운드랩 자작나무 수분 토너 1+1 기획 (300ml+300ml)', 4.8, ( SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '라운드랩'), '판매중', NOW(), NOW()),
('[속보습] 더랩바이블랑두 저분자 히알루론산 딥 토너 200ml + 50ml 기획', '[속보습] 더랩바이블랑두 저분자 히알루론산 딥 토너 200ml + 50ml 기획', 4.8, ( SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '더랩바이블랑두'), '판매중', NOW(), NOW()),
('[쉐리PICK]폴라초이스 스킨퍼펙팅 바하 리퀴드 118ml 기획 (+바하 리퀴드 30ml)', '[쉐리PICK]폴라초이스 스킨퍼펙팅 바하 리퀴드 118ml 기획 (+바하 리퀴드 30ml)', 4.7, ( SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '폴라초이스'), '판매중', NOW(), NOW()),
('[쿨링진정]넘버즈인 1번 진정 맑게담은 청초토너 300ml 리필기획(+300ml 증정)', '[쿨링진정]넘버즈인 1번 진정 맑게담은 청초토너 300ml 리필기획(+300ml 증정)', 4.8, ( SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '넘버즈인'), '판매중', NOW(), NOW()),
('[9월 올영픽]피지오겔 DMT 에센스 인 토너 200ml (+DMT크림 10ml*2)', '[9월 올영픽]피지오겔 DMT 에센스 인 토너 200ml (+DMT크림 10ml*2)', 4.8, ( SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '피지오겔'), '판매중', NOW(), NOW()),
('[수분장벽토너]유리아쥬 제모스 토너 250ml 2입 기획', '[수분장벽토너]유리아쥬 제모스 토너 250ml 2입 기획', 4.8, ( SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '유리아쥬'), '판매중', NOW(), NOW()),
('[온라인단독] 브링그린 티트리시카수딩 토너 & 크림 세트', '[온라인단독] 브링그린 티트리시카수딩 토너 & 크림 세트', 4.8, ( SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '브링그린'), '판매중', NOW(), NOW()),
('[모공개선/탄력광채] 넘버즈인 3번 결광가득 에센스 토너 300ml 대용량 기획', '[모공개선/탄력광채] 넘버즈인 3번 결광가득 에센스 토너 300ml 대용량 기획', 4.8, ( SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '넘버즈인'), '판매중', NOW(), NOW()),
('[증정기획 진정PDRN] 헤브블루 살몬 PDRN 센텔라 토너 200ml 기획 (+연어 크림 20ml)', '[증정기획 진정PDRN] 헤브블루 살몬 PDRN 센텔라 토너 200ml 기획 (+연어 크림 20ml)', 4.9, ( SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '헤브블루'), '판매중', NOW(), NOW()),
('[대용량/총500ml] 마녀공장 비피다 바이옴 앰플 토너 400ml+100ml 기획', '[대용량/총500ml] 마녀공장 비피다 바이옴 앰플 토너 400ml+100ml 기획', 4.8, ( SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '마녀공장'), '판매중', NOW(), NOW()),
('마녀공장 판테토인 에센스 토너 200ml', '마녀공장 판테토인 에센스 토너 200ml', 4.9, ( SELECT id FROM category WHERE name = '스킨/토너' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '마녀공장'), '판매중', NOW(), NOW());

-- ==============================================
-- 2. 스킨토너 상품 옵션 삽입 (26개)
-- ==============================================

-- 스킨토너 옵션 삽입
INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9월 올영픽] 바이오더마 하이드라비오 토너 500ml 2입 기획')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[증량기획] 토리든 다이브인 저분자 히알루론산 토너 300ml 기획(+100ml 추가 증정)')),
('토너250mL+ 헤어스크런치', 0, (SELECT id FROM product WHERE name = '[피지쓱싹] 브링그린 티트리시카수딩토너 250mL/500mL 기획')),
('토너500ml+피지처방키트3개입', 5400, (SELECT id FROM product WHERE name = '[피지쓱싹] 브링그린 티트리시카수딩토너 250mL/500mL 기획')),
('토너500ml+트러블세럼3ml', 6300, (SELECT id FROM product WHERE name = '[피지쓱싹] 브링그린 티트리시카수딩토너 250mL/500mL 기획')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[한정] 라운드랩 1025 독도 토너 300ml 기획 (+100ml+늘어나는 스킨 패드 30매)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9월 올영픽/NEW 단독기획] 아누아 피디알엔 100 히알루론산 부스터 토너 250ml 기획 (+40ml)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[대용량] 아누아 어성초 77 수딩 토너 500ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '에스트라 에이시카365 수분토너 pH4.5 200ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 어성초 77 수딩 토너 250ml 기획 (+로션 100ml)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분진정] 아비브 어성초 카밍 토너 스킨부스터 200ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[1등 속보습] 라네즈 크림스킨 170ml 단품기획 (+50ml)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[첫수분토너] 웰라쥬 리얼 히알루로닉 100 토너 300ml 기획 (+화장솜 60매)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 토너 250ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '라로슈포제 똘러리앙 울트라 로션 400ML (대용량)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분생기] 라운드랩 자작나무 수분 토너 1+1 기획 (300ml+300ml)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[속보습] 더랩바이블랑두 저분자 히알루론산 딥 토너 200ml + 50ml 기획')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[쉐리PICK]폴라초이스 스킨퍼펙팅 바하 리퀴드 118ml 기획 (+바하 리퀴드 30ml)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[쿨링진정]넘버즈인 1번 진정 맑게담은 청초토너 300ml 리필기획(+300ml 증정)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9월 올영픽]피지오겔 DMT 에센스 인 토너 200ml (+DMT크림 10ml*2)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분장벽토너]유리아쥬 제모스 토너 250ml 2입 기획')),
('토너250+크림100', 0, (SELECT id FROM product WHERE name = '[온라인단독] 브링그린 티트리시카수딩 토너 & 크림 세트')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[모공개선/탄력광채] 넘버즈인 3번 결광가득 에센스 토너 300ml 대용량 기획')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[증정기획 진정PDRN] 헤브블루 살몬 PDRN 센텔라 토너 200ml 기획 (+연어 크림 20ml)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[대용량/총500ml] 마녀공장 비피다 바이옴 앰플 토너 400ml+100ml 기획')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '마녀공장 판테토인 에센스 토너 200ml'));

-- ==============================================
-- 3. 스킨토너 상품 가격 삽입 (48개 - 정가/할인가)
-- ==============================================

-- 스킨토너 가격 삽입
INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(59000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽] 바이오더마 하이드라비오 토너 500ml 2입 기획'), NOW(), NOW()),
(39900, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽] 바이오더마 하이드라비오 토너 500ml 2입 기획'), NOW(), NOW()),
(21000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[증량기획] 토리든 다이브인 저분자 히알루론산 토너 300ml 기획(+100ml 추가 증정)'), NOW(), NOW()),
(15700, 'SALE', (SELECT id FROM product WHERE name = '[증량기획] 토리든 다이브인 저분자 히알루론산 토너 300ml 기획(+100ml 추가 증정)'), NOW(), NOW()),
(15000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[피지쓱싹] 브링그린 티트리시카수딩토너 250mL/500mL 기획'), NOW(), NOW()),
(13500, 'SALE', (SELECT id FROM product WHERE name = '[피지쓱싹] 브링그린 티트리시카수딩토너 250mL/500mL 기획'), NOW(), NOW()),
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[한정] 라운드랩 1025 독도 토너 300ml 기획 (+100ml+늘어나는 스킨 패드 30매)'), NOW(), NOW()),
(20900, 'SALE', (SELECT id FROM product WHERE name = '[한정] 라운드랩 1025 독도 토너 300ml 기획 (+100ml+늘어나는 스킨 패드 30매)'), NOW(), NOW()),
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽/NEW 단독기획] 아누아 피디알엔 100 히알루론산 부스터 토너 250ml 기획 (+40ml)'), NOW(), NOW()),
(16900, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽/NEW 단독기획] 아누아 피디알엔 100 히알루론산 부스터 토너 250ml 기획 (+40ml)'), NOW(), NOW()),
(45000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[대용량] 아누아 어성초 77 수딩 토너 500ml'), NOW(), NOW()),
(26500, 'SALE', (SELECT id FROM product WHERE name = '[대용량] 아누아 어성초 77 수딩 토너 500ml'), NOW(), NOW()),
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '에스트라 에이시카365 수분토너 pH4.5 200ml'), NOW(), NOW()),
(24900, 'SALE', (SELECT id FROM product WHERE name = '에스트라 에이시카365 수분토너 pH4.5 200ml'), NOW(), NOW()),
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 어성초 77 수딩 토너 250ml 기획 (+로션 100ml)'), NOW(), NOW()),
(19900, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 어성초 77 수딩 토너 250ml 기획 (+로션 100ml)'), NOW(), NOW()),
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분진정] 아비브 어성초 카밍 토너 스킨부스터 200ml'), NOW(), NOW()),
(16100, 'SALE', (SELECT id FROM product WHERE name = '[수분진정] 아비브 어성초 카밍 토너 스킨부스터 200ml'), NOW(), NOW()),
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1등 속보습] 라네즈 크림스킨 170ml 단품기획 (+50ml)'), NOW(), NOW()),
(26400, 'SALE', (SELECT id FROM product WHERE name = '[1등 속보습] 라네즈 크림스킨 170ml 단품기획 (+50ml)'), NOW(), NOW()),
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[첫수분토너] 웰라쥬 리얼 히알루로닉 100 토너 300ml 기획 (+화장솜 60매)'), NOW(), NOW()),
(28000, 'SALE', (SELECT id FROM product WHERE name = '[첫수분토너] 웰라쥬 리얼 히알루로닉 100 토너 300ml 기획 (+화장솜 60매)'), NOW(), NOW()),
(29000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 토너 250ml'), NOW(), NOW()),
(29000, 'SALE', (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 토너 250ml'), NOW(), NOW()),
(49000, 'ORIGINAL', (SELECT id FROM product WHERE name = '라로슈포제 똘러리앙 울트라 로션 400ML (대용량)'), NOW(), NOW()),
(44100, 'SALE', (SELECT id FROM product WHERE name = '라로슈포제 똘러리앙 울트라 로션 400ML (대용량)'), NOW(), NOW()),
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분생기] 라운드랩 자작나무 수분 토너 1+1 기획 (300ml+300ml)'), NOW(), NOW()),
(23800, 'SALE', (SELECT id FROM product WHERE name = '[수분생기] 라운드랩 자작나무 수분 토너 1+1 기획 (300ml+300ml)'), NOW(), NOW()),
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[속보습] 더랩바이블랑두 저분자 히알루론산 딥 토너 200ml + 50ml 기획'), NOW(), NOW()),
(15990, 'SALE', (SELECT id FROM product WHERE name = '[속보습] 더랩바이블랑두 저분자 히알루론산 딥 토너 200ml + 50ml 기획'), NOW(), NOW()),
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[쉐리PICK]폴라초이스 스킨퍼펙팅 바하 리퀴드 118ml 기획 (+바하 리퀴드 30ml)'), NOW(), NOW()),
(28000, 'SALE', (SELECT id FROM product WHERE name = '[쉐리PICK]폴라초이스 스킨퍼펙팅 바하 리퀴드 118ml 기획 (+바하 리퀴드 30ml)'), NOW(), NOW()),
(40000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[쿨링진정]넘버즈인 1번 진정 맑게담은 청초토너 300ml 리필기획(+300ml 증정)'), NOW(), NOW()),
(27000, 'SALE', (SELECT id FROM product WHERE name = '[쿨링진정]넘버즈인 1번 진정 맑게담은 청초토너 300ml 리필기획(+300ml 증정)'), NOW(), NOW()),
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽]피지오겔 DMT 에센스 인 토너 200ml (+DMT크림 10ml*2)'), NOW(), NOW()),
(22800, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽]피지오겔 DMT 에센스 인 토너 200ml (+DMT크림 10ml*2)'), NOW(), NOW()),
(56000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분장벽토너]유리아쥬 제모스 토너 250ml 2입 기획'), NOW(), NOW()),
(29800, 'SALE', (SELECT id FROM product WHERE name = '[수분장벽토너]유리아쥬 제모스 토너 250ml 2입 기획'), NOW(), NOW()),
(34000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[온라인단독] 브링그린 티트리시카수딩 토너 & 크림 세트'), NOW(), NOW()),
(20500, 'SALE', (SELECT id FROM product WHERE name = '[온라인단독] 브링그린 티트리시카수딩 토너 & 크림 세트'), NOW(), NOW()),
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[모공개선/탄력광채] 넘버즈인 3번 결광가득 에센스 토너 300ml 대용량 기획'), NOW(), NOW()),
(23000, 'SALE', (SELECT id FROM product WHERE name = '[모공개선/탄력광채] 넘버즈인 3번 결광가득 에센스 토너 300ml 대용량 기획'), NOW(), NOW()),
(41900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[증정기획 진정PDRN] 헤브블루 살몬 PDRN 센텔라 토너 200ml 기획 (+연어 크림 20ml)'), NOW(), NOW()),
(26800, 'SALE', (SELECT id FROM product WHERE name = '[증정기획 진정PDRN] 헤브블루 살몬 PDRN 센텔라 토너 200ml 기획 (+연어 크림 20ml)'), NOW(), NOW()),
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[대용량/총500ml] 마녀공장 비피다 바이옴 앰플 토너 400ml+100ml 기획'), NOW(), NOW()),
(16630, 'SALE', (SELECT id FROM product WHERE name = '[대용량/총500ml] 마녀공장 비피다 바이옴 앰플 토너 400ml+100ml 기획'), NOW(), NOW()),
(21000, 'ORIGINAL', (SELECT id FROM product WHERE name = '마녀공장 판테토인 에센스 토너 200ml'), NOW(), NOW()),
(14600, 'SALE', (SELECT id FROM product WHERE name = '마녀공장 판테토인 에센스 토너 200ml'), NOW(), NOW());

-- ==============================================
-- 4. 스킨토너 상품 이미지 삽입 (총 67개 이미지)
-- ==============================================

-- 스킨토너 이미지 삽입 (전체 이미지 데이터)
INSERT INTO product_img (img_url, img_order, product_id) VALUES
-- 바이오더마 하이드라비오 토너 500ml 2입 기획 (product_id: 1)
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023219702ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽] 바이오더마 하이드라비오 토너 500ml 2입 기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023219706ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽] 바이오더마 하이드라비오 토너 500ml 2입 기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023219705ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽] 바이오더마 하이드라비오 토너 500ml 2입 기획')),

-- 토리든 다이브인 저분자 히알루론산 토너 (product_id: 2)
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017026613ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[증량기획] 토리든 다이브인 저분자 히알루론산 토너 300ml 기획(+100ml 추가 증정)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017026611ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[증량기획] 토리든 다이브인 저분자 히알루론산 토너 300ml 기획(+100ml 추가 증정)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017026609ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[증량기획] 토리든 다이브인 저분자 히알루론산 토너 300ml 기획(+100ml 추가 증정)')),

-- 브링그린 티트리시카수딩토너 (product_id: 3)
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018918127ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[피지쓱싹] 브링그린 티트리시카수딩토너 250mL/500mL 기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018918117ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[피지쓱싹] 브링그린 티트리시카수딩토너 250mL/500mL 기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018918125ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[피지쓱싹] 브링그린 티트리시카수딩토너 250mL/500mL 기획')),

-- 라운드랩 1025 독도 토너 (product_id: 4)
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023251305ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[한정] 라운드랩 1025 독도 토너 300ml 기획 (+100ml+늘어나는 스킨 패드 30매)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023251304ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[한정] 라운드랩 1025 독도 토너 300ml 기획 (+100ml+늘어나는 스킨 패드 30매)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023251301ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[한정] 라운드랩 1025 독도 토너 300ml 기획 (+100ml+늘어나는 스킨 패드 30매)')),

-- 아누아 피디알엔 100 히알루론산 부스터 토너 (product_id: 5)
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189108ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽/NEW 단독기획] 아누아 피디알엔 100 히알루론산 부스터 토너 250ml 기획 (+40ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189110ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽/NEW 단독기획] 아누아 피디알엔 100 히알루론산 부스터 토너 250ml 기획 (+40ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189103ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽/NEW 단독기획] 아누아 피디알엔 100 히알루론산 부스터 토너 250ml 기획 (+40ml)')),

-- 아누아 어성초 77 수딩 토너 500ml (product_id: 6)
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021113309ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[대용량] 아누아 어성초 77 수딩 토너 500ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021113305ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[대용량] 아누아 어성초 77 수딩 토너 500ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021113306ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[대용량] 아누아 어성초 77 수딩 토너 500ml')),

-- 에스트라 에이시카365 수분토너 (product_id: 7)
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021854909ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '에스트라 에이시카365 수분토너 pH4.5 200ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021854901ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '에스트라 에이시카365 수분토너 pH4.5 200ml')),

-- 아누아 어성초 77 수딩 토너 250ml 기획 (product_id: 8)
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021635008ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 어성초 77 수딩 토너 250ml 기획 (+로션 100ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021635009ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 어성초 77 수딩 토너 250ml 기획 (+로션 100ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021635007ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽] 아누아 어성초 77 수딩 토너 250ml 기획 (+로션 100ml)')),

-- 아비브 어성초 카밍 토너 스킨부스터 (product_id: 9)
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014658915ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분진정] 아비브 어성초 카밍 토너 스킨부스터 200ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014658910ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분진정] 아비브 어성초 카밍 토너 스킨부스터 200ml')),

-- 라네즈 크림스킨 170ml 단품기획 (product_id: 10)
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021100301ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[1등 속보습] 라네즈 크림스킨 170ml 단품기획 (+50ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021100302ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[1등 속보습] 라네즈 크림스킨 170ml 단품기획 (+50ml)')),

-- 웰라쥬 리얼 히알루로닉 100 토너 (product_id: 11)
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018887439ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[첫수분토너] 웰라쥬 리얼 히알루로닉 100 토너 300ml 기획 (+화장솜 60매)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018887440ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[첫수분토너] 웰라쥬 리얼 히알루로닉 100 토너 300ml 기획 (+화장솜 60매)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018887441ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[첫수분토너] 웰라쥬 리얼 히알루로닉 100 토너 300ml 기획 (+화장솜 60매)')),

-- 바이오더마 하이드라비오 토너 250ml (product_id: 12)
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0000/A00000000443410ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 토너 250ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0000/A00000000443416ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '바이오더마 하이드라비오 토너 250ml')),

-- 라로슈포제 똘러리앙 울트라 로션 400ML (product_id: 13)
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013934803ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '라로슈포제 똘러리앙 울트라 로션 400ML (대용량)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013934804ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '라로슈포제 똘러리앙 울트라 로션 400ML (대용량)')),

-- 라운드랩 자작나무 수분 토너 1+1 기획 (product_id: 14)
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015717818ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분생기] 라운드랩 자작나무 수분 토너 1+1 기획 (300ml+300ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015717814ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분생기] 라운드랩 자작나무 수분 토너 1+1 기획 (300ml+300ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015717819ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분생기] 라운드랩 자작나무 수분 토너 1+1 기획 (300ml+300ml)')),

-- 더랩바이블랑두 저분자 히알루론산 딥 토너 (product_id: 15)
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018948817ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[속보습] 더랩바이블랑두 저분자 히알루론산 딥 토너 200ml + 50ml 기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018948816ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[속보습] 더랩바이블랑두 저분자 히알루론산 딥 토너 200ml + 50ml 기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018948813ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[속보습] 더랩바이블랑두 저분자 히알루론산 딥 토너 200ml + 50ml 기획')),

-- 폴라초이스 스킨퍼펙팅 바하 리퀴드 (product_id: 16)
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021055013ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[쉐리PICK]폴라초이스 스킨퍼펙팅 바하 리퀴드 118ml 기획 (+바하 리퀴드 30ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021055008ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[쉐리PICK]폴라초이스 스킨퍼펙팅 바하 리퀴드 118ml 기획 (+바하 리퀴드 30ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021055007ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[쉐리PICK]폴라초이스 스킨퍼펙팅 바하 리퀴드 118ml 기획 (+바하 리퀴드 30ml)')),

-- 넘버즈인 1번 진정 맑게담은 청초토너 (product_id: 17)
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019039516ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[쿨링진정]넘버즈인 1번 진정 맑게담은 청초토너 300ml 리필기획(+300ml 증정)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019039517ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[쿨링진정]넘버즈인 1번 진정 맑게담은 청초토너 300ml 리필기획(+300ml 증정)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019039512ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[쿨링진정]넘버즈인 1번 진정 맑게담은 청초토너 300ml 리필기획(+300ml 증정)')),

-- 피지오겔 DMT 에센스 인 토너 (product_id: 18)
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023218807ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽]피지오겔 DMT 에센스 인 토너 200ml (+DMT크림 10ml*2)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023218808ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽]피지오겔 DMT 에센스 인 토너 200ml (+DMT크림 10ml*2)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023218806ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽]피지오겔 DMT 에센스 인 토너 200ml (+DMT크림 10ml*2)')),

-- 유리아쥬 제모스 토너 250ml 2입 기획 (product_id: 19)
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022321907ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분장벽토너]유리아쥬 제모스 토너 250ml 2입 기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022321904ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분장벽토너]유리아쥬 제모스 토너 250ml 2입 기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022321903ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분장벽토너]유리아쥬 제모스 토너 250ml 2입 기획')),

-- 브링그린 티트리시카수딩 토너 & 크림 세트 (product_id: 20)
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018899002ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[온라인단독] 브링그린 티트리시카수딩 토너 & 크림 세트')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018899004ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[온라인단독] 브링그린 티트리시카수딩 토너 & 크림 세트')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018899003ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[온라인단독] 브링그린 티트리시카수딩 토너 & 크림 세트')),

-- 넘버즈인 3번 결광가득 에센스 토너 (product_id: 21)
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017358912ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[모공개선/탄력광채] 넘버즈인 3번 결광가득 에센스 토너 300ml 대용량 기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017358910ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[모공개선/탄력광채] 넘버즈인 3번 결광가득 에센스 토너 300ml 대용량 기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017358903ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[모공개선/탄력광채] 넘버즈인 3번 결광가득 에센스 토너 300ml 대용량 기획')),

-- 헤브블루 살몬 PDRN 센텔라 토너 (product_id: 22)
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021041515ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[증정기획 진정PDRN] 헤브블루 살몬 PDRN 센텔라 토너 200ml 기획 (+연어 크림 20ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021041513ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[증정기획 진정PDRN] 헤브블루 살몬 PDRN 센텔라 토너 200ml 기획 (+연어 크림 20ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021041510ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[증정기획 진정PDRN] 헤브블루 살몬 PDRN 센텔라 토너 200ml 기획 (+연어 크림 20ml)')),

-- 마녀공장 비피다 바이옴 앰플 토너 (product_id: 23)
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014828522ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[대용량/총500ml] 마녀공장 비피다 바이옴 앰플 토너 400ml+100ml 기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014828521ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[대용량/총500ml] 마녀공장 비피다 바이옴 앰플 토너 400ml+100ml 기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014828517ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[대용량/총500ml] 마녀공장 비피다 바이옴 앰플 토너 400ml+100ml 기획')),

-- 마녀공장 판테토인 에센스 토너 (product_id: 24)
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019940516ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '마녀공장 판테토인 에센스 토너 200ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019940515ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '마녀공장 판테토인 에센스 토너 200ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019940507ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '마녀공장 판테토인 에센스 토너 200ml'));

-- ==============================================
-- 5. 스킨토너 상품 재고 삽입 (26개 옵션)
-- ==============================================

-- 스킨토너 재고 삽입 (각 옵션별 기본 재고 100개)
INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at) 
SELECT 'SELLING', 100, po.id, NOW() 
FROM product_option po 
JOIN product p ON po.product_id = p.id 
JOIN category c ON p.category_id = c.id 
WHERE c.name = '스킨/토너';

-- ==============================================
-- 스크립트 실행 완료 메시지
-- ==============================================
SELECT 'JSON 기반 스킨토너 데이터 삽입이 완료되었습니다.' as message;