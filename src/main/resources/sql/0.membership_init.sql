INSERT INTO membership_level (id, name, min_amount, max_amount) VALUES
                                                                    (1, 'BABY', 0, 99999),          -- 10만 미만
                                                                    (2, 'PINK', 100000, 399999),    -- 10만 이상 ~ 40만 미만
                                                                    (3, 'GREEN', 400000, 699999),   -- 40만 이상 ~ 70만 미만
                                                                    (4, 'BLACK', 700000, 999999),   -- 70만 이상 ~ 100만 미만
                                                                    (5, 'GOLD', 1000000, NULL);     -- 100만 이상 (상한 없음)