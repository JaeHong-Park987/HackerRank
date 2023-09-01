# 문제 : Employee에서 월 급여가 2000 달러보다 많고 직원으로 근무한 지 10개월 미만인 직원에 대한 직원 이름 목록(예: name 속성)을 인쇄하는 쿼리를 작성하세요. Employee_id를 오름차순으로 결과를 정렬합니다.
SELECT
    NAME
FROM Employee
WHERE salary > 2000 
AND months < 10
ORDER BY EMPLOYEE_ID
