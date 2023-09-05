# 문제 : District가 California인 CITY에 있는 모든 도시의 총 인구를 쿼리합니다.
SELECT
    SUM(POPULATION)
FROM CITY
WHERE DISTRICT = 'California';
