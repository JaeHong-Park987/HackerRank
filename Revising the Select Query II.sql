# 문제 : 인구가 120000명보다 많고 CITY 테이블의 모든 미국 도시에 대한 NAME 필드를 쿼리합니다. 
SELECT
    NAME
FROM CITY
WHERE POPULATION > 120000 AND COUNTRYCODE = 'USA'
