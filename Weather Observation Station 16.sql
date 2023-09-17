# 문제 : STATION에서 38.7780보다 큰 가장 작은 북위도(LAT_N)를 쿼리합니다. 답을 소수점 이하 4자리로 반올림하세요.
SELECT
    ROUND(MIN(LAT_N),4)
FROM STATION
WHERE LAT_N > 38.7780;
