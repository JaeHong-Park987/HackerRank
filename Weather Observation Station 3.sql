# 문제 : ID 번호가 짝수인 도시에 대해 STATION에서 CITY 이름 목록을 쿼리합니다. 결과를 순서에 관계없이 인쇄하되 답에서 중복 항목을 제외합니다.
SELECT
    DISTINCT(CITY)
FROM STATION
WHERE ID % 2 = 0
