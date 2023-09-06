# 문제 : CITY에 있는 모든 도시의 평균 인구를 쿼리하고 가장 가까운 정수로 내림합니다.
SELECT
    FLOOR(AVG(POPULATION))
FROM CITY;

# CEIL(숫자) : 올림
# FLOOR(숫자) : 버림
