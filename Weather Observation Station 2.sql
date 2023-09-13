# 문제 : STATION 테이블에서 다음 두 값을 쿼리합니다.
# 1. LAT_N의 모든 값의 합은 소수점 이하 2자리로 반올림됩니다.
# 2. LONG_W의 모든 값의 합계는 소수점 이하 2자리로 반올림됩니다.
SELECT
    ROUND(SUM(LAT_N),2),
    ROUND(SUM(LONG_W),2)
FROM STATION;
