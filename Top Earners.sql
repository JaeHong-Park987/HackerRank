# 문제 : 직원의 총 수입은 월급 * 근무 개월 수로 정의하고, 최대 총 수입은 Employee 테이블에 있는 모든 직원의 최대 총 수입으로 정의합니다. 
#      전체 직원의 최대 총 소득과 최대 총 소득을 얻은 직원의 총 수를 구하는 쿼리를 작성하세요. 
#      그런 다음 이 값을 공백으로 구분된 2개의 정수로 인쇄합니다.
SELECT
    MONTHS * SALARY AS EARNINGS,
    COUNT(*)
FROM EMPLOYEE
WHERE MONTHS * SALARY = (SELECT
                            MAX(MONTHS * SALARY) AS EARNINGS
                         FROM EMPLOYEE)
GROUP BY EARNINGS
