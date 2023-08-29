# 문제 : STUDENTS에서 75점보다 높은 점수를 받은 학생의 이름을 쿼리합니다. 각 이름의 마지막 세 문자를 기준으로 출력을 정렬하세요. 두 명 이상의 학생 모두 마지막 세 문자로 끝나는 이름이 있는 경우(예: Bobby, Robby 등), 보조적으로 ID를 오름차순으로 정렬합니다.
SELECT
    NAME
FROM STUDENTS
WHERE MARKS > 75
ORDER BY RIGHT(NAME,3), ID
