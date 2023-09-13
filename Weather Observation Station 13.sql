# 문제 : 38.7880보다 크고 137.2345보다 작은 값을 갖는 STATION에서 북위도(LAT_N)의 합을 쿼리합니다. 답을 소수점 4자리까지 자릅니다.
SELECT
    ROUND(SUM(LAT_N),4)
FROM STATION
WHERE LAT_N BETWEEN 38.7880 AND 137.2345;
