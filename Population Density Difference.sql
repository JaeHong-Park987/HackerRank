# 문제 : CITY의 최대 인구와 최소 인구의 차이를 쿼리합니다.
SELECT
    MAX(POPULATION) - MIN(POPULATION)
FROM CITY
