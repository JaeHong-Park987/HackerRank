# 문제 : 모음으로 시작하지 않고 모음으로 끝나지 않는 STATION의 CITY 이름 목록을 쿼리합니다. 결과에는 중복된 내용이 포함될 수 없습니다.
SELECT
    DISTINCT(CITY)
FROM STATION
WHERE LEFT(CITY,1) NOT IN ("A","E","I","O","U")
AND RIGHT(CITY,1) NOT IN ("A","E","I","O","U")
