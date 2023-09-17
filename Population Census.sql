# 문제 : CITY 및 COUNTRY 테이블이 주어지면 CONTINENT가 'Asia'인 모든 도시의 인구 합계를 쿼리합니다.
# 참고 : CITY.CountryCode 및 COUNTRY.Code는 일치하는 키 열입니다.
SELECT
    SUM(C1.POPULATION)
FROM CITY AS C1
JOIN COUNTRY AS C2
ON C1.COUNTRYCODE = C2.CODE
WHERE CONTINENT = 'Asia';
