# 문제 : 가장 짧고 긴 CITY 이름과 각각의 길이(예: 이름의 문자 수)를 사용하여 STATION에서 두 도시를 쿼리합니다. 
#       가장 작은 도시나 가장 큰 도시가 두 개 이상인 경우 알파벳 순서로 가장 먼저 나오는 도시를 선택하세요.
SELECT
  CITY,
  L
FROM (SELECT
        CITY,
        LENGTH(CITY) AS L
      FROM STATION
      ORDER BY L, CITY
      LIMIT 1) AS C1

UNION

SELECT
  CITY,
  L
FROM (SELECT
        CITY,
        LENGTH(CITY) AS L
      FROM STATION
      ORDER BY L DESC, CITY
      LIMIT 1) AS C2
