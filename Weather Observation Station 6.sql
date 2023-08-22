# 문제 : STATION에서 모음(예: a, e, i, o 또는 u)으로 시작하는 CITY 이름 목록을 쿼리합니다. 결과는 중복을 포함할 수 없습니다.
SELECT
    CITY
FROM STATION
WHERE LEFT(CITY,1) IN ('A','E','I','O','U')
