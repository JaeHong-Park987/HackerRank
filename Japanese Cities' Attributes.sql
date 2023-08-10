# 문제 : CITY 테이블에 있는 모든 일본 도시의 모든 속성을 쿼리합니다. 일본의 국가 코드는 JPN입니다.
SELECT
    ID,
    NAME,
    COUNTRYCODE,
    DISTRICT,
    POPULATION
FROM CITY
WHERE COUNTRYCODE = 'JPN'
