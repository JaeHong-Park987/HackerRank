# 문제 : 137.2345보다 작은 STATION에서 가장 큰 북위도(LAT_N)에 대해 서부 경도(LONG_W)를 쿼리합니다. 소수점 4자리까지 답을 반올림합니다.
SELECT
    ROUND(LONG_W,4)
FROM STATION
WHERE LAT_N = (SELECT
                MAX(LAT_N)
               FROM STATION
               WHERE LAT_N < 137.2345);
