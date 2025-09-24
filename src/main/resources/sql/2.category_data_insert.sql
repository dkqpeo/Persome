-- Category 엔티티용 데이터 삽입 스크립트  
-- 컬럼: id (AUTO_INCREMENT), name, parent_id

-- 기존 데이터 삭제 (필요시)
-- DELETE FROM category;
-- ALTER TABLE category AUTO_INCREMENT = 1;

-- 1차 카테고리 (parent_id = NULL)
INSERT INTO category (name, parent_id) VALUES
('스킨케어', NULL),
('마스크팩', NULL), 
('클렌징', NULL),
('선케어', NULL),
('메이크업', NULL),
('뷰티소품', NULL),
('더모 코스메틱', NULL),
('맨즈케어', NULL),
('헤어케어', NULL),
('바디케어', NULL),
('향수/디퓨저', NULL),
('네일', NULL);

-- 스킨케어 하위 카테고리 (parent_id = 1)
INSERT INTO category (name, parent_id) VALUES
('스킨/토너', 1),
('에센스/세럼/앰플', 1),
('크림', 1),
('로션', 1),
('미스트/오일', 1),
('스킨케어세트', 1),
('스킨케어 디바이스', 1);

-- 마스크팩 하위 카테고리 (parent_id = 2)  
INSERT INTO category (name, parent_id) VALUES
('시트팩', 2),
('패드', 2),
('페이셜팩', 2),
('코팩', 2),
('패치', 2);

-- 클렌징 하위 카테고리 (parent_id = 3)
INSERT INTO category (name, parent_id) VALUES
('클렌징폼/젤', 3),
('오일/밤', 3),
('워터/밀크', 3),
('필링&스크럽', 3),
('티슈/패드', 3),
('립&아이리무버', 3),
('클렌징 디바이스', 3);

-- 선케어 하위 카테고리 (parent_id = 4)
INSERT INTO category (name, parent_id) VALUES
('선크림', 4),
('선스틱', 4),
('선쿠션', 4),
('선스프레이/선패치', 4),
('태닝/애프터선', 4);

-- 메이크업 하위 카테고리 (parent_id = 5)
INSERT INTO category (name, parent_id) VALUES
('립메이크업', 5),
('베이스메이크업', 5),
('아이메이크업', 5);

-- 뷰티소품 하위 카테고리 (parent_id = 6)
INSERT INTO category (name, parent_id) VALUES
('메이크업소품', 6),
('아이소품', 6),
('스킨케어소품', 6),
('헤어소품', 6),
('네일/바디소품', 6),
('뷰티잡화', 6);

-- 더모 코스메틱 하위 카테고리 (parent_id = 7)
INSERT INTO category (name, parent_id) VALUES
('스킨케어', 7),
('바디케어', 7),
('클렌징', 7),
('선케어', 7),
('마스크팩', 7);

-- 맨즈케어 하위 카테고리 (parent_id = 8)
INSERT INTO category (name, parent_id) VALUES
('스킨케어', 8),
('메이크업', 8),
('쉐이빙/왁싱', 8),
('바디케어', 8),
('헤어케어', 8),
('프래그런스', 8),
('패션/취미', 8),
('헬스용품/식품', 8);

-- 헤어케어 하위 카테고리 (parent_id = 9)
INSERT INTO category (name, parent_id) VALUES
('샴푸/린스', 9),
('트리트먼트/팩', 9),
('두피앰플/토닉', 9),
('헤어에센스', 9),
('염색약/펌', 9),
('헤어기기/브러시', 9),
('스타일링', 9);

-- 바디케어 하위 카테고리 (parent_id = 10)
INSERT INTO category (name, parent_id) VALUES
('샤워/입욕', 10),
('로션/오일/미스트', 10),
('핸드케어', 10),
('풋케어', 10),
('제모/왁싱', 10),
('데오드란트', 10),
('선물세트', 10),
('베이비', 10);

-- 향수/디퓨저 하위 카테고리 (parent_id = 11)
INSERT INTO category (name, parent_id) VALUES
('향수', 11),
('미니/고체향수', 11),
('홈프래그런스', 11);

-- 네일 하위 카테고리 (parent_id = 12)
INSERT INTO category (name, parent_id) VALUES
('일반네일', 12),
('젤네일', 12),
('네일팁/스티커', 12),
('네일케어/리무버', 12);

-- 3차 카테고리 추가
-- 스킨/토너 하위 카테고리 (parent_id는 스킨/토너의 ID를 참조)
INSERT INTO category (name, parent_id) VALUES
('스킨/토너', 13);

-- 에센스/세럼/앰플 하위 카테고리 (parent_id는 스킨/토너의 ID를 참조)
INSERT INTO category (name, parent_id) VALUES
    ('에센스/세럼/앰플', 14);

-- 크림 하위 카테고리 (parent_id는 크림의 ID를 참조)
INSERT INTO category (name, parent_id) VALUES
    ('크림', 15),
    ('아이크림', 15);

-- 로션 하위 카테고리 (parent_id는 로션의 ID를 참조)
INSERT INTO category (name, parent_id) VALUES
('로션', 16),
('올인원', 16);

-- 미스트/오일 하위 카테고리 (parent_id는 미스트/오일의 ID를 참조)
INSERT INTO category (name, parent_id) VALUES  
('미스트/픽서', 17),
('페이스오일', 17);

-- 스킨케어세트 하위 카테고리 (parent_id는 미스트/오일의 ID를 참조)
INSERT INTO category (name, parent_id) VALUES
('스킨케어세트', 18);

-- 스킨케어 디바이스 하위 카테고리 (parent_id는 미스트/오일의 ID를 참조)
INSERT INTO category (name, parent_id) VALUES
('스킨케어 디바이스', 19);



-- 결과 확인 쿼리
SELECT 
    p.name AS parent_category,
    c.name AS child_category,
    c.id,
    c.parent_id
FROM category c
LEFT JOIN category p ON c.parent_id = p.id
ORDER BY c.id;