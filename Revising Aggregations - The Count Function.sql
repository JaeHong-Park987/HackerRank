# 문제 : 인구가 100000보다 큰 CITY의 도시 수를 쿼리합니다.
SELECT
    COUNT(NAME)
FROM CITY
WHERE POPULATION > 100000