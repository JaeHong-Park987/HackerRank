# 문제 : CITY 테이블에 있는 모든 일본 도시의 이름을 쿼리합니다. 일본의 국가 코드는 JPN입니다.
SELECT
    NAME
FROM CITY
WHERE COUNTRYCODE = 'JPN'
