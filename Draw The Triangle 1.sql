-- P(R)은 Julia가 R 행에 그린 패턴을 나타냅니다. 다음 패턴은 P(5)를 나타냅니다.
-- * * * * *
-- * * * *
-- * * *
-- * *
-- * 
-- 패턴 P(20)을 인쇄하는 쿼리를 작성하세요.

WITH RECURSIVE CTE AS (
    SELECT 20 AS NUM  # 초기값 설정
    UNION ALL
    SELECT NUM - 1 FROM CTE
    WHERE NUM > 1) # 반복을 멈추는 조건
SELECT REPEAT('* ',NUM) # REPEAT함수 - 문자열을 특정 수 만큼 반복할 때 사용 
FROM CTE;
