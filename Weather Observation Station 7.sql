# 문제 : STATION에서 모음(a, e, i, o, u)으로 끝나는 CITY 이름 목록을 쿼리합니다. 결과에는 중복된 내용이 포함될 수 없습니다.
SELECT
  DISTINCT(CITY)
FROM STATION
WHERE RIGHT(CITY,1) IN ("a","e","i","o","u")
