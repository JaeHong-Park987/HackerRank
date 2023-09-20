# 문제 : CITY 및 COUNTRY 테이블이 주어지면 모든 대륙의 이름(COUNTRY.Continent)과 각 대륙의 평균 도시 인구(CITY.Population)를 가장 가까운 정수로 내림하여 쿼리합니다.
# 참고 : CITY.CountryCode 및 COUNTRY.Code는 일치하는 키 열입니다.
SELECT
    C2.CONTINENT,
    TRUNCATE(AVG(C1.POPULATION),0) # FLOOR(AVG(C1.POPULATION))
FROM CITY AS C1
JOIN COUNTRY AS C2
ON C1.COUNTRYCODE = C2.CODE
GROUP BY C2.CONTINENT
