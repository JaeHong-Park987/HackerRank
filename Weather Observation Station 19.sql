-- 문제 : P1(a,b)와 P2(c,d)를 2D 평면의 두 점으로 간주합니다. 여기서 (a,b)는 각각 북위도(LAT_N)의 최소값과 최대값이고 (c,d)는 각각 STATION에 있는 서부 경도(LONG_W)의 최소값과 최대값입니다.

-- 점 P1과 P2 사이의 유클리드 거리를 쿼리하고 십진수 4자리를 표시하도록 답의 형식을 지정하세요.

SELECT
    ROUND(SQRT(POW(MAX(LAT_N) - MIN(LAT_N),2) + POW(MAX(LONG_W) - MIN(LONG_W),2)),4)
FROM STATION;

# SQRT() : 루트
# POW() : 제곱
