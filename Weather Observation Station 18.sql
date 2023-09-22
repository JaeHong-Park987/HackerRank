-- 문제 : P1(a,b)와 P2(c,d)를 2D 평면의 두 점으로 간주합니다.

-- a는 북위도(STATION의 LAT_N)의 최소값과 같습니다.
-- b는 서경의 최소값(STATION의 LONG_W)과 같습니다.
-- c는 북위도(STATION의 LAT_N)의 최대값과 같습니다.
-- d는 서경의 최대값(STATION의 LONG_W)과 같습니다.
-- 점 P1과 P2 사이의 맨해튼 거리를 쿼리하고 소수점 이하 4자리로 반올림합니다.

SELECT
    ROUND(ABS(MIN(LAT_N) - MAX(LAT_N)) + ABS(MIN(LONG_W) - MAX(LONG_W)),4)
FROM STATION;
