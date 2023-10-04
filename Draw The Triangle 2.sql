-- P(R)은 Julia가 R 행에 그린 패턴을 나타냅니다. 다음 패턴은 P(5)를 나타냅니다.
-- * 
-- * * 
-- * * * 
-- * * * * 
-- * * * * *
-- 패턴 P(20)을 인쇄하는 쿼리를 작성하세요.

WITH RECURSIVE PATTERN AS(
SELECT 1 AS NUM
UNION ALL
SELECT NUM + 1
FROM PATTERN
WHERE NUM < 20
)
SELECT REPEAT('* ', NUM)
FROM PATTERN;
