# 문제 : 첫 번째 문자와 마지막 문자가 모두 모음(예: a, e, i, o 및 u)인 STATION의 CITY 이름 목록을 쿼리합니다. 결과에는 중복된 내용이 포함될 수 없습니다.
SELECT
    DISTINCT(CITY)
FROM STATION
WHERE LEFT(CITY,1) IN ("A","E","I","O","U")
AND RIGHT(CITY,1) IN ("A","E","I","O","U")
