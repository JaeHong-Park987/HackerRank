# 문제 : CITY에 있는 모든 일본 도시의 인구 합계를 쿼리합니다. 일본의 국가 코드는 JPN입니다.
SELECT
    SUM(POPULATION)
FROM CITY
WHERE COUNTRYCODE = 'JPN';
