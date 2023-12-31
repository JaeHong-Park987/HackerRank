-- 중앙값은 데이터 세트의 상위 절반과 하위 절반을 구분하는 숫자로 정의됩니다. STATION에서 북위도 중앙값(LAT_N)을 쿼리하고 답을 소수점 이하 4자리로 반올림하세요.
SELECT
    ROUND(LAT_N,4)
FROM(
SELECT
    ROW_NUMBER() OVER(ORDER BY LAT_N) AS N,
    LAT_N
FROM STATION) AS A
WHERE N = ((SELECT COUNT(*) FROM STATION) / 2); 
-- 위 풀이는 짝수인 경우에는 답이 아니다.
-------------------------------------------------------------

set @idx = -1;

SELECT
    ROUND(AVG(LAT_N), 4)
FROM (SELECT
        @idx := @idx + 1 AS ROW_NUM,
        LAT_N
      FROM STATION
      ORDER BY LAT_N) AS A
WHERE ROW_NUM IN (CEIL(@idx / 2), FLOOR(@idx / 2))
