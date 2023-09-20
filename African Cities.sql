# 문제 : CITY 및 COUNTRY 테이블이 주어지면 CONTINENT가 'Africa'인 모든 도시의 이름을 쿼리합니다.
# 참고 : CITY.CountryCode 및 COUNTRY.Code는 일치하는 키 열입니다.
SELECT
    C1.NAME
FROM CITY AS C1
JOIN COUNTRY AS C2
ON C1.COUNTRYCODE = C2.CODE
WHERE C2.CONTINENT = 'Africa';
