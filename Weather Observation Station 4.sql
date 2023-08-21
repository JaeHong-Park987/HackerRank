# 문제 : 테이블의 총 CITY 항목 수와 테이블의 개별 CITY 항목 수 간의 차이를 찾으십시오.
SELECT
  COUNT(CITY) - COUNT(DISTINCT(CITY))
FROM STATION
