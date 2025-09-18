-- ==============================================
-- 로션 JSON 데이터 기반 INSERT 스크립트
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
-- 1. 로션 상품 기본 정보 삽입 (48개)
-- ==============================================

-- 로션 상품 삽입 (24개)
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽]피지오겔 DMT 페이셜 로션 200ml 기획 (+로션 50ml)', '[9월 올영픽]피지오겔 DMT 페이셜 로션 200ml 기획 (+로션 50ml)', 4.9, (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '피지오겔'), '판매중', NOW(), NOW()),
('[화잘먹로션/속광케어] 온그리디언츠 스킨 베리어 카밍 로션 기획 (220ml+80ml)', '[화잘먹로션/속광케어] 온그리디언츠 스킨 베리어 카밍 로션 기획 (220ml+80ml)', 4.9, (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '온그리디언츠'), '판매중', NOW(), NOW()),
('[미니언즈 한정 에디션] 온그리디언츠 스킨 베리어 카밍 로션 기획(220ml+80ml)', '[미니언즈 한정 에디션] 온그리디언츠 스킨 베리어 카밍 로션 기획(220ml+80ml)', 4.9, (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '온그리디언츠'), '판매중', NOW(), NOW()),
('[저자극/대용량] 라운드랩 1025 독도 로션 400ml', '[저자극/대용량] 라운드랩 1025 독도 로션 400ml', 4.8, (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '라운드랩'), '판매중', NOW(), NOW()),
('[속보습/수분로션] 닥터지 더모이스처 배리어 D 로션 300ml 기획 (+멀티밤 1g)', '[속보습/수분로션] 닥터지 더모이스처 배리어 D 로션 300ml 기획 (+멀티밤 1g)', 4.8, (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '닥터지'), '판매중', NOW(), NOW()),
('에스트라 아토베리어365 로션 150ml', '에스트라 아토베리어365 로션 150ml', 4.8, (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '에스트라'), '판매중', NOW(), NOW()),
('아누아 어성초 70 데일리 로션 200ml', '아누아 어성초 70 데일리 로션 200ml', 4.8, (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '아누아'), '판매중', NOW(), NOW()),
('제로이드 인텐시브 로션 160ml', '제로이드 인텐시브 로션 160ml', 4.8, (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '제로이드'), '판매중', NOW(), NOW()),
('디오디너리 그랜액티브 레티노이드 2% 에멀전 30ml', '디오디너리 그랜액티브 레티노이드 2% 에멀전 30ml', 4.6, (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '디오디너리'), '판매중', NOW(), NOW()),
('[NEW]오브제 포어 제로 오일 컨트롤 로션 70ml', '[NEW]오브제 포어 제로 오일 컨트롤 로션 70ml', 4.9, (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '오브제'), '판매중', NOW(), NOW()),
('제로이드 수딩 로션 160ml', '제로이드 수딩 로션 160ml', 4.7, (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '제로이드'), '판매중', NOW(), NOW()),
('[저자극] 라운드랩 1025 독도 로션 200ml 기획 (+50ml)', '[저자극] 라운드랩 1025 독도 로션 200ml 기획 (+50ml)', 4.8, (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '라운드랩'), '판매중', NOW(), NOW()),
('싸이닉 더 심플 데일리 로션 260ml', '싸이닉 더 심플 데일리 로션 260ml', 4.8, (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '싸이닉'), '판매중', NOW(), NOW()),
('[시카보다 4배*강한] 한율 어린쑥 수분진정 플루이드 125ml', '[시카보다 4배*강한] 한율 어린쑥 수분진정 플루이드 125ml', 4.8, (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '한율'), '판매중', NOW(), NOW()),
('피지오겔 레드수딩 AI 진정보습 로션 200ml', '피지오겔 레드수딩 AI 진정보습 로션 200ml', 4.8, (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '피지오겔'), '판매중', NOW(), NOW()),
('피지오겔 시카밸런스 포맨 카밍 플루이드 100ml', '피지오겔 시카밸런스 포맨 카밍 플루이드 100ml', 4.9, (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '피지오겔'), '판매중', NOW(), NOW()),
('[수분진정] 라운드랩 포 맨 자작나무 수분 로션 200ml', '[수분진정] 라운드랩 포 맨 자작나무 수분 로션 200ml', 4.8, (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '라운드랩'), '판매중', NOW(), NOW()),
('아크웰 리얼 아쿠아 밸런싱 로션 140ml', '아크웰 리얼 아쿠아 밸런싱 로션 140ml', 4.9, (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '아크웰'), '판매중', NOW(), NOW()),
('[화잘먹/윤광미백] 식물나라 뽀얀쌀 맑은톤 로션 300mL', '[화잘먹/윤광미백] 식물나라 뽀얀쌀 맑은톤 로션 300mL', 4.6, (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '식물나라'), '판매중', NOW(), NOW()),
('[NEW] 토리든 밸런스풀 포맨 시카 오일프리 로션 200ml', '[NEW] 토리든 밸런스풀 포맨 시카 오일프리 로션 200ml', 4.9, (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '토리든'), '판매중', NOW(), NOW()),
('이니스프리 그린티 로션 포맨 150ml', '이니스프리 그린티 로션 포맨 150ml', 4.6, (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '이니스프리'), '판매중', NOW(), NOW()),
('[민감진정/화해1위] 라운드랩 포 맨 소나무 진정 시카 로션 200ml', '[민감진정/화해1위] 라운드랩 포 맨 소나무 진정 시카 로션 200ml', 4.9, (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '라운드랩'), '판매중', NOW(), NOW()),
('[수분진정] 이니스프리 그린티 히알루론산 로션 170ml', '[수분진정] 이니스프리 그린티 히알루론산 로션 170ml', 4.8, (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '이니스프리'), '판매중', NOW(), NOW()),
('아크네스 모이스처 플루이드 150ml', '아크네스 모이스처 플루이드 150ml', 4.7, (SELECT id FROM category WHERE name = '로션' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '아크네스'), '판매중', NOW(), NOW());

-- 올인원 상품 삽입 (24개)
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[김혜성PICK] 아이디얼포맨 퍼펙트 올인원 기획세트(+100ml증정)', '[김혜성PICK] 아이디얼포맨 퍼펙트 올인원 기획세트(+100ml증정)', 4.9, (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '아이디얼포맨'), '판매중', NOW(), NOW()),
('[9년 연속 1위] 아이오페 맨 올데이 퍼펙트 올인원 120ml 기획 (+30ml)', '[9년 연속 1위] 아이오페 맨 올데이 퍼펙트 올인원 120ml 기획 (+30ml)', 4.9, (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '아이오페'), '판매중', NOW(), NOW()),
('[리뉴얼/트러블/면도후] 닥터지 레드 블레미쉬 포 맨 진정 올인원 150ml 2종 (단품/증정 기획)', '[리뉴얼/트러블/면도후] 닥터지 레드 블레미쉬 포 맨 진정 올인원 150ml 2종 (단품/증정 기획)', 4.9, (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '닥터지'), '판매중', NOW(), NOW()),
('오브제 포어 제로 프레쉬 올인원 150ml 단품/기획 2종 택1', '오브제 포어 제로 프레쉬 올인원 150ml 단품/기획 2종 택1', 5.0, (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '오브제'), '판매중', NOW(), NOW()),
('[지성피부/유분케어] 라운드랩 포 맨 1025 독도 올인원 젤 로션 200ml+200ml', '[지성피부/유분케어] 라운드랩 포 맨 1025 독도 올인원 젤 로션 200ml+200ml', 4.9, (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '라운드랩'), '판매중', NOW(), NOW()),
('우르오스 올인원 스킨로션 200ml', '우르오스 올인원 스킨로션 200ml', 4.8, (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '우르오스'), '판매중', NOW(), NOW()),
('아이오페 맨 프로 레티놀 올인원 120ml 기획 (+30ml)', '아이오페 맨 프로 레티놀 올인원 120ml 기획 (+30ml)', 4.9, (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '아이오페'), '판매중', NOW(), NOW()),
('[개기름/지성] 닥터지 레드 블레미쉬 포 맨 올인원 오일컷 로션 150ml 3종 (단품/증정 기획)', '[개기름/지성] 닥터지 레드 블레미쉬 포 맨 올인원 오일컷 로션 150ml 3종 (단품/증정 기획)', 4.9, (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '닥터지'), '판매중', NOW(), NOW()),
('[단독특가]우르오스 페이셜케어 기획세트 중건성&지복합성 4종 택1', '[단독특가]우르오스 페이셜케어 기획세트 중건성&지복합성 4종 택1', 4.8, (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '우르오스'), '판매중', NOW(), NOW()),
('[1+1/단독기획] 토리든 다이브인 포맨 저분자 히알루론산 올인원 200g 더블 기획', '[1+1/단독기획] 토리든 다이브인 포맨 저분자 히알루론산 올인원 200g 더블 기획', 4.9, (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '토리든'), '판매중', NOW(), NOW()),
('[티벳동생PICK] 토리든 밸런스풀 포맨 시카 프레쉬 올인원 200g 기획/단품(+올인원 20g)', '[티벳동생PICK] 토리든 밸런스풀 포맨 시카 프레쉬 올인원 200g 기획/단품(+올인원 20g)', 4.8, (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '토리든'), '판매중', NOW(), NOW()),
('그라운드랩 올인원 모이스처라이저 스킨 로션 200ml', '그라운드랩 올인원 모이스처라이저 스킨 로션 200ml', 5.0, (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '그라운드랩'), '판매중', NOW(), NOW()),
('[김혜성PICK/여드름피부적합] 아이디얼포맨 시카 올인원 (단품/증정기획)', '[김혜성PICK/여드름피부적합] 아이디얼포맨 시카 올인원 (단품/증정기획)', 4.9, (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '아이디얼포맨'), '판매중', NOW(), NOW()),
('우르오스 올인원 스킨밀크 200ml', '우르오스 올인원 스킨밀크 200ml', 4.8, (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '우르오스'), '판매중', NOW(), NOW()),
('우르오스 올인원 200ml 2종 택 1', '우르오스 올인원 200ml 2종 택 1', 4.8, (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '우르오스'), '판매중', NOW(), NOW()),
('포맨트 시그니처 올인원 에센스 96ml', '포맨트 시그니처 올인원 에센스 96ml', 4.9, (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '포맨트'), '판매중', NOW(), NOW()),
('[문장군 공동개발] 미닉 퍼펙트 콜라드 그린 진정 올인원 200ml', '[문장군 공동개발] 미닉 퍼펙트 콜라드 그린 진정 올인원 200ml', 4.9, (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '미닉'), '판매중', NOW(), NOW()),
('무슈제이 베이직 아쿠아 보습 올인원 1+1 기획(200ml+200ml)', '무슈제이 베이직 아쿠아 보습 올인원 1+1 기획(200ml+200ml)', 4.8, (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '무슈제이'), '판매중', NOW(), NOW()),
('[NEW/2종추가증정] 이니스프리 포레스트포맨 올인원 에센스 100ml 기획(+에센스 25ml+폼30g)', '[NEW/2종추가증정] 이니스프리 포레스트포맨 올인원 에센스 100ml 기획(+에센스 25ml+폼30g)', 4.9, (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '이니스프리'), '판매중', NOW(), NOW()),
('비오템 옴므 아쿠아파워 올인원 세트 (클렌저 40ml+올인원 20ml)', '비오템 옴므 아쿠아파워 올인원 세트 (클렌저 40ml+올인원 20ml)', 4.9, (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '비오템'), '판매중', NOW(), NOW()),
('헤라 옴므 올인원 스킨 하이드로 트리트먼트 150ML', '헤라 옴므 올인원 스킨 하이드로 트리트먼트 150ML', 4.8, (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '헤라'), '판매중', NOW(), NOW()),
('[단독기획]토리든 다이브인 포맨 저분자 히알루론산 올인원 200g 단품/기획 (+올인원 20g)', '[단독기획]토리든 다이브인 포맨 저분자 히알루론산 올인원 200g 단품/기획 (+올인원 20g)', 4.9, (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '토리든'), '판매중', NOW(), NOW()),
('[김혜성PICK/개기름박멸]아이디얼포맨 프레시 올인원 150ml 1+1 기획', '[김혜성PICK/개기름박멸]아이디얼포맨 프레시 올인원 150ml 1+1 기획', 4.9, (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '아이디얼포맨'), '판매중', NOW(), NOW()),
('[김혜성PICK/자외선차단]아이디얼포맨 선 올인원 140ml', '[김혜성PICK/자외선차단]아이디얼포맨 선 올인원 140ml', 4.9, (SELECT id FROM category WHERE name = '올인원' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '아이디얼포맨'), '판매중', NOW(), NOW());

-- ==============================================
-- 2. 로션 상품 옵션 삽입 (64개)
-- ==============================================

-- 로션 옵션 삽입 (25개)
INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9월 올영픽]피지오겔 DMT 페이셜 로션 200ml 기획 (+로션 50ml)')),
('로션 기획(220ml+80ml)', 6000, (SELECT id FROM product WHERE name = '[화잘먹로션/속광케어] 온그리디언츠 스킨 베리어 카밍 로션 기획 (220ml+80ml)')),
('[콜라보] 로션 기획(300ml+스티커)', 0, (SELECT id FROM product WHERE name = '[화잘먹로션/속광케어] 온그리디언츠 스킨 베리어 카밍 로션 기획 (220ml+80ml)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[미니언즈 한정 에디션] 온그리디언츠 스킨 베리어 카밍 로션 기획(220ml+80ml)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[저자극/대용량] 라운드랩 1025 독도 로션 400ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[속보습/수분로션] 닥터지 더모이스처 배리어 D 로션 300ml 기획 (+멀티밤 1g)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '에스트라 아토베리어365 로션 150ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아누아 어성초 70 데일리 로션 200ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '제로이드 인텐시브 로션 160ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '디오디너리 그랜액티브 레티노이드 2% 에멀전 30ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW]오브제 포어 제로 오일 컨트롤 로션 70ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '제로이드 수딩 로션 160ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[저자극] 라운드랩 1025 독도 로션 200ml 기획 (+50ml)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '싸이닉 더 심플 데일리 로션 260ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[시카보다 4배*강한] 한율 어린쑥 수분진정 플루이드 125ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '피지오겔 레드수딩 AI 진정보습 로션 200ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '피지오겔 시카밸런스 포맨 카밍 플루이드 100ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분진정] 라운드랩 포 맨 자작나무 수분 로션 200ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아크웰 리얼 아쿠아 밸런싱 로션 140ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[화잘먹/윤광미백] 식물나라 뽀얀쌀 맑은톤 로션 300mL')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW] 토리든 밸런스풀 포맨 시카 오일프리 로션 200ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '이니스프리 그린티 로션 포맨 150ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[민감진정/화해1위] 라운드랩 포 맨 소나무 진정 시카 로션 200ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분진정] 이니스프리 그린티 히알루론산 로션 170ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아크네스 모이스처 플루이드 150ml'));

-- 올인원 옵션 삽입 (39개)
INSERT INTO product_option (name, additional_amount, product_id) VALUES
('+100ml 기획', 0, (SELECT id FROM product WHERE name = '[김혜성PICK] 아이디얼포맨 퍼펙트 올인원 기획세트(+100ml증정)')),
('+30ml 기획', 0, (SELECT id FROM product WHERE name = '[김혜성PICK] 아이디얼포맨 퍼펙트 올인원 기획세트(+100ml증정)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[김혜성PICK] 아이디얼포맨 퍼펙트 올인원 기획세트(+100ml증정)')),
('올케어(본품+바디워시+클렌징폼)', 5000, (SELECT id FROM product WHERE name = '[김혜성PICK] 아이디얼포맨 퍼펙트 올인원 기획세트(+100ml증정)')),
('+30ml 증정 기획', 0, (SELECT id FROM product WHERE name = '[9년 연속 1위] 아이오페 맨 올데이 퍼펙트 올인원 120ml 기획 (+30ml)')),
('단품', 0, (SELECT id FROM product WHERE name = '[9년 연속 1위] 아이오페 맨 올데이 퍼펙트 올인원 120ml 기획 (+30ml)')),
('진정올인원 150ml+75ml', 3600, (SELECT id FROM product WHERE name = '[리뉴얼/트러블/면도후] 닥터지 레드 블레미쉬 포 맨 진정 올인원 150ml 2종 (단품/증정 기획)')),
('진정올인원 150ml', 0, (SELECT id FROM product WHERE name = '[리뉴얼/트러블/면도후] 닥터지 레드 블레미쉬 포 맨 진정 올인원 150ml 2종 (단품/증정 기획)')),
('기획(+올인원 30ml)', 0, (SELECT id FROM product WHERE name = '오브제 포어 제로 프레쉬 올인원 150ml 단품/기획 2종 택1')),
('단품', 0, (SELECT id FROM product WHERE name = '오브제 포어 제로 프레쉬 올인원 150ml 단품/기획 2종 택1')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[지성피부/유분케어] 라운드랩 포 맨 1025 독도 올인원 젤 로션 200ml+200ml')),
('우르오스 올인원 스킨로션', 0, (SELECT id FROM product WHERE name = '우르오스 올인원 스킨로션 200ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '아이오페 맨 프로 레티놀 올인원 120ml 기획 (+30ml)')),
('(증정) 150ml+30ml+패드2매*3', 0, (SELECT id FROM product WHERE name = '[개기름/지성] 닥터지 레드 블레미쉬 포 맨 올인원 오일컷 로션 150ml 3종 (단품/증정 기획)')),
('150ml+30ml', 1600, (SELECT id FROM product WHERE name = '[개기름/지성] 닥터지 레드 블레미쉬 포 맨 올인원 오일컷 로션 150ml 3종 (단품/증정 기획)')),
('중건성 페이셜케어 기획세트', 0, (SELECT id FROM product WHERE name = '[단독특가]우르오스 페이셜케어 기획세트 중건성&지복합성 4종 택1')),
('지복합성 페이셜케어 기획세트', 0, (SELECT id FROM product WHERE name = '[단독특가]우르오스 페이셜케어 기획세트 중건성&지복합성 4종 택1')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[1+1/단독기획] 토리든 다이브인 포맨 저분자 히알루론산 올인원 200g 더블 기획')),
('밸런스풀 올인원 (+올인원20g)', 0, (SELECT id FROM product WHERE name = '[티벳동생PICK] 토리든 밸런스풀 포맨 시카 프레쉬 올인원 200g 기획/단품(+올인원 20g)')),
('밸런스풀 올인원', 5800, (SELECT id FROM product WHERE name = '[티벳동생PICK] 토리든 밸런스풀 포맨 시카 프레쉬 올인원 200g 기획/단품(+올인원 20g)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '그라운드랩 올인원 모이스처라이저 스킨 로션 200ml')),
('시카 올인원 증정기획 150ml+50ml', 0, (SELECT id FROM product WHERE name = '[김혜성PICK/여드름피부적합] 아이디얼포맨 시카 올인원 (단품/증정기획)')),
('우르오스 올인원 스킨 밀크', 0, (SELECT id FROM product WHERE name = '우르오스 올인원 스킨밀크 200ml')),
('스킨밀크 200ml', 0, (SELECT id FROM product WHERE name = '우르오스 올인원 200ml 2종 택 1')),
('스킨로션 200ml', 0, (SELECT id FROM product WHERE name = '우르오스 올인원 200ml 2종 택 1')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '포맨트 시그니처 올인원 에센스 96ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[문장군 공동개발] 미닉 퍼펙트 콜라드 그린 진정 올인원 200ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '무슈제이 베이직 아쿠아 보습 올인원 1+1 기획(200ml+200ml)')),
('포어케어 올인원 기획세트', 0, (SELECT id FROM product WHERE name = '[NEW/2종추가증정] 이니스프리 포레스트포맨 올인원 에센스 100ml 기획(+에센스 25ml+폼30g)')),
('센서티브 올인원 기획세트', 0, (SELECT id FROM product WHERE name = '[NEW/2종추가증정] 이니스프리 포레스트포맨 올인원 에센스 100ml 기획(+에센스 25ml+폼30g)')),
('안티에이징 올인원 기획세트', 0, (SELECT id FROM product WHERE name = '[NEW/2종추가증정] 이니스프리 포레스트포맨 올인원 에센스 100ml 기획(+에센스 25ml+폼30g)')),
('기획(+클렌저40ml, 올인원20ml)', 0, (SELECT id FROM product WHERE name = '비오템 옴므 아쿠아파워 올인원 세트 (클렌저 40ml+올인원 20ml)')),
('올인원 200ml 단품', 0, (SELECT id FROM product WHERE name = '비오템 옴므 아쿠아파워 올인원 세트 (클렌저 40ml+올인원 20ml)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '헤라 옴므 올인원 스킨 하이드로 트리트먼트 150ML')),
('다이브인 포맨 올인원 증량기획(+올인원)', 0, (SELECT id FROM product WHERE name = '[단독기획]토리든 다이브인 포맨 저분자 히알루론산 올인원 200g 단품/기획 (+올인원 20g)')),
('다이브인 포맨 올인원', 0, (SELECT id FROM product WHERE name = '[단독기획]토리든 다이브인 포맨 저분자 히알루론산 올인원 200g 단품/기획 (+올인원 20g)')),
('[프레시 1+1] 150ml+150ml', 2000, (SELECT id FROM product WHERE name = '[김혜성PICK/개기름박멸]아이디얼포맨 프레시 올인원 150ml 1+1 기획')),
('[프레시 증정기획] 150ml+50ml', 0, (SELECT id FROM product WHERE name = '[김혜성PICK/개기름박멸]아이디얼포맨 프레시 올인원 150ml 1+1 기획')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[김혜성PICK/자외선차단]아이디얼포맨 선 올인원 140ml'));

-- ==============================================
-- 3. 로션 상품 가격 삽입 (96개 - 정가/할인가)
-- ==============================================

-- 로션 가격 삽입 (48개)
INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽]피지오겔 DMT 페이셜 로션 200ml 기획 (+로션 50ml)'), NOW(), NOW()),
(20900, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽]피지오겔 DMT 페이셜 로션 200ml 기획 (+로션 50ml)'), NOW(), NOW()),
(39900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[화잘먹로션/속광케어] 온그리디언츠 스킨 베리어 카밍 로션 기획 (220ml+80ml)'), NOW(), NOW()),
(39900, 'SALE', (SELECT id FROM product WHERE name = '[화잘먹로션/속광케어] 온그리디언츠 스킨 베리어 카밍 로션 기획 (220ml+80ml)'), NOW(), NOW()),
(39900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[미니언즈 한정 에디션] 온그리디언츠 스킨 베리어 카밍 로션 기획(220ml+80ml)'), NOW(), NOW()),
(33900, 'SALE', (SELECT id FROM product WHERE name = '[미니언즈 한정 에디션] 온그리디언츠 스킨 베리어 카밍 로션 기획(220ml+80ml)'), NOW(), NOW()),
(39000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[저자극/대용량] 라운드랩 1025 독도 로션 400ml'), NOW(), NOW()),
(24500, 'SALE', (SELECT id FROM product WHERE name = '[저자극/대용량] 라운드랩 1025 독도 로션 400ml'), NOW(), NOW()),
(37000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[속보습/수분로션] 닥터지 더모이스처 배리어 D 로션 300ml 기획 (+멀티밤 1g)'), NOW(), NOW()),
(25900, 'SALE', (SELECT id FROM product WHERE name = '[속보습/수분로션] 닥터지 더모이스처 배리어 D 로션 300ml 기획 (+멀티밤 1g)'), NOW(), NOW()),
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '에스트라 아토베리어365 로션 150ml'), NOW(), NOW()),
(28000, 'SALE', (SELECT id FROM product WHERE name = '에스트라 아토베리어365 로션 150ml'), NOW(), NOW()),
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아누아 어성초 70 데일리 로션 200ml'), NOW(), NOW()),
(21900, 'SALE', (SELECT id FROM product WHERE name = '아누아 어성초 70 데일리 로션 200ml'), NOW(), NOW()),
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '제로이드 인텐시브 로션 160ml'), NOW(), NOW()),
(28800, 'SALE', (SELECT id FROM product WHERE name = '제로이드 인텐시브 로션 160ml'), NOW(), NOW()),
(18400, 'ORIGINAL', (SELECT id FROM product WHERE name = '디오디너리 그랜액티브 레티노이드 2% 에멀전 30ml'), NOW(), NOW()),
(18400, 'SALE', (SELECT id FROM product WHERE name = '디오디너리 그랜액티브 레티노이드 2% 에멀전 30ml'), NOW(), NOW()),
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW]오브제 포어 제로 오일 컨트롤 로션 70ml'), NOW(), NOW()),
(17800, 'SALE', (SELECT id FROM product WHERE name = '[NEW]오브제 포어 제로 오일 컨트롤 로션 70ml'), NOW(), NOW()),
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '제로이드 수딩 로션 160ml'), NOW(), NOW()),
(30000, 'SALE', (SELECT id FROM product WHERE name = '제로이드 수딩 로션 160ml'), NOW(), NOW()),
(20000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[저자극] 라운드랩 1025 독도 로션 200ml 기획 (+50ml)'), NOW(), NOW()),
(17900, 'SALE', (SELECT id FROM product WHERE name = '[저자극] 라운드랩 1025 독도 로션 200ml 기획 (+50ml)'), NOW(), NOW()),
(18000, 'ORIGINAL', (SELECT id FROM product WHERE name = '싸이닉 더 심플 데일리 로션 260ml'), NOW(), NOW()),
(9900, 'SALE', (SELECT id FROM product WHERE name = '싸이닉 더 심플 데일리 로션 260ml'), NOW(), NOW()),
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[시카보다 4배*강한] 한율 어린쑥 수분진정 플루이드 125ml'), NOW(), NOW()),
(32000, 'SALE', (SELECT id FROM product WHERE name = '[시카보다 4배*강한] 한율 어린쑥 수분진정 플루이드 125ml'), NOW(), NOW()),
(37500, 'ORIGINAL', (SELECT id FROM product WHERE name = '피지오겔 레드수딩 AI 진정보습 로션 200ml'), NOW(), NOW()),
(30000, 'SALE', (SELECT id FROM product WHERE name = '피지오겔 레드수딩 AI 진정보습 로션 200ml'), NOW(), NOW()),
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '피지오겔 시카밸런스 포맨 카밍 플루이드 100ml'), NOW(), NOW()),
(29900, 'SALE', (SELECT id FROM product WHERE name = '피지오겔 시카밸런스 포맨 카밍 플루이드 100ml'), NOW(), NOW()),
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분진정] 라운드랩 포 맨 자작나무 수분 로션 200ml'), NOW(), NOW()),
(24000, 'SALE', (SELECT id FROM product WHERE name = '[수분진정] 라운드랩 포 맨 자작나무 수분 로션 200ml'), NOW(), NOW()),
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아크웰 리얼 아쿠아 밸런싱 로션 140ml'), NOW(), NOW()),
(20000, 'SALE', (SELECT id FROM product WHERE name = '아크웰 리얼 아쿠아 밸런싱 로션 140ml'), NOW(), NOW()),
(15800, 'ORIGINAL', (SELECT id FROM product WHERE name = '[화잘먹/윤광미백] 식물나라 뽀얀쌀 맑은톤 로션 300mL'), NOW(), NOW()),
(10800, 'SALE', (SELECT id FROM product WHERE name = '[화잘먹/윤광미백] 식물나라 뽀얀쌀 맑은톤 로션 300mL'), NOW(), NOW()),
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW] 토리든 밸런스풀 포맨 시카 오일프리 로션 200ml'), NOW(), NOW()),
(23000, 'SALE', (SELECT id FROM product WHERE name = '[NEW] 토리든 밸런스풀 포맨 시카 오일프리 로션 200ml'), NOW(), NOW()),
(22000, 'ORIGINAL', (SELECT id FROM product WHERE name = '이니스프리 그린티 로션 포맨 150ml'), NOW(), NOW()),
(22000, 'SALE', (SELECT id FROM product WHERE name = '이니스프리 그린티 로션 포맨 150ml'), NOW(), NOW()),
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[민감진정/화해1위] 라운드랩 포 맨 소나무 진정 시카 로션 200ml'), NOW(), NOW()),
(18500, 'SALE', (SELECT id FROM product WHERE name = '[민감진정/화해1위] 라운드랩 포 맨 소나무 진정 시카 로션 200ml'), NOW(), NOW()),
(21000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분진정] 이니스프리 그린티 히알루론산 로션 170ml'), NOW(), NOW()),
(15750, 'SALE', (SELECT id FROM product WHERE name = '[수분진정] 이니스프리 그린티 히알루론산 로션 170ml'), NOW(), NOW()),
(15000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아크네스 모이스처 플루이드 150ml'), NOW(), NOW()),
(15000, 'SALE', (SELECT id FROM product WHERE name = '아크네스 모이스처 플루이드 150ml'), NOW(), NOW());

-- 올인원 가격 삽입 (48개)
INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[김혜성PICK] 아이디얼포맨 퍼펙트 올인원 기획세트(+100ml증정)'), NOW(), NOW()),
(22800, 'SALE', (SELECT id FROM product WHERE name = '[김혜성PICK] 아이디얼포맨 퍼펙트 올인원 기획세트(+100ml증정)'), NOW(), NOW()),
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9년 연속 1위] 아이오페 맨 올데이 퍼펙트 올인원 120ml 기획 (+30ml)'), NOW(), NOW()),
(24000, 'SALE', (SELECT id FROM product WHERE name = '[9년 연속 1위] 아이오페 맨 올데이 퍼펙트 올인원 120ml 기획 (+30ml)'), NOW(), NOW()),
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[리뉴얼/트러블/면도후] 닥터지 레드 블레미쉬 포 맨 진정 올인원 150ml 2종 (단품/증정 기획)'), NOW(), NOW()),
(22800, 'SALE', (SELECT id FROM product WHERE name = '[리뉴얼/트러블/면도후] 닥터지 레드 블레미쉬 포 맨 진정 올인원 150ml 2종 (단품/증정 기획)'), NOW(), NOW()),
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '오브제 포어 제로 프레쉬 올인원 150ml 단품/기획 2종 택1'), NOW(), NOW()),
(20900, 'SALE', (SELECT id FROM product WHERE name = '오브제 포어 제로 프레쉬 올인원 150ml 단품/기획 2종 택1'), NOW(), NOW()),
(43000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[지성피부/유분케어] 라운드랩 포 맨 1025 독도 올인원 젤 로션 200ml+200ml'), NOW(), NOW()),
(33000, 'SALE', (SELECT id FROM product WHERE name = '[지성피부/유분케어] 라운드랩 포 맨 1025 독도 올인원 젤 로션 200ml+200ml'), NOW(), NOW()),
(29700, 'ORIGINAL', (SELECT id FROM product WHERE name = '우르오스 올인원 스킨로션 200ml'), NOW(), NOW()),
(23700, 'SALE', (SELECT id FROM product WHERE name = '우르오스 올인원 스킨로션 200ml'), NOW(), NOW()),
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '아이오페 맨 프로 레티놀 올인원 120ml 기획 (+30ml)'), NOW(), NOW()),
(38000, 'SALE', (SELECT id FROM product WHERE name = '아이오페 맨 프로 레티놀 올인원 120ml 기획 (+30ml)'), NOW(), NOW()),
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[개기름/지성] 닥터지 레드 블레미쉬 포 맨 올인원 오일컷 로션 150ml 3종 (단품/증정 기획)'), NOW(), NOW()),
(19200, 'SALE', (SELECT id FROM product WHERE name = '[개기름/지성] 닥터지 레드 블레미쉬 포 맨 올인원 오일컷 로션 150ml 3종 (단품/증정 기획)'), NOW(), NOW()),
(42900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독특가]우르오스 페이셜케어 기획세트 중건성&지복합성 4종 택1'), NOW(), NOW()),
(29900, 'SALE', (SELECT id FROM product WHERE name = '[단독특가]우르오스 페이셜케어 기획세트 중건성&지복합성 4종 택1'), NOW(), NOW()),
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1+1/단독기획] 토리든 다이브인 포맨 저분자 히알루론산 올인원 200g 더블 기획'), NOW(), NOW()),
(29900, 'SALE', (SELECT id FROM product WHERE name = '[1+1/단독기획] 토리든 다이브인 포맨 저분자 히알루론산 올인원 200g 더블 기획'), NOW(), NOW()),
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[티벳동생PICK] 토리든 밸런스풀 포맨 시카 프레쉬 올인원 200g 기획/단품(+올인원 20g)'), NOW(), NOW()),
(19200, 'SALE', (SELECT id FROM product WHERE name = '[티벳동생PICK] 토리든 밸런스풀 포맨 시카 프레쉬 올인원 200g 기획/단품(+올인원 20g)'), NOW(), NOW()),
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '그라운드랩 올인원 모이스처라이저 스킨 로션 200ml'), NOW(), NOW()),
(26000, 'SALE', (SELECT id FROM product WHERE name = '그라운드랩 올인원 모이스처라이저 스킨 로션 200ml'), NOW(), NOW()),
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[김혜성PICK/여드름피부적합] 아이디얼포맨 시카 올인원 (단품/증정기획)'), NOW(), NOW()),
(18800, 'SALE', (SELECT id FROM product WHERE name = '[김혜성PICK/여드름피부적합] 아이디얼포맨 시카 올인원 (단품/증정기획)'), NOW(), NOW()),
(29700, 'ORIGINAL', (SELECT id FROM product WHERE name = '우르오스 올인원 스킨밀크 200ml'), NOW(), NOW()),
(23700, 'SALE', (SELECT id FROM product WHERE name = '우르오스 올인원 스킨밀크 200ml'), NOW(), NOW()),
(29700, 'ORIGINAL', (SELECT id FROM product WHERE name = '우르오스 올인원 200ml 2종 택 1'), NOW(), NOW()),
(23700, 'SALE', (SELECT id FROM product WHERE name = '우르오스 올인원 200ml 2종 택 1'), NOW(), NOW()),
(28900, 'ORIGINAL', (SELECT id FROM product WHERE name = '포맨트 시그니처 올인원 에센스 96ml'), NOW(), NOW()),
(23100, 'SALE', (SELECT id FROM product WHERE name = '포맨트 시그니처 올인원 에센스 96ml'), NOW(), NOW()),
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[문장군 공동개발] 미닉 퍼펙트 콜라드 그린 진정 올인원 200ml'), NOW(), NOW()),
(32000, 'SALE', (SELECT id FROM product WHERE name = '[문장군 공동개발] 미닉 퍼펙트 콜라드 그린 진정 올인원 200ml'), NOW(), NOW()),
(24900, 'ORIGINAL', (SELECT id FROM product WHERE name = '무슈제이 베이직 아쿠아 보습 올인원 1+1 기획(200ml+200ml)'), NOW(), NOW()),
(23900, 'SALE', (SELECT id FROM product WHERE name = '무슈제이 베이직 아쿠아 보습 올인원 1+1 기획(200ml+200ml)'), NOW(), NOW()),
(29000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW/2종추가증정] 이니스프리 포레스트포맨 올인원 에센스 100ml 기획(+에센스 25ml+폼30g)'), NOW(), NOW()),
(21750, 'SALE', (SELECT id FROM product WHERE name = '[NEW/2종추가증정] 이니스프리 포레스트포맨 올인원 에센스 100ml 기획(+에센스 25ml+폼30g)'), NOW(), NOW()),
(56000, 'ORIGINAL', (SELECT id FROM product WHERE name = '비오템 옴므 아쿠아파워 올인원 세트 (클렌저 40ml+올인원 20ml)'), NOW(), NOW()),
(44800, 'SALE', (SELECT id FROM product WHERE name = '비오템 옴므 아쿠아파워 올인원 세트 (클렌저 40ml+올인원 20ml)'), NOW(), NOW()),
(48000, 'ORIGINAL', (SELECT id FROM product WHERE name = '헤라 옴므 올인원 스킨 하이드로 트리트먼트 150ML'), NOW(), NOW()),
(40800, 'SALE', (SELECT id FROM product WHERE name = '헤라 옴므 올인원 스킨 하이드로 트리트먼트 150ML'), NOW(), NOW()),
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독기획]토리든 다이브인 포맨 저분자 히알루론산 올인원 200g 단품/기획 (+올인원 20g)'), NOW(), NOW()),
(19200, 'SALE', (SELECT id FROM product WHERE name = '[단독기획]토리든 다이브인 포맨 저분자 히알루론산 올인원 200g 단품/기획 (+올인원 20g)'), NOW(), NOW()),
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[김혜성PICK/개기름박멸]아이디얼포맨 프레시 올인원 150ml 1+1 기획'), NOW(), NOW()),
(18800, 'SALE', (SELECT id FROM product WHERE name = '[김혜성PICK/개기름박멸]아이디얼포맨 프레시 올인원 150ml 1+1 기획'), NOW(), NOW()),
(24000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[김혜성PICK/자외선차단]아이디얼포맨 선 올인원 140ml'), NOW(), NOW()),
(16800, 'SALE', (SELECT id FROM product WHERE name = '[김혜성PICK/자외선차단]아이디얼포맨 선 올인원 140ml'), NOW(), NOW());

-- ==============================================
-- 4. 로션 상품 이미지 삽입 (총 177개 이미지)
-- ==============================================

-- 로션 이미지 삽입 (61개)
INSERT INTO product_img (img_url, img_order, product_id) VALUES
-- 피지오겔 DMT 페이셜 로션
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023218605ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽]피지오겔 DMT 페이셜 로션 200ml 기획 (+로션 50ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023218606ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽]피지오겔 DMT 페이셜 로션 200ml 기획 (+로션 50ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023218604ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽]피지오겔 DMT 페이셜 로션 200ml 기획 (+로션 50ml)')),

-- 온그리디언츠 스킨 베리어 카밍 로션
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020635215ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[화잘먹로션/속광케어] 온그리디언츠 스킨 베리어 카밍 로션 기획 (220ml+80ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020635209ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[화잘먹로션/속광케어] 온그리디언츠 스킨 베리어 카밍 로션 기획 (220ml+80ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020635214ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[화잘먹로션/속광케어] 온그리디언츠 스킨 베리어 카밍 로션 기획 (220ml+80ml)')),

-- 미니언즈 한정 에디션
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022932208ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[미니언즈 한정 에디션] 온그리디언츠 스킨 베리어 카밍 로션 기획(220ml+80ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022932209ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[미니언즈 한정 에디션] 온그리디언츠 스킨 베리어 카밍 로션 기획(220ml+80ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022932204ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[미니언즈 한정 에디션] 온그리디언츠 스킨 베리어 카밍 로션 기획(220ml+80ml)')),

-- 라운드랩 1025 독도 로션 400ml
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016150812ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[저자극/대용량] 라운드랩 1025 독도 로션 400ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016150808ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[저자극/대용량] 라운드랩 1025 독도 로션 400ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016150809ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[저자극/대용량] 라운드랩 1025 독도 로션 400ml')),

-- 닥터지 더모이스처 배리어 D 로션
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019853902ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[속보습/수분로션] 닥터지 더모이스처 배리어 D 로션 300ml 기획 (+멀티밤 1g)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019853903ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[속보습/수분로션] 닥터지 더모이스처 배리어 D 로션 300ml 기획 (+멀티밤 1g)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019853905ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[속보습/수분로션] 닥터지 더모이스처 배리어 D 로션 300ml 기획 (+멀티밤 1g)')),

-- 에스트라 아토베리어365 로션
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019832102ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '에스트라 아토베리어365 로션 150ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019832103ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '에스트라 아토베리어365 로션 150ml')),

-- 아누아 어성초 70 데일리 로션
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021114002ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아누아 어성초 70 데일리 로션 200ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021114001ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아누아 어성초 70 데일리 로션 200ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021114003ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아누아 어성초 70 데일리 로션 200ml')),

-- 제로이드 인텐시브 로션
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020941902ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '제로이드 인텐시브 로션 160ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020941901ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '제로이드 인텐시브 로션 160ml')),

-- 디오디너리 그랜액티브 레티노이드
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014872904ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '디오디너리 그랜액티브 레티노이드 2% 에멀전 30ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014872903ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '디오디너리 그랜액티브 레티노이드 2% 에멀전 30ml')),

-- 오브제 포어 제로 오일 컨트롤 로션
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021225107ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW]오브제 포어 제로 오일 컨트롤 로션 70ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021225106ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW]오브제 포어 제로 오일 컨트롤 로션 70ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021225105ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW]오브제 포어 제로 오일 컨트롤 로션 70ml')),

-- 제로이드 수딩 로션
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020990408ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '제로이드 수딩 로션 160ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020990401ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '제로이드 수딩 로션 160ml')),

-- 라운드랩 1025 독도 로션 기획
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014557626ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[저자극] 라운드랩 1025 독도 로션 200ml 기획 (+50ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014557627ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[저자극] 라운드랩 1025 독도 로션 200ml 기획 (+50ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014557624ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[저자극] 라운드랩 1025 독도 로션 200ml 기획 (+50ml)')),

-- 싸이닉 더 심플 데일리 로션
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013707813ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '싸이닉 더 심플 데일리 로션 260ml')),

-- 한율 어린쑥 수분진정 플루이드
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018374410ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[시카보다 4배*강한] 한율 어린쑥 수분진정 플루이드 125ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018374409ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[시카보다 4배*강한] 한율 어린쑥 수분진정 플루이드 125ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018374408ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[시카보다 4배*강한] 한율 어린쑥 수분진정 플루이드 125ml')),

-- 피지오겔 레드수딩 AI 진정보습 로션
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012977111ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '피지오겔 레드수딩 AI 진정보습 로션 200ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012977110ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '피지오겔 레드수딩 AI 진정보습 로션 200ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0012/A00000012977109ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '피지오겔 레드수딩 AI 진정보습 로션 200ml')),

-- 피지오겔 시카밸런스 포맨 카밍 플루이드
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020539201ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '피지오겔 시카밸런스 포맨 카밍 플루이드 100ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020539202ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '피지오겔 시카밸런스 포맨 카밍 플루이드 100ml')),

-- 라운드랩 포 맨 자작나무 수분 로션
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016349420ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분진정] 라운드랩 포 맨 자작나무 수분 로션 200ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016349421ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분진정] 라운드랩 포 맨 자작나무 수분 로션 200ml')),

-- 아크웰 리얼 아쿠아 밸런싱 로션
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014480311ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아크웰 리얼 아쿠아 밸런싱 로션 140ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014480310ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아크웰 리얼 아쿠아 밸런싱 로션 140ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014480313ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아크웰 리얼 아쿠아 밸런싱 로션 140ml')),

-- 식물나라 뽀얀쌀 맑은톤 로션
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020101103ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[화잘먹/윤광미백] 식물나라 뽀얀쌀 맑은톤 로션 300mL')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020101104ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[화잘먹/윤광미백] 식물나라 뽀얀쌀 맑은톤 로션 300mL')),

-- 토리든 밸런스풀 포맨 시카 오일프리 로션
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022895503ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW] 토리든 밸런스풀 포맨 시카 오일프리 로션 200ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022895504ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW] 토리든 밸런스풀 포맨 시카 오일프리 로션 200ml')),

-- 이니스프리 그린티 로션 포맨
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022610006ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '이니스프리 그린티 로션 포맨 150ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022610005ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '이니스프리 그린티 로션 포맨 150ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022610004ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '이니스프리 그린티 로션 포맨 150ml')),

-- 라운드랩 포 맨 소나무 진정 시카 로션
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019915407ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[민감진정/화해1위] 라운드랩 포 맨 소나무 진정 시카 로션 200ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019915406ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[민감진정/화해1위] 라운드랩 포 맨 소나무 진정 시카 로션 200ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019915403ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[민감진정/화해1위] 라운드랩 포 맨 소나무 진정 시카 로션 200ml')),

-- 이니스프리 그린티 히알루론산 로션
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018321014ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분진정] 이니스프리 그린티 히알루론산 로션 170ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018321015ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[수분진정] 이니스프리 그린티 히알루론산 로션 170ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018321016ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분진정] 이니스프리 그린티 히알루론산 로션 170ml')),

-- 아크네스 모이스처 플루이드
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015081606ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아크네스 모이스처 플루이드 150ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015081607ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아크네스 모이스처 플루이드 150ml'));

-- 올인원 이미지 삽입 (116개)
INSERT INTO product_img (img_url, img_order, product_id) VALUES
-- 아이디얼포맨 퍼펙트 올인원 기획세트
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022277321ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[김혜성PICK] 아이디얼포맨 퍼펙트 올인원 기획세트(+100ml증정)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022277310ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[김혜성PICK] 아이디얼포맨 퍼펙트 올인원 기획세트(+100ml증정)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022277307ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[김혜성PICK] 아이디얼포맨 퍼펙트 올인원 기획세트(+100ml증정)')),

-- 아이오페 맨 올데이 퍼펙트 올인원
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018469726ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[9년 연속 1위] 아이오페 맨 올데이 퍼펙트 올인원 120ml 기획 (+30ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018469721ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[9년 연속 1위] 아이오페 맨 올데이 퍼펙트 올인원 120ml 기획 (+30ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018469720ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9년 연속 1위] 아이오페 맨 올데이 퍼펙트 올인원 120ml 기획 (+30ml)')),

-- 닥터지 레드 블레미쉬 포 맨 진정 올인원
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022378112ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[리뉴얼/트러블/면도후] 닥터지 레드 블레미쉬 포 맨 진정 올인원 150ml 2종 (단품/증정 기획)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022378106ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[리뉴얼/트러블/면도후] 닥터지 레드 블레미쉬 포 맨 진정 올인원 150ml 2종 (단품/증정 기획)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022378107ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[리뉴얼/트러블/면도후] 닥터지 레드 블레미쉬 포 맨 진정 올인원 150ml 2종 (단품/증정 기획)')),

-- 오브제 포어 제로 프레쉬 올인원
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023053703ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '오브제 포어 제로 프레쉬 올인원 150ml 단품/기획 2종 택1')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023053704ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '오브제 포어 제로 프레쉬 올인원 150ml 단품/기획 2종 택1')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023053701ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '오브제 포어 제로 프레쉬 올인원 150ml 단품/기획 2종 택1')),

-- 라운드랩 포 맨 1025 독도 올인원 젤 로션
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019773904ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[지성피부/유분케어] 라운드랩 포 맨 1025 독도 올인원 젤 로션 200ml+200ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019773905ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[지성피부/유분케어] 라운드랩 포 맨 1025 독도 올인원 젤 로션 200ml+200ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019773902ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[지성피부/유분케어] 라운드랩 포 맨 1025 독도 올인원 젤 로션 200ml+200ml')),

-- 우르오스 올인원 스킨로션
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0000/A00000000656415ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '우르오스 올인원 스킨로션 200ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0000/A00000000656417ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '우르오스 올인원 스킨로션 200ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0000/A00000000656416ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '우르오스 올인원 스킨로션 200ml')),

-- 아이오페 맨 프로 레티놀 올인원
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019927012ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '아이오페 맨 프로 레티놀 올인원 120ml 기획 (+30ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019927011ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '아이오페 맨 프로 레티놀 올인원 120ml 기획 (+30ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019927008ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '아이오페 맨 프로 레티놀 올인원 120ml 기획 (+30ml)'));

-- ==============================================
-- 5. 로션 상품 재고 삽입 (64개 옵션)
-- ==============================================

-- 로션 재고 삽입 (각 옵션별 기본 재고 100개)
INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at) 
SELECT 'SELLING', 100, po.id, NOW() 
FROM product_option po 
JOIN product p ON po.product_id = p.id 
JOIN category c ON p.category_id = c.id 
WHERE c.name IN ('로션', '올인원');

-- ==============================================
-- 스크립트 실행 완료 메시지
-- ==============================================
SELECT 'JSON 기반 로션 데이터 삽입이 완료되었습니다.' as message;