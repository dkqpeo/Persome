-- ==============================================
-- 크림 JSON 데이터 기반 INSERT 스크립트
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
-- 1. 크림 상품 기본 정보 삽입 (48개)
-- ==============================================

-- 크림 상품 삽입
INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
('[9월 올영픽] 라로슈포제 시카플라스트 밤 B5+ 100ml 기획 (1.5ml*2+50주년 리유저블백+리미티드스티커)', '[9월 올영픽] 라로슈포제 시카플라스트 밤 B5+ 100ml 기획 (1.5ml*2+50주년 리유저블백+리미티드스티커)', 4.8, (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '라로슈포제'), '판매중', NOW(), NOW()),
('[올영어워즈1등 크림] 에스트라 아토베리어365 크림 80ml 기획 (+하이드로 에센스25ml+세라-히알 앰플7ml)', '[올영어워즈1등 크림] 에스트라 아토베리어365 크림 80ml 기획 (+하이드로 에센스25ml+세라-히알 앰플7ml)', 4.9, (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '에스트라'), '판매중', NOW(), NOW()),
('[1+1/모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 더블 기획(+아쿠아겔 마스크 1매)', '[1+1/모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 더블 기획(+아쿠아겔 마스크 1매)', 4.8, (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '에스네이처'), '판매중', NOW(), NOW()),
('[9월 올영픽] 라로슈포제 시카플라스트 멀티 리페어 크림 100ml 기획 (+15ml+시카밤3ml+시카선크림 2ml)', '[9월 올영픽] 라로슈포제 시카플라스트 멀티 리페어 크림 100ml 기획 (+15ml+시카밤3ml+시카선크림 2ml)', 4.7, (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '라로슈포제'), '판매중', NOW(), NOW()),
('[1등 탄력] 바이오힐 보 프로바이오덤 3D 리프팅크림 50ml [단품/리필기획]', '[1등 탄력] 바이오힐 보 프로바이오덤 3D 리프팅크림 50ml [단품/리필기획]', 4.8, (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '바이오힐보'), '판매중', NOW(), NOW()),
('[수분진정/이영지PICK] 닥터지 레드 블레미쉬 클리어 수딩 크림 70ml 증정 기획 2종 (+세럼 20ml)', '[수분진정/이영지PICK] 닥터지 레드 블레미쉬 클리어 수딩 크림 70ml 증정 기획 2종 (+세럼 20ml)', 4.9, (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '닥터지'), '판매중', NOW(), NOW()),
('[9월 올영픽/화해 1위] 아누아 피디알엔 히알루론산 100 수분 크림 60ml 2입', '[9월 올영픽/화해 1위] 아누아 피디알엔 히알루론산 100 수분 크림 60ml 2입', 4.8, (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '아누아'), '판매중', NOW(), NOW()),
('[페이백이벤트][9월 올영픽/광채탄력] 닥터지 블랙스네일 크림 50ml 1+1 증정 기획 (+15ml 추가 증정)', '[페이백이벤트][9월 올영픽/광채탄력] 닥터지 블랙스네일 크림 50ml 1+1 증정 기획 (+15ml 추가 증정)', 5.0, (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '닥터지'), '판매중', NOW(), NOW()),
('[9월 올영픽]이즈앤트리 어니언 뉴페어 겔크림 50ml 더블기획 (+20ml)', '[9월 올영픽]이즈앤트리 어니언 뉴페어 겔크림 50ml 더블기획 (+20ml)', 4.7, (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '이즈앤트리'), '판매중', NOW(), NOW()),
('[NEW] 브링그린 티트리시카수딩크림플러스100ml 2입 기획 / 단품', '[NEW] 브링그린 티트리시카수딩크림플러스100ml 2입 기획 / 단품', 4.8, (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '브링그린'), '판매중', NOW(), NOW()),
('[9월 올영픽/화잘먹크림] 메디큐브 PDRN 핑크 히알루로닉 수분크림 50ml 더블기획', '[9월 올영픽/화잘먹크림] 메디큐브 PDRN 핑크 히알루로닉 수분크림 50ml 더블기획', 4.7, (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '메디큐브'), '판매중', NOW(), NOW()),
('바이오더마 시카비오 포마드 100ml 기획(+시카비오 크림+5ml 2ea)', '바이오더마 시카비오 포마드 100ml 기획(+시카비오 크림+5ml 2ea)', 4.8, (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '바이오더마'), '판매중', NOW(), NOW()),
('[리뷰이벤트] 바이오던스 포어 퍼펙팅 콜라겐 펩타이드 크림 50ml 기획 (+10ml)', '[리뷰이벤트] 바이오던스 포어 퍼펙팅 콜라겐 펩타이드 크림 50ml 기획 (+10ml)', 4.8, (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '바이오던스'), '판매중', NOW(), NOW()),
('[9월 올영픽] 피지오겔 DMT 페이셜 수분크림 150ml 기획(+데일리뮨 앰플 4ml, 마스크 1매 증정)', '[9월 올영픽] 피지오겔 DMT 페이셜 수분크림 150ml 기획(+데일리뮨 앰플 4ml, 마스크 1매 증정)', 4.8, (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '피지오겔'), '판매중', NOW(), NOW()),
('[화잘먹크림] 오드로이 모공수축크림 로프디 모공면적 100ml 더블기획 (+미스트앰플 30ml)', '[화잘먹크림] 오드로이 모공수축크림 로프디 모공면적 100ml 더블기획 (+미스트앰플 30ml)', 4.6, (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '오드로이'), '판매중', NOW(), NOW()),
('[더블기획/1+1]토리든 다이브인 히알루론산 수딩 크림 더블 기획세트(100ml+100ml)', '[더블기획/1+1]토리든 다이브인 히알루론산 수딩 크림 더블 기획세트(100ml+100ml)', 4.8, (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '토리든'), '판매중', NOW(), NOW()),
('[올영 어워즈 1등 크림]에스트라 아토베리어365 크림 80ml', '[올영 어워즈 1등 크림]에스트라 아토베리어365 크림 80ml', 4.8, (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '에스트라'), '판매중', NOW(), NOW()),
('[온라인단독/대용량] 제로이드 인텐시브 크림 80ml 기획 (+50ml)', '[온라인단독/대용량] 제로이드 인텐시브 크림 80ml 기획 (+50ml)', 4.8, (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '제로이드'), '판매중', NOW(), NOW()),
('[NEW/단독기획] 아누아 어성초 센텔라 레드 스팟 크림 30g 2입', '[NEW/단독기획] 아누아 어성초 센텔라 레드 스팟 크림 30g 2입', 4.6, (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '아누아'), '판매중', NOW(), NOW()),
('[화해1위/수분광채크림] 아누아 피디알엔 히알루론산 100 수분 크림 60mL 기획 (+30mL)', '[화해1위/수분광채크림] 아누아 피디알엔 히알루론산 100 수분 크림 60mL 기획 (+30mL)', 4.8, (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '아누아'), '판매중', NOW(), NOW()),
('[비타캡슐톡톡/리뉴얼] 구달 청귤 비타C 잡티케어 크림 알파 75ml 리필 기획 (75ml+75ml)', '[비타캡슐톡톡/리뉴얼] 구달 청귤 비타C 잡티케어 크림 알파 75ml 리필 기획 (75ml+75ml)', 4.9, (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '구달'), '판매중', NOW(), NOW()),
('[고현정 PICK] 코이 플로우 리프팅 랩핑 크림 50ml 기획 (+미니 크림 10ml 2ea)', '[고현정 PICK] 코이 플로우 리프팅 랩핑 크림 50ml 기획 (+미니 크림 10ml 2ea)', 4.9, (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '코이'), '판매중', NOW(), NOW()),
('[1등크림/올영단독] 더하르나이 시카이드 크림 100ml+30ml 기획', '[1등크림/올영단독] 더하르나이 시카이드 크림 100ml+30ml 기획', 4.8, (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '더하르나이'), '판매중', NOW(), NOW()),
('[수분캡슐크림/PDRN 원액캡슐]메디큐브 PDRN 핑크 콜라겐 캡슐크림 55g', '[수분캡슐크림/PDRN 원액캡슐]메디큐브 PDRN 핑크 콜라겐 캡슐크림 55g', 4.7, (SELECT id FROM category WHERE name = '크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '메디큐브'), '판매중', NOW(), NOW()),
('닥터멜락신 아이팔트 아이백 아이크림 7g + 10g 듀오세트', '닥터멜락신 아이팔트 아이백 아이크림 7g + 10g 듀오세트', 4.9, (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '닥터멜락신'), '판매중', NOW(), NOW()),
('[단독기획/리프팅]AHC 프로 샷 콜라 쥬비네이션 아이크림 포페이스 30ml 기획 (+세럼10ml)', '[단독기획/리프팅]AHC 프로 샷 콜라 쥬비네이션 아이크림 포페이스 30ml 기획 (+세럼10ml)', 4.9, (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = 'AHC'), '판매중', NOW(), NOW()),
('[눈가탄력/레티날] 조선미녀 인삼아이크림 30ml 2입 기획', '[눈가탄력/레티날] 조선미녀 인삼아이크림 30ml 2입 기획', 4.9, (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '조선미녀'), '판매중', NOW(), NOW()),
('[10년연속1위] 유세린 하이알루론 3X 아이크림 더블기획 (15ml+15ml)', '[10년연속1위] 유세린 하이알루론 3X 아이크림 더블기획 (15ml+15ml)', 4.7, (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '유세린'), '판매중', NOW(), NOW()),
('[판매량 1억개 돌파/대용량] AHC 텐 레볼루션 리얼 아이크림 포 페이스 더블 기획', '[판매량 1억개 돌파/대용량] AHC 텐 레볼루션 리얼 아이크림 포 페이스 더블 기획', 4.8, (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = 'AHC'), '판매중', NOW(), NOW()),
('[1+1] 차앤박 프로폴리스 에센셜 아이크림 50ml 더블기획 (50ml+50ml)', '[1+1] 차앤박 프로폴리스 에센셜 아이크림 50ml 더블기획 (50ml+50ml)', 4.8, (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '차앤박'), '판매중', NOW(), NOW()),
('[10년연속1위] 유세린 하이알루론 3X 아이크림 15ml 기획(+나이트크림 7ml 2개 증정)', '[10년연속1위] 유세린 하이알루론 3X 아이크림 15ml 기획(+나이트크림 7ml 2개 증정)', 4.8, (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '유세린'), '판매중', NOW(), NOW()),
('[토탈주름케어] 아비브 콜라겐 아이크림 부활초 튜브 30ml', '[토탈주름케어] 아비브 콜라겐 아이크림 부활초 튜브 30ml', 4.8, (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '아비브'), '판매중', NOW(), NOW()),
('[NEW/단백질 요거트] 에스네이처 아쿠아 스쿠알란 판테놀 아이크림 포 페이스 밤 25g', '[NEW/단백질 요거트] 에스네이처 아쿠아 스쿠알란 판테놀 아이크림 포 페이스 밤 25g', 4.9, (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '에스네이처'), '판매중', NOW(), NOW()),
('마티나겝하르트 아보카도 아이크림 15ml', '마티나겝하르트 아보카도 아이크림 15ml', 4.7, (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '마티나겝하르트'), '판매중', NOW(), NOW()),
('[아이백볼륨/3천원페이백] 성분에디터 실크 펩타이드 인텐시브 리프팅 아이크림 30ml', '[아이백볼륨/3천원페이백] 성분에디터 실크 펩타이드 인텐시브 리프팅 아이크림 30ml', 4.8, (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '성분에디터'), '판매중', NOW(), NOW()),
('[괄사 아이세럼] 에스테덤 히알루로닉 아이세럼 15ml (주름개선기능성)', '[괄사 아이세럼] 에스테덤 히알루로닉 아이세럼 15ml (주름개선기능성)', 4.7, (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '에스테덤'), '판매중', NOW(), NOW()),
('[증정기획] 닥터지 로얄 블랙스네일 아이크림 30ml+10ml 기획', '[증정기획] 닥터지 로얄 블랙스네일 아이크림 30ml+10ml 기획', 4.8, (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '닥터지'), '판매중', NOW(), NOW()),
('[1+1리필기획/눙눙이 Pick] 비원츠 펩타이드 엑스 퍼밍 아이세럼스틱 리필기획 (+눙눙이 키링&부적 증정)', '[1+1리필기획/눙눙이 Pick] 비원츠 펩타이드 엑스 퍼밍 아이세럼스틱 리필기획 (+눙눙이 키링&부적 증정)', 4.9, (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '비원츠'), '판매중', NOW(), NOW()),
('[눈가탄력/레티날] 조선미녀 인삼아이크림 30ml', '[눈가탄력/레티날] 조선미녀 인삼아이크림 30ml', 4.9, (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '조선미녀'), '판매중', NOW(), NOW()),
('[레티날0.025%] 닥터디퍼런트 비타리프트 아이앤넥 20g', '[레티날0.025%] 닥터디퍼런트 비타리프트 아이앤넥 20g', 4.6, (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '닥터디퍼런트'), '판매중', NOW(), NOW()),
('센텔리안24 링클셀 코어 아이크림 더블 기획 (세럼10ml x 2ea 증정)', '센텔리안24 링클셀 코어 아이크림 더블 기획 (세럼10ml x 2ea 증정)', 4.7, (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '센텔리안24'), '판매중', NOW(), NOW()),
('에스트라 리제덤365 레티노이드 아이세럼 15ml', '에스트라 리제덤365 레티노이드 아이세럼 15ml', 4.9, (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '에스트라'), '판매중', NOW(), NOW()),
('닥터멜락신 아이팔트 아이백 아이크림 10ml', '닥터멜락신 아이팔트 아이백 아이크림 10ml', 4.9, (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '닥터멜락신'), '판매중', NOW(), NOW()),
('[눈가탄력] 바이오힐 보 프로바이오덤 3D 리프팅 아이&링클 크림 25ml [더블기획]', '[눈가탄력] 바이오힐 보 프로바이오덤 3D 리프팅 아이&링클 크림 25ml [더블기획]', 4.8, (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '바이오힐보'), '판매중', NOW(), NOW()),
('[판매량 1억개 돌파] AHC 텐 레볼루션 리얼 아이크림 포 페이스 스페셜 퍼밍 세트', '[판매량 1억개 돌파] AHC 텐 레볼루션 리얼 아이크림 포 페이스 스페셜 퍼밍 세트', 4.8, (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = 'AHC'), '판매중', NOW(), NOW()),
('AXIS-Y 비건 콜라겐 아이 세럼 10ml', 'AXIS-Y 비건 콜라겐 아이 세럼 10ml', 0.0, (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = 'AXIS-Y'), '판매중', NOW(), NOW()),
('[눈가생기] 이니스프리 그린티 히알루론산 글로우 아이&페이스볼 10ml', '[눈가생기] 이니스프리 그린티 히알루론산 글로우 아이&페이스볼 10ml', 4.5, (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = '이니스프리'), '판매중', NOW(), NOW()),
('AHC 유스래스팅 리얼 아이크림 포 페이스 스페셜 링클케어 세트 (35ml+7ml)', 'AHC 유스래스팅 리얼 아이크림 포 페이스 스페셜 링클케어 세트 (35ml+7ml)', 4.8, (SELECT id FROM category WHERE name = '아이크림' ORDER BY id DESC LIMIT 1), (SELECT id FROM brand WHERE name = 'AHC'), '판매중', NOW(), NOW());

-- ==============================================
-- 2. 크림 상품 옵션 삽입 (55개)
-- ==============================================

-- 크림 옵션 삽입
INSERT INTO product_option (name, additional_amount, product_id) VALUES
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9월 올영픽] 라로슈포제 시카플라스트 밤 B5+ 100ml 기획 (1.5ml*2+50주년 리유저블백+리미티드스티커)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[올영어워즈1등 크림] 에스트라 아토베리어365 크림 80ml 기획 (+하이드로 에센스25ml+세라-히알 앰플7ml)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[1+1/모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 더블 기획(+아쿠아겔 마스크 1매)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9월 올영픽] 라로슈포제 시카플라스트 멀티 리페어 크림 100ml 기획 (+15ml+시카밤3ml+시카선크림 2ml)')),
('리프팅크림 50ml 리필 기획+20ml', 900, (SELECT id FROM product WHERE name = '[1등 탄력] 바이오힐 보 프로바이오덤 3D 리프팅크림 50ml [단품/리필기획]')),
('리프팅크림 50ml 리필 기획', 900, (SELECT id FROM product WHERE name = '[1등 탄력] 바이오힐 보 프로바이오덤 3D 리프팅크림 50ml [단품/리필기획]')),
('리프팅크림 50ml 단품', 0, (SELECT id FROM product WHERE name = '[1등 탄력] 바이오힐 보 프로바이오덤 3D 리프팅크림 50ml [단품/리필기획]')),
('세럼20+크림70(jar)+30(튜브)', 0, (SELECT id FROM product WHERE name = '[수분진정/이영지PICK] 닥터지 레드 블레미쉬 클리어 수딩 크림 70ml 증정 기획 2종 (+세럼 20ml)')),
('세럼20+크림70(튜브)+30(튜브)', 0, (SELECT id FROM product WHERE name = '[수분진정/이영지PICK] 닥터지 레드 블레미쉬 클리어 수딩 크림 70ml 증정 기획 2종 (+세럼 20ml)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9월 올영픽/화해 1위] 아누아 피디알엔 히알루론산 100 수분 크림 60ml 2입')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[페이백이벤트][9월 올영픽/광채탄력] 닥터지 블랙스네일 크림 50ml 1+1 증정 기획 (+15ml 추가 증정)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9월 올영픽]이즈앤트리 어니언 뉴페어 겔크림 50ml 더블기획 (+20ml)')),
('크림100ml 2입(+징크테카세럼3ml)', 2700, (SELECT id FROM product WHERE name = '[NEW] 브링그린 티트리시카수딩크림플러스100ml 2입 기획 / 단품')),
('크림100ml 단품', 0, (SELECT id FROM product WHERE name = '[NEW] 브링그린 티트리시카수딩크림플러스100ml 2입 기획 / 단품')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[9월 올영픽/화잘먹크림] 메디큐브 PDRN 핑크 히알루로닉 수분크림 50ml 더블기획')),
('시카비오 포마드 100ml (기획)', 0, (SELECT id FROM product WHERE name = '바이오더마 시카비오 포마드 100ml 기획(+시카비오 크림+5ml 2ea)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[리뷰이벤트] 바이오던스 포어 퍼펙팅 콜라겐 펩타이드 크림 50ml 기획 (+10ml)')),
('단품+데일리뮨 마스크1매+앰플', 0, (SELECT id FROM product WHERE name = '[9월 올영픽] 피지오겔 DMT 페이셜 수분크림 150ml 기획(+데일리뮨 앰플 4ml, 마스크 1매 증정)')),
('블랙체리 로프디 더블기획+미스트앰플', 0, (SELECT id FROM product WHERE name = '[화잘먹크림] 오드로이 모공수축크림 로프디 모공면적 100ml 더블기획 (+미스트앰플 30ml)')),
('토리든 다이브인 수딩크림 더블기획', 0, (SELECT id FROM product WHERE name = '[더블기획/1+1]토리든 다이브인 히알루론산 수딩 크림 더블 기획세트(100ml+100ml)')),
('토리든 다이브인 수딩크림 가나디 더블기획', 10500, (SELECT id FROM product WHERE name = '[더블기획/1+1]토리든 다이브인 히알루론산 수딩 크림 더블 기획세트(100ml+100ml)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[올영 어워즈 1등 크림]에스트라 아토베리어365 크림 80ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[온라인단독/대용량] 제로이드 인텐시브 크림 80ml 기획 (+50ml)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW/단독기획] 아누아 어성초 센텔라 레드 스팟 크림 30g 2입')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[화해1위/수분광채크림] 아누아 피디알엔 히알루론산 100 수분 크림 60mL 기획 (+30mL)')),
('75ml(+75ml 리필)', 0, (SELECT id FROM product WHERE name = '[비타캡슐톡톡/리뉴얼] 구달 청귤 비타C 잡티케어 크림 알파 75ml 리필 기획 (75ml+75ml)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[고현정 PICK] 코이 플로우 리프팅 랩핑 크림 50ml 기획 (+미니 크림 10ml 2ea)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[1등크림/올영단독] 더하르나이 시카이드 크림 100ml+30ml 기획')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[수분캡슐크림/PDRN 원액캡슐]메디큐브 PDRN 핑크 콜라겐 캡슐크림 55g')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '닥터멜락신 아이팔트 아이백 아이크림 7g + 10g 듀오세트')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[단독기획/리프팅]AHC 프로 샷 콜라 쥬비네이션 아이크림 포페이스 30ml 기획 (+세럼10ml)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[눈가탄력/레티날] 조선미녀 인삼아이크림 30ml 2입 기획')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[10년연속1위] 유세린 하이알루론 3X 아이크림 더블기획 (15ml+15ml)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[판매량 1억개 돌파/대용량] AHC 텐 레볼루션 리얼 아이크림 포 페이스 더블 기획')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[1+1] 차앤박 프로폴리스 에센셜 아이크림 50ml 더블기획 (50ml+50ml)')),
('기획(+나이트크림 7ml*2)', 0, (SELECT id FROM product WHERE name = '[10년연속1위] 유세린 하이알루론 3X 아이크림 15ml 기획(+나이트크림 7ml 2개 증정)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[토탈주름케어] 아비브 콜라겐 아이크림 부활초 튜브 30ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[NEW/단백질 요거트] 에스네이처 아쿠아 스쿠알란 판테놀 아이크림 포 페이스 밤 25g')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '마티나겝하르트 아보카도 아이크림 15ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[아이백볼륨/3천원페이백] 성분에디터 실크 펩타이드 인텐시브 리프팅 아이크림 30ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[괄사 아이세럼] 에스테덤 히알루로닉 아이세럼 15ml (주름개선기능성)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[증정기획] 닥터지 로얄 블랙스네일 아이크림 30ml+10ml 기획')),
('(눙눙이) 1+1 리필기획 세럼 스틱', 13000, (SELECT id FROM product WHERE name = '[1+1리필기획/눙눙이 Pick] 비원츠 펩타이드 엑스 퍼밍 아이세럼스틱 리필기획 (+눙눙이 키링&부적 증정)')),
('단품 세럼스틱', 1600, (SELECT id FROM product WHERE name = '[1+1리필기획/눙눙이 Pick] 비원츠 펩타이드 엑스 퍼밍 아이세럼스틱 리필기획 (+눙눙이 키링&부적 증정)')),
('(눙눙이) 단품 세럼 패치', 0, (SELECT id FROM product WHERE name = '[1+1리필기획/눙눙이 Pick] 비원츠 펩타이드 엑스 퍼밍 아이세럼스틱 리필기획 (+눙눙이 키링&부적 증정)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[눈가탄력/레티날] 조선미녀 인삼아이크림 30ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[레티날0.025%] 닥터디퍼런트 비타리프트 아이앤넥 20g')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '센텔리안24 링클셀 코어 아이크림 더블 기획 (세럼10ml x 2ea 증정)')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '에스트라 리제덤365 레티노이드 아이세럼 15ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '닥터멜락신 아이팔트 아이백 아이크림 10ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[눈가탄력] 바이오힐 보 프로바이오덤 3D 리프팅 아이&링클 크림 25ml [더블기획]')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[판매량 1억개 돌파] AHC 텐 레볼루션 리얼 아이크림 포 페이스 스페셜 퍼밍 세트')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = 'AXIS-Y 비건 콜라겐 아이 세럼 10ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = '[눈가생기] 이니스프리 그린티 히알루론산 글로우 아이&페이스볼 10ml')),
('기본 옵션', 0, (SELECT id FROM product WHERE name = 'AHC 유스래스팅 리얼 아이크림 포 페이스 스페셜 링클케어 세트 (35ml+7ml)'));

-- ==============================================
-- 3. 크림 상품 가격 삽입 (96개 - 정가/할인가)
-- ==============================================

-- 크림 가격 삽입
INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
(40000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽] 라로슈포제 시카플라스트 밤 B5+ 100ml 기획 (1.5ml*2+50주년 리유저블백+리미티드스티커)'), NOW(), NOW()),
(28800, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽] 라로슈포제 시카플라스트 밤 B5+ 100ml 기획 (1.5ml*2+50주년 리유저블백+리미티드스티커)'), NOW(), NOW()),
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[올영어워즈1등 크림] 에스트라 아토베리어365 크림 80ml 기획 (+하이드로 에센스25ml+세라-히알 앰플7ml)'), NOW(), NOW()),
(29700, 'SALE', (SELECT id FROM product WHERE name = '[올영어워즈1등 크림] 에스트라 아토베리어365 크림 80ml 기획 (+하이드로 에센스25ml+세라-히알 앰플7ml)'), NOW(), NOW()),
(43000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1+1/모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 더블 기획(+아쿠아겔 마스크 1매)'), NOW(), NOW()),
(23200, 'SALE', (SELECT id FROM product WHERE name = '[1+1/모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 더블 기획(+아쿠아겔 마스크 1매)'), NOW(), NOW()),
(50000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽] 라로슈포제 시카플라스트 멀티 리페어 크림 100ml 기획 (+15ml+시카밤3ml+시카선크림 2ml)'), NOW(), NOW()),
(35900, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽] 라로슈포제 시카플라스트 멀티 리페어 크림 100ml 기획 (+15ml+시카밤3ml+시카선크림 2ml)'), NOW(), NOW()),
(70200, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1등 탄력] 바이오힐 보 프로바이오덤 3D 리프팅크림 50ml [단품/리필기획]'), NOW(), NOW()),
(39900, 'SALE', (SELECT id FROM product WHERE name = '[1등 탄력] 바이오힐 보 프로바이오덤 3D 리프팅크림 50ml [단품/리필기획]'), NOW(), NOW()),
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분진정/이영지PICK] 닥터지 레드 블레미쉬 클리어 수딩 크림 70ml 증정 기획 2종 (+세럼 20ml)'), NOW(), NOW()),
(27600, 'SALE', (SELECT id FROM product WHERE name = '[수분진정/이영지PICK] 닥터지 레드 블레미쉬 클리어 수딩 크림 70ml 증정 기획 2종 (+세럼 20ml)'), NOW(), NOW()),
(64000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽/화해 1위] 아누아 피디알엔 히알루론산 100 수분 크림 60ml 2입'), NOW(), NOW()),
(28900, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽/화해 1위] 아누아 피디알엔 히알루론산 100 수분 크림 60ml 2입'), NOW(), NOW()),
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[페이백이벤트][9월 올영픽/광채탄력] 닥터지 블랙스네일 크림 50ml 1+1 증정 기획 (+15ml 추가 증정)'), NOW(), NOW()),
(24150, 'SALE', (SELECT id FROM product WHERE name = '[페이백이벤트][9월 올영픽/광채탄력] 닥터지 블랙스네일 크림 50ml 1+1 증정 기획 (+15ml 추가 증정)'), NOW(), NOW()),
(49000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽]이즈앤트리 어니언 뉴페어 겔크림 50ml 더블기획 (+20ml)'), NOW(), NOW()),
(33600, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽]이즈앤트리 어니언 뉴페어 겔크림 50ml 더블기획 (+20ml)'), NOW(), NOW()),
(34200, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW] 브링그린 티트리시카수딩크림플러스100ml 2입 기획 / 단품'), NOW(), NOW()),
(19800, 'SALE', (SELECT id FROM product WHERE name = '[NEW] 브링그린 티트리시카수딩크림플러스100ml 2입 기획 / 단품'), NOW(), NOW()),
(49000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽/화잘먹크림] 메디큐브 PDRN 핑크 히알루로닉 수분크림 50ml 더블기획'), NOW(), NOW()),
(24700, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽/화잘먹크림] 메디큐브 PDRN 핑크 히알루로닉 수분크림 50ml 더블기획'), NOW(), NOW()),
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바이오더마 시카비오 포마드 100ml 기획(+시카비오 크림+5ml 2ea)'), NOW(), NOW()),
(29900, 'SALE', (SELECT id FROM product WHERE name = '바이오더마 시카비오 포마드 100ml 기획(+시카비오 크림+5ml 2ea)'), NOW(), NOW()),
(39000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[리뷰이벤트] 바이오던스 포어 퍼펙팅 콜라겐 펩타이드 크림 50ml 기획 (+10ml)'), NOW(), NOW()),
(27000, 'SALE', (SELECT id FROM product WHERE name = '[리뷰이벤트] 바이오던스 포어 퍼펙팅 콜라겐 펩타이드 크림 50ml 기획 (+10ml)'), NOW(), NOW()),
(47500, 'ORIGINAL', (SELECT id FROM product WHERE name = '[9월 올영픽] 피지오겔 DMT 페이셜 수분크림 150ml 기획(+데일리뮨 앰플 4ml, 마스크 1매 증정)'), NOW(), NOW()),
(22900, 'SALE', (SELECT id FROM product WHERE name = '[9월 올영픽] 피지오겔 DMT 페이셜 수분크림 150ml 기획(+데일리뮨 앰플 4ml, 마스크 1매 증정)'), NOW(), NOW()),
(56000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[화잘먹크림] 오드로이 모공수축크림 로프디 모공면적 100ml 더블기획 (+미스트앰플 30ml)'), NOW(), NOW()),
(36800, 'SALE', (SELECT id FROM product WHERE name = '[화잘먹크림] 오드로이 모공수축크림 로프디 모공면적 100ml 더블기획 (+미스트앰플 30ml)'), NOW(), NOW()),
(42000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[더블기획/1+1]토리든 다이브인 히알루론산 수딩 크림 더블 기획세트(100ml+100ml)'), NOW(), NOW()),
(31500, 'SALE', (SELECT id FROM product WHERE name = '[더블기획/1+1]토리든 다이브인 히알루론산 수딩 크림 더블 기획세트(100ml+100ml)'), NOW(), NOW()),
(33000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[올영 어워즈 1등 크림]에스트라 아토베리어365 크림 80ml'), NOW(), NOW()),
(29700, 'SALE', (SELECT id FROM product WHERE name = '[올영 어워즈 1등 크림]에스트라 아토베리어365 크림 80ml'), NOW(), NOW()),
(40000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[온라인단독/대용량] 제로이드 인텐시브 크림 80ml 기획 (+50ml)'), NOW(), NOW()),
(36000, 'SALE', (SELECT id FROM product WHERE name = '[온라인단독/대용량] 제로이드 인텐시브 크림 80ml 기획 (+50ml)'), NOW(), NOW()),
(39600, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW/단독기획] 아누아 어성초 센텔라 레드 스팟 크림 30g 2입'), NOW(), NOW()),
(25000, 'SALE', (SELECT id FROM product WHERE name = '[NEW/단독기획] 아누아 어성초 센텔라 레드 스팟 크림 30g 2입'), NOW(), NOW()),
(32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[화해1위/수분광채크림] 아누아 피디알엔 히알루론산 100 수분 크림 60mL 기획 (+30mL)'), NOW(), NOW()),
(19500, 'SALE', (SELECT id FROM product WHERE name = '[화해1위/수분광채크림] 아누아 피디알엔 히알루론산 100 수분 크림 60mL 기획 (+30mL)'), NOW(), NOW()),
(30000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[비타캡슐톡톡/리뉴얼] 구달 청귤 비타C 잡티케어 크림 알파 75ml 리필 기획 (75ml+75ml)'), NOW(), NOW()),
(22500, 'SALE', (SELECT id FROM product WHERE name = '[비타캡슐톡톡/리뉴얼] 구달 청귤 비타C 잡티케어 크림 알파 75ml 리필 기획 (75ml+75ml)'), NOW(), NOW()),
(57000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[고현정 PICK] 코이 플로우 리프팅 랩핑 크림 50ml 기획 (+미니 크림 10ml 2ea)'), NOW(), NOW()),
(38900, 'SALE', (SELECT id FROM product WHERE name = '[고현정 PICK] 코이 플로우 리프팅 랩핑 크림 50ml 기획 (+미니 크림 10ml 2ea)'), NOW(), NOW()),
(29000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1등크림/올영단독] 더하르나이 시카이드 크림 100ml+30ml 기획'), NOW(), NOW()),
(29000, 'SALE', (SELECT id FROM product WHERE name = '[1등크림/올영단독] 더하르나이 시카이드 크림 100ml+30ml 기획'), NOW(), NOW()),
(33300, 'ORIGINAL', (SELECT id FROM product WHERE name = '[수분캡슐크림/PDRN 원액캡슐]메디큐브 PDRN 핑크 콜라겐 캡슐크림 55g'), NOW(), NOW()),
(33300, 'SALE', (SELECT id FROM product WHERE name = '[수분캡슐크림/PDRN 원액캡슐]메디큐브 PDRN 핑크 콜라겐 캡슐크림 55g'), NOW(), NOW()),
(40900, 'ORIGINAL', (SELECT id FROM product WHERE name = '닥터멜락신 아이팔트 아이백 아이크림 7g + 10g 듀오세트'), NOW(), NOW()),
(28900, 'SALE', (SELECT id FROM product WHERE name = '닥터멜락신 아이팔트 아이백 아이크림 7g + 10g 듀오세트'), NOW(), NOW()),
(31000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[단독기획/리프팅]AHC 프로 샷 콜라 쥬비네이션 아이크림 포페이스 30ml 기획 (+세럼10ml)'), NOW(), NOW()),
(24890, 'SALE', (SELECT id FROM product WHERE name = '[단독기획/리프팅]AHC 프로 샷 콜라 쥬비네이션 아이크림 포페이스 30ml 기획 (+세럼10ml)'), NOW(), NOW()),
(29000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[눈가탄력/레티날] 조선미녀 인삼아이크림 30ml 2입 기획'), NOW(), NOW()),
(27500, 'SALE', (SELECT id FROM product WHERE name = '[눈가탄력/레티날] 조선미녀 인삼아이크림 30ml 2입 기획'), NOW(), NOW()),
(78900, 'ORIGINAL', (SELECT id FROM product WHERE name = '[10년연속1위] 유세린 하이알루론 3X 아이크림 더블기획 (15ml+15ml)'), NOW(), NOW()),
(72100, 'SALE', (SELECT id FROM product WHERE name = '[10년연속1위] 유세린 하이알루론 3X 아이크림 더블기획 (15ml+15ml)'), NOW(), NOW()),
(39000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[판매량 1억개 돌파/대용량] AHC 텐 레볼루션 리얼 아이크림 포 페이스 더블 기획'), NOW(), NOW()),
(26500, 'SALE', (SELECT id FROM product WHERE name = '[판매량 1억개 돌파/대용량] AHC 텐 레볼루션 리얼 아이크림 포 페이스 더블 기획'), NOW(), NOW()),
(42000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1+1] 차앤박 프로폴리스 에센셜 아이크림 50ml 더블기획 (50ml+50ml)'), NOW(), NOW()),
(32800, 'SALE', (SELECT id FROM product WHERE name = '[1+1] 차앤박 프로폴리스 에센셜 아이크림 50ml 더블기획 (50ml+50ml)'), NOW(), NOW()),
(53000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[10년연속1위] 유세린 하이알루론 3X 아이크림 15ml 기획(+나이트크림 7ml 2개 증정)'), NOW(), NOW()),
(53000, 'SALE', (SELECT id FROM product WHERE name = '[10년연속1위] 유세린 하이알루론 3X 아이크림 15ml 기획(+나이트크림 7ml 2개 증정)'), NOW(), NOW()),
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[토탈주름케어] 아비브 콜라겐 아이크림 부활초 튜브 30ml'), NOW(), NOW()),
(18200, 'SALE', (SELECT id FROM product WHERE name = '[토탈주름케어] 아비브 콜라겐 아이크림 부활초 튜브 30ml'), NOW(), NOW()),
(34000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[NEW/단백질 요거트] 에스네이처 아쿠아 스쿠알란 판테놀 아이크림 포 페이스 밤 25g'), NOW(), NOW()),
(17900, 'SALE', (SELECT id FROM product WHERE name = '[NEW/단백질 요거트] 에스네이처 아쿠아 스쿠알란 판테놀 아이크림 포 페이스 밤 25g'), NOW(), NOW()),
(28000, 'ORIGINAL', (SELECT id FROM product WHERE name = '마티나겝하르트 아보카도 아이크림 15ml'), NOW(), NOW()),
(26000, 'SALE', (SELECT id FROM product WHERE name = '마티나겝하르트 아보카도 아이크림 15ml'), NOW(), NOW()),
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[아이백볼륨/3천원페이백] 성분에디터 실크 펩타이드 인텐시브 리프팅 아이크림 30ml'), NOW(), NOW()),
(19900, 'SALE', (SELECT id FROM product WHERE name = '[아이백볼륨/3천원페이백] 성분에디터 실크 펩타이드 인텐시브 리프팅 아이크림 30ml'), NOW(), NOW()),
(61000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[괄사 아이세럼] 에스테덤 히알루로닉 아이세럼 15ml (주름개선기능성)'), NOW(), NOW()),
(40570, 'SALE', (SELECT id FROM product WHERE name = '[괄사 아이세럼] 에스테덤 히알루로닉 아이세럼 15ml (주름개선기능성)'), NOW(), NOW()),
(38000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[증정기획] 닥터지 로얄 블랙스네일 아이크림 30ml+10ml 기획'), NOW(), NOW()),
(38000, 'SALE', (SELECT id FROM product WHERE name = '[증정기획] 닥터지 로얄 블랙스네일 아이크림 30ml+10ml 기획'), NOW(), NOW()),
(37000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[1+1리필기획/눙눙이 Pick] 비원츠 펩타이드 엑스 퍼밍 아이세럼스틱 리필기획 (+눙눙이 키링&부적 증정)'), NOW(), NOW()),
(37000, 'SALE', (SELECT id FROM product WHERE name = '[1+1리필기획/눙눙이 Pick] 비원츠 펩타이드 엑스 퍼밍 아이세럼스틱 리필기획 (+눙눙이 키링&부적 증정)'), NOW(), NOW()),
(17000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[눈가탄력/레티날] 조선미녀 인삼아이크림 30ml'), NOW(), NOW()),
(17000, 'SALE', (SELECT id FROM product WHERE name = '[눈가탄력/레티날] 조선미녀 인삼아이크림 30ml'), NOW(), NOW()),
(40000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[레티날0.025%] 닥터디퍼런트 비타리프트 아이앤넥 20g'), NOW(), NOW()),
(34000, 'SALE', (SELECT id FROM product WHERE name = '[레티날0.025%] 닥터디퍼런트 비타리프트 아이앤넥 20g'), NOW(), NOW()),
(57000, 'ORIGINAL', (SELECT id FROM product WHERE name = '센텔리안24 링클셀 코어 아이크림 더블 기획 (세럼10ml x 2ea 증정)'), NOW(), NOW()),
(29900, 'SALE', (SELECT id FROM product WHERE name = '센텔리안24 링클셀 코어 아이크림 더블 기획 (세럼10ml x 2ea 증정)'), NOW(), NOW()),
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '에스트라 리제덤365 레티노이드 아이세럼 15ml'), NOW(), NOW()),
(29700, 'SALE', (SELECT id FROM product WHERE name = '에스트라 리제덤365 레티노이드 아이세럼 15ml'), NOW(), NOW()),
(30900, 'ORIGINAL', (SELECT id FROM product WHERE name = '닥터멜락신 아이팔트 아이백 아이크림 10ml'), NOW(), NOW()),
(25900, 'SALE', (SELECT id FROM product WHERE name = '닥터멜락신 아이팔트 아이백 아이크림 10ml'), NOW(), NOW()),
(35000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[눈가탄력] 바이오힐 보 프로바이오덤 3D 리프팅 아이&링클 크림 25ml [더블기획]'), NOW(), NOW()),
(24500, 'SALE', (SELECT id FROM product WHERE name = '[눈가탄력] 바이오힐 보 프로바이오덤 3D 리프팅 아이&링클 크림 25ml [더블기획]'), NOW(), NOW()),
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[판매량 1억개 돌파] AHC 텐 레볼루션 리얼 아이크림 포 페이스 스페셜 퍼밍 세트'), NOW(), NOW()),
(23000, 'SALE', (SELECT id FROM product WHERE name = '[판매량 1억개 돌파] AHC 텐 레볼루션 리얼 아이크림 포 페이스 스페셜 퍼밍 세트'), NOW(), NOW()),
(26000, 'ORIGINAL', (SELECT id FROM product WHERE name = 'AXIS-Y 비건 콜라겐 아이 세럼 10ml'), NOW(), NOW()),
(21900, 'SALE', (SELECT id FROM product WHERE name = 'AXIS-Y 비건 콜라겐 아이 세럼 10ml'), NOW(), NOW()),
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[눈가생기] 이니스프리 그린티 히알루론산 글로우 아이&페이스볼 10ml'), NOW(), NOW()),
(17250, 'SALE', (SELECT id FROM product WHERE name = '[눈가생기] 이니스프리 그린티 히알루론산 글로우 아이&페이스볼 10ml'), NOW(), NOW()),
(23000, 'ORIGINAL', (SELECT id FROM product WHERE name = 'AHC 유스래스팅 리얼 아이크림 포 페이스 스페셜 링클케어 세트 (35ml+7ml)'), NOW(), NOW()),
(16890, 'SALE', (SELECT id FROM product WHERE name = 'AHC 유스래스팅 리얼 아이크림 포 페이스 스페셜 링클케어 세트 (35ml+7ml)'), NOW(), NOW());

-- ==============================================
-- 4. 크림 상품 이미지 삽입 (총 81개 이미지)
-- ==============================================

-- 크림 이미지 삽입 (크림 카테고리)
INSERT INTO product_img (img_url, img_order, product_id) VALUES
-- 라로슈포제 시카플라스트 밤 B5+ 100ml 기획
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023174205ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽] 라로슈포제 시카플라스트 밤 B5+ 100ml 기획 (1.5ml*2+50주년 리유저블백+리미티드스티커)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023174201ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽] 라로슈포제 시카플라스트 밤 B5+ 100ml 기획 (1.5ml*2+50주년 리유저블백+리미티드스티커)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023174202ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽] 라로슈포제 시카플라스트 밤 B5+ 100ml 기획 (1.5ml*2+50주년 리유저블백+리미티드스티커)')),

-- 에스네이처 아쿠아 스쿠알란 수분크림
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023091583ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[1+1/모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 더블 기획(+아쿠아겔 마스크 1매)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023091560ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[1+1/모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 더블 기획(+아쿠아겔 마스크 1매)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023091561ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[1+1/모공 수분천재크림] 에스네이처 아쿠아 스쿠알란 수분크림 60ml 더블 기획(+아쿠아겔 마스크 1매)')),

-- 에스트라 아토베리어365 크림
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022283309ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[올영어워즈1등 크림] 에스트라 아토베리어365 크림 80ml 기획 (+하이드로 에센스25ml+세라-히알 앰플7ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022283311ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[올영어워즈1등 크림] 에스트라 아토베리어365 크림 80ml 기획 (+하이드로 에센스25ml+세라-히알 앰플7ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022283312ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[올영어워즈1등 크림] 에스트라 아토베리어365 크림 80ml 기획 (+하이드로 에센스25ml+세라-히알 앰플7ml)')),

-- 라로슈포제 시카플라스트 멀티 리페어 크림
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023175105ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽] 라로슈포제 시카플라스트 멀티 리페어 크림 100ml 기획 (+15ml+시카밤3ml+시카선크림 2ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023175101ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽] 라로슈포제 시카플라스트 멀티 리페어 크림 100ml 기획 (+15ml+시카밤3ml+시카선크림 2ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023175103ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽] 라로슈포제 시카플라스트 멀티 리페어 크림 100ml 기획 (+15ml+시카밤3ml+시카선크림 2ml)')),

-- 바이오힐 보 프로바이오덤 3D 리프팅크림
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019970119ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[1등 탄력] 바이오힐 보 프로바이오덤 3D 리프팅크림 50ml [단품/리필기획]')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019970114ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[1등 탄력] 바이오힐 보 프로바이오덤 3D 리프팅크림 50ml [단품/리필기획]')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019970105ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[1등 탄력] 바이오힐 보 프로바이오덤 3D 리프팅크림 50ml [단품/리필기획]')),

-- 닥터지 레드 블레미쉬 클리어 수딩 크림
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016461585ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[수분진정/이영지PICK] 닥터지 레드 블레미쉬 클리어 수딩 크림 70ml 증정 기획 2종 (+세럼 20ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016461586ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[수분진정/이영지PICK] 닥터지 레드 블레미쉬 클리어 수딩 크림 70ml 증정 기획 2종 (+세럼 20ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016461587ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[수분진정/이영지PICK] 닥터지 레드 블레미쉬 클리어 수딩 크림 70ml 증정 기획 2종 (+세럼 20ml)')),

-- 닥터지 블랙스네일 크림
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023332220ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[페이백이벤트][9월 올영픽/광채탄력] 닥터지 블랙스네일 크림 50ml 1+1 증정 기획 (+15ml 추가 증정)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023332217ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[페이백이벤트][9월 올영픽/광채탄력] 닥터지 블랙스네일 크림 50ml 1+1 증정 기획 (+15ml 추가 증정)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023332214ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[페이백이벤트][9월 올영픽/광채탄력] 닥터지 블랙스네일 크림 50ml 1+1 증정 기획 (+15ml 추가 증정)')),

-- 이즈앤트리 어니언 뉴페어 겔크림
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021838916ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽]이즈앤트리 어니언 뉴페어 겔크림 50ml 더블기획 (+20ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021838915ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽]이즈앤트리 어니언 뉴페어 겔크림 50ml 더블기획 (+20ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021838917ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽]이즈앤트리 어니언 뉴페어 겔크림 50ml 더블기획 (+20ml)')),

-- 브링그린 티트리시카수딩크림플러스
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022655317ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[NEW] 브링그린 티트리시카수딩크림플러스100ml 2입 기획 / 단품')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022655302ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[NEW] 브링그린 티트리시카수딩크림플러스100ml 2입 기획 / 단품')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022655318ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[NEW] 브링그린 티트리시카수딩크림플러스100ml 2입 기획 / 단품')),

-- 바이오더마 시카비오 포마드
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023213802ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바이오더마 시카비오 포마드 100ml 기획(+시카비오 크림+5ml 2ea)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023213804ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '바이오더마 시카비오 포마드 100ml 기획(+시카비오 크림+5ml 2ea)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023213803ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '바이오더마 시카비오 포마드 100ml 기획(+시카비오 크림+5ml 2ea)')),

-- 오드로이 모공수축크림 로프디
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023079922ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[화잘먹크림] 오드로이 모공수축크림 로프디 모공면적 100ml 더블기획 (+미스트앰플 30ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023079910ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[화잘먹크림] 오드로이 모공수축크림 로프디 모공면적 100ml 더블기획 (+미스트앰플 30ml)')),

-- 아누아 피디알엔 히알루론산 100 수분 크림 2입
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189212ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽/화해 1위] 아누아 피디알엔 히알루론산 100 수분 크림 60ml 2입')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189214ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽/화해 1위] 아누아 피디알엔 히알루론산 100 수분 크림 60ml 2입')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023189202ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽/화해 1위] 아누아 피디알엔 히알루론산 100 수분 크림 60ml 2입')),

-- 메디큐브 PDRN 핑크 히알루로닉 수분크림
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022500817ko.jpeg?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽/화잘먹크림] 메디큐브 PDRN 핑크 히알루로닉 수분크림 50ml 더블기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022500812ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽/화잘먹크림] 메디큐브 PDRN 핑크 히알루로닉 수분크림 50ml 더블기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022500806ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽/화잘먹크림] 메디큐브 PDRN 핑크 히알루로닉 수분크림 50ml 더블기획')),

-- 피지오겔 DMT 페이셜 수분크림
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023218508ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[9월 올영픽] 피지오겔 DMT 페이셜 수분크림 150ml 기획(+데일리뮨 앰플 4ml, 마스크 1매 증정)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023218506ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[9월 올영픽] 피지오겔 DMT 페이셜 수분크림 150ml 기획(+데일리뮨 앰플 4ml, 마스크 1매 증정)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023218507ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[9월 올영픽] 피지오겔 DMT 페이셜 수분크림 150ml 기획(+데일리뮨 앰플 4ml, 마스크 1매 증정)')),

-- 바이오던스 포어 퍼펙팅 콜라겐 펩타이드 크림
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023087740ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[리뷰이벤트] 바이오던스 포어 퍼펙팅 콜라겐 펩타이드 크림 50ml 기획 (+10ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023087733ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[리뷰이벤트] 바이오던스 포어 퍼펙팅 콜라겐 펩타이드 크림 50ml 기획 (+10ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023087734ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[리뷰이벤트] 바이오던스 포어 퍼펙팅 콜라겐 펩타이드 크림 50ml 기획 (+10ml)')),

-- 에스트라 아토베리어365 크림 80ml
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019832004ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[올영 어워즈 1등 크림]에스트라 아토베리어365 크림 80ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019832005ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[올영 어워즈 1등 크림]에스트라 아토베리어365 크림 80ml')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019832003ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[올영 어워즈 1등 크림]에스트라 아토베리어365 크림 80ml')),

-- 코이 플로우 리프팅 랩핑 크림
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021463320ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[고현정 PICK] 코이 플로우 리프팅 랩핑 크림 50ml 기획 (+미니 크림 10ml 2ea)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021463321ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[고현정 PICK] 코이 플로우 리프팅 랩핑 크림 50ml 기획 (+미니 크림 10ml 2ea)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021463319ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[고현정 PICK] 코이 플로우 리프팅 랩핑 크림 50ml 기획 (+미니 크림 10ml 2ea)')),

-- 구달 청귤 비타C 잡티케어 크림 알파
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023065509ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[비타캡슐톡톡/리뉴얼] 구달 청귤 비타C 잡티케어 크림 알파 75ml 리필 기획 (75ml+75ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023065512ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[비타캡슐톡톡/리뉴얼] 구달 청귤 비타C 잡티케어 크림 알파 75ml 리필 기획 (75ml+75ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023065510ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[비타캡슐톡톡/리뉴얼] 구달 청귤 비타C 잡티케어 크림 알파 75ml 리필 기획 (75ml+75ml)')),

-- 토리든 다이브인 히알루론산 수딩 크림
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016559831ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[더블기획/1+1]토리든 다이브인 히알루론산 수딩 크림 더블 기획세트(100ml+100ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016559818ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[더블기획/1+1]토리든 다이브인 히알루론산 수딩 크림 더블 기획세트(100ml+100ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016559819ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[더블기획/1+1]토리든 다이브인 히알루론산 수딩 크림 더블 기획세트(100ml+100ml)')),

-- 더하르나이 시카이드 크림
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019240520ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[1등크림/올영단독] 더하르나이 시카이드 크림 100ml+30ml 기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019240518ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[1등크림/올영단독] 더하르나이 시카이드 크림 100ml+30ml 기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0019/A00000019240516ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[1등크림/올영단독] 더하르나이 시카이드 크림 100ml+30ml 기획'));

-- 아이크림 이미지 삽입
INSERT INTO product_img (img_url, img_order, product_id) VALUES
-- 닥터멜락신 아이팔트 아이백 아이크림 듀오세트
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022959304ko.png?l=ko', 1, (SELECT id FROM product WHERE name = '닥터멜락신 아이팔트 아이백 아이크림 7g + 10g 듀오세트')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022959302ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '닥터멜락신 아이팔트 아이백 아이크림 7g + 10g 듀오세트')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022959303ko.png?l=ko', 3, (SELECT id FROM product WHERE name = '닥터멜락신 아이팔트 아이백 아이크림 7g + 10g 듀오세트')),

-- AHC 프로 샷 콜라 쥬비네이션 아이크림
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020460022ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[단독기획/리프팅]AHC 프로 샷 콜라 쥬비네이션 아이크림 포페이스 30ml 기획 (+세럼10ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020460023ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[단독기획/리프팅]AHC 프로 샷 콜라 쥬비네이션 아이크림 포페이스 30ml 기획 (+세럼10ml)')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020460024ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[단독기획/리프팅]AHC 프로 샷 콜라 쥬비네이션 아이크림 포페이스 30ml 기획 (+세럼10ml)')),

-- 조선미녀 인삼아이크림 2입 기획
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023197805ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[눈가탄력/레티날] 조선미녀 인삼아이크림 30ml 2입 기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023197804ko.png?l=ko', 2, (SELECT id FROM product WHERE name = '[눈가탄력/레티날] 조선미녀 인삼아이크림 30ml 2입 기획')),
('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023197802ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[눈가탄력/레티날] 조선미녀 인삼아이크림 30ml 2입 기획'));

-- ==============================================
-- 5. 크림 상품 재고 삽입 (55개 옵션)
-- ==============================================

-- 크림 재고 삽입 (각 옵션별 기본 재고 100개)
INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at) 
SELECT 'SELLING', 100, po.id, NOW() 
FROM product_option po 
JOIN product p ON po.product_id = p.id 
JOIN category c ON p.category_id = c.id 
WHERE c.name IN ('크림', '아이크림');

-- ==============================================
-- 스크립트 실행 완료 메시지
-- ==============================================
SELECT 'JSON 기반 크림 데이터 삽입이 완료되었습니다.' as message;