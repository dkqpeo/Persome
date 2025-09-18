  -- ==============================================
  -- 스킨케어디바이스 제품 데이터 삽입 스크립트
  -- JSON 기반 완전한 삽입 스크립트
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
  -- 1. 스킨케어디바이스 상품 기본 정보 삽입 (24개)
  -- ==============================================

  INSERT INTO product (name, description, rating_avg, category_id, brand_id, status, created_at, updated_at) VALUES
  ('[장원영PICK] [뷰티디바이스1위] 메디큐브 에이지알 부스터프로 마이멜로디 에디션 기획세트', '[장원영PICK] [뷰티디바이스1위] 메디큐브 에이지알 부스터프로 마이멜로디 에디션 기획세트', 4.8,
   (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
   (SELECT id FROM brand WHERE name = '메디큐브 에이지알'), '판매중', NOW(), NOW()),

  ('[유시은pick/1등홈경락템]마미케어 EMS브이쎄라(화이트/핑크/NEW퍼플에디션)(+ 부스팅젤 본품 증정)', '[유시은pick/1등홈경락템]마미케어 EMS브이쎄라(화이트/핑크/NEW퍼플에디션)(+ 부스팅젤 본품 증정)', 4.7,
   (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
   (SELECT id FROM brand WHERE name = '마미케어'), '판매중', NOW(), NOW()),

  ('[장원영PICK] [미백트러블광채] 메디큐브 에이지알 부스터프로 미니플러스 베이지/핑크', '[장원영PICK] [미백트러블광채] 메디큐브 에이지알 부스터프로 미니플러스 베이지/핑크', 4.8,
   (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
   (SELECT id FROM brand WHERE name = '메디큐브 에이지알'), '판매중', NOW(), NOW()),

  ('[뷰티디바이스 1위] [광채토닝] 메디큐브 부스터프로 쿠로미 에디션 기획세트', '[뷰티디바이스 1위] [광채토닝] 메디큐브 부스터프로 쿠로미 에디션 기획세트', 4.8,
   (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
   (SELECT id FROM brand WHERE name = '메디큐브 에이지알'), '판매중', NOW(), NOW()),

  ('[크래들증정] [1위 홈케어템/올영단독] 쿼드쎄라 미니튠 (화이트/핑크/실버)', '[크래들증정] [1위 홈케어템/올영단독] 쿼드쎄라 미니튠 (화이트/핑크/실버)', 4.8,
   (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
   (SELECT id FROM brand WHERE name = '쿼드쎄라'), '판매중', NOW(), NOW()),

  ('글로우엠 부스터 소닉', '글로우엠 부스터 소닉', 5.0,
   (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
   (SELECT id FROM brand WHERE name = '글로우엠'), '판매중', NOW(), NOW()),

  ('[디바이스 라인업] [뷰티디바이스 1위] 메디큐브 부스터프로/미니플러스/하이포커스 샷/울트라튠 택 1', '[디바이스 라인업] [뷰티디바이스 1위] 메디큐브 부스터프로/미니플러스/하이포커스 샷/울트라튠 택 1', 4.7,
   (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
   (SELECT id FROM brand WHERE name = '메디큐브 에이지알'), '판매중', NOW(), NOW()),

  ('[양면브러쉬] 포레오 루나 4 미니 (4color) 진동클렌저/뷰티디바이스', '[양면브러쉬] 포레오 루나 4 미니 (4color) 진동클렌저/뷰티디바이스', 0.0,
   (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
   (SELECT id FROM brand WHERE name = '포레오'), '판매중', NOW(), NOW()),

  ('[장다아PICK] 게스케 산리오 헬로키티 소닉 페이셜 브러시 4 in 1 (솔리드) / 진동클렌저', '[장다아PICK] 게스케 산리오 헬로키티 소닉 페이셜 브러시 4 in 1 (솔리드) / 진동클렌저', 5.0,
   (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
   (SELECT id FROM brand WHERE name = '게스케'), '판매중', NOW(), NOW()),

  ('페이스팩토리 미용가전 3종 (필링기, 피지 흡입기, 셀라이너)', '페이스팩토리 미용가전 3종 (필링기, 피지 흡입기, 셀라이너)', 4.3,
   (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
   (SELECT id FROM brand WHERE name = '페이스팩토리'), '판매중', NOW(), NOW()),

  ('바나브 UP5(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정', '바나브 UP5(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정', 4.7,
   (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
   (SELECT id FROM brand WHERE name = '바나브'), '판매중', NOW(), NOW()),

  ('바나브 타임머신', '바나브 타임머신', 4.5,
   (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
   (SELECT id FROM brand WHERE name = '바나브'), '판매중', NOW(), NOW()),

  ('바나브 UP6(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정', '바나브 UP6(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정', 4.8,
   (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
   (SELECT id FROM brand WHERE name = '바나브'), '판매중', NOW(), NOW()),

  ('바나브 버블팝 클렌저(+브러쉬 리필 2개) 추가증정', '바나브 버블팝 클렌저(+브러쉬 리필 2개) 추가증정', 4.0,
   (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
   (SELECT id FROM brand WHERE name = '바나브'), '판매중', NOW(), NOW()),

  ('바디스핀 마블롤러 특별구성', '바디스핀 마블롤러 특별구성', 4.4,
   (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
   (SELECT id FROM brand WHERE name = '바디스핀'), '판매중', NOW(), NOW()),

  ('페이스팩토리 베스트 미용가전 3종 택1', '페이스팩토리 베스트 미용가전 3종 택1', 4.7,
   (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
   (SELECT id FROM brand WHERE name = '페이스팩토리'), '판매중', NOW(), NOW()),

  ('페이스팩토리 셀라이너', '페이스팩토리 셀라이너', 4.4,
   (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
   (SELECT id FROM brand WHERE name = '페이스팩토리'), '판매중', NOW(), NOW()),

  ('바나브 스킨빔(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정', '바나브 스킨빔(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정', 4.7,
   (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
   (SELECT id FROM brand WHERE name = '바나브'), '판매중', NOW(), NOW()),

  ('SPUUN 피부스푼 스마트 스패츌러', 'SPUUN 피부스푼 스마트 스패츌러', 4.8,
   (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
   (SELECT id FROM brand WHERE name = 'SPUUN'), '판매중', NOW(), NOW()),

  ('실큰 레빗 프레스티지', '실큰 레빗 프레스티지', 4.7,
   (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
   (SELECT id FROM brand WHERE name = '실큰'), '판매중', NOW(), NOW()),

  ('SPUUN 피부스푼 스마트 스패츌러 기프트 세트(세안밴드 포함 기획)', 'SPUUN 피부스푼 스마트 스패츌러 기프트 세트(세안밴드 포함 기획)', 4.8,
   (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
   (SELECT id FROM brand WHERE name = 'SPUUN'), '판매중', NOW(), NOW()),

  ('리스프링 시카니들 MTS 리필 키트', '리스프링 시카니들 MTS 리필 키트', 4.4,
   (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
   (SELECT id FROM brand WHERE name = '리스프링'), '판매중', NOW(), NOW()),

  ('리스프링 시카니들 MTS 스타터 키트', '리스프링 시카니들 MTS 스타터 키트', 4.5,
   (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
   (SELECT id FROM brand WHERE name = '리스프링'), '판매중', NOW(), NOW()),

  ('바나브 UP6 라벤더(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정', '바나브 UP6 라벤더(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정', 0.0,
   (SELECT id FROM category WHERE name = '스킨케어 디바이스' ORDER BY id DESC LIMIT 1),
   (SELECT id FROM brand WHERE name = '바나브'), '판매중', NOW(), NOW());

  -- ==============================================
  -- 2. 스킨케어디바이스 상품 옵션 삽입 (41개)
  -- ==============================================

  INSERT INTO product_option (name, additional_amount, product_id) VALUES
  ('[기획세트] 마이멜로디 에디션', 0, (SELECT id FROM product WHERE name = '[장원영PICK] [뷰티디바이스1위] 메디큐브 에이지알 부스터프로 마이멜로디 에디션 기획세트')),
  ('마미케어EMS 화이트(+부스팅젤)', 0, (SELECT id FROM product WHERE name = '[유시은pick/1등홈경락템]마미케어 EMS브이쎄라(화이트/핑크/NEW퍼플에디션)(+ 부스팅젤 본품 증정)')),
  ('마미케어 EMS 핑크(+부스팅젤)', 0, (SELECT id FROM product WHERE name = '[유시은pick/1등홈경락템]마미케어 EMS브이쎄라(화이트/핑크/NEW퍼플에디션)(+ 부스팅젤 본품 증정)')),
  ('미니플러스 베이지', 0, (SELECT id FROM product WHERE name = '[장원영PICK] [미백트러블광채] 메디큐브 에이지알 부스터프로 미니플러스 베이지/핑크')),
  ('미니플러스 핑크', 0, (SELECT id FROM product WHERE name = '[장원영PICK] [미백트러블광채] 메디큐브 에이지알 부스터프로 미니플러스 베이지/핑크')),
  ('기본 옵션', 0, (SELECT id FROM product WHERE name = '[뷰티디바이스 1위] [광채토닝] 메디큐브 부스터프로 쿠로미 에디션 기획세트')),
  ('화이트', 0, (SELECT id FROM product WHERE name = '[크래들증정] [1위 홈케어템/올영단독] 쿼드쎄라 미니튠 (화이트/핑크/실버)')),
  ('실버', 205000, (SELECT id FROM product WHERE name = '[크래들증정] [1위 홈케어템/올영단독] 쿼드쎄라 미니튠 (화이트/핑크/실버)')),
  ('핑크', 0, (SELECT id FROM product WHERE name = '[크래들증정] [1위 홈케어템/올영단독] 쿼드쎄라 미니튠 (화이트/핑크/실버)')),
  ('부스터소닉', 0, (SELECT id FROM product WHERE name = '글로우엠 부스터 소닉')),
  ('[미백트러블] 미니플러스 베이지 (단품)', 0, (SELECT id FROM product WHERE name = '[디바이스 라인업] [뷰티디바이스 1위] 메디큐브 부스터프로/미니플러스/하이포커스 샷/울트라튠 택 1')),
  ('[한정] 부스터프로 키티 에디션', 256000, (SELECT id FROM product WHERE name = '[디바이스 라인업] [뷰티디바이스 1위] 메디큐브 부스터프로/미니플러스/하이포커스 샷/울트라튠 택 1')),
  ('[미백트러블] 미니플러스 핑크 (단품)', 0, (SELECT id FROM product WHERE name = '[디바이스 라인업] [뷰티디바이스 1위] 메디큐브 부스터프로/미니플러스/하이포커스 샷/울트라튠 택 1')),
  ('[기획] 부스터프로 마이멜로디 에디션', 240000, (SELECT id FROM product WHERE name = '[디바이스 라인업] [뷰티디바이스 1위] 메디큐브 부스터프로/미니플러스/하이포커스 샷/울트라튠 택 1')),
  ('[기획] 부스터프로 쿠로미 에디션', 240000, (SELECT id FROM product WHERE name = '[디바이스 라인업] [뷰티디바이스 1위] 메디큐브 부스터프로/미니플러스/하이포커스 샷/울트라튠 택 1')),
  ('[광채토닝] 부스터프로 블랙 (단품)', 230000, (SELECT id FROM product WHERE name = '[디바이스 라인업] [뷰티디바이스 1위] 메디큐브 부스터프로/미니플러스/하이포커스 샷/울트라튠 택 1')),
  ('[광채토닝] 부스터프로 핑크 (단품)', 230000, (SELECT id FROM product WHERE name = '[디바이스 라인업] [뷰티디바이스 1위] 메디큐브 부스터프로/미니플러스/하이포커스 샷/울트라튠 택 1')),
  ('[윤곽리프팅] 하이포커스 샷', 189460, (SELECT id FROM product WHERE name = '[디바이스 라인업] [뷰티디바이스 1위] 메디큐브 부스터프로/미니플러스/하이포커스 샷/울트라튠 택 1')),
  ('[볼륨케어] 울트라튠 40.68', 266000, (SELECT id FROM product WHERE name = '[디바이스 라인업] [뷰티디바이스 1위] 메디큐브 부스터프로/미니플러스/하이포커스 샷/울트라튠 택 1')),
  ('펄 핑크', 0, (SELECT id FROM product WHERE name = '[양면브러쉬] 포레오 루나 4 미니 (4color) 진동클렌저/뷰티디바이스')),
  ('아틱 블루', 0, (SELECT id FROM product WHERE name = '[양면브러쉬] 포레오 루나 4 미니 (4color) 진동클렌저/뷰티디바이스')),
  ('코랄', 0, (SELECT id FROM product WHERE name = '[양면브러쉬] 포레오 루나 4 미니 (4color) 진동클렌저/뷰티디바이스')),
  ('핑크', 0, (SELECT id FROM product WHERE name = '[장다아PICK] 게스케 산리오 헬로키티 소닉 페이셜 브러시 4 in 1 (솔리드) / 진동클렌저')),
  ('퍼플', 0, (SELECT id FROM product WHERE name = '[장다아PICK] 게스케 산리오 헬로키티 소닉 페이셜 브러시 4 in 1 (솔리드) / 진동클렌저')),
  ('뷰티석션 피지흡입기', 0, (SELECT id FROM product WHERE name = '페이스팩토리 미용가전 3종 (필링기, 피지 흡입기, 셀라이너)')),
  ('셀라이너', 47800, (SELECT id FROM product WHERE name = '페이스팩토리 미용가전 3종 (필링기, 피지 흡입기, 셀라이너)')),
  ('아우라 올인원 워터필링기', 17800, (SELECT id FROM product WHERE name = '페이스팩토리 미용가전 3종 (필링기, 피지 흡입기, 셀라이너)')),
  ('기본 옵션', 0, (SELECT id FROM product WHERE name = '바나브 UP5(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정')),
  ('기본 옵션', 0, (SELECT id FROM product WHERE name = '바나브 타임머신')),
  ('기본 옵션', 0, (SELECT id FROM product WHERE name = '바나브 UP6(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정')),
  ('기본 옵션', 0, (SELECT id FROM product WHERE name = '바나브 버블팝 클렌저(+브러쉬 리필 2개) 추가증정')),
  ('기본 옵션', 0, (SELECT id FROM product WHERE name = '바디스핀 마블롤러 특별구성')),
  ('셀라이너', 0, (SELECT id FROM product WHERE name = '페이스팩토리 베스트 미용가전 3종 택1')),
  ('기본 옵션', 0, (SELECT id FROM product WHERE name = '페이스팩토리 셀라이너')),
  ('기본 옵션', 0, (SELECT id FROM product WHERE name = '바나브 스킨빔(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정')),
  ('기본 옵션', 0, (SELECT id FROM product WHERE name = 'SPUUN 피부스푼 스마트 스패츌러')),
  ('기본 옵션', 0, (SELECT id FROM product WHERE name = '실큰 레빗 프레스티지')),
  ('스패츌러 본품', 0, (SELECT id FROM product WHERE name = 'SPUUN 피부스푼 스마트 스패츌러 기프트 세트(세안밴드 포함 기획)')),
  ('기본 옵션', 0, (SELECT id FROM product WHERE name = '리스프링 시카니들 MTS 리필 키트')),
  ('기본 옵션', 0, (SELECT id FROM product WHERE name = '리스프링 시카니들 MTS 스타터 키트')),
  ('기본 옵션', 0, (SELECT id FROM product WHERE name = '바나브 UP6 라벤더(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'));

  -- ==============================================
  -- 3. 스킨케어디바이스 상품 가격 삽입 (48개 - 정가/할인가)
  -- ==============================================

  INSERT INTO product_price (price, type, product_id, created_at, updated_at) VALUES
  (418800, 'ORIGINAL', (SELECT id FROM product WHERE name = '[장원영PICK] [뷰티디바이스1위] 메디큐브 에이지알 부스터프로 마이멜로디 에디션 기획세트'), NOW(), NOW()),
  (359000, 'SALE', (SELECT id FROM product WHERE name = '[장원영PICK] [뷰티디바이스1위] 메디큐브 에이지알 부스터프로 마이멜로디 에디션 기획세트'), NOW(), NOW()),
  (109000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[유시은pick/1등홈경락템]마미케어 EMS브이쎄라(화이트/핑크/NEW퍼플에디션)(+ 부스팅젤 본품 증정)'), NOW(), NOW()),
  (99000, 'SALE', (SELECT id FROM product WHERE name = '[유시은pick/1등홈경락템]마미케어 EMS브이쎄라(화이트/핑크/NEW퍼플에디션)(+ 부스팅젤 본품 증정)'), NOW(), NOW()),
  (126000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[장원영PICK] [미백트러블광채] 메디큐브 에이지알 부스터프로 미니플러스 베이지/핑크'), NOW(), NOW()),
  (119000, 'SALE', (SELECT id FROM product WHERE name = '[장원영PICK] [미백트러블광채] 메디큐브 에이지알 부스터프로 미니플러스 베이지/핑크'), NOW(), NOW()),
  (418800, 'ORIGINAL', (SELECT id FROM product WHERE name = '[뷰티디바이스 1위] [광채토닝] 메디큐브 부스터프로 쿠로미 에디션 기획세트'), NOW(), NOW()),
  (359000, 'SALE', (SELECT id FROM product WHERE name = '[뷰티디바이스 1위] [광채토닝] 메디큐브 부스터프로 쿠로미 에디션 기획세트'), NOW(), NOW()),
  (690000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[크래들증정] [1위 홈케어템/올영단독] 쿼드쎄라 미니튠 (화이트/핑크/실버)'), NOW(), NOW()),
  (485000, 'SALE', (SELECT id FROM product WHERE name = '[크래들증정] [1위 홈케어템/올영단독] 쿼드쎄라 미니튠 (화이트/핑크/실버)'), NOW(), NOW()),
  (480000, 'ORIGINAL', (SELECT id FROM product WHERE name = '글로우엠 부스터 소닉'), NOW(), NOW()),
  (421900, 'SALE', (SELECT id FROM product WHERE name = '글로우엠 부스터 소닉'), NOW(), NOW()),
  (126000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[디바이스 라인업] [뷰티디바이스 1위] 메디큐브 부스터프로/미니플러스/하이포커스 샷/울트라튠 택 1'), NOW(), NOW()),
  (119000, 'SALE', (SELECT id FROM product WHERE name = '[디바이스 라인업] [뷰티디바이스 1위] 메디큐브 부스터프로/미니플러스/하이포커스 샷/울트라튠 택 1'), NOW(), NOW()),
  (243000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[양면브러쉬] 포레오 루나 4 미니 (4color) 진동클렌저/뷰티디바이스'), NOW(), NOW()),
  (243000, 'SALE', (SELECT id FROM product WHERE name = '[양면브러쉬] 포레오 루나 4 미니 (4color) 진동클렌저/뷰티디바이스'), NOW(), NOW()),
  (79000, 'ORIGINAL', (SELECT id FROM product WHERE name = '[장다아PICK] 게스케 산리오 헬로키티 소닉 페이셜 브러시 4 in 1 (솔리드) / 진동클렌저'), NOW(), NOW()),
  (79000, 'SALE', (SELECT id FROM product WHERE name = '[장다아PICK] 게스케 산리오 헬로키티 소닉 페이셜 브러시 4 in 1 (솔리드) / 진동클렌저'), NOW(), NOW()),
  (32000, 'ORIGINAL', (SELECT id FROM product WHERE name = '페이스팩토리 미용가전 3종 (필링기, 피지 흡입기, 셀라이너)'), NOW(), NOW()),
  (32000, 'SALE', (SELECT id FROM product WHERE name = '페이스팩토리 미용가전 3종 (필링기, 피지 흡입기, 셀라이너)'), NOW(), NOW()),
  (228000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바나브 UP5(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'), NOW(), NOW()),
  (228000, 'SALE', (SELECT id FROM product WHERE name = '바나브 UP5(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'), NOW(), NOW()),
  (73000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바나브 타임머신'), NOW(), NOW()),
  (65500, 'SALE', (SELECT id FROM product WHERE name = '바나브 타임머신'), NOW(), NOW()),
  (320000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바나브 UP6(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'), NOW(), NOW()),
  (272000, 'SALE', (SELECT id FROM product WHERE name = '바나브 UP6(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'), NOW(), NOW()),
  (148000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바나브 버블팝 클렌저(+브러쉬 리필 2개) 추가증정'), NOW(), NOW()),
  (118400, 'SALE', (SELECT id FROM product WHERE name = '바나브 버블팝 클렌저(+브러쉬 리필 2개) 추가증정'), NOW(), NOW()),
  (338000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바디스핀 마블롤러 특별구성'), NOW(), NOW()),
  (109170, 'SALE', (SELECT id FROM product WHERE name = '바디스핀 마블롤러 특별구성'), NOW(), NOW()),
  (79800, 'ORIGINAL', (SELECT id FROM product WHERE name = '페이스팩토리 베스트 미용가전 3종 택1'), NOW(), NOW()),
  (79800, 'SALE', (SELECT id FROM product WHERE name = '페이스팩토리 베스트 미용가전 3종 택1'), NOW(), NOW()),
  (79800, 'ORIGINAL', (SELECT id FROM product WHERE name = '페이스팩토리 셀라이너'), NOW(), NOW()),
  (79800, 'SALE', (SELECT id FROM product WHERE name = '페이스팩토리 셀라이너'), NOW(), NOW()),
  (178000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바나브 스킨빔(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'), NOW(), NOW()),
  (178000, 'SALE', (SELECT id FROM product WHERE name = '바나브 스킨빔(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'), NOW(), NOW()),
  (129000, 'ORIGINAL', (SELECT id FROM product WHERE name = 'SPUUN 피부스푼 스마트 스패츌러'), NOW(), NOW()),
  (129000, 'SALE', (SELECT id FROM product WHERE name = 'SPUUN 피부스푼 스마트 스패츌러'), NOW(), NOW()),
  (179000, 'ORIGINAL', (SELECT id FROM product WHERE name = '실큰 레빗 프레스티지'), NOW(), NOW()),
  (179000, 'SALE', (SELECT id FROM product WHERE name = '실큰 레빗 프레스티지'), NOW(), NOW()),
  (129000, 'ORIGINAL', (SELECT id FROM product WHERE name = 'SPUUN 피부스푼 스마트 스패츌러 기프트 세트(세안밴드 포함 기획)'), NOW(), NOW()),
  (129000, 'SALE', (SELECT id FROM product WHERE name = 'SPUUN 피부스푼 스마트 스패츌러 기프트 세트(세안밴드 포함 기획)'), NOW(), NOW()),
  (64000, 'ORIGINAL', (SELECT id FROM product WHERE name = '리스프링 시카니들 MTS 리필 키트'), NOW(), NOW()),
  (62900, 'SALE', (SELECT id FROM product WHERE name = '리스프링 시카니들 MTS 리필 키트'), NOW(), NOW()),
  (20000, 'ORIGINAL', (SELECT id FROM product WHERE name = '리스프링 시카니들 MTS 스타터 키트'), NOW(), NOW()),
  (19000, 'SALE', (SELECT id FROM product WHERE name = '리스프링 시카니들 MTS 스타터 키트'), NOW(), NOW()),
  (320000, 'ORIGINAL', (SELECT id FROM product WHERE name = '바나브 UP6 라벤더(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'), NOW(), NOW()),
  (320000, 'SALE', (SELECT id FROM product WHERE name = '바나브 UP6 라벤더(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'), NOW(), NOW());

  -- ==============================================
  -- 4. 스킨케어디바이스 상품 이미지 삽입 (총 54개 이미지)
  -- ==============================================

  INSERT INTO product_img (img_url, img_order, product_id) VALUES
  -- 메디큐브 에이지알 부스터프로 마이멜로디 에디션 기획세트 (product_id: 1)
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023218314ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[장원영PICK] [뷰티디바이스1위] 메디큐브 에이지알 부스터프로 마이멜로디 에디션 기획세트')),
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023218321ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[장원영PICK] [뷰티디바이스1위] 메디큐브 에이지알 부스터프로 마이멜로디 에디션 기획세트')),

  -- 마미케어 EMS브이쎄라 (product_id: 2)
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/B00000022435013ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[유시은pick/1등홈경락템]마미케어 EMS브이쎄라(화이트/핑크/NEW퍼플에디션)(+ 부스팅젤 본품 증정)')),
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/B00000022435004ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[유시은pick/1등홈경락템]마미케어 EMS브이쎄라(화이트/핑크/NEW퍼플에디션)(+ 부스팅젤 본품 증정)')),
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/B00000022435002ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[유시은pick/1등홈경락템]마미케어 EMS브이쎄라(화이트/핑크/NEW퍼플에디션)(+ 부스팅젤 본품 증정)')),

  -- 메디큐브 에이지알 부스터프로 미니플러스 베이지/핑크 (product_id: 3)
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023115402ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[장원영PICK] [미백트러블광채] 메디큐브 에이지알 부스터프로 미니플러스 베이지/핑크')),
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023115403ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[장원영PICK] [미백트러블광채] 메디큐브 에이지알 부스터프로 미니플러스 베이지/핑크')),
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/A00000023115404ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[장원영PICK] [미백트러블광채] 메디큐브 에이지알 부스터프로 미니플러스 베이지/핑크')),

  -- 메디큐브 부스터프로 쿠로미 에디션 기획세트 (product_id: 4)
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022465415ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[뷰티디바이스 1위] [광채토닝] 메디큐브 부스터프로 쿠로미 에디션 기획세트')),
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022465416ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[뷰티디바이스 1위] [광채토닝] 메디큐브 부스터프로 쿠로미 에디션 기획세트')),
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0022/A00000022465417ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[뷰티디바이스 1위] [광채토닝] 메디큐브 부스터프로 쿠로미 에디션 기획세트')),

  -- 쿼드쎄라 미니튠 (product_id: 5)
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021805915ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[크래들증정] [1위 홈케어템/올영단독] 쿼드쎄라 미니튠 (화이트/핑크/실버)')),
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021805910ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[크래들증정] [1위 홈케어템/올영단독] 쿼드쎄라 미니튠 (화이트/핑크/실버)')),
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0021/A00000021805911ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[크래들증정] [1위 홈케어템/올영단독] 쿼드쎄라 미니튠 (화이트/핑크/실버)')),

  -- 글로우엠 부스터 소닉 (product_id: 6)
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/B00000023102506ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '글로우엠 부스터 소닉')),
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/B00000023102505ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '글로우엠 부스터 소닉')),
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0023/B00000023102504ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '글로우엠 부스터 소닉')),

  -- 메디큐브 디바이스 라인업 (product_id: 7)
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020973580ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[디바이스 라인업] [뷰티디바이스 1위] 메디큐브 부스터프로/미니플러스/하이포커스 샷/울트라튠 택 1')),
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020973581ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[디바이스 라인업] [뷰티디바이스 1위] 메디큐브 부스터프로/미니플러스/하이포커스 샷/울트라튠 택 1')),
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/A00000020973582ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[디바이스 라인업] [뷰티디바이스 1위] 메디큐브 부스터프로/미니플러스/하이포커스 샷/울트라튠 택 1')),

  -- 포레오 루나 4 미니 (product_id: 8)
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/B00000018037408ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[양면브러쉬] 포레오 루나 4 미니 (4color) 진동클렌저/뷰티디바이스')),
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/B00000018037401ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[양면브러쉬] 포레오 루나 4 미니 (4color) 진동클렌저/뷰티디바이스')),
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0018/B00000018037407ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[양면브러쉬] 포레오 루나 4 미니 (4color) 진동클렌저/뷰티디바이스')),

  -- 게스케 산리오 헬로키티 소닉 페이셜 브러시 (product_id: 9)
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/B00000020584209ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '[장다아PICK] 게스케 산리오 헬로키티 소닉 페이셜 브러시 4 in 1 (솔리드) / 진동클렌저')),
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/B00000020584208ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '[장다아PICK] 게스케 산리오 헬로키티 소닉 페이셜 브러시 4 in 1 (솔리드) / 진동클렌저')),
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0020/B00000020584206ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = '[장다아PICK] 게스케 산리오 헬로키티 소닉 페이셜 브러시 4 in 1 (솔리드) / 진동클렌저')),

  -- 페이스팩토리 미용가전 3종 (product_id: 10)
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011618307ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '페이스팩토리 미용가전 3종 (필링기, 피지 흡입기, 셀라이너)')),

  -- 바나브 UP5 (product_id: 11)
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011607810ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바나브 UP5(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정')),
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011607803ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '바나브 UP5(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정')),

  -- 바나브 타임머신 (product_id: 12)
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011609705ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바나브 타임머신')),
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0011/A00000011609703ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '바나브 타임머신')),

  -- 바나브 UP6 (product_id: 13)
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013508808ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바나브 UP6(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정')),
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013508802ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '바나브 UP6(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정')),

  -- 바나브 버블팝 클렌저 (product_id: 14)
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013610402ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바나브 버블팝 클렌저(+브러쉬 리필 2개) 추가증정')),
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013610406ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '바나브 버블팝 클렌저(+브러쉬 리필 2개) 추가증정')),

  -- 바디스핀 마블롤러 특별구성 (product_id: 15)
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0013/A00000013977901ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바디스핀 마블롤러 특별구성')),

  -- 페이스팩토리 베스트 미용가전 3종 택1 (product_id: 16)
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014295302ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '페이스팩토리 베스트 미용가전 3종 택1')),
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014295301ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '페이스팩토리 베스트 미용가전 3종 택1')),

  -- 페이스팩토리 셀라이너 (product_id: 17)
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014363902ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '페이스팩토리 셀라이너')),
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014363901ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '페이스팩토리 셀라이너')),

  -- 바나브 스킨빔 (product_id: 18)
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014700009ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바나브 스킨빔(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정')),
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014700008ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '바나브 스킨빔(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정')),

  -- SPUUN 피부스푼 스마트 스패츌러 (product_id: 19)
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014907519ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = 'SPUUN 피부스푼 스마트 스패츌러')),
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014907524ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = 'SPUUN 피부스푼 스마트 스패츌러')),
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0014/A00000014907523ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = 'SPUUN 피부스푼 스마트 스패츌러')),

  -- 실큰 레빗 프레스티지 (product_id: 20)
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015434401ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '실큰 레빗 프레스티지')),
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015434402ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '실큰 레빗 프레스티지')),

  -- SPUUN 피부스푼 스마트 스패츌러 기프트 세트 (product_id: 21)
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015735404ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = 'SPUUN 피부스푼 스마트 스패츌러 기프트 세트(세안밴드 포함 기획)')),
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015735409ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = 'SPUUN 피부스푼 스마트 스패츌러 기프트 세트(세안밴드 포함 기획)')),
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015735408ko.jpg?l=ko', 3, (SELECT id FROM product WHERE name = 'SPUUN 피부스푼 스마트 스패츌러 기프트 세트(세안밴드 포함 기획)')),

  -- 리스프링 시카니들 MTS 리필 키트 (product_id: 22)
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015973902ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '리스프링 시카니들 MTS 리필 키트')),

  -- 리스프링 시카니들 MTS 스타터 키트 (product_id: 23)
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0015/A00000015974102ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '리스프링 시카니들 MTS 스타터 키트')),

  -- 바나브 UP6 라벤더 (product_id: 24)
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016898508ko.jpg?l=ko', 1, (SELECT id FROM product WHERE name = '바나브 UP6 라벤더(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정')),
  ('https://image.oliveyoung.co.kr/cfimages/cf-goods/uploads/images/thumbnails/550/10/0000/0016/A00000016898502ko.jpg?l=ko', 2, (SELECT id FROM product WHERE name = '바나브 UP6 라벤더(고급 핑크파우치+바나브 리프팅 크림 50ml) 추가증정'));

  -- ==============================================
  -- 5. 스킨케어디바이스 상품 재고 삽입 (41개 옵션)
  -- ==============================================

  INSERT INTO inventory (stock_status, quantity, product_option_id, updated_at)
  SELECT 'SELLING', 100, po.id, NOW()
  FROM product_option po
  JOIN product p ON po.product_id = p.id
  JOIN category c ON p.category_id = c.id
  WHERE c.name = '스킨케어 디바이스';

  -- ==============================================
  -- 스크립트 실행 완료 메시지
  -- ==============================================
  SELECT 'JSON 기반 스킨케어디바이스 데이터 삽입이 완료되었습니다.' as message;
