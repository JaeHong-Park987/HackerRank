-- Ketty는 Eve에게 이름, 등급, 마크라는 세 개의 열이 포함된 보고서를 생성하는 작업을 제공합니다. 
-- Ketty는 8점 미만의 등급을 받은 학생의 이름을 원하지 않습니다. 보고서는 등급별로 내림차순이어야 합니다. 
-- 즉, 높은 등급이 먼저 입력됩니다. 동일한 등급(8-10)을 가진 학생이 두 명 이상인 경우 해당 학생의 이름을 알파벳순으로 정렬합니다. 
-- 마지막으로 성적이 8점 이하인 경우에는 "NULL"을 이름으로 사용하고 등급순으로 내림차순으로 나열한다. 동일한 등급(1-7)을 배정받은 학생이 두 명 이상인 경우 해당 학생의 성적을 기준으로 오름차순으로 정렬합니다.
-- Eve를 돕기 위한 쿼리를 작성하세요.

SELECT
    CASE
        WHEN G.GRADE >= 8 THEN S.NAME
        ELSE NULL
    END AS NAME,
    G.GRADE,
    S.MARKS
FROM STUDENTS AS S
JOIN GRADES AS G
ON S.MARKS BETWEEN G.MIN_MARK AND G.MAX_MARK
ORDER BY G.GRADE DESC, NAME, S.MARKS;

