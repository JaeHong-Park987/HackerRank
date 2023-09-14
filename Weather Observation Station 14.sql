# 문제 : STATION에서 137.2345보다 작은 북위도(LAT_N)의 가장 큰 값을 쿼리합니다. 답을 소수점 4자리까지 자릅니다.
SELECT
    TRUNCATE(MAX(LAT_N),4) # ROUND : 반올림, TRUNCATE : 버림
FROM STATION
WHERE LAT_N < 137.2345
