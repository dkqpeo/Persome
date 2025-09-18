-- ==============================================
-- 에센스/세럼/앰플 JSON 데이터 기반 INSERT 스크립트
-- Entity 구조에 맞춘 완전한 삽입 스크립트
-- ==============================================

-- 실행 전 다음 스크립트들을 순서대로 실행해야 합니다:
-- 1. 2.category_data_insert.sql
-- 2. 1.Persome_brand_scrept.sql

-- ==============================================
-- 1. 에센스/세럼/앰플 상품 기본 정보 삽입 (24개)
-- ==============================================

-- 에센스/세럼/앰플 상품 삽입
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽/모공에센스] VT 리들샷 100 에센스 30ml 더블 기획(+피디알엔 에센스 100 1.5ml*3ea)', '[9월 올영픽/모공에센스] VT 리들샷 100 에센스 30ml 더블 기획(+피디알엔 에센스 100 1.5ml*3ea)', 4.8, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = 'VT'), '판매중', NOW(), NOW()),
('[9월 올영픽/보습 광채탄력] VT 피디알엔 에센스 100 30ml 더블 기획 (+리들샷 100 10ml)', '[9월 올영픽/보습 광채탄력] VT 피디알엔 에센스 100 30ml 더블 기획 (+리들샷 100 10ml)', 5.0, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = 'VT'), '판매중', NOW(), NOW()),
('[9월 올영픽/1등 미백앰플] 메디큐브 PDRN 핑크 앰플 30ml 리필기획 (본품+리필 50ML+겔패드*2매)', '[9월 올영픽/1등 미백앰플] 메디큐브 PDRN 핑크 앰플 30ml 리필기획 (본품+리필 50ML+겔패드*2매)', 4.7, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '메디큐브'), '판매중', NOW(), NOW()),
('[속건조필수템/대용량150ml] 웰라쥬 리얼 히알루로닉 블루 100 앰플 75ml 더블기획', '[속건조필수템/대용량150ml] 웰라쥬 리얼 히알루로닉 블루 100 앰플 75ml 더블기획', 4.9, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '웰라쥬'), '판매중', NOW(), NOW()),
('[속보습세럼/단독기획] 토리든 다이브인 저분자 히알루론산 세럼 50ml 리필기획(+리필팩 50ml)', '[속보습세럼/단독기획] 토리든 다이브인 저분자 히알루론산 세럼 50ml 리필기획(+리필팩 50ml)', 4.9, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '토리든'), '판매중', NOW(), NOW()),
('[9월 올영픽/1+1+10ml] 메디힐 마데카소사이드 흔적 리페어 세럼 40+40+10mL', '[9월 올영픽/1+1+10ml] 메디힐 마데카소사이드 흔적 리페어 세럼 40+40+10mL', 4.7, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '메디힐'), '판매중', NOW(), NOW()),
('브링그린 징크테카 트러블 세럼 50ml+25ml/25ml+25ml리필/1.5ml X 10ea기획', '브링그린 징크테카 트러블 세럼 50ml+25ml/25ml+25ml리필/1.5ml X 10ea기획', 4.7, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '브링그린'), '판매중', NOW(), NOW()),
('[9월 올영픽/화해 1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30ml 기획 (+크림 30ml)', '[9월 올영픽/화해 1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30ml 기획 (+크림 30ml)', 4.8, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '아누아'), '판매중', NOW(), NOW()),
('[대용량/트러블1등] 파티온 노스카나인 트러블 세럼 50ml 리필 기획(+리필40ml+크림10ml)', '[대용량/트러블1등] 파티온 노스카나인 트러블 세럼 50ml 리필 기획(+리필40ml+크림10ml)', 4.9, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '파티온'), '판매중', NOW(), NOW()),
('[트러블/모공개선] 셀라딕스 트러블 세범 리밸런싱 RX 131 앰플 30ml', '[트러블/모공개선] 셀라딕스 트러블 세범 리밸런싱 RX 131 앰플 30ml', 4.7, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '셀라딕스'), '판매중', NOW(), NOW()),
('[화해1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30mL 기획 (+30mL 리필팩)', '[화해1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30mL 기획 (+30mL 리필팩)', 4.8, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '아누아'), '판매중', NOW(), NOW()),
('[리뉴얼] 구달 청귤 비타C 잡티케어 세럼 알파 30ml 기획 (+20ml)', '[리뉴얼] 구달 청귤 비타C 잡티케어 세럼 알파 30ml 기획 (+20ml)', 4.9, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '구달'), '판매중', NOW(), NOW()),
('[9월 올영픽/깐달걀세럼] 메디큐브 제로 모공 원데이 세럼 더블기획 (30ml+30ml)', '[9월 올영픽/깐달걀세럼] 메디큐브 제로 모공 원데이 세럼 더블기획 (30ml+30ml)', 4.6, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '메디큐브'), '판매중', NOW(), NOW()),
('[9월 올영픽] 바이오더마 하이드라비오 에센스로션 200ml (+안개분사 미스트 증정)', '[9월 올영픽] 바이오더마 하이드라비오 에센스로션 200ml (+안개분사 미스트 증정)', 4.8, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '바이오더마'), '판매중', NOW(), NOW()),
('에스트라 아토베리어365 하이드로에센스 200ml 기획(+크림 10ml+세라-히알 앰플 10ml)', '에스트라 아토베리어365 하이드로에센스 200ml 기획(+크림 10ml+세라-히알 앰플 10ml)', 4.8, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '에스트라'), '판매중', NOW(), NOW()),
('[순수비타민C/잡티앰플] 마미케어 오쏘타민 비타민C 앰플 15ml', '[순수비타민C/잡티앰플] 마미케어 오쏘타민 비타민C 앰플 15ml', 4.9, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '마미케어'), '판매중', NOW(), NOW()),
('[50%용량증정]에스트라 아토베리어365 세라-히알 속수분 앰플 30ML+15ML 기획', '[50%용량증정]에스트라 아토베리어365 세라-히알 속수분 앰플 30ML+15ML 기획', 4.8, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '에스트라'), '판매중', NOW(), NOW()),
('디오디너리 나이아신아마이드 10% + 징크 1% 60ml', '디오디너리 나이아신아마이드 10% + 징크 1% 60ml', 4.7, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '디오디너리'), '판매중', NOW(), NOW()),
('도미나스 앳클리닉 보르피린 링클 샷 앰플 30ml', '도미나스 앳클리닉 보르피린 링클 샷 앰플 30ml', 4.8, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '도미나스'), '판매중', NOW(), NOW()),
('[포켓몬에디션/녹는실리프팅] 성분에디터 실크펩타이드 EGF 하트핏 볼륨 리프팅 앰플 40ml 더블기획(+키링 파우치)', '[포켓몬에디션/녹는실리프팅] 성분에디터 실크펩타이드 EGF 하트핏 볼륨 리프팅 앰플 40ml 더블기획(+키링 파우치)', 4.9, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '성분에디터'), '판매중', NOW(), NOW()),
('[비타민C 앰플] 피지오겔 사이언수티컬즈 데일리뮨 앰플 세럼 20ml 2입기획 (20ml+20ml)', '[비타민C 앰플] 피지오겔 사이언수티컬즈 데일리뮨 앰플 세럼 20ml 2입기획 (20ml+20ml)', 4.8, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '피지오겔'), '판매중', NOW(), NOW()),
('[1등 진정세럼] 파넬 시카마누 92세럼 더블기획(30ml+30ml)', '[1등 진정세럼] 파넬 시카마누 92세럼 더블기획(30ml+30ml)', 4.7, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '파넬'), '판매중', NOW(), NOW()),
('[9월 올영픽/단독기획] 아누아 TXA 나이아신 흔적 세럼 30ml 2입', '[9월 올영픽/단독기획] 아누아 TXA 나이아신 흔적 세럼 30ml 2입', 4.7, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '아누아'), '판매중', NOW(), NOW()),
('[한정기획] 아벤느 이드랑스 에센스-인-로션 200ml 한정 기획 (+100ml*2) *수분 충전', '[한정기획] 아벤느 이드랑스 에센스-인-로션 200ml 한정 기획 (+100ml*2) *수분 충전', 4.8, (SELECT id FROM category WHERE name = '에센스/세럼/앰플' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '아벤느'), '판매중', NOW(), NOW());

-- ==============================================
-- 2. 에센스/세럼/앰플 상품 옵션 삽입 (28개)
-- ==============================================

-- 에센스/세럼/앰플 옵션 삽입
INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9월 올영픽/모공에센스] VT 리들샷 100 에센스 30ml 더블 기획(+피디알엔 에센스 100 1.5ml*3ea)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9월 올영픽/보습 광채탄력] VT 피디알엔 에센스 100 30ml 더블 기획 (+리들샷 100 10ml)')),
('본품+리필+겔패드2매입*2EA', 0, (SELECT id FROM product WHERE name = '[9월 올영픽/1등 미백앰플] 메디큐브 PDRN 핑크 앰플 30ml 리필기획 (본품+리필 50ML+겔패드*2매)')),
('본품+리필', 0, (SELECT id FROM product WHERE name = '[9월 올영픽/1등 미백앰플] 메디큐브 PDRN 핑크 앰플 30ml 리필기획 (본품+리필 50ML+겔패드*2매)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[속건조필수템/대용량150ml] 웰라쥬 리얼 히알루로닉 블루 100 앰플 75ml 더블기획')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[속보습세럼/단독기획] 토리든 다이브인 저분자 히알루론산 세럼 50ml 리필기획(+리필팩 50ml)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9월 올영픽/1+1+10ml] 메디힐 마데카소사이드 흔적 리페어 세럼 40+40+10mL')),
('세럼 50ml+25리필+스팟젤10ml', 16500, (SELECT id FROM product WHERE name = '브링그린 징크테카 트러블 세럼 50ml+25ml/25ml+25ml리필/1.5ml X 10ea기획')),
('세럼 25ml+25리필+플랫파우치', 10600, (SELECT id FROM product WHERE name = '브링그린 징크테카 트러블 세럼 50ml+25ml/25ml+25ml리필/1.5ml X 10ea기획')),
('세럼 1.5mLX10개+미니파우치', 0, (SELECT id FROM product WHERE name = '브링그린 징크테카 트러블 세럼 50ml+25ml/25ml+25ml리필/1.5ml X 10ea기획')),
('세럼 50ml+25리필+패드20매', 16500, (SELECT id FROM product WHERE name = '브링그린 징크테카 트러블 세럼 50ml+25ml/25ml+25ml리필/1.5ml X 10ea기획')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9월 올영픽/화해 1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30ml 기획 (+크림 30ml)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[대용량/트러블1등] 파티온 노스카나인 트러블 세럼 50ml 리필 기획(+리필40ml+크림10ml)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[트러블/모공개선] 셀라딕스 트러블 세범 리밸런싱 RX 131 앰플 30ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[화해1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30mL 기획 (+30mL 리필팩)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[리뉴얼] 구달 청귤 비타C 잡티케어 세럼 알파 30ml 기획 (+20ml)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9월 올영픽/깐달걀세럼] 메디큐브 제로 모공 원데이 세럼 더블기획 (30ml+30ml)')),
('에센스로션 200ml 기획(+안개분사)', 0, (SELECT id FROM product WHERE name = '[9월 올영픽] 바이오더마 하이드라비오 에센스로션 200ml (+안개분사 미스트 증정)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '에스트라 아토베리어365 하이드로에센스 200ml 기획(+크림 10ml+세라-히알 앰플 10ml)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[순수비타민C/잡티앰플] 마미케어 오쏘타민 비타민C 앰플 15ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[50%용량증정]에스트라 아토베리어365 세라-히알 속수분 앰플 30ML+15ML 기획')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '디오디너리 나이아신아마이드 10% + 징크 1% 60ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '도미나스 앳클리닉 보르피린 링클 샷 앰플 30ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[포켓몬에디션/녹는실리프팅] 성분에디터 실크펩타이드 EGF 하트핏 볼륨 리프팅 앰플 40ml 더블기획(+키링 파우치)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[비타민C 앰플] 피지오겔 사이언수티컬즈 데일리뮨 앰플 세럼 20ml 2입기획 (20ml+20ml)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[1등 진정세럼] 파넬 시카마누 92세럼 더블기획(30ml+30ml)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9월 올영픽/단독기획] 아누아 TXA 나이아신 흔적 세럼 30ml 2입')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[한정기획] 아벤느 이드랑스 에센스-인-로션 200ml 한정 기획 (+100ml*2) *수분 충전'));

-- ==============================================
-- 3. 에센스/세럼/앰플 상품 가격 삽입 (48개 - 정가/할인가)
-- ==============================================

-- 에센스/세럼/앰플 가격 삽입
INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(31500, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽/모공에센스] VT 리들샷 100 에센스 30ml 더블 기획(+피디알엔 에센스 100 1.5ml*3ea)'), NOW(), NOW()),
(21000, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽/모공에센스] VT 리들샷 100 에센스 30ml 더블 기획(+피디알엔 에센스 100 1.5ml*3ea)'), NOW(), NOW()),
(67500, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽/보습 광채탄력] VT 피디알엔 에센스 100 30ml 더블 기획 (+리들샷 100 10ml)'), NOW(), NOW()),
(36500, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽/보습 광채탄력] VT 피디알엔 에센스 100 30ml 더블 기획 (+리들샷 100 10ml)'), NOW(), NOW()),
(46000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽/1등 미백앰플] 메디큐브 PDRN 핑크 앰플 30ml 리필기획 (본품+리필 50ML+겔패드*2매)'), NOW(), NOW()),
(24300, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽/1등 미백앰플] 메디큐브 PDRN 핑크 앰플 30ml 리필기획 (본품+리필 50ML+겔패드*2매)'), NOW(), NOW()),
(50000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[속건조필수템/대용량150ml] 웰라쥬 리얼 히알루로닉 블루 100 앰플 75ml 더블기획'), NOW(), NOW()),
(30900, 'SALE', (SELECT id FROM product WHERE name = '[속건조필수템/대용량150ml] 웰라쥬 리얼 히알루로닉 블루 100 앰플 75ml 더블기획'), NOW(), NOW()),
(36000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[속보습세럼/단독기획] 토리든 다이브인 저분자 히알루론산 세럼 50ml 리필기획(+리필팩 50ml)'), NOW(), NOW()),
(27000, 'SALE', (SELECT id FROM product WHERE name = '[속보습세럼/단독기획] 토리든 다이브인 저분자 히알루론산 세럼 50ml 리필기획(+리필팩 50ml)'), NOW(), NOW()),
(36900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽/1+1+10ml] 메디힐 마데카소사이드 흔적 리페어 세럼 40+40+10mL'), NOW(), NOW()),
(22400, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽/1+1+10ml] 메디힐 마데카소사이드 흔적 리페어 세럼 40+40+10mL'), NOW(), NOW()),
(56100, 'ORIGINAL', (SELECT id FROM product WHERE name = '브링그린 징크테카 트러블 세럼 50ml+25ml/25ml+25ml리필/1.5ml X 10ea기획'), NOW(), NOW()),
(26800, 'SALE', (SELECT id FROM product WHERE name = '브링그린 징크테카 트러블 세럼 50ml+25ml/25ml+25ml리필/1.5ml X 10ea기획'), NOW(), NOW()),
(39000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽/화해 1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30ml 기획 (+크림 30ml)'), NOW(), NOW()),
(19600, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽/화해 1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30ml 기획 (+크림 30ml)'), NOW(), NOW()),
(54000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[대용량/트러블1등] 파티온 노스카나인 트러블 세럼 50ml 리필 기획(+리필40ml+크림10ml)'), NOW(), NOW()),
(33900, 'SALE', (SELECT id FROM product WHERE name = '[대용량/트러블1등] 파티온 노스카나인 트러블 세럼 50ml 리필 기획(+리필40ml+크림10ml)'), NOW(), NOW()),
(28900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[트러블/모공개선] 셀라딕스 트러블 세범 리밸런싱 RX 131 앰플 30ml'), NOW(), NOW()),
(25400, 'SALE', (SELECT id FROM product WHERE name = '[트러블/모공개선] 셀라딕스 트러블 세범 리밸런싱 RX 131 앰플 30ml'), NOW(), NOW()),
(58500, 'ORIGINAL', (SELECT id FROM product WHERE name = '[화해1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30mL 기획 (+30mL 리필팩)'), NOW(), NOW()),
(29500, 'SALE', (SELECT id FROM product WHERE name = '[화해1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30mL 기획 (+30mL 리필팩)'), NOW(), NOW()),
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[리뉴얼] 구달 청귤 비타C 잡티케어 세럼 알파 30ml 기획 (+20ml)'), NOW(), NOW()),
(21400, 'SALE', (SELECT id FROM product WHERE name = '[리뉴얼] 구달 청귤 비타C 잡티케어 세럼 알파 30ml 기획 (+20ml)'), NOW(), NOW()),
(46000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽/깐달걀세럼] 메디큐브 제로 모공 원데이 세럼 더블기획 (30ml+30ml)'), NOW(), NOW()),
(24400, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽/깐달걀세럼] 메디큐브 제로 모공 원데이 세럼 더블기획 (30ml+30ml)'), NOW(), NOW()),
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽] 바이오더마 하이드라비오 에센스로션 200ml (+안개분사 미스트 증정)'), NOW(), NOW()),
(25900, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽] 바이오더마 하이드라비오 에센스로션 200ml (+안개분사 미스트 증정)'), NOW(), NOW()),
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '에스트라 아토베리어365 하이드로에센스 200ml 기획(+크림 10ml+세라-히알 앰플 10ml)'), NOW(), NOW()),
(28800, 'SALE', (SELECT id FROM product WHERE name = '에스트라 아토베리어365 하이드로에센스 200ml 기획(+크림 10ml+세라-히알 앰플 10ml)'), NOW(), NOW()),
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[순수비타민C/잡티앰플] 마미케어 오쏘타민 비타민C 앰플 15ml'), NOW(), NOW()),
(29800, 'SALE', (SELECT id FROM product WHERE name = '[순수비타민C/잡티앰플] 마미케어 오쏘타민 비타민C 앰플 15ml'), NOW(), NOW()),
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[50%용량증정]에스트라 아토베리어365 세라-히알 속수분 앰플 30ML+15ML 기획'), NOW(), NOW()),
(29700, 'SALE', (SELECT id FROM product WHERE name = '[50%용량증정]에스트라 아토베리어365 세라-히알 속수분 앰플 30ML+15ML 기획'), NOW(), NOW()),
(15700, 'ORIGINAL', (SELECT id FROM product WHERE name = '디오디너리 나이아신아마이드 10% + 징크 1% 60ml'), NOW(), NOW()),
(15700, 'SALE', (SELECT id FROM product WHERE name = '디오디너리 나이아신아마이드 10% + 징크 1% 60ml'), NOW(), NOW()),
(45000, 'ORIGINAL', (SELECT id FROM product WHERE name = '도미나스 앳클리닉 보르피린 링클 샷 앰플 30ml'), NOW(), NOW()),
(35900, 'SALE', (SELECT id FROM product WHERE name = '도미나스 앳클리닉 보르피린 링클 샷 앰플 30ml'), NOW(), NOW()),
(43000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[포켓몬에디션/녹는실리프팅] 성분에디터 실크펩타이드 EGF 하트핏 볼륨 리프팅 앰플 40ml 더블기획(+키링 파우치)'), NOW(), NOW()),
(28900, 'SALE', (SELECT id FROM product WHERE name = '[포켓몬에디션/녹는실리프팅] 성분에디터 실크펩타이드 EGF 하트핏 볼륨 리프팅 앰플 40ml 더블기획(+키링 파우치)'), NOW(), NOW()),
(78000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[비타민C 앰플] 피지오겔 사이언수티컬즈 데일리뮨 앰플 세럼 20ml 2입기획 (20ml+20ml)'), NOW(), NOW()),
(54000, 'SALE', (SELECT id FROM product WHERE name = '[비타민C 앰플] 피지오겔 사이언수티컬즈 데일리뮨 앰플 세럼 20ml 2입기획 (20ml+20ml)'), NOW(), NOW()),
(52000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1등 진정세럼] 파넬 시카마누 92세럼 더블기획(30ml+30ml)'), NOW(), NOW()),
(28900, 'SALE', (SELECT id FROM product WHERE name = '[1등 진정세럼] 파넬 시카마누 92세럼 더블기획(30ml+30ml)'), NOW(), NOW()),
(64000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽/단독기획] 아누아 TXA 나이아신 흔적 세럼 30ml 2입'), NOW(), NOW()),
(25900, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽/단독기획] 아누아 TXA 나이아신 흔적 세럼 30ml 2입'), NOW(), NOW()),
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[한정기획] 아벤느 이드랑스 에센스-인-로션 200ml 한정 기획 (+100ml*2) *수분 충전'), NOW(), NOW()),
(28400, 'SALE', (SELECT id FROM product WHERE name = '[한정기획] 아벤느 이드랑스 에센스-인-로션 200ml 한정 기획 (+100ml*2) *수분 충전'), NOW(), NOW());

-- ==============================================
-- 4. 에센스/세럼/앰플 상품 이미지 삽입 (총 62개 이미지)
-- ==============================================

-- 에센스/세럼/앰플 이미지 삽입
INSERT INTO product_img (img_url, img_order, product_id) VALUES
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023221203ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽/모공에센스] VT 리들샷 100 에센스 30ml 더블 기획(+피디알엔 에센스 100 1.5ml*3ea)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023221303ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽/보습 광채탄력] VT 피디알엔 에센스 100 30ml 더블 기획 (+리들샷 100 10ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022649817ko.jpeg?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽/1등 미백앰플] 메디큐브 PDRN 핑크 앰플 30ml 리필기획 (본품+리필 50ML+겔패드*2매)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022649803ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽/1등 미백앰플] 메디큐브 PDRN 핑크 앰플 30ml 리필기획 (본품+리필 50ML+겔패드*2매)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022649802ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽/1등 미백앰플] 메디큐브 PDRN 핑크 앰플 30ml 리필기획 (본품+리필 50ML+겔패드*2매)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023188510ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[속건조필수템/대용량150ml] 웰라쥬 리얼 히알루로닉 블루 100 앰플 75ml 더블기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023188511ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[속건조필수템/대용량150ml] 웰라쥬 리얼 히알루로닉 블루 100 앰플 75ml 더블기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023188512ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[속건조필수템/대용량150ml] 웰라쥬 리얼 히알루로닉 블루 100 앰플 75ml 더블기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018926132ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[속보습세럼/단독기획] 토리든 다이브인 저분자 히알루론산 세럼 50ml 리필기획(+리필팩 50ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018926126ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[속보습세럼/단독기획] 토리든 다이브인 저분자 히알루론산 세럼 50ml 리필기획(+리필팩 50ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018926127ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[속보습세럼/단독기획] 토리든 다이브인 저분자 히알루론산 세럼 50ml 리필기획(+리필팩 50ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022644978ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽/1+1+10ml] 메디힐 마데카소사이드 흔적 리페어 세럼 40+40+10mL')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022644975ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽/1+1+10ml] 메디힐 마데카소사이드 흔적 리페어 세럼 40+40+10mL')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022644977ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽/1+1+10ml] 메디힐 마데카소사이드 흔적 리페어 세럼 40+40+10mL')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020064648ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '브링그린 징크테카 트러블 세럼 50ml+25ml/25ml+25ml리필/1.5ml X 10ea기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020064646ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '브링그린 징크테카 트러블 세럼 50ml+25ml/25ml+25ml리필/1.5ml X 10ea기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020064633ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '브링그린 징크테카 트러블 세럼 50ml+25ml/25ml+25ml리필/1.5ml X 10ea기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189407ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽/화해 1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30ml 기획 (+크림 30ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189409ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽/화해 1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30ml 기획 (+크림 30ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189404ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽/화해 1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30ml 기획 (+크림 30ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021960906ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[대용량/트러블1등] 파티온 노스카나인 트러블 세럼 50ml 리필 기획(+리필40ml+크림10ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021960905ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[대용량/트러블1등] 파티온 노스카나인 트러블 세럼 50ml 리필 기획(+리필40ml+크림10ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022449404ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[트러블/모공개선] 셀라딕스 트러블 세범 리밸런싱 RX 131 앰플 30ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022449405ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[트러블/모공개선] 셀라딕스 트러블 세범 리밸런싱 RX 131 앰플 30ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022269811ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[화해1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30mL 기획 (+30mL 리필팩)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022269801ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[화해1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30mL 기획 (+30mL 리필팩)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022269804ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[화해1위] 아누아 피디알엔 히알루론산 캡슐 100 세럼 30mL 기획 (+30mL 리필팩)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022978911ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[리뉴얼] 구달 청귤 비타C 잡티케어 세럼 알파 30ml 기획 (+20ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022978914ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[리뉴얼] 구달 청귤 비타C 잡티케어 세럼 알파 30ml 기획 (+20ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022978917ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[리뉴얼] 구달 청귤 비타C 잡티케어 세럼 알파 30ml 기획 (+20ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020909817ko.jpeg?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽/깐달걀세럼] 메디큐브 제로 모공 원데이 세럼 더블기획 (30ml+30ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020909809ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽/깐달걀세럼] 메디큐브 제로 모공 원데이 세럼 더블기획 (30ml+30ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020909810ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽/깐달걀세럼] 메디큐브 제로 모공 원데이 세럼 더블기획 (30ml+30ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022608611ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽] 바이오더마 하이드라비오 에센스로션 200ml (+안개분사 미스트 증정)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022608607ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽] 바이오더마 하이드라비오 에센스로션 200ml (+안개분사 미스트 증정)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022608612ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽] 바이오더마 하이드라비오 에센스로션 200ml (+안개분사 미스트 증정)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022283708ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '에스트라 아토베리어365 하이드로에센스 200ml 기획(+크림 10ml+세라-히알 앰플 10ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022283703ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '에스트라 아토베리어365 하이드로에센스 200ml 기획(+크림 10ml+세라-히알 앰플 10ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022283702ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '에스트라 아토베리어365 하이드로에센스 200ml 기획(+크림 10ml+세라-히알 앰플 10ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023238203ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[순수비타민C/잡티앰플] 마미케어 오쏘타민 비타민C 앰플 15ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023238202ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[순수비타민C/잡티앰플] 마미케어 오쏘타민 비타민C 앰플 15ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023238204ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[순수비타민C/잡티앰플] 마미케어 오쏘타민 비타민C 앰플 15ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021732619ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[50%용량증정]에스트라 아토베리어365 세라-히알 속수분 앰플 30ML+15ML 기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021732615ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[50%용량증정]에스트라 아토베리어365 세라-히알 속수분 앰플 30ML+15ML 기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021732609ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[50%용량증정]에스트라 아토베리어365 세라-히알 속수분 앰플 30ML+15ML 기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015861505ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '디오디너리 나이아신아마이드 10% + 징크 1% 60ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015861504ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '디오디너리 나이아신아마이드 10% + 징크 1% 60ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021971313ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '도미나스 앳클리닉 보르피린 링클 샷 앰플 30ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021971314ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '도미나스 앳클리닉 보르피린 링클 샷 앰플 30ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021971315ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '도미나스 앳클리닉 보르피린 링클 샷 앰플 30ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023107616ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[포켓몬에디션/녹는실리프팅] 성분에디터 실크펩타이드 EGF 하트핏 볼륨 리프팅 앰플 40ml 더블기획(+키링 파우치)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023107607ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[포켓몬에디션/녹는실리프팅] 성분에디터 실크펩타이드 EGF 하트핏 볼륨 리프팅 앰플 40ml 더블기획(+키링 파우치)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022222029ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[비타민C 앰플] 피지오겔 사이언수티컬즈 데일리뮨 앰플 세럼 20ml 2입기획 (20ml+20ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022222026ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[비타민C 앰플] 피지오겔 사이언수티컬즈 데일리뮨 앰플 세럼 20ml 2입기획 (20ml+20ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018971323ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[1등 진정세럼] 파넬 시카마누 92세럼 더블기획(30ml+30ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018971318ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[1등 진정세럼] 파넬 시카마누 92세럼 더블기획(30ml+30ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/A00000018971320ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[1등 진정세럼] 파넬 시카마누 92세럼 더블기획(30ml+30ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022620109ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽/단독기획] 아누아 TXA 나이아신 흔적 세럼 30ml 2입')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022620106ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽/단독기획] 아누아 TXA 나이아신 흔적 세럼 30ml 2입')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022620107ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽/단독기획] 아누아 TXA 나이아신 흔적 세럼 30ml 2입')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023042442ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[한정기획] 아벤느 이드랑스 에센스-인-로션 200ml 한정 기획 (+100ml*2) *수분 충전')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023042443ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[한정기획] 아벤느 이드랑스 에센스-인-로션 200ml 한정 기획 (+100ml*2) *수분 충전')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023042438ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '[한정기획] 아벤느 이드랑스 에센스-인-로션 200ml 한정 기획 (+100ml*2) *수분 충전'));

-- ==============================================
-- 5. 에센스/세럼/앰플 상품 재고 삽입 (28개 옵션)
-- ==============================================

-- 에센스/세럼/앰플 재고 삽입 (각 옵션별 기본 재고 100개)
INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at) 
SELECT 'SELLING', 100, po.id, NOW() 
FROM product_option po 
JOIN product p ON po.product_id = p.id 
JOIN category c ON p.category_id = c.id 
WHERE c.name = '에센스/세럼/앰플';

-- ==============================================
-- 스크립트 실행 완료 메시지
-- ==============================================
SELECT 'JSON 기반 에센스/세럼/앰플 데이터 삽입이 완료되었습니다.' as message;