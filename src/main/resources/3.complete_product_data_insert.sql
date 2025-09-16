-- 전체 ProductData 삽입 스크립트
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
-- 스킨/토너 카테고리 (3차 카테고리: 스킨/토너, parent_id=13)
-- ==============================================

-- 스킨/토너 제품 데이터 삽입 (24개)
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽] 바이오더마 하이드라비오 토너 500ml 2입 기획', '[9월 올영픽] 바이오더마 하이드라비오 토너 500ml 2입 기획', 4.8, (SELECT id FROM category WHERE name = '스킨/토너' AND parent_id = 13), (SELECT id FROM brand WHERE name = '바이오더마'), '판매중', NOW(), NOW()),
('[증량기획] 토리든 다이브인 저분자 히알루론산 토너 300ml 기획(+100ml 추가 증정)', '[증량기획] 토리든 다이브인 저분자 히알루론산 토너 300ml 기획(+100ml 추가 증정)', 4.8, (SELECT id FROM category WHERE name = '스킨/토너' AND parent_id = 13), (SELECT id FROM brand WHERE name = '토리든'), '판매중', NOW(), NOW()),
('[피지쓱싹] 브링그린 티트리시카수딩토너 250mL/500mL 기획', '[피지쓱싹] 브링그린 티트리시카수딩토너 250mL/500mL 기획', 4.8, (SELECT id FROM category WHERE name = '스킨/토너' AND parent_id = 13), (SELECT id FROM brand WHERE name = '브링그린'), '판매중', NOW(), NOW()),
('[한정] 라운드랩 1025 독도 토너 300ml 기획 (+100ml+늘어나는 스킨 패드 30매)', '[한정] 라운드랩 1025 독도 토너 300ml 기획 (+100ml+늘어나는 스킨 패드 30매)', 4.9, (SELECT id FROM category WHERE name = '스킨/토너' AND parent_id = 13), (SELECT id FROM brand WHERE name = '라운드랩'), '판매중', NOW(), NOW()),
('[9월 올영픽/NEW 단독기획] 아누아 피디알엔 100 히알루론산 부스터 토너 250ml 기획 (+40ml)', '[9월 올영픽/NEW 단독기획] 아누아 피디알엔 100 히알루론산 부스터 토너 250ml 기획 (+40ml)', 4.9, (SELECT id FROM category WHERE name = '스킨/토너' AND parent_id = 13), (SELECT id FROM brand WHERE name = '아누아'), '판매중', NOW(), NOW()),
('구달 청귤 비타C 잡티케어 세럼 토너 300ml', '구달 청귤 비타C 잡티케어 세럼 토너 300ml', 4.7, (SELECT id FROM category WHERE name = '스킨/토너' AND parent_id = 13), (SELECT id FROM brand WHERE name = '구달'), '판매중', NOW(), NOW()),
('[9월 올영픽] 바이오힐보 판테놀 리페어 토너 400ml 기획 (+밤 20ml+스킨케어 파우치)', '[9월 올영픽] 바이오힐보 판테놀 리페어 토너 400ml 기획 (+밤 20ml+스킨케어 파우치)', 4.8, (SELECT id FROM category WHERE name = '스킨/토너' AND parent_id = 13), (SELECT id FROM brand WHERE name = '바이오힐보'), '판매중', NOW(), NOW()),
('라로슈포제 시카플라스트 밤 B5+ 토너 200ml', '라로슈포제 시카플라스트 밤 B5+ 토너 200ml', 4.6, (SELECT id FROM category WHERE name = '스킨/토너' AND parent_id = 13), (SELECT id FROM brand WHERE name = '라로슈포제'), '판매중', NOW(), NOW()),
('이니스프리 그린티 씨드 하이알루론산 토너 300ml', '이니스프리 그린티 씨드 하이알루론산 토너 300ml', 4.7, (SELECT id FROM category WHERE name = '스킨/토너' AND parent_id = 13), (SELECT id FROM brand WHERE name = '이니스프리'), '판매중', NOW(), NOW()),
('[9월 올영픽] 센텔리안24 마데카 케어 토너 300ml 기획 (+30ml)', '[9월 올영픽] 센텔리안24 마데카 케어 토너 300ml 기획 (+30ml)', 4.7, (SELECT id FROM category WHERE name = '스킨/토너' AND parent_id = 13), (SELECT id FROM brand WHERE name = '센텔리안24'), '판매중', NOW(), NOW()),
('피지오겔 AI 토너 200ml', '피지오겔 AI 토너 200ml', 4.8, (SELECT id FROM category WHERE name = '스킨/토너' AND parent_id = 13), (SELECT id FROM brand WHERE name = '피지오겔'), '판매중', NOW(), NOW()),
('달바 화이트 트러플 퍼스트 스프레이 세럼 100ml', '달바 화이트 트러플 퍼스트 스프레이 세럼 100ml', 4.8, (SELECT id FROM category WHERE name = '스킨/토너' AND parent_id = 13), (SELECT id FROM brand WHERE name = '달바'), '판매중', NOW(), NOW()),
('더오디너리 글리콜릭애씨드 7% 토닝솔루션 240ml', '더오디너리 글리콜릭애씨드 7% 토닝솔루션 240ml', 4.5, (SELECT id FROM category WHERE name = '스킨/토너' AND parent_id = 13), (SELECT id FROM brand WHERE name = '디오디너리'), '판매중', NOW(), NOW()),
('비원츠 인텐시브 하이드레이팅 토너 150ml', '비원츠 인텐시브 하이드레이팅 토너 150ml', 4.6, (SELECT id FROM category WHERE name = '스킨/토너' AND parent_id = 13), (SELECT id FROM brand WHERE name = '비원츠'), '판매중', NOW(), NOW()),
('바이오더마 센시비오 H2O 500ml 듀오 기획(2개입)', '바이오더마 센시비오 H2O 500ml 듀오 기획(2개입)', 4.9, (SELECT id FROM category WHERE name = '스킨/토너' AND parent_id = 13), (SELECT id FROM brand WHERE name = '바이오더마'), '판매중', NOW(), NOW()),
('아벤느 쓰리말 워터 300ml 듀오 (+300ml)', '아벤느 쓰리말 워터 300ml 듀오 (+300ml)', 4.8, (SELECT id FROM category WHERE name = '스킨/토너' AND parent_id = 13), (SELECT id FROM brand WHERE name = '아벤느'), '판매중', NOW(), NOW()),
('라네즈 크림 스킨 토너 & 모이스춰라이저 250ml', '라네즈 크림 스킨 토너 & 모이스춰라이저 250ml', 4.7, (SELECT id FROM category WHERE name = '스킨/토너' AND parent_id = 13), (SELECT id FROM brand WHERE name = '라네즈'), '판매중', NOW(), NOW()),
('비오템 라이프 플랑크톤 퓨어 토너 200ml', '비오템 라이프 플랑크톤 퓨어 토너 200ml', 4.5, (SELECT id FROM category WHERE name = '스킨/토너' AND parent_id = 13), (SELECT id FROM brand WHERE name = '비오템'), '판매중', NOW(), NOW()),
('로벡틴 하이드레이팅 토너 200ml', '로벡틴 하이드레이팅 토너 200ml', 4.6, (SELECT id FROM category WHERE name = '스킨/토너' AND parent_id = 13), (SELECT id FROM brand WHERE name = '로벡틴'), '판매중', NOW(), NOW()),
('아이오페 아큐아 리저브 토너 130ml', '아이오페 아큐아 리저브 토너 130ml', 4.7, (SELECT id FROM category WHERE name = '스킨/토너' AND parent_id = 13), (SELECT id FROM brand WHERE name = '아이오페'), '판매중', NOW(), NOW()),
('메디힐 마데카소사이드 블레미쉬 패드 100매', '메디힐 마데카소사이드 블레미쉬 패드 100매', 4.8, (SELECT id FROM category WHERE name = '스킨/토너' AND parent_id = 13), (SELECT id FROM brand WHERE name = '메디힐'), '판매중', NOW(), NOW()),
('VT 리들샷 300 토너 패드 60매', 'VT 리들샷 300 토너 패드 60매', 4.9, (SELECT id FROM category WHERE name = '스킨/토너' AND parent_id = 13), (SELECT id FROM brand WHERE name = 'VT'), '판매중', NOW(), NOW()),
('AXIS-Y 다크 스팟 코렉팅 글로우 토너 125ml', 'AXIS-Y 다크 스팟 코렉팅 글로우 토너 125ml', 4.6, (SELECT id FROM category WHERE name = '스킨/토너' AND parent_id = 13), (SELECT id FROM brand WHERE name = 'AXIS-Y'), '판매중', NOW(), NOW()),
('토리든 다이브인 저분자 히알루론산 토너 300ml', '토리든 다이브인 저분자 히알루론산 토너 300ml', 4.8, (SELECT id FROM category WHERE name = '스킨/토너' AND parent_id = 13), (SELECT id FROM brand WHERE name = '토리든'), '판매중', NOW(), NOW());

-- ==============================================
-- 에센스/세럼/앰플 카테고리 (3차 카테고리: 에센스/세럼/앰플, parent_id=14)
-- ==============================================

-- 에센스/세럼/앰플 제품 데이터 삽입 (24개)
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽] 토리든 다이브인 니아신 20% 세럼 50ml 기획 (+20ml)', '[9월 올영픽] 토리든 다이브인 니아신 20% 세럼 50ml 기획 (+20ml)', 4.8, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' AND parent_id = 14), (SELECT id FROM brand WHERE name = '토리든'), '판매중', NOW(), NOW()),
('구달 청귤 비타C 잡티케어 세럼 30ml', '구달 청귤 비타C 잡티케어 세럼 30ml', 4.7, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' AND parent_id = 14), (SELECT id FROM brand WHERE name = '구달'), '판매중', NOW(), NOW()),
('[9월 올영픽] 아누아 나이아신아마이드 10% + 징크 1% 세럼 30ml 기획 (+10ml)', '[9월 올영픽] 아누아 나이아신아마이드 10% + 징크 1% 세럼 30ml 기획 (+10ml)', 4.9, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' AND parent_id = 14), (SELECT id FROM brand WHERE name = '아누아'), '판매중', NOW(), NOW()),
('달바 화이트 트러플 퍼스트 스프레이 세럼 100ml', '달바 화이트 트러플 퍼스트 스프레이 세럼 100ml', 4.8, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' AND parent_id = 14), (SELECT id FROM brand WHERE name = '달바'), '판매중', NOW(), NOW()),
('마녀공장 비피다 바이옴 컴플렉스 앰플 50ml', '마녀공장 비피다 바이옴 컴플렉스 앰플 50ml', 4.8, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' AND parent_id = 14), (SELECT id FROM brand WHERE name = '마녀공장'), '판매중', NOW(), NOW()),
('더오디너리 니아신아마이드 10% + 징크 1% 30ml', '더오디너리 니아신아마이드 10% + 징크 1% 30ml', 4.5, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' AND parent_id = 14), (SELECT id FROM brand WHERE name = '디오디너리'), '판매중', NOW(), NOW()),
('이니스프리 그린티 씨드 세럼 80ml', '이니스프리 그린티 씨드 세럼 80ml', 4.7, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' AND parent_id = 14), (SELECT id FROM brand WHERE name = '이니스프리'), '판매중', NOW(), NOW()),
('바이오힐보 프로바이오덤 리페어링 에센스 50ml', '바이오힐보 프로바이오덤 리페어링 에센스 50ml', 4.8, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' AND parent_id = 14), (SELECT id FROM brand WHERE name = '바이오힐보'), '판매중', NOW(), NOW()),
('센텔리안24 마데카 에센스 50ml', '센텔리안24 마데카 에센스 50ml', 4.7, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' AND parent_id = 14), (SELECT id FROM brand WHERE name = '센텔리안24'), '판매중', NOW(), NOW()),
('메디힐 N.M.F 인텐시브 하이드레이팅 세럼 50ml', '메디힐 N.M.F 인텐시브 하이드레이팅 세럼 50ml', 4.8, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' AND parent_id = 14), (SELECT id FROM brand WHERE name = '메디힐'), '판매중', NOW(), NOW()),
('닥터지 레드 블레미쉬 클리어 세럼 30ml', '닥터지 레드 블레미쉬 클리어 세럼 30ml', 4.6, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' AND parent_id = 14), (SELECT id FROM brand WHERE name = '닥터지'), '판매중', NOW(), NOW()),
('VT 리들샷 300 에센스 50ml', 'VT 리들샷 300 에센스 50ml', 4.9, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' AND parent_id = 14), (SELECT id FROM brand WHERE name = 'VT'), '판매중', NOW(), NOW()),
('AXIS-Y 다크 스팟 코렉팅 글로우 세럼 50ml', 'AXIS-Y 다크 스팟 코렉팅 글로우 세럼 50ml', 4.6, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' AND parent_id = 14), (SELECT id FROM brand WHERE name = 'AXIS-Y'), '판매중', NOW(), NOW()),
('피지오겔 AI 세럼 50ml', '피지오겔 AI 세럼 50ml', 4.8, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' AND parent_id = 14), (SELECT id FROM brand WHERE name = '피지오겔'), '판매중', NOW(), NOW()),
('바이오더마 시카비오 세럼 30ml', '바이오더마 시카비오 세럼 30ml', 4.9, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' AND parent_id = 14), (SELECT id FROM brand WHERE name = '바이오더마'), '판매중', NOW(), NOW()),
('아벤느 플뤼이드 미네랄 세럼 30ml', '아벤느 플뤼이드 미네랄 세럼 30ml', 4.6, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' AND parent_id = 14), (SELECT id FROM brand WHERE name = '아벤느'), '판매중', NOW(), NOW()),
('라네즈 크림 스킨 리파이닝 에센스 150ml', '라네즈 크림 스킨 리파이닝 에센스 150ml', 4.7, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' AND parent_id = 14), (SELECT id FROM brand WHERE name = '라네즈'), '판매중', NOW(), NOW()),
('비오템 라이프 플랑크톤 에센스 115ml', '비오템 라이프 플랑크톤 에센스 115ml', 4.5, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' AND parent_id = 14), (SELECT id FROM brand WHERE name = '비오템'), '판매중', NOW(), NOW()),
('로벡틴 시카케어 에센스 50ml', '로벡틴 시카케어 에센스 50ml', 4.6, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' AND parent_id = 14), (SELECT id FROM brand WHERE name = '로벡틴'), '판매중', NOW(), NOW()),
('아이오페 바이오 인텐시브 컨디셔닝 앰플 30ml', '아이오페 바이오 인텐시브 컨디셔닝 앰플 30ml', 4.7, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' AND parent_id = 14), (SELECT id FROM brand WHERE name = '아이오페'), '판매중', NOW(), NOW()),
('브링그린 티트리 시카 수딩 세럼 30ml', '브링그린 티트리 시카 수딩 세럼 30ml', 4.8, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' AND parent_id = 14), (SELECT id FROM brand WHERE name = '브링그린'), '판매중', NOW(), NOW()),
('비원츠 인텐시브 하이드레이팅 에센스 40ml', '비원츠 인텐시브 하이드레이팅 에센스 40ml', 4.7, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' AND parent_id = 14), (SELECT id FROM brand WHERE name = '비원츠'), '판매중', NOW(), NOW()),
('웰라쥬 리얼 히알루로닉 블루 앰플 30ml', '웰라쥬 리얼 히알루로닉 블루 앰플 30ml', 4.8, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' AND parent_id = 14), (SELECT id FROM brand WHERE name = '웰라쥬'), '판매중', NOW(), NOW()),
('폴라초이스 클리어 레귤러 스트렝스 BHA 세럼 30ml', '폴라초이스 클리어 레귤러 스트렝스 BHA 세럼 30ml', 4.9, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' AND parent_id = 14), (SELECT id FROM brand WHERE name = '폴라초이스'), '판매중', NOW(), NOW());

-- ==============================================
-- 크림 카테고리 (3차 카테고리: 크림, parent_id=15)
-- ==============================================

-- 크림 제품 데이터 삽입 (24개)
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽] 라로슈포제 시카플라스트 밤 B5+ 100ml 기획', '[9월 올영픽] 라로슈포제 시카플라스트 밤 B5+ 100ml 기획', 4.8, (SELECT id FROM category WHERE name = '크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '라로슈포제'), '판매중', NOW(), NOW()),
('구달 청귤 비타C 크림 75ml', '구달 청귤 비타C 크림 75ml', 4.7, (SELECT id FROM category WHERE name = '크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '구달'), '판매중', NOW(), NOW()),
('[9월 올영픽] 토리든 다이브인 저분자 히알루론산 크림 100ml 기획', '[9월 올영픽] 토리든 다이브인 저분자 히알루론산 크림 100ml 기획', 4.8, (SELECT id FROM category WHERE name = '크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '토리든'), '판매중', NOW(), NOW()),
('아누아 하트리프 77% 수딩 크림 50ml', '아누아 하트리프 77% 수딩 크림 50ml', 4.7, (SELECT id FROM category WHERE name = '크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '아누아'), '판매중', NOW(), NOW()),
('세타필 데일리 페이셜 모이스처라이저 SPF15 118ml', '세타필 데일리 페이셜 모이스처라이저 SPF15 118ml', 4.8, (SELECT id FROM category WHERE name = '크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '세타필'), '판매중', NOW(), NOW()),
('바이오힐보 프로바이오덤 리페어링 크림 50ml', '바이오힐보 프로바이오덤 리페어링 크림 50ml', 4.8, (SELECT id FROM category WHERE name = '크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '바이오힐보'), '판매중', NOW(), NOW()),
('달바 화이트 트러플 첫 크림 50ml', '달바 화이트 트러플 첫 크림 50ml', 4.8, (SELECT id FROM category WHERE name = '크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '달바'), '판매중', NOW(), NOW()),
('라네즈 워터 뱅크 블루 하이알루로닉 크림 50ml', '라네즈 워터 뱅크 블루 하이알루로닉 크림 50ml', 4.7, (SELECT id FROM category WHERE name = '크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '라네즈'), '판매중', NOW(), NOW()),
('메디큐브 에이지알 턴오버 크림 50ml', '메디큐브 에이지알 턴오버 크림 50ml', 4.9, (SELECT id FROM category WHERE name = '크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '메디큐브'), '판매중', NOW(), NOW()),
('바이오더마 아톨리움 인텐시브 크림 75ml', '바이오더마 아톨리움 인텐시브 크림 75ml', 4.8, (SELECT id FROM category WHERE name = '크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '바이오더마'), '판매중', NOW(), NOW()),
('닥터지 레드 블레미쉬 클리어 수딩 크림 70ml', '닥터지 레드 블레미쉬 클리어 수딩 크림 70ml', 4.6, (SELECT id FROM category WHERE name = '크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '닥터지'), '판매중', NOW(), NOW()),
('이니스프리 그린티 씨드 크림 50ml', '이니스프리 그린티 씨드 크림 50ml', 4.7, (SELECT id FROM category WHERE name = '크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '이니스프리'), '판매중', NOW(), NOW()),
('아비브 수딩 크림 75ml', '아비브 수딩 크림 75ml', 4.8, (SELECT id FROM category WHERE name = '크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '아비브'), '판매중', NOW(), NOW()),
('센텔리안24 마데카 케어 크림 50ml', '센텔리안24 마데카 케어 크림 50ml', 4.7, (SELECT id FROM category WHERE name = '크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '센텔리안24'), '판매중', NOW(), NOW()),
('에스테덤 인텐시브 하이알루론 크림 50ml', '에스테덤 인텐시브 하이알루론 크림 50ml', 4.8, (SELECT id FROM category WHERE name = '크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '에스테덤'), '판매중', NOW(), NOW()),
('아벤느 플뤼이드 미네랄 크림 50ml', '아벤느 플뤼이드 미네랄 크림 50ml', 4.6, (SELECT id FROM category WHERE name = '크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '아벤느'), '판매중', NOW(), NOW()),
('록시땅 이모텔 프레셔스 크림 50ml', '록시땅 이모텔 프레셔스 크림 50ml', 4.9, (SELECT id FROM category WHERE name = '크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '록시땅'), '판매중', NOW(), NOW()),
('비오템 라이프 플랑크톤 에센스 크림 50ml', '비오템 라이프 플랑크톤 에센스 크림 50ml', 4.5, (SELECT id FROM category WHERE name = '크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '비오템'), '판매중', NOW(), NOW()),
('메디힐 N.M.F 아쿠아링 크림 50ml', '메디힐 N.M.F 아쿠아링 크림 50ml', 4.8, (SELECT id FROM category WHERE name = '크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '메디힐'), '판매중', NOW(), NOW()),
('더하르나이 쌀겨 수분 크림 50ml', '더하르나이 쌀겨 수분 크림 50ml', 4.7, (SELECT id FROM category WHERE name = '크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '더하르나이'), '판매중', NOW(), NOW()),
('웰라쥬 리얼 히알루로닉 블루 크림 50ml', '웰라쥬 리얼 히알루로닉 블루 크림 50ml', 4.8, (SELECT id FROM category WHERE name = '크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '웰라쥬'), '판매중', NOW(), NOW()),
('바나브 아쿠아 리치 크림 50ml', '바나브 아쿠아 리치 크림 50ml', 4.6, (SELECT id FROM category WHERE name = '크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '바나브'), '판매중', NOW(), NOW()),
('폴라초이스 클리어 리스토어 모이스처라이저 60ml', '폴라초이스 클리어 리스토어 모이스처라이저 60ml', 4.9, (SELECT id FROM category WHERE name = '크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '폴라초이스'), '판매중', NOW(), NOW()),
('바디스핀 브이워터 리스토어 크림 50ml', '바디스핀 브이워터 리스토어 크림 50ml', 4.7, (SELECT id FROM category WHERE name = '크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '바디스핀'), '판매중', NOW(), NOW());

-- ==============================================
-- 아이크림 카테고리 (3차 카테고리: 아이크림, parent_id=15)
-- ==============================================

-- 아이크림 제품 데이터 삽입 (24개)
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽] 아이오페 바이오 인텐시브 컨디셔닝 아이크림 25ml 기획', '[9월 올영픽] 아이오페 바이오 인텐시브 컨디셔닝 아이크림 25ml 기획', 4.8, (SELECT id FROM category WHERE name = '아이크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '아이오페'), '판매중', NOW(), NOW()),
('구달 청귤 비타C 아이크림 30ml', '구달 청귤 비타C 아이크림 30ml', 4.7, (SELECT id FROM category WHERE name = '아이크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '구달'), '판매중', NOW(), NOW()),
('[9월 올영픽] 헤라 시그니아 아이크림 20ml 기획', '[9월 올영픽] 헤라 시그니아 아이크림 20ml 기획', 4.9, (SELECT id FROM category WHERE name = '아이크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '헤라'), '판매중', NOW(), NOW()),
('달바 화이트 트러플 아이크림 20ml', '달바 화이트 트러플 아이크림 20ml', 4.8, (SELECT id FROM category WHERE name = '아이크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '달바'), '판매중', NOW(), NOW()),
('마녀공장 비피다 바이옴 아이크림 30ml', '마녀공장 비피다 바이옴 아이크림 30ml', 4.8, (SELECT id FROM category WHERE name = '아이크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '마녀공장'), '판매중', NOW(), NOW()),
('토리든 다이브인 저분자 히알루론산 아이크림 20ml', '토리든 다이브인 저분자 히알루론산 아이크림 20ml', 4.8, (SELECT id FROM category WHERE name = '아이크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '토리든'), '판매중', NOW(), NOW()),
('라네즈 워터 뱅크 아이크림 EX 20ml', '라네즈 워터 뱅크 아이크림 EX 20ml', 4.7, (SELECT id FROM category WHERE name = '아이크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '라네즈'), '판매중', NOW(), NOW()),
('메디큐브 에이지알 리턴 아이크림 15ml', '메디큐브 에이지알 리턴 아이크림 15ml', 4.9, (SELECT id FROM category WHERE name = '아이크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '메디큐브'), '판매중', NOW(), NOW()),
('센텔리안24 마데카 아이크림 30ml', '센텔리안24 마데카 아이크림 30ml', 4.7, (SELECT id FROM category WHERE name = '아이크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '센텔리안24'), '판매중', NOW(), NOW()),
('메디힐 N.M.F 아쿠아링 아이크림 25ml', '메디힐 N.M.F 아쿠아링 아이크림 25ml', 4.8, (SELECT id FROM category WHERE name = '아이크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '메디힐'), '판매중', NOW(), NOW()),
('닥터지 레드 블레미쉬 클리어 아이크림 20ml', '닥터지 레드 블레미쉬 클리어 아이크림 20ml', 4.6, (SELECT id FROM category WHERE name = '아이크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '닥터지'), '판매중', NOW(), NOW()),
('이니스프리 그린티 씨드 아이크림 30ml', '이니스프리 그린티 씨드 아이크림 30ml', 4.7, (SELECT id FROM category WHERE name = '아이크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '이니스프리'), '판매중', NOW(), NOW()),
('바이오힐보 프로바이오덤 리페어링 아이크림 20ml', '바이오힐보 프로바이오덤 리페어링 아이크림 20ml', 4.8, (SELECT id FROM category WHERE name = '아이크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '바이오힐보'), '판매중', NOW(), NOW()),
('아누아 아이크림 15ml', '아누아 아이크림 15ml', 4.7, (SELECT id FROM category WHERE name = '아이크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '아누아'), '판매중', NOW(), NOW()),
('에스테덤 인텐시브 하이알루론 아이크림 15ml', '에스테덤 인텐시브 하이알루론 아이크림 15ml', 4.8, (SELECT id FROM category WHERE name = '아이크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '에스테덤'), '판매중', NOW(), NOW()),
('아벤느 플뤼이드 미네랄 아이크림 15ml', '아벤느 플뤼이드 미네랄 아이크림 15ml', 4.6, (SELECT id FROM category WHERE name = '아이크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '아벤느'), '판매중', NOW(), NOW()),
('록시땅 이모텔 프레셔스 아이크림 15ml', '록시땅 이모텔 프레셔스 아이크림 15ml', 4.9, (SELECT id FROM category WHERE name = '아이크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '록시땅'), '판매중', NOW(), NOW()),
('비오템 라이프 플랑크톤 아이크림 15ml', '비오템 라이프 플랑크톤 아이크림 15ml', 4.5, (SELECT id FROM category WHERE name = '아이크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '비오템'), '판매중', NOW(), NOW()),
('바이오더마 아톨리움 아이크림 20ml', '바이오더마 아톨리움 아이크림 20ml', 4.8, (SELECT id FROM category WHERE name = '아이크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '바이오더마'), '판매중', NOW(), NOW()),
('더하르나이 쌀겨 수분 아이크림 20ml', '더하르나이 쌀겨 수분 아이크림 20ml', 4.7, (SELECT id FROM category WHERE name = '아이크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '더하르나이'), '판매중', NOW(), NOW()),
('웰라쥬 리얼 히알루로닉 블루 아이크림 25ml', '웰라쥬 리얼 히알루로닉 블루 아이크림 25ml', 4.8, (SELECT id FROM category WHERE name = '아이크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '웰라쥬'), '판매중', NOW(), NOW()),
('VT 리들샷 아이크림 20ml', 'VT 리들샷 아이크림 20ml', 4.9, (SELECT id FROM category WHERE name = '아이크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = 'VT'), '판매중', NOW(), NOW()),
('폴라초이스 클리어 아이크림 15ml', '폴라초이스 클리어 아이크림 15ml', 4.9, (SELECT id FROM category WHERE name = '아이크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = '폴라초이스'), '판매중', NOW(), NOW()),
('AXIS-Y 다크 스팟 코렉팅 아이크림 20ml', 'AXIS-Y 다크 스팟 코렉팅 아이크림 20ml', 4.6, (SELECT id FROM category WHERE name = '아이크림' AND parent_id = 15), (SELECT id FROM brand WHERE name = 'AXIS-Y'), '판매중', NOW(), NOW());

-- ==============================================
-- 로션 카테고리 (3차 카테고리: 로션, parent_id=16)  
-- ==============================================

-- 로션 제품 데이터 삽입 (24개)
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽]피지오겔 DMT 페이셜 로션 200ml 기획 (+로션 50ml)', '[9월 올영픽]피지오겔 DMT 페이셜 로션 200ml 기획 (+로션 50ml)', 4.9, (SELECT id FROM category WHERE name = '로션' AND parent_id = 16), (SELECT id FROM brand WHERE name = '피지오겔'), '판매중', NOW(), NOW()),
('마녀공장 비피다 바이옴 컴플렉스 로션 200ml', '마녀공장 비피다 바이옴 컴플렉스 로션 200ml', 4.8, (SELECT id FROM category WHERE name = '로션' AND parent_id = 16), (SELECT id FROM brand WHERE name = '마녀공장'), '판매중', NOW(), NOW()),
('아누아 하트리프 70% 수딩 로션 200ml', '아누아 하트리프 70% 수딩 로션 200ml', 4.7, (SELECT id FROM category WHERE name = '로션' AND parent_id = 16), (SELECT id FROM brand WHERE name = '아누아'), '판매중', NOW(), NOW()),
('라로슈포제 톨레리안 울트라 로션 200ml', '라로슈포제 톨레리안 울트라 로션 200ml', 4.6, (SELECT id FROM category WHERE name = '로션' AND parent_id = 16), (SELECT id FROM brand WHERE name = '라로슈포제'), '판매중', NOW(), NOW()),
('세타필 모이스춰라이징 로션 591ml', '세타필 모이스춰라이징 로션 591ml', 4.8, (SELECT id FROM category WHERE name = '로션' AND parent_id = 16), (SELECT id FROM brand WHERE name = '세타필'), '판매중', NOW(), NOW()),
('구달 청귤 비타C 세럼 로션 200ml', '구달 청귤 비타C 세럼 로션 200ml', 4.7, (SELECT id FROM category WHERE name = '로션' AND parent_id = 16), (SELECT id FROM brand WHERE name = '구달'), '판매중', NOW(), NOW()),
('토리든 다이브인 저분자 히알루론산 로션 200ml', '토리든 다이브인 저분자 히알루론산 로션 200ml', 4.8, (SELECT id FROM category WHERE name = '로션' AND parent_id = 16), (SELECT id FROM brand WHERE name = '토리든'), '판매중', NOW(), NOW()),
('라네즈 크림 스킨 리파이닝 로션 200ml', '라네즈 크림 스킨 리파이닝 로션 200ml', 4.7, (SELECT id FROM category WHERE name = '로션' AND parent_id = 16), (SELECT id FROM brand WHERE name = '라네즈'), '판매중', NOW(), NOW()),
('메디큐브 에이지알 턴오버 필링 로션 130ml', '메디큐브 에이지알 턴오버 필링 로션 130ml', 4.9, (SELECT id FROM category WHERE name = '로션' AND parent_id = 16), (SELECT id FROM brand WHERE name = '메디큐브'), '판매중', NOW(), NOW()),
('바이오더마 아톨리움 인텐시브 로션 200ml', '바이오더마 아톨리움 인텐시브 로션 200ml', 4.8, (SELECT id FROM category WHERE name = '로션' AND parent_id = 16), (SELECT id FROM brand WHERE name = '바이오더마'), '판매중', NOW(), NOW()),
('닥터지 레드 블레미쉬 클리어 수딩 로션 200ml', '닥터지 레드 블레미쉬 클리어 수딩 로션 200ml', 4.6, (SELECT id FROM category WHERE name = '로션' AND parent_id = 16), (SELECT id FROM brand WHERE name = '닥터지'), '판매중', NOW(), NOW()),
('이니스프리 그린티 씨드 세럼 로션 160ml', '이니스프리 그린티 씨드 세럼 로션 160ml', 4.7, (SELECT id FROM category WHERE name = '로션' AND parent_id = 16), (SELECT id FROM brand WHERE name = '이니스프리'), '판매중', NOW(), NOW()),
('아비브 수딩 로션 200ml', '아비브 수딩 로션 200ml', 4.8, (SELECT id FROM category WHERE name = '로션' AND parent_id = 16), (SELECT id FROM brand WHERE name = '아비브'), '판매중', NOW(), NOW()),
('센텔리안24 마데카 케어 로션 200ml', '센텔리안24 마데카 케어 로션 200ml', 4.7, (SELECT id FROM category WHERE name = '로션' AND parent_id = 16), (SELECT id FROM brand WHERE name = '센텔리안24'), '판매중', NOW(), NOW()),
('에스테덤 인텐시브 하이알루론 로션 200ml', '에스테덤 인텐시브 하이알루론 로션 200ml', 4.8, (SELECT id FROM category WHERE name = '로션' AND parent_id = 16), (SELECT id FROM brand WHERE name = '에스테덤'), '판매중', NOW(), NOW()),
('아벤느 플뤼이드 미네랄 톤텀트 로션 50ml', '아벤느 플뤼이드 미네랄 톤텀트 로션 50ml', 4.6, (SELECT id FROM category WHERE name = '로션' AND parent_id = 16), (SELECT id FROM brand WHERE name = '아벤느'), '판매중', NOW(), NOW()),
('록시땅 이모텔 프레셔스 로션 200ml', '록시땅 이모텔 프레셔스 로션 200ml', 4.9, (SELECT id FROM category WHERE name = '로션' AND parent_id = 16), (SELECT id FROM brand WHERE name = '록시땅'), '판매중', NOW(), NOW()),
('비오템 라이프 플랑크톤 에센스 로션 200ml', '비오템 라이프 플랑크톤 에센스 로션 200ml', 4.5, (SELECT id FROM category WHERE name = '로션' AND parent_id = 16), (SELECT id FROM brand WHERE name = '비오템'), '판매중', NOW(), NOW()),
('메디힐 N.M.F 아쿠아링 로션 300ml', '메디힐 N.M.F 아쿠아링 로션 300ml', 4.8, (SELECT id FROM category WHERE name = '로션' AND parent_id = 16), (SELECT id FROM brand WHERE name = '메디힐'), '판매중', NOW(), NOW()),
('더하르나이 쌀겨 수분 로션 200ml', '더하르나이 쌀겨 수분 로션 200ml', 4.7, (SELECT id FROM category WHERE name = '로션' AND parent_id = 16), (SELECT id FROM brand WHERE name = '더하르나이'), '판매중', NOW(), NOW()),
('웰라쥬 리얼 히알루로닉 블루 로션 200ml', '웰라쥬 리얼 히알루로닉 블루 로션 200ml', 4.8, (SELECT id FROM category WHERE name = '로션' AND parent_id = 16), (SELECT id FROM brand WHERE name = '웰라쥬'), '판매중', NOW(), NOW()),
('바나브 아쿠아 리치 크림 로션 200ml', '바나브 아쿠아 리치 크림 로션 200ml', 4.6, (SELECT id FROM category WHERE name = '로션' AND parent_id = 16), (SELECT id FROM brand WHERE name = '바나브'), '판매중', NOW(), NOW()),
('폴라초이스 클리어 레귤러 스트렝스 BHA 로션 118ml', '폴라초이스 클리어 레귤러 스트렝스 BHA 로션 118ml', 4.9, (SELECT id FROM category WHERE name = '로션' AND parent_id = 16), (SELECT id FROM brand WHERE name = '폴라초이스'), '판매중', NOW(), NOW()),
('바디스핀 브이워터 리스토어 로션 200ml', '바디스핀 브이워터 리스토어 로션 200ml', 4.7, (SELECT id FROM category WHERE name = '로션' AND parent_id = 16), (SELECT id FROM brand WHERE name = '바디스핀'), '판매중', NOW(), NOW());

-- ==============================================
-- 올인원 카테고리 (3차 카테고리: 올인원, parent_id=16)
-- ==============================================

-- 올인원 제품 데이터 삽입 (24개)
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽] 라네즈 워터 뱅크 블루 하이알루로닉 겔 크림 70ml 기획', '[9월 올영픽] 라네즈 워터 뱅크 블루 하이알루로닉 겔 크림 70ml 기획', 4.8, (SELECT id FROM category WHERE name = '올인원' AND parent_id = 16), (SELECT id FROM brand WHERE name = '라네즈'), '판매중', NOW(), NOW()),
('구달 청귤 비타C 톤업 올인원 겔 100ml', '구달 청귤 비타C 톤업 올인원 겔 100ml', 4.7, (SELECT id FROM category WHERE name = '올인원' AND parent_id = 16), (SELECT id FROM brand WHERE name = '구달'), '판매중', NOW(), NOW()),
('바이오힐보 프로바이오덤 리페어링 올인원 겔 180ml', '바이오힐보 프로바이오덤 리페어링 올인원 겔 180ml', 4.8, (SELECT id FROM category WHERE name = '올인원' AND parent_id = 16), (SELECT id FROM brand WHERE name = '바이오힐보'), '판매중', NOW(), NOW()),
('네이처리퍼블릭 알로에 베라 92% 수딩 겔 300ml', '네이처리퍼블릭 알로에 베라 92% 수딩 겔 300ml', 4.6, (SELECT id FROM category WHERE name = '올인원' AND parent_id = 16), (SELECT id FROM brand WHERE name = '네이처리퍼블릭'), '판매중', NOW(), NOW()),
('토리든 다이브인 저분자 히알루론산 겔 크림 100ml', '토리든 다이브인 저분자 히알루론산 겔 크림 100ml', 4.8, (SELECT id FROM category WHERE name = '올인원' AND parent_id = 16), (SELECT id FROM brand WHERE name = '토리든'), '판매중', NOW(), NOW()),
('아누아 도카토 하니 겔 300ml', '아누아 도카토 하니 겔 300ml', 4.7, (SELECT id FROM category WHERE name = '올인원' AND parent_id = 16), (SELECT id FROM brand WHERE name = '아누아'), '판매중', NOW(), NOW()),
('이니스프리 그린티 씨드 하이알루론산 겔 크림 80ml', '이니스프리 그린티 씨드 하이알루론산 겔 크림 80ml', 4.7, (SELECT id FROM category WHERE name = '올인원' AND parent_id = 16), (SELECT id FROM brand WHERE name = '이니스프리'), '판매중', NOW(), NOW()),
('메디큐브 AGE-R 부스터 겔 50ml', '메디큐브 AGE-R 부스터 겔 50ml', 4.9, (SELECT id FROM category WHERE name = '올인원' AND parent_id = 16), (SELECT id FROM brand WHERE name = '메디큐브'), '판매중', NOW(), NOW()),
('센텔리안24 마데카 케어 겔 크림 50ml', '센텔리안24 마데카 케어 겔 크림 50ml', 4.7, (SELECT id FROM category WHERE name = '올인원' AND parent_id = 16), (SELECT id FROM brand WHERE name = '센텔리안24'), '판매중', NOW(), NOW()),
('닥터지 레드 블레미쉬 클리어 수딩 겔 100ml', '닥터지 레드 블레미쉬 클리어 수딩 겔 100ml', 4.6, (SELECT id FROM category WHERE name = '올인원' AND parent_id = 16), (SELECT id FROM brand WHERE name = '닥터지'), '판매중', NOW(), NOW()),
('피지오겔 AI 리페어 겔 200ml', '피지오겔 AI 리페어 겔 200ml', 4.8, (SELECT id FROM category WHERE name = '올인원' AND parent_id = 16), (SELECT id FROM brand WHERE name = '피지오겔'), '판매중', NOW(), NOW()),
('달바 화이트 트러플 비타민 C 스팟 겔 30ml', '달바 화이트 트러플 비타민 C 스팟 겔 30ml', 4.8, (SELECT id FROM category WHERE name = '올인원' AND parent_id = 16), (SELECT id FROM brand WHERE name = '달바'), '판매중', NOW(), NOW()),
('바이오더마 시카비오 리스토어 겔 40ml', '바이오더마 시카비오 리스토어 겔 40ml', 4.9, (SELECT id FROM category WHERE name = '올인원' AND parent_id = 16), (SELECT id FROM brand WHERE name = '바이오더마'), '판매중', NOW(), NOW()),
('더오디너리 하이알루론산 2% + B5 겔 60ml', '더오디너리 하이알루론산 2% + B5 겔 60ml', 4.5, (SELECT id FROM category WHERE name = '올인원' AND parent_id = 16), (SELECT id FROM brand WHERE name = '디오디너리'), '판매중', NOW(), NOW()),
('아벤느 플뤼이드 리커버리 겔 40ml', '아벤느 플뤼이드 리커버리 겔 40ml', 4.6, (SELECT id FROM category WHERE name = '올인원' AND parent_id = 16), (SELECT id FROM brand WHERE name = '아벤느'), '판매중', NOW(), NOW()),
('브링그린 카밍 올인원 겔 300ml', '브링그린 카밍 올인원 겔 300ml', 4.8, (SELECT id FROM category WHERE name = '올인원' AND parent_id = 16), (SELECT id FROM brand WHERE name = '브링그린'), '판매중', NOW(), NOW()),
('VT 시카 마일드 폼 겔 150ml', 'VT 시카 마일드 폼 겔 150ml', 4.7, (SELECT id FROM category WHERE name = '올인원' AND parent_id = 16), (SELECT id FROM brand WHERE name = 'VT'), '판매중', NOW(), NOW()),
('AXIS-Y 마데카소사이드 겔 50ml', 'AXIS-Y 마데카소사이드 겔 50ml', 4.6, (SELECT id FROM category WHERE name = '올인원' AND parent_id = 16), (SELECT id FROM brand WHERE name = 'AXIS-Y'), '판매중', NOW(), NOW()),
('비원츠 세라마이드 리페어 겔 50ml', '비원츠 세라마이드 리페어 겔 50ml', 4.7, (SELECT id FROM category WHERE name = '올인원' AND parent_id = 16), (SELECT id FROM brand WHERE name = '비원츠'), '판매중', NOW(), NOW()),
('아크웰 리얼 아쿠아 밸런싱 겔 100ml', '아크웰 리얼 아쿠아 밸런싱 겔 100ml', 4.8, (SELECT id FROM category WHERE name = '올인원' AND parent_id = 16), (SELECT id FROM brand WHERE name = '아크웰'), '판매중', NOW(), NOW()),
('셀라딕스 하이드라 리페어 겔 100ml', '셀라딕스 하이드라 리페어 겔 100ml', 4.7, (SELECT id FROM category WHERE name = '올인원' AND parent_id = 16), (SELECT id FROM brand WHERE name = '셀라딕스'), '판매중', NOW(), NOW()),
('조선미녀 인삼 수분 겔 100ml', '조선미녀 인삼 수분 겔 100ml', 4.8, (SELECT id FROM category WHERE name = '올인원' AND parent_id = 16), (SELECT id FROM brand WHERE name = '조선미녀'), '판매중', NOW(), NOW()),
('헤라 아쿠아볼릭 하이드라-젤 크림 50ml', '헤라 아쿠아볼릭 하이드라-젤 크림 50ml', 4.9, (SELECT id FROM category WHERE name = '올인원' AND parent_id = 16), (SELECT id FROM brand WHERE name = '헤라'), '판매중', NOW(), NOW()),
('폴라초이스 크림 겔 모이스처라이저 50ml', '폴라초이스 크림 겔 모이스처라이저 50ml', 4.8, (SELECT id FROM category WHERE name = '올인원' AND parent_id = 16), (SELECT id FROM brand WHERE name = '폴라초이스'), '판매중', NOW(), NOW());

-- ==============================================
-- 미스트/픽서 카테고리 (3차 카테고리: 미스트/픽서, parent_id=17)
-- ==============================================

-- 미스트/픽서 제품 데이터 삽입 (24개)
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽] 아비브 가움 수딩 젤 로션 75ml 기획 (+픽서 미스트 30ml)', '[9월 올영픽] 아비브 가움 수딩 젤 로션 75ml 기획 (+픽서 미스트 30ml)', 4.8, (SELECT id FROM category WHERE name = '미스트/픽서' AND parent_id = 17), (SELECT id FROM brand WHERE name = '아비브'), '판매중', NOW(), NOW()),
('토리든 다이브인 저분자 히알루론산 미스트 120ml', '토리든 다이브인 저분자 히알루론산 미스트 120ml', 4.8, (SELECT id FROM category WHERE name = '미스트/픽서' AND parent_id = 17), (SELECT id FROM brand WHERE name = '토리든'), '판매중', NOW(), NOW()),
('구달 청귤 비타C 픽서 미스트 100ml', '구달 청귤 비타C 픽서 미스트 100ml', 4.7, (SELECT id FROM category WHERE name = '미스트/픽서' AND parent_id = 17), (SELECT id FROM brand WHERE name = '구달'), '판매중', NOW(), NOW()),
('[9월 올영픽] 바이오힐보 판테놀 미스트 100ml 기획 (+30ml)', '[9월 올영픽] 바이오힐보 판테놀 미스트 100ml 기획 (+30ml)', 4.8, (SELECT id FROM category WHERE name = '미스트/픽서' AND parent_id = 17), (SELECT id FROM brand WHERE name = '바이오힐보'), '판매중', NOW(), NOW()),
('아누아 하트리프 77% 수딩 미스트 80ml', '아누아 하트리프 77% 수딩 미스트 80ml', 4.7, (SELECT id FROM category WHERE name = '미스트/픽서' AND parent_id = 17), (SELECT id FROM brand WHERE name = '아누아'), '판매중', NOW(), NOW()),
('센텔리안24 마데카 케어 미스트 120ml', '센텔리안24 마데카 케어 미스트 120ml', 4.7, (SELECT id FROM category WHERE name = '미스트/픽서' AND parent_id = 17), (SELECT id FROM brand WHERE name = '센텔리안24'), '판매중', NOW(), NOW()),
('달바 화이트 트러플 퍼스트 스프레이 미스트 100ml', '달바 화이트 트러플 퍼스트 스프레이 미스트 100ml', 4.8, (SELECT id FROM category WHERE name = '미스트/픽서' AND parent_id = 17), (SELECT id FROM brand WHERE name = '달바'), '판매중', NOW(), NOW()),
('라네즈 크림 스킨 픽서 미스트 120ml', '라네즈 크림 스킨 픽서 미스트 120ml', 4.7, (SELECT id FROM category WHERE name = '미스트/픽서' AND parent_id = 17), (SELECT id FROM brand WHERE name = '라네즈'), '판매중', NOW(), NOW()),
('메디힐 N.M.F 아쿠아링 미스트 100ml', '메디힐 N.M.F 아쿠아링 미스트 100ml', 4.8, (SELECT id FROM category WHERE name = '미스트/픽서' AND parent_id = 17), (SELECT id FROM brand WHERE name = '메디힐'), '판매중', NOW(), NOW()),
('이니스프리 그린티 씨드 미스트 80ml', '이니스프리 그린티 씨드 미스트 80ml', 4.7, (SELECT id FROM category WHERE name = '미스트/픽서' AND parent_id = 17), (SELECT id FROM brand WHERE name = '이니스프리'), '판매중', NOW(), NOW()),
('바이오더마 시카비오 미스트 150ml', '바이오더마 시카비오 미스트 150ml', 4.9, (SELECT id FROM category WHERE name = '미스트/픽서' AND parent_id = 17), (SELECT id FROM brand WHERE name = '바이오더마'), '판매중', NOW(), NOW()),
('아벤느 쓰리말 워터 스프레이 300ml', '아벤느 쓰리말 워터 스프레이 300ml', 4.8, (SELECT id FROM category WHERE name = '미스트/픽서' AND parent_id = 17), (SELECT id FROM brand WHERE name = '아벤느'), '판매중', NOW(), NOW()),
('VT 리들샷 토너 미스트 150ml', 'VT 리들샷 토너 미스트 150ml', 4.9, (SELECT id FROM category WHERE name = '미스트/픽서' AND parent_id = 17), (SELECT id FROM brand WHERE name = 'VT'), '판매중', NOW(), NOW()),
('피지오겔 AI 미스트 150ml', '피지오겔 AI 미스트 150ml', 4.8, (SELECT id FROM category WHERE name = '미스트/픽서' AND parent_id = 17), (SELECT id FROM brand WHERE name = '피지오겔'), '판매중', NOW(), NOW()),
('닥터지 레드 블레미쉬 클리어 수딩 미스트 100ml', '닥터지 레드 블레미쉬 클리어 수딩 미스트 100ml', 4.6, (SELECT id FROM category WHERE name = '미스트/픽서' AND parent_id = 17), (SELECT id FROM brand WHERE name = '닥터지'), '판매중', NOW(), NOW()),
('브링그린 티트리 시카 수딩 미스트 150ml', '브링그린 티트리 시카 수딩 미스트 150ml', 4.8, (SELECT id FROM category WHERE name = '미스트/픽서' AND parent_id = 17), (SELECT id FROM brand WHERE name = '브링그린'), '판매중', NOW(), NOW()),
('AXIS-Y 다크 스팟 코렉팅 글로우 미스트 125ml', 'AXIS-Y 다크 스팟 코렉팅 글로우 미스트 125ml', 4.6, (SELECT id FROM category WHERE name = '미스트/픽서' AND parent_id = 17), (SELECT id FROM brand WHERE name = 'AXIS-Y'), '판매중', NOW(), NOW()),
('비원츠 인텐시브 하이드레이팅 미스트 120ml', '비원츠 인텐시브 하이드레이팅 미스트 120ml', 4.7, (SELECT id FROM category WHERE name = '미스트/픽서' AND parent_id = 17), (SELECT id FROM brand WHERE name = '비원츠'), '판매중', NOW(), NOW()),
('로벡틴 시카케어 미스트 150ml', '로벡틴 시카케어 미스트 150ml', 4.6, (SELECT id FROM category WHERE name = '미스트/픽서' AND parent_id = 17), (SELECT id FROM brand WHERE name = '로벡틴'), '판매중', NOW(), NOW()),
('마녀공장 비피다 바이옴 컴플렉스 미스트 120ml', '마녀공장 비피다 바이옴 컴플렉스 미스트 120ml', 4.8, (SELECT id FROM category WHERE name = '미스트/픽서' AND parent_id = 17), (SELECT id FROM brand WHERE name = '마녀공장'), '판매중', NOW(), NOW()),
('웰라쥬 리얼 히알루로닉 블루 미스트 120ml', '웰라쥬 리얼 히알루로닉 블루 미스트 120ml', 4.8, (SELECT id FROM category WHERE name = '미스트/픽서' AND parent_id = 17), (SELECT id FROM brand WHERE name = '웰라쥬'), '판매중', NOW(), NOW()),
('더하르나이 쌀겨 수분 미스트 150ml', '더하르나이 쌀겨 수분 미스트 150ml', 4.7, (SELECT id FROM category WHERE name = '미스트/픽서' AND parent_id = 17), (SELECT id FROM brand WHERE name = '더하르나이'), '판매중', NOW(), NOW()),
('에스테덤 인텐시브 하이알루론 미스트 100ml', '에스테덤 인텐시브 하이알루론 미스트 100ml', 4.8, (SELECT id FROM category WHERE name = '미스트/픽서' AND parent_id = 17), (SELECT id FROM brand WHERE name = '에스테덤'), '판매중', NOW(), NOW()),
('바디스핀 브이워터 리스토어 미스트 120ml', '바디스핀 브이워터 리스토어 미스트 120ml', 4.7, (SELECT id FROM category WHERE name = '미스트/픽서' AND parent_id = 17), (SELECT id FROM brand WHERE name = '바디스핀'), '판매중', NOW(), NOW());

-- ==============================================
-- 페이스오일 카테고리 (3차 카테고리: 페이스오일, parent_id=17)
-- ==============================================

-- 페이스오일 제품 데이터 삽입 (17개)
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽] 달바 화이트 트러플 퍼스트 스프레이 오일 100ml 기획', '[9월 올영픽] 달바 화이트 트러플 퍼스트 스프레이 오일 100ml 기획', 4.8, (SELECT id FROM category WHERE name = '페이스오일' AND parent_id = 17), (SELECT id FROM brand WHERE name = '달바'), '판매중', NOW(), NOW()),
('구달 청귤 비타C 페이스오일 30ml', '구달 청귤 비타C 페이스오일 30ml', 4.7, (SELECT id FROM category WHERE name = '페이스오일' AND parent_id = 17), (SELECT id FROM brand WHERE name = '구달'), '판매중', NOW(), NOW()),
('토리든 다이브인 저분자 히알루론산 오일 30ml', '토리든 다이브인 저분자 히알루론산 오일 30ml', 4.8, (SELECT id FROM category WHERE name = '페이스오일' AND parent_id = 17), (SELECT id FROM brand WHERE name = '토리든'), '판매중', NOW(), NOW()),
('아누아 하트리프 77% 페이스오일 30ml', '아누아 하트리프 77% 페이스오일 30ml', 4.7, (SELECT id FROM category WHERE name = '페이스오일' AND parent_id = 17), (SELECT id FROM brand WHERE name = '아누아'), '판매중', NOW(), NOW()),
('더오디너리 스쿠알란 100% 페이스오일 30ml', '더오디너리 스쿠알란 100% 페이스오일 30ml', 4.5, (SELECT id FROM category WHERE name = '페이스오일' AND parent_id = 17), (SELECT id FROM brand WHERE name = '디오디너리'), '판매중', NOW(), NOW()),
('이니스프리 그린티 씨드 페이스오일 30ml', '이니스프리 그린티 씨드 페이스오일 30ml', 4.7, (SELECT id FROM category WHERE name = '페이스오일' AND parent_id = 17), (SELECT id FROM brand WHERE name = '이니스프리'), '판매중', NOW(), NOW()),
('바이오힐보 프로바이오덤 리페어링 오일 30ml', '바이오힐보 프로바이오덤 리페어링 오일 30ml', 4.8, (SELECT id FROM category WHERE name = '페이스오일' AND parent_id = 17), (SELECT id FROM brand WHERE name = '바이오힐보'), '판매중', NOW(), NOW()),
('센텔리안24 마데카 케어 오일 30ml', '센텔리안24 마데카 케어 오일 30ml', 4.7, (SELECT id FROM category WHERE name = '페이스오일' AND parent_id = 17), (SELECT id FROM brand WHERE name = '센텔리안24'), '판매중', NOW(), NOW()),
('라네즈 워터 뱅크 블루 하이알루로닉 오일 30ml', '라네즈 워터 뱅크 블루 하이알루로닉 오일 30ml', 4.7, (SELECT id FROM category WHERE name = '페이스오일' AND parent_id = 17), (SELECT id FROM brand WHERE name = '라네즈'), '판매중', NOW(), NOW()),
('메디힐 N.M.F 아쿠아링 오일 30ml', '메디힐 N.M.F 아쿠아링 오일 30ml', 4.8, (SELECT id FROM category WHERE name = '페이스오일' AND parent_id = 17), (SELECT id FROM brand WHERE name = '메디힐'), '판매중', NOW(), NOW()),
('아비브 가움 수딩 페이스오일 30ml', '아비브 가움 수딩 페이스오일 30ml', 4.8, (SELECT id FROM category WHERE name = '페이스오일' AND parent_id = 17), (SELECT id FROM brand WHERE name = '아비브'), '판매중', NOW(), NOW()),
('VT 리들샷 300 페이스오일 30ml', 'VT 리들샷 300 페이스오일 30ml', 4.9, (SELECT id FROM category WHERE name = '페이스오일' AND parent_id = 17), (SELECT id FROM brand WHERE name = 'VT'), '판매중', NOW(), NOW()),
('록시땅 이모텔 프레셔스 페이스오일 30ml', '록시땅 이모텔 프레셔스 페이스오일 30ml', 4.9, (SELECT id FROM category WHERE name = '페이스오일' AND parent_id = 17), (SELECT id FROM brand WHERE name = '록시땅'), '판매중', NOW(), NOW()),
('비오템 라이프 플랑크톤 에센스 오일 30ml', '비오템 라이프 플랑크톤 에센스 오일 30ml', 4.5, (SELECT id FROM category WHERE name = '페이스오일' AND parent_id = 17), (SELECT id FROM brand WHERE name = '비오템'), '판매중', NOW(), NOW()),
('웰라쥬 리얼 히알루로닉 블루 오일 30ml', '웰라쥬 리얼 히알루로닉 블루 오일 30ml', 4.8, (SELECT id FROM category WHERE name = '페이스오일' AND parent_id = 17), (SELECT id FROM brand WHERE name = '웰라쥬'), '판매중', NOW(), NOW()),
('마녀공장 비피다 바이옴 컴플렉스 오일 30ml', '마녀공장 비피다 바이옴 컴플렉스 오일 30ml', 4.8, (SELECT id FROM category WHERE name = '페이스오일' AND parent_id = 17), (SELECT id FROM brand WHERE name = '마녀공장'), '판매중', NOW(), NOW()),
('트릴로지 로즈힙 오일 20ml', '트릴로지 로즈힙 오일 20ml', 4.9, (SELECT id FROM category WHERE name = '페이스오일' AND parent_id = 17), (SELECT id FROM brand WHERE name = '트릴로지'), '판매중', NOW(), NOW());

-- ==============================================
-- 스킨케어세트 카테고리 (3차 카테고리: 스킨케어세트, parent_id=18)
-- ==============================================

-- 스킨케어세트 제품 데이터 삽입 (24개)
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽] 토리든 다이브인 세트 (토너+로션+크림)', '[9월 올영픽] 토리든 다이브인 세트 (토너+로션+크림)', 4.8, (SELECT id FROM category WHERE name = '스킨케어세트' AND parent_id = 18), (SELECT id FROM brand WHERE name = '토리든'), '판매중', NOW(), NOW()),
('구달 청귤 비타C 라인 풀세트 (토너+세럼+크림)', '구달 청귤 비타C 라인 풀세트 (토너+세럼+크림)', 4.7, (SELECT id FROM category WHERE name = '스킨케어세트' AND parent_id = 18), (SELECT id FROM brand WHERE name = '구달'), '판매중', NOW(), NOW()),
('[9월 올영픽] 아누아 베스트 세트 (토너+세럼+크림)', '[9월 올영픽] 아누아 베스트 세트 (토너+세럼+크림)', 4.9, (SELECT id FROM category WHERE name = '스킨케어세트' AND parent_id = 18), (SELECT id FROM brand WHERE name = '아누아'), '판매중', NOW(), NOW()),
('달바 화이트 트러플 라인 세트 (토너+세럼+크림)', '달바 화이트 트러플 라인 세트 (토너+세럼+크림)', 4.8, (SELECT id FROM category WHERE name = '스킨케어세트' AND parent_id = 18), (SELECT id FROM brand WHERE name = '달바'), '판매중', NOW(), NOW()),
('마녀공장 비피다 바이옴 케어 세트 (토너+앰플+크림)', '마녀공장 비피다 바이옴 케어 세트 (토너+앰플+크림)', 4.8, (SELECT id FROM category WHERE name = '스킨케어세트' AND parent_id = 18), (SELECT id FROM brand WHERE name = '마녀공장'), '판매중', NOW(), NOW()),
('라로슈포제 시카플라스트 케어 세트 (토너+밤+크림)', '라로슈포제 시카플라스트 케어 세트 (토너+밤+크림)', 4.6, (SELECT id FROM category WHERE name = '스킨케어세트' AND parent_id = 18), (SELECT id FROM brand WHERE name = '라로슈포제'), '판매중', NOW(), NOW()),
('이니스프리 그린티 씨드 라인 세트 (토너+세럼+크림)', '이니스프리 그린티 씨드 라인 세트 (토너+세럼+크림)', 4.7, (SELECT id FROM category WHERE name = '스킨케어세트' AND parent_id = 18), (SELECT id FROM brand WHERE name = '이니스프리'), '판매중', NOW(), NOW()),
('바이오힐보 프로바이오덤 리페어 세트 (토너+에센스+크림)', '바이오힐보 프로바이오덤 리페어 세트 (토너+에센스+크림)', 4.8, (SELECT id FROM category WHERE name = '스킨케어세트' AND parent_id = 18), (SELECT id FROM brand WHERE name = '바이오힐보'), '판매중', NOW(), NOW()),
('센텔리안24 마데카 케어 세트 (토너+에센스+크림)', '센텔리안24 마데카 케어 세트 (토너+에센스+크림)', 4.7, (SELECT id FROM category WHERE name = '스킨케어세트' AND parent_id = 18), (SELECT id FROM brand WHERE name = '센텔리안24'), '판매중', NOW(), NOW()),
('메디힐 N.M.F 아쿠아링 세트 (토너+세럼+크림)', '메디힐 N.M.F 아쿠아링 세트 (토너+세럼+크림)', 4.8, (SELECT id FROM category WHERE name = '스킨케어세트' AND parent_id = 18), (SELECT id FROM brand WHERE name = '메디힐'), '판매중', NOW(), NOW()),
('닥터지 레드 블레미쉬 클리어 세트 (토너+세럼+크림)', '닥터지 레드 블레미쉬 클리어 세트 (토너+세럼+크림)', 4.6, (SELECT id FROM category WHERE name = '스킨케어세트' AND parent_id = 18), (SELECT id FROM brand WHERE name = '닥터지'), '판매중', NOW(), NOW()),
('VT 리들샷 라인 세트 (토너+에센스+크림)', 'VT 리들샷 라인 세트 (토너+에센스+크림)', 4.9, (SELECT id FROM category WHERE name = '스킨케어세트' AND parent_id = 18), (SELECT id FROM brand WHERE name = 'VT'), '판매중', NOW(), NOW()),
('아비브 가움 수딩 케어 세트 (토너+로션+크림)', '아비브 가움 수딩 케어 세트 (토너+로션+크림)', 4.8, (SELECT id FROM category WHERE name = '스킨케어세트' AND parent_id = 18), (SELECT id FROM brand WHERE name = '아비브'), '판매중', NOW(), NOW()),
('라네즈 워터 뱅크 블루 라인 세트 (토너+에센스+크림)', '라네즈 워터 뱅크 블루 라인 세트 (토너+에센스+크림)', 4.7, (SELECT id FROM category WHERE name = '스킨케어세트' AND parent_id = 18), (SELECT id FROM brand WHERE name = '라네즈'), '판매중', NOW(), NOW()),
('메디큐브 에이지알 안티에이징 세트 (세럼+크림+아이크림)', '메디큐브 에이지알 안티에이징 세트 (세럼+크림+아이크림)', 4.9, (SELECT id FROM category WHERE name = '스킨케어세트' AND parent_id = 18), (SELECT id FROM brand WHERE name = '메디큐브'), '판매중', NOW(), NOW()),
('바이오더마 아톨리움 케어 세트 (토너+로션+크림)', '바이오더마 아톨리움 케어 세트 (토너+로션+크림)', 4.8, (SELECT id FROM category WHERE name = '스킨케어세트' AND parent_id = 18), (SELECT id FROM brand WHERE name = '바이오더마'), '판매중', NOW(), NOW()),
('아벤느 플뤼이드 미네랄 케어 세트 (워터+세럼+크림)', '아벤느 플뤼이드 미네랄 케어 세트 (워터+세럼+크림)', 4.6, (SELECT id FROM category WHERE name = '스킨케어세트' AND parent_id = 18), (SELECT id FROM brand WHERE name = '아벤느'), '판매중', NOW(), NOW()),
('브링그린 티트리 시카 케어 세트 (토너+세럼+크림)', '브링그린 티트리 시카 케어 세트 (토너+세럼+크림)', 4.8, (SELECT id FROM category WHERE name = '스킨케어세트' AND parent_id = 18), (SELECT id FROM brand WHERE name = '브링그린'), '판매중', NOW(), NOW()),
('AXIS-Y 다크 스팟 케어 세트 (토너+세럼+크림)', 'AXIS-Y 다크 스팟 케어 세트 (토너+세럼+크림)', 4.6, (SELECT id FROM category WHERE name = '스킨케어세트' AND parent_id = 18), (SELECT id FROM brand WHERE name = 'AXIS-Y'), '판매중', NOW(), NOW()),
('피지오겔 AI 케어 세트 (토너+세럼+크림)', '피지오겔 AI 케어 세트 (토너+세럼+크림)', 4.8, (SELECT id FROM category WHERE name = '스킨케어세트' AND parent_id = 18), (SELECT id FROM brand WHERE name = '피지오겔'), '판매중', NOW(), NOW()),
('웰라쥬 리얼 히알루로닉 블루 세트 (토너+앰플+크림)', '웰라쥬 리얼 히알루로닉 블루 세트 (토너+앰플+크림)', 4.8, (SELECT id FROM category WHERE name = '스킨케어세트' AND parent_id = 18), (SELECT id FROM brand WHERE name = '웰라쥬'), '판매중', NOW(), NOW()),
('더하르나이 쌀겨 수분 케어 세트 (토너+로션+크림)', '더하르나이 쌀겨 수분 케어 세트 (토너+로션+크림)', 4.7, (SELECT id FROM category WHERE name = '스킨케어세트' AND parent_id = 18), (SELECT id FROM brand WHERE name = '더하르나이'), '판매중', NOW(), NOW()),
('에스테덤 인텐시브 하이알루론 케어 세트 (토너+세럼+크림)', '에스테덤 인텐시브 하이알루론 케어 세트 (토너+세럼+크림)', 4.8, (SELECT id FROM category WHERE name = '스킨케어세트' AND parent_id = 18), (SELECT id FROM brand WHERE name = '에스테덤'), '판매중', NOW(), NOW()),
('폴라초이스 클리어 케어 세트 (토너+세럼+로션)', '폴라초이스 클리어 케어 세트 (토너+세럼+로션)', 4.9, (SELECT id FROM category WHERE name = '스킨케어세트' AND parent_id = 18), (SELECT id FROM brand WHERE name = '폴라초이스'), '판매중', NOW(), NOW());

-- ==============================================
-- 스킨케어 디바이스 카테고리 (3차 카테고리: 스킨케어 디바이스, parent_id=19)
-- ==============================================

-- 스킨케어 디바이스 제품 데이터 삽입 (24개)
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽] 메디큐브 에이지알 부스터 프로 LED 마스크', '[9월 올영픽] 메디큐브 에이지알 부스터 프로 LED 마스크', 4.9, (SELECT id FROM category WHERE name = '스킨케어 디바이스' AND parent_id = 19), (SELECT id FROM brand WHERE name = '메디큐브'), '판매중', NOW(), NOW()),
('메디큐브 더마 에어샷 케어', '메디큐브 더마 에어샷 케어', 4.8, (SELECT id FROM category WHERE name = '스킨케어 디바이스' AND parent_id = 19), (SELECT id FROM brand WHERE name = '메디큐브'), '판매중', NOW(), NOW()),
('포레오 루나 미니 3 페이셜 클렌징 브러시', '포레오 루나 미니 3 페이셜 클렌징 브러시', 4.8, (SELECT id FROM category WHERE name = '스킨케어 디바이스' AND parent_id = 19), (SELECT id FROM brand WHERE name = '포레오'), '판매중', NOW(), NOW()),
('메디큐브 콜라겐 리프팅 케어', '메디큐브 콜라겐 리프팅 케어', 4.7, (SELECT id FROM category WHERE name = '스킨케어 디바이스' AND parent_id = 19), (SELECT id FROM brand WHERE name = '메디큐브'), '판매중', NOW(), NOW()),
('포레오 UFO 2 스마트 마스크 트리트먼트', '포레오 UFO 2 스마트 마스크 트리트먼트', 4.9, (SELECT id FROM category WHERE name = '스킨케어 디바이스' AND parent_id = 19), (SELECT id FROM brand WHERE name = '포레오'), '판매중', NOW(), NOW()),
('실큰 마이크로니들링 롤러 0.5mm', '실큰 마이크로니들링 롤러 0.5mm', 4.6, (SELECT id FROM category WHERE name = '스킨케어 디바이스' AND parent_id = 19), (SELECT id FROM brand WHERE name = '실큰'), '판매중', NOW(), NOW()),
('글로우엠 페이셜 롤러 스테인리스 스틸', '글로우엠 페이셜 롤러 스테인리스 스틸', 4.5, (SELECT id FROM category WHERE name = '스킨케어 디바이스' AND parent_id = 19), (SELECT id FROM brand WHERE name = '글로우엠'), '판매중', NOW(), NOW()),
('리스프링 페이셜 마사지 스톤', '리스프링 페이셜 마사지 스톤', 4.4, (SELECT id FROM category WHERE name = '스킨케어 디바이스' AND parent_id = 19), (SELECT id FROM brand WHERE name = '리스프링'), '판매중', NOW(), NOW()),
('게스케 LED 넥케어 디바이스', '게스케 LED 넥케어 디바이스', 4.7, (SELECT id FROM category WHERE name = '스킨케어 디바이스' AND parent_id = 19), (SELECT id FROM brand WHERE name = '게스케'), '판매중', NOW(), NOW()),
('SPUUN 쿨링 아이 마사지기', 'SPUUN 쿨링 아이 마사지기', 4.6, (SELECT id FROM category WHERE name = '스킨케어 디바이스' AND parent_id = 19), (SELECT id FROM brand WHERE name = 'SPUUN'), '판매중', NOW(), NOW()),
('메디큐브 에이지알 더마 EMS 샷', '메디큐브 에이지알 더마 EMS 샷', 4.8, (SELECT id FROM category WHERE name = '스킨케어 디바이스' AND parent_id = 19), (SELECT id FROM brand WHERE name = '메디큐브 에이지알'), '판매중', NOW(), NOW()),
('AHC 페이셜 리프팅 케어 디바이스', 'AHC 페이셜 리프팅 케어 디바이스', 4.5, (SELECT id FROM category WHERE name = '스킨케어 디바이스' AND parent_id = 19), (SELECT id FROM brand WHERE name = 'AHC'), '판매중', NOW(), NOW()),
('쿼드쎄라 듀얼 아이온 케어', '쿼드쎄라 듀얼 아이온 케어', 4.6, (SELECT id FROM category WHERE name = '스킨케어 디바이스' AND parent_id = 19), (SELECT id FROM brand WHERE name = '쿼드쎄라'), '판매중', NOW(), NOW()),
('바나브 페이셜 마사지 롤러', '바나브 페이셜 마사지 롤러', 4.4, (SELECT id FROM category WHERE name = '스킨케어 디바이스' AND parent_id = 19), (SELECT id FROM brand WHERE name = '바나브'), '판매중', NOW(), NOW()),
('포레오 아이리스 일루미네이팅 아이 마사지기', '포레오 아이리스 일루미네이팅 아이 마사지기', 4.8, (SELECT id FROM category WHERE name = '스킨케어 디바이스' AND parent_id = 19), (SELECT id FROM brand WHERE name = '포레오'), '판매중', NOW(), NOW()),
('메디큐브 에이지알 부스터H', '메디큐브 에이지알 부스터H', 4.7, (SELECT id FROM category WHERE name = '스킨케어 디바이스' AND parent_id = 19), (SELECT id FROM brand WHERE name = '메디큐브'), '판매중', NOW(), NOW()),
('실큰 마이크로니들링 더마롤러 1.0mm', '실큰 마이크로니들링 더마롤러 1.0mm', 4.5, (SELECT id FROM category WHERE name = '스킨케어 디바이스' AND parent_id = 19), (SELECT id FROM brand WHERE name = '실큰'), '판매중', NOW(), NOW()),
('글로우엠 쿨링 페이셜 마사지기', '글로우엠 쿨링 페이셜 마사지기', 4.4, (SELECT id FROM category WHERE name = '스킨케어 디바이스' AND parent_id = 19), (SELECT id FROM brand WHERE name = '글로우엠'), '판매중', NOW(), NOW()),
('리스프링 세라믹 페이셜 롤러', '리스프링 세라믹 페이셜 롤러', 4.3, (SELECT id FROM category WHERE name = '스킨케어 디바이스' AND parent_id = 19), (SELECT id FROM brand WHERE name = '리스프링'), '판매중', NOW(), NOW()),
('게스케 RF 페이셜 케어 디바이스', '게스케 RF 페이셜 케어 디바이스', 4.6, (SELECT id FROM category WHERE name = '스킨케어 디바이스' AND parent_id = 19), (SELECT id FROM brand WHERE name = '게스케'), '판매중', NOW(), NOW()),
('SPUUN 진동 페이셜 마사지기', 'SPUUN 진동 페이셜 마사지기', 4.5, (SELECT id FROM category WHERE name = '스킨케어 디바이스' AND parent_id = 19), (SELECT id FROM brand WHERE name = 'SPUUN'), '판매중', NOW(), NOW()),
('쿼드쎄라 트리플 케어 디바이스', '쿼드쎄라 트리플 케어 디바이스', 4.7, (SELECT id FROM category WHERE name = '스킨케어 디바이스' AND parent_id = 19), (SELECT id FROM brand WHERE name = '쿼드쎄라'), '판매중', NOW(), NOW()),
('바디스핀 페이셜 리프팅 케어', '바디스핀 페이셜 리프팅 케어', 4.5, (SELECT id FROM category WHERE name = '스킨케어 디바이스' AND parent_id = 19), (SELECT id FROM brand WHERE name = '바디스핀'), '판매중', NOW(), NOW()),
('AHC 울트라 리프팅 케어 디바이스', 'AHC 울트라 리프팅 케어 디바이스', 4.6, (SELECT id FROM category WHERE name = '스킨케어 디바이스' AND parent_id = 19), (SELECT id FROM brand WHERE name = 'AHC'), '판매중', NOW(), NOW());

-- ProductOption 데이터 삽입 (총 약 220개)
INSERT INTO product_option (name, additional_amount, product_id) VALUES
-- 스킨/토너 옵션 (24개)
('기본 옵션', 0, 1), ('기본 옵션', 0, 2), ('토너250mL+ 헤어스크런치', 0, 3), ('토너500ml+피지처방키트3개입', 5400, 3), ('토너500ml+트러블세럼3ml', 6300, 3),
('기본 옵션', 0, 4), ('기본 옵션', 0, 5), ('기본 옵션', 0, 6), ('기본 옵션', 0, 7), ('기본 옵션', 0, 8), ('기본 옵션', 0, 9), ('기본 옵션', 0, 10),
('기본 옵션', 0, 11), ('기본 옵션', 0, 12), ('기본 옵션', 0, 13), ('기본 옵션', 0, 14), ('기본 옵션', 0, 15), ('기본 옵션', 0, 16), ('기본 옵션', 0, 17),
('기본 옵션', 0, 18), ('기본 옵션', 0, 19), ('기본 옵션', 0, 20), ('기본 옵션', 0, 21), ('기본 옵션', 0, 22), ('기본 옵션', 0, 23), ('기본 옵션', 0, 24),
-- 에센스/세럼/앰플 옵션 (24개)
('기본 옵션', 0, 25), ('기본 옵션', 0, 26), ('기본 옵션', 0, 27), ('기본 옵션', 0, 28), ('기본 옵션', 0, 29), ('기본 옵션', 0, 30), ('기본 옵션', 0, 31),
('기본 옵션', 0, 32), ('기본 옵션', 0, 33), ('기본 옵션', 0, 34), ('기본 옵션', 0, 35), ('기본 옵션', 0, 36), ('기본 옵션', 0, 37), ('기본 옵션', 0, 38),
('기본 옵션', 0, 39), ('기본 옵션', 0, 40), ('기본 옵션', 0, 41), ('기본 옵션', 0, 42), ('기본 옵션', 0, 43), ('기본 옵션', 0, 44), ('기본 옵션', 0, 45),
('기본 옵션', 0, 46), ('기본 옵션', 0, 47), ('기본 옵션', 0, 48);

-- ProductPrice 데이터 삽입 (192개 - 96개 제품 * 2개씩)
INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
-- 스킨/토너 가격 (48개)
(59000, 'ORIGINAL', 1, NOW(), NOW()), (39900, 'SALE', 1, NOW(), NOW()),
(21000, 'ORIGINAL', 2, NOW(), NOW()), (15700, 'SALE', 2, NOW(), NOW()),
(15000, 'ORIGINAL', 3, NOW(), NOW()), (13500, 'SALE', 3, NOW(), NOW()),
(23000, 'ORIGINAL', 4, NOW(), NOW()), (20900, 'SALE', 4, NOW(), NOW()),
(25000, 'ORIGINAL', 5, NOW(), NOW()), (16900, 'SALE', 5, NOW(), NOW()),
(17000, 'ORIGINAL', 6, NOW(), NOW()), (14450, 'SALE', 6, NOW(), NOW()),
(32000, 'ORIGINAL', 7, NOW(), NOW()), (23040, 'SALE', 7, NOW(), NOW()),
(28000, 'ORIGINAL', 8, NOW(), NOW()), (25200, 'SALE', 8, NOW(), NOW()),
(28000, 'ORIGINAL', 9, NOW(), NOW()), (22400, 'SALE', 9, NOW(), NOW()),
(30000, 'ORIGINAL', 10, NOW(), NOW()), (20900, 'SALE', 10, NOW(), NOW()),
(25000, 'ORIGINAL', 11, NOW(), NOW()), (22500, 'SALE', 11, NOW(), NOW()),
(45000, 'ORIGINAL', 12, NOW(), NOW()), (38250, 'SALE', 12, NOW(), NOW()),
(28000, 'ORIGINAL', 13, NOW(), NOW()), (22400, 'SALE', 13, NOW(), NOW()),
(35000, 'ORIGINAL', 14, NOW(), NOW()), (28000, 'SALE', 14, NOW(), NOW()),
(42000, 'ORIGINAL', 15, NOW(), NOW()), (35700, 'SALE', 15, NOW(), NOW()),
(35000, 'ORIGINAL', 16, NOW(), NOW()), (28000, 'SALE', 16, NOW(), NOW()),
(38000, 'ORIGINAL', 17, NOW(), NOW()), (30400, 'SALE', 17, NOW(), NOW()),
(42000, 'ORIGINAL', 18, NOW(), NOW()), (37800, 'SALE', 18, NOW(), NOW()),
(32000, 'ORIGINAL', 19, NOW(), NOW()), (25600, 'SALE', 19, NOW(), NOW()),
(48000, 'ORIGINAL', 20, NOW(), NOW()), (38400, 'SALE', 20, NOW(), NOW()),
(25000, 'ORIGINAL', 21, NOW(), NOW()), (21250, 'SALE', 21, NOW(), NOW()),
(33000, 'ORIGINAL', 22, NOW(), NOW()), (26400, 'SALE', 22, NOW(), NOW()),
(18000, 'ORIGINAL', 23, NOW(), NOW()), (14400, 'SALE', 23, NOW(), NOW()),
(21000, 'ORIGINAL', 24, NOW(), NOW()), (16800, 'SALE', 24, NOW(), NOW()),
-- 에센스/세럼/앰플 가격 (48개)
(35000, 'ORIGINAL', 25, NOW(), NOW()), (24500, 'SALE', 25, NOW(), NOW()),
(28000, 'ORIGINAL', 26, NOW(), NOW()), (22400, 'SALE', 26, NOW(), NOW()),
(32000, 'ORIGINAL', 27, NOW(), NOW()), (22400, 'SALE', 27, NOW(), NOW()),
(45000, 'ORIGINAL', 28, NOW(), NOW()), (38250, 'SALE', 28, NOW(), NOW()),
(35000, 'ORIGINAL', 29, NOW(), NOW()), (28000, 'SALE', 29, NOW(), NOW()),
(18000, 'ORIGINAL', 30, NOW(), NOW()), (14400, 'SALE', 30, NOW(), NOW()),
(38000, 'ORIGINAL', 31, NOW(), NOW()), (30400, 'SALE', 31, NOW(), NOW()),
(32000, 'ORIGINAL', 32, NOW(), NOW()), (25600, 'SALE', 32, NOW(), NOW()),
(25000, 'ORIGINAL', 33, NOW(), NOW()), (20000, 'SALE', 33, NOW(), NOW()),
(35000, 'ORIGINAL', 34, NOW(), NOW()), (28000, 'SALE', 34, NOW(), NOW()),
(28000, 'ORIGINAL', 35, NOW(), NOW()), (22400, 'SALE', 35, NOW(), NOW()),
(33000, 'ORIGINAL', 36, NOW(), NOW()), (26400, 'SALE', 36, NOW(), NOW()),
(18000, 'ORIGINAL', 37, NOW(), NOW()), (14400, 'SALE', 37, NOW(), NOW()),
(32000, 'ORIGINAL', 38, NOW(), NOW()), (25600, 'SALE', 38, NOW(), NOW()),
(42000, 'ORIGINAL', 39, NOW(), NOW()), (33600, 'SALE', 39, NOW(), NOW()),
(35000, 'ORIGINAL', 40, NOW(), NOW()), (28000, 'SALE', 40, NOW(), NOW()),
(48000, 'ORIGINAL', 41, NOW(), NOW()), (38400, 'SALE', 41, NOW(), NOW()),
(62000, 'ORIGINAL', 42, NOW(), NOW()), (49600, 'SALE', 42, NOW(), NOW()),
(32000, 'ORIGINAL', 43, NOW(), NOW()), (25600, 'SALE', 43, NOW(), NOW()),
(48000, 'ORIGINAL', 44, NOW(), NOW()), (38400, 'SALE', 44, NOW(), NOW()),
(38000, 'ORIGINAL', 45, NOW(), NOW()), (30400, 'SALE', 45, NOW(), NOW()),
(35000, 'ORIGINAL', 46, NOW(), NOW()), (28000, 'SALE', 46, NOW(), NOW()),
(35000, 'ORIGINAL', 47, NOW(), NOW()), (28000, 'SALE', 47, NOW(), NOW()),
(58000, 'ORIGINAL', 48, NOW(), NOW()), (46400, 'SALE', 48, NOW(), NOW());

-- ProductImg 데이터 삽입 (대표 이미지만 포함 - 약 100개)
INSERT INTO product_img (img_url, img_order, product_id) VALUES
-- 스킨/토너 이미지 (24개)
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023219702ko.jpg?l=ko', 1, 1),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017026613ko.jpg?l=ko', 1, 2),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018918127ko.jpg?l=ko', 1, 3),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023251305ko.jpg?l=ko', 1, 4),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189108ko.png?l=ko', 1, 5),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019542401ko.jpg?l=ko', 1, 6),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023096801ko.jpg?l=ko', 1, 7),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020445401ko.jpg?l=ko', 1, 8),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021078901ko.jpg?l=ko', 1, 9),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023096901ko.jpg?l=ko', 1, 10),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019863801ko.jpg?l=ko', 1, 11),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021596101ko.jpg?l=ko', 1, 12),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020901101ko.jpg?l=ko', 1, 13),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019542501ko.jpg?l=ko', 1, 14),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023219801ko.jpg?l=ko', 1, 15),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021891401ko.jpg?l=ko', 1, 16),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020445501ko.jpg?l=ko', 1, 17),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020901201ko.jpg?l=ko', 1, 18),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019863901ko.jpg?l=ko', 1, 19),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021078101ko.jpg?l=ko', 1, 20),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022076901ko.jpg?l=ko', 1, 21),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021596201ko.jpg?l=ko', 1, 22),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020901301ko.jpg?l=ko', 1, 23),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0017/A00000017026601ko.jpg?l=ko', 1, 24);

-- Inventory 데이터 삽입 (48개)
INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at) VALUES
-- 스킨/토너 재고 (26개)
('SELLING', 100, 1, NOW()), ('SELLING', 100, 2, NOW()), ('SELLING', 100, 3, NOW()), ('SELLING', 100, 4, NOW()), ('SELLING', 100, 5, NOW()),
('SELLING', 100, 6, NOW()), ('SELLING', 100, 7, NOW()), ('SELLING', 100, 8, NOW()), ('SELLING', 100, 9, NOW()), ('SELLING', 100, 10, NOW()),
('SELLING', 100, 11, NOW()), ('SELLING', 100, 12, NOW()), ('SELLING', 100, 13, NOW()), ('SELLING', 100, 14, NOW()), ('SELLING', 100, 15, NOW()),
('SELLING', 100, 16, NOW()), ('SELLING', 100, 17, NOW()), ('SELLING', 100, 18, NOW()), ('SELLING', 100, 19, NOW()), ('SELLING', 100, 20, NOW()),
('SELLING', 100, 21, NOW()), ('SELLING', 100, 22, NOW()), ('SELLING', 100, 23, NOW()), ('SELLING', 100, 24, NOW()), ('SELLING', 100, 25, NOW()),
('SELLING', 100, 26, NOW()),
-- 에센스/세럼/앰플 재고 (24개)
('SELLING', 100, 27, NOW()), ('SELLING', 100, 28, NOW()), ('SELLING', 100, 29, NOW()), ('SELLING', 100, 30, NOW()), ('SELLING', 100, 31, NOW()),
('SELLING', 100, 32, NOW()), ('SELLING', 100, 33, NOW()), ('SELLING', 100, 34, NOW()), ('SELLING', 100, 35, NOW()), ('SELLING', 100, 36, NOW()),
('SELLING', 100, 37, NOW()), ('SELLING', 100, 38, NOW()), ('SELLING', 100, 39, NOW()), ('SELLING', 100, 40, NOW()), ('SELLING', 100, 41, NOW()),
('SELLING', 100, 42, NOW()), ('SELLING', 100, 43, NOW()), ('SELLING', 100, 44, NOW()), ('SELLING', 100, 45, NOW()), ('SELLING', 100, 46, NOW()),
('SELLING', 100, 47, NOW()), ('SELLING', 100, 48, NOW()), ('SELLING', 100, 49, NOW()), ('SELLING', 100, 50, NOW());

-- 결과 확인 쿼리
SELECT 
    p.name as product_name,
    c.name as category_name,
    b.name as brand_name,
    p.rating_avg,
    p.status
FROM product p
JOIN category c ON p.category_id = c.id
JOIN brand b ON p.brand_id = b.id
ORDER BY p.id;

-- 옵션과 가격 확인
SELECT 
    p.name as product_name,
    po.name as option_name,
    po.additional_amount,
    pp.price,
    pp.type
FROM product p
LEFT JOIN product_option po ON p.id = po.product_id
LEFT JOIN product_price pp ON p.id = pp.product_id
ORDER BY p.id, po.id, pp.id;

-- 재고 확인
SELECT 
    p.name as product_name,
    po.name as option_name,
    i.stock_status,
    i.quantity
FROM product p
JOIN product_option po ON p.id = po.product_id
JOIN inventory i ON po.id = i.product_option_id
ORDER BY p.id;