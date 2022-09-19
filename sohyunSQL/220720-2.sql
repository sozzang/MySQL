-- 세로로 결합해보기 
-- 중복되는 행은 사라짐 
-- union all : 중복 상관없이 붙여줌
SELECT 1, 2, 3 
UNION SELECT 4, 5, 6 
UNION SELECT 7, 8, 9 
UNION SELECT 1, 2, 3 
UNION ALL SELECT 1, 2, 3;
