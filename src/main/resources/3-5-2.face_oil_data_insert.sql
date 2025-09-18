-- ==============================================
-- 페이스오일 JSON 데이터 기반 INSERT 스크립트
-- Entity 구조에 맞춘 완전한 삽입 스크립트
-- ==============================================

-- 실행 전 다음 스크립트들을 순서대로 실행해야 합니다:
-- 1. 2.category_data_insert.sql
-- 2. 1.Persome_brand_scrept.sql

-- ==============================================
-- 1. 페이스오일 상품 기본 정보 삽입 (17개)
-- ==============================================

-- 페이스오일 상품 삽입
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('식물나라 유채꿀 촉촉 멀티오일 더블기획 30mL*2', '식물나라 유채꿀 촉촉 멀티오일 더블기획 30mL*2', 4.7, (SELECT id FROM category WHERE name = '페이스오일' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '식물나라'), '판매중', NOW(), NOW()),
('[단독기획] 에센허브 티트리 100 오일 10ml 기획(+크림10ml+면봉 50P 증정)', '[단독기획] 에센허브 티트리 100 오일 10ml 기획(+크림10ml+면봉 50P 증정)', 4.7, (SELECT id FROM category WHERE name = '페이스오일' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '에센허브'), '판매중', NOW(), NOW()),
('디오디너리 100% 플랜트-디라이브드 스쿠알란 30ml', '디오디너리 100% 플랜트-디라이브드 스쿠알란 30ml', 4.7, (SELECT id FROM category WHERE name = '페이스오일' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '디오디너리'), '판매중', NOW(), NOW()),
('트릴로지 써티파이드 오가닉 100% 로즈힙 오일', '트릴로지 써티파이드 오가닉 100% 로즈힙 오일', 4.7, (SELECT id FROM category WHERE name = '페이스오일' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '트릴로지'), '판매중', NOW(), NOW()),
('록시땅 시어 바이 페이스 오일 세럼 30ml', '록시땅 시어 바이 페이스 오일 세럼 30ml', 5.0, (SELECT id FROM category WHERE name = '페이스오일' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '록시땅'), '판매중', NOW(), NOW()),
('달팡 로즈 아로마틱 케어 15ml', '달팡 로즈 아로마틱 케어 15ml', 4.8, (SELECT id FROM category WHERE name = '페이스오일' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '달팡'), '판매중', NOW(), NOW()),
('[선물추천/ 자몽&플로럴향 리추얼 멀티오일] 눅스 윌 프로디쥬스 멀티 플로럴 오일 50ml 기획', '[선물추천/ 자몽&플로럴향 리추얼 멀티오일] 눅스 윌 프로디쥬스 멀티 플로럴 오일 50ml 기획', 4.8, (SELECT id FROM category WHERE name = '페이스오일' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '눅스'), '판매중', NOW(), NOW()),
('[홈스파 리추얼 멀티오일] 눅스 윌 프로디쥬스 멀티 드라이 오일 50ml', '[홈스파 리추얼 멀티오일] 눅스 윌 프로디쥬스 멀티 드라이 오일 50ml', 4.8, (SELECT id FROM category WHERE name = '페이스오일' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '눅스'), '판매중', NOW(), NOW()),
('[NEW/광채 하이라이터]눅스 윌 프로디쥬스 쉬머 롤온 8ml (플로럴/골드)', '[NEW/광채 하이라이터]눅스 윌 프로디쥬스 쉬머 롤온 8ml (플로럴/골드)', 5.0, (SELECT id FROM category WHERE name = '페이스오일' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '눅스'), '판매중', NOW(), NOW()),
('[화잘먹/수분보호막]로벡틴 인텐스 글로우 오일 30ml', '[화잘먹/수분보호막]로벡틴 인텐스 글로우 오일 30ml', 4.7, (SELECT id FROM category WHERE name = '페이스오일' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '로벡틴'), '판매중', NOW(), NOW()),
('트릴로지 로즈힙오일 라이트 블렌드 30ml', '트릴로지 로즈힙오일 라이트 블렌드 30ml', 4.5, (SELECT id FROM category WHERE name = '페이스오일' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '트릴로지'), '판매중', NOW(), NOW()),
('달팡 카모마일 아로마틱 케어 15ml', '달팡 카모마일 아로마틱 케어 15ml', 4.7, (SELECT id FROM category WHERE name = '페이스오일' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '달팡'), '판매중', NOW(), NOW()),
('디오디너리 100% 오가닉 콜드-프레스드 로즈 힙 씨드 오일 30ml', '디오디너리 100% 오가닉 콜드-프레스드 로즈 힙 씨드 오일 30ml', 4.6, (SELECT id FROM category WHERE name = '페이스오일' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '디오디너리'), '판매중', NOW(), NOW()),
('[주름탄력] 코스알엑스 더 레티놀 0.5 오일 20ml', '[주름탄력] 코스알엑스 더 레티놀 0.5 오일 20ml', 4.7, (SELECT id FROM category WHERE name = '페이스오일' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '코스알엑스'), '판매중', NOW(), NOW()),
('식물나라 유채꿀 촉촉 멀티오일30mL', '식물나라 유채꿀 촉촉 멀티오일30mL', 4.7, (SELECT id FROM category WHERE name = '페이스오일' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '식물나라'), '판매중', NOW(), NOW()),
('[한정기획] 에센허브 티트리 100 오일 10ml 1+1 기획 (10ml+10ml+면봉 50ea)', '[한정기획] 에센허브 티트리 100 오일 10ml 1+1 기획 (10ml+10ml+면봉 50ea)', 4.6, (SELECT id FROM category WHERE name = '페이스오일' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '에센허브'), '판매중', NOW(), NOW()),
('케어놀로지 리블루 나이트 페이셜 오일 50ml', '케어놀로지 리블루 나이트 페이셜 오일 50ml', 4.7, (SELECT id FROM category WHERE name = '페이스오일' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '케어놀로지'), '판매중', NOW(), NOW());

-- ==============================================
-- 2. 페이스오일 상품 옵션 삽입 (18개)
-- ==============================================

-- 페이스오일 옵션 삽입
INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '식물나라 유채꿀 촉촉 멀티오일 더블기획 30mL*2')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[단독기획] 에센허브 티트리 100 오일 10ml 기획(+크림10ml+면봉 50P 증정)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '디오디너리 100% 플랜트-디라이브드 스쿠알란 30ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '트릴로지 써티파이드 오가닉 100% 로즈힙 오일')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '록시땅 시어 바이 페이스 오일 세럼 30ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '달팡 로즈 아로마틱 케어 15ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[선물추천/ 자몽&플로럴향 리추얼 멀티오일] 눅스 윌 프로디쥬스 멀티 플로럴 오일 50ml 기획')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[홈스파 리추얼 멀티오일] 눅스 윌 프로디쥬스 멀티 드라이 오일 50ml')),
('플로럴 쉬머 롤온', 0, (SELECT id FROM product WHERE name = '[NEW/광채 하이라이터]눅스 윌 프로디쥬스 쉬머 롤온 8ml (플로럴/골드)')),
('골드 쉬머 롤온', 0, (SELECT id FROM product WHERE name = '[NEW/광채 하이라이터]눅스 윌 프로디쥬스 쉬머 롤온 8ml (플로럴/골드)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[화잘먹/수분보호막]로벡틴 인텐스 글로우 오일 30ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '트릴로지 로즈힙오일 라이트 블렌드 30ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '달팡 카모마일 아로마틱 케어 15ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '디오디너리 100% 오가닉 콜드-프레스드 로즈 힙 씨드 오일 30ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[주름탄력] 코스알엑스 더 레티놀 0.5 오일 20ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '식물나라 유채꿀 촉촉 멀티오일30mL')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[한정기획] 에센허브 티트리 100 오일 10ml 1+1 기획 (10ml+10ml+면봉 50ea)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '케어놀로지 리블루 나이트 페이셜 오일 50ml'));

-- ==============================================
-- 3. 페이스오일 상품 가격 삽입 (34개 - 정가/할인가)
-- ==============================================

-- 페이스오일 가격 삽입
INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(19800, 'ORIGINAL', (SELECT id FROM product WHERE name = '식물나라 유채꿀 촉촉 멀티오일 더블기획 30mL*2'), NOW(), NOW()),
(15800, 'SALE', (SELECT id FROM product WHERE name = '식물나라 유채꿀 촉촉 멀티오일 더블기획 30mL*2'), NOW(), NOW()),
(19800, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독기획] 에센허브 티트리 100 오일 10ml 기획(+크림10ml+면봉 50P 증정)'), NOW(), NOW()),
(19800, 'SALE', (SELECT id FROM product WHERE name = '[단독기획] 에센허브 티트리 100 오일 10ml 기획(+크림10ml+면봉 50P 증정)'), NOW(), NOW()),
(15800, 'ORIGINAL', (SELECT id FROM product WHERE name = '디오디너리 100% 플랜트-디라이브드 스쿠알란 30ml'), NOW(), NOW()),
(15800, 'SALE', (SELECT id FROM product WHERE name = '디오디너리 100% 플랜트-디라이브드 스쿠알란 30ml'), NOW(), NOW()),
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '트릴로지 써티파이드 오가닉 100% 로즈힙 오일'), NOW(), NOW()),
(30000, 'SALE', (SELECT id FROM product WHERE name = '트릴로지 써티파이드 오가닉 100% 로즈힙 오일'), NOW(), NOW()),
(49000, 'ORIGINAL', (SELECT id FROM product WHERE name = '록시땅 시어 바이 페이스 오일 세럼 30ml'), NOW(), NOW()),
(49000, 'SALE', (SELECT id FROM product WHERE name = '록시땅 시어 바이 페이스 오일 세럼 30ml'), NOW(), NOW()),
(85000, 'ORIGINAL', (SELECT id FROM product WHERE name = '달팡 로즈 아로마틱 케어 15ml'), NOW(), NOW()),
(85000, 'SALE', (SELECT id FROM product WHERE name = '달팡 로즈 아로마틱 케어 15ml'), NOW(), NOW()),
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[선물추천/ 자몽&플로럴향 리추얼 멀티오일] 눅스 윌 프로디쥬스 멀티 플로럴 오일 50ml 기획'), NOW(), NOW()),
(31500, 'SALE', (SELECT id FROM product WHERE name = '[선물추천/ 자몽&플로럴향 리추얼 멀티오일] 눅스 윌 프로디쥬스 멀티 플로럴 오일 50ml 기획'), NOW(), NOW()),
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[홈스파 리추얼 멀티오일] 눅스 윌 프로디쥬스 멀티 드라이 오일 50ml'), NOW(), NOW()),
(31500, 'SALE', (SELECT id FROM product WHERE name = '[홈스파 리추얼 멀티오일] 눅스 윌 프로디쥬스 멀티 드라이 오일 50ml'), NOW(), NOW()),
(21000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW/광채 하이라이터]눅스 윌 프로디쥬스 쉬머 롤온 8ml (플로럴/골드)'), NOW(), NOW()),
(18900, 'SALE', (SELECT id FROM product WHERE name = '[NEW/광채 하이라이터]눅스 윌 프로디쥬스 쉬머 롤온 8ml (플로럴/골드)'), NOW(), NOW()),
(39000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[화잘먹/수분보호막]로벡틴 인텐스 글로우 오일 30ml'), NOW(), NOW()),
(29200, 'SALE', (SELECT id FROM product WHERE name = '[화잘먹/수분보호막]로벡틴 인텐스 글로우 오일 30ml'), NOW(), NOW()),
(36000, 'ORIGINAL', (SELECT id FROM product WHERE name = '트릴로지 로즈힙오일 라이트 블렌드 30ml'), NOW(), NOW()),
(32600, 'SALE', (SELECT id FROM product WHERE name = '트릴로지 로즈힙오일 라이트 블렌드 30ml'), NOW(), NOW()),
(82000, 'ORIGINAL', (SELECT id FROM product WHERE name = '달팡 카모마일 아로마틱 케어 15ml'), NOW(), NOW()),
(82000, 'SALE', (SELECT id FROM product WHERE name = '달팡 카모마일 아로마틱 케어 15ml'), NOW(), NOW()),
(16600, 'ORIGINAL', (SELECT id FROM product WHERE name = '디오디너리 100% 오가닉 콜드-프레스드 로즈 힙 씨드 오일 30ml'), NOW(), NOW()),
(16600, 'SALE', (SELECT id FROM product WHERE name = '디오디너리 100% 오가닉 콜드-프레스드 로즈 힙 씨드 오일 30ml'), NOW(), NOW()),
(25000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[주름탄력] 코스알엑스 더 레티놀 0.5 오일 20ml'), NOW(), NOW()),
(20700, 'SALE', (SELECT id FROM product WHERE name = '[주름탄력] 코스알엑스 더 레티놀 0.5 오일 20ml'), NOW(), NOW()),
(17800, 'ORIGINAL', (SELECT id FROM product WHERE name = '식물나라 유채꿀 촉촉 멀티오일30mL'), NOW(), NOW()),
(17800, 'SALE', (SELECT id FROM product WHERE name = '식물나라 유채꿀 촉촉 멀티오일30mL'), NOW(), NOW()),
(19800, 'ORIGINAL', (SELECT id FROM product WHERE name = '[한정기획] 에센허브 티트리 100 오일 10ml 1+1 기획 (10ml+10ml+면봉 50ea)'), NOW(), NOW()),
(19800, 'SALE', (SELECT id FROM product WHERE name = '[한정기획] 에센허브 티트리 100 오일 10ml 1+1 기획 (10ml+10ml+면봉 50ea)'), NOW(), NOW()),
(89000, 'ORIGINAL', (SELECT id FROM product WHERE name = '케어놀로지 리블루 나이트 페이셜 오일 50ml'), NOW(), NOW()),
(75650, 'SALE', (SELECT id FROM product WHERE name = '케어놀로지 리블루 나이트 페이셜 오일 50ml'), NOW(), NOW());

-- ==============================================
-- 4. 페이스오일 상품 이미지 삽입 (총 37개 이미지)
-- ==============================================

-- 페이스오일 이미지 삽입
INSERT INTO product_img (img_url, img_order, product_id) VALUES
-- 식물나라 유채꿀 촉촉 멀티오일 더블기획
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019940102ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '식물나라 유채꿀 촉촉 멀티오일 더블기획 30mL*2')),

-- 에센허브 티트리 100 오일 기획
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020300806ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[단독기획] 에센허브 티트리 100 오일 10ml 기획(+크림10ml+면봉 50P 증정)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020300808ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[단독기획] 에센허브 티트리 100 오일 10ml 기획(+크림10ml+면봉 50P 증정)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020300811ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[단독기획] 에센허브 티트리 100 오일 10ml 기획(+크림10ml+면봉 50P 증정)')),

-- 디오디너리 플랜트-디라이브드 스쿠알란
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014131402ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '디오디너리 100% 플랜트-디라이브드 스쿠알란 30ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014131403ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '디오디너리 100% 플랜트-디라이브드 스쿠알란 30ml')),

-- 트릴로지 써티파이드 오가닉 로즈힙 오일
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001621305ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '트릴로지 써티파이드 오가닉 100% 로즈힙 오일')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0001/A00000001621306ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '트릴로지 써티파이드 오가닉 100% 로즈힙 오일')),

-- 록시땅 시어 바이 페이스 오일 세럼
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018847101ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '록시땅 시어 바이 페이스 오일 세럼 30ml')),

-- 달팡 로즈 아로마틱 케어
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020357101ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '달팡 로즈 아로마틱 케어 15ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020357102ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '달팡 로즈 아로마틱 케어 15ml')),

-- 눅스 윌 프로디쥬스 멀티 플로럴 오일
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021239301ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[선물추천/ 자몽&플로럴향 리추얼 멀티오일] 눅스 윌 프로디쥬스 멀티 플로럴 오일 50ml 기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021239307ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[선물추천/ 자몽&플로럴향 리추얼 멀티오일] 눅스 윌 프로디쥬스 멀티 플로럴 오일 50ml 기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021239302ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[선물추천/ 자몽&플로럴향 리추얼 멀티오일] 눅스 윌 프로디쥬스 멀티 플로럴 오일 50ml 기획')),

-- 눅스 윌 프로디쥬스 멀티 드라이 오일
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021917203ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[홈스파 리추얼 멀티오일] 눅스 윌 프로디쥬스 멀티 드라이 오일 50ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021917202ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[홈스파 리추얼 멀티오일] 눅스 윌 프로디쥬스 멀티 드라이 오일 50ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021917201ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[홈스파 리추얼 멀티오일] 눅스 윌 프로디쥬스 멀티 드라이 오일 50ml')),

-- 눅스 윌 프로디쥬스 쉬머 롤온
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022995804ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW/광채 하이라이터]눅스 윌 프로디쥬스 쉬머 롤온 8ml (플로럴/골드)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022995807ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW/광채 하이라이터]눅스 윌 프로디쥬스 쉬머 롤온 8ml (플로럴/골드)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022995806ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW/광채 하이라이터]눅스 윌 프로디쥬스 쉬머 롤온 8ml (플로럴/골드)')),

-- 로벡틴 인텐스 글로우 오일
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0010/A00000010410222ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[화잘먹/수분보호막]로벡틴 인텐스 글로우 오일 30ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0010/A00000010410223ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[화잘먹/수분보호막]로벡틴 인텐스 글로우 오일 30ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0010/A00000010410224ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[화잘먹/수분보호막]로벡틴 인텐스 글로우 오일 30ml')),

-- 트릴로지 로즈힙오일 라이트 블렌드
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0010/A00000010733904ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '트릴로지 로즈힙오일 라이트 블렌드 30ml')),

-- 달팡 카모마일 아로마틱 케어
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011551125ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '달팡 카모마일 아로마틱 케어 15ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011551126ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '달팡 카모마일 아로마틱 케어 15ml')),

-- 디오디너리 오가닉 콜드-프레스드 로즈 힙 씨드 오일
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014132802ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '디오디너리 100% 오가닉 콜드-프레스드 로즈 힙 씨드 오일 30ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014132803ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '디오디너리 100% 오가닉 콜드-프레스드 로즈 힙 씨드 오일 30ml')),

-- 코스알엑스 더 레티놀 0.5 오일
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018089102ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[주름탄력] 코스알엑스 더 레티놀 0.5 오일 20ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018089104ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[주름탄력] 코스알엑스 더 레티놀 0.5 오일 20ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018089108ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[주름탄력] 코스알엑스 더 레티놀 0.5 오일 20ml')),

-- 식물나라 유채꿀 촉촉 멀티오일 30mL
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019940002ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '식물나라 유채꿀 촉촉 멀티오일30mL')),

-- 에센허브 티트리 100 오일 1+1 기획
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020656001ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[한정기획] 에센허브 티트리 100 오일 10ml 1+1 기획 (10ml+10ml+면봉 50ea)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020656004ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[한정기획] 에센허브 티트리 100 오일 10ml 1+1 기획 (10ml+10ml+면봉 50ea)')),

-- 케어놀로지 리블루 나이트 페이셜 오일
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021419906ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '케어놀로지 리블루 나이트 페이셜 오일 50ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021419905ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '케어놀로지 리블루 나이트 페이셜 오일 50ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021419904ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '케어놀로지 리블루 나이트 페이셜 오일 50ml'));

-- ==============================================
-- 5. 페이스오일 상품 재고 삽입 (18개 옵션)
-- ==============================================

-- 페이스오일 재고 삽입 (각 옵션별 기본 재고 100개)
INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at) 
SELECT 'SELLING', 100, po.id, NOW() 
FROM product_option po 
JOIN product p ON po.product_id = p.id 
JOIN category c ON p.category_id = c.id 
WHERE c.name = '페이스오일';

-- ==============================================
-- 스크립트 실행 완료 메시지
-- ==============================================
SELECT 'JSON 기반 페이스오일 데이터 삽입이 완료되었습니다.' as message;