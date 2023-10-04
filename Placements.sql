-- 학생, 친구, 패키지라는 세 개의 테이블이 제공됩니다. 
-- 학생에는 ID와 이름이라는 두 개의 열이 있습니다. 친구에는 ID와 Friend_ID(유일한 가장 친한 친구의 ID)라는 두 개의 열이 있습니다. 패키지에는 ID와 Salary(월 $1,000 단위로 제공되는 급여)라는 두 개의 열이 포함되어 있습니다.
-- 가장 친한 친구가 자신보다 더 높은 연봉을 제안받은 학생의 이름을 출력하는 쿼리를 작성하세요. 이름은 가장 친한 친구에게 제공되는 급여 금액에 따라 정렬되어야 합니다. 
-- 두 명의 학생이 동일한 급여를 받지 못한다는 것이 보장됩니다.

SELECT
    S.NAME
FROM STUDENTS AS S
JOIN FRIENDS AS F
ON S.ID = F.ID
JOIN PACKAGES AS P
ON S.ID = P.ID
JOIN PACKAGES AS P2
ON P2.ID = F.FRIEND_ID
WHERE P.SALARY < P2.SALARY
ORDER BY P2.SALARY;
