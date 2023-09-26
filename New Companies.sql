-- Amber의 대기업은 최근 몇몇 새로운 회사를 인수했습니다. 각 회사는 다음 계층 구조를 따릅니다.
-- Founder -> Lead Manager -> Senior Manager -> Mananger -> Employee
-- 아래 테이블 스키마가 주어지면 회사_코드, 설립자 이름, 총 리드 관리자 수, 총 고위 관리자 수, 총 관리자 수 및 총 직원 수를 인쇄하는 쿼리를 작성하세요. company_code를 오름차순으로 출력을 정렬하십시오.
-- 테이블에 중복된 레코드가 포함될 수 있습니다.
-- company_code는 문자열이므로 숫자로 정렬하면 안 됩니다. 예를 들어 company_code가 C_1, C_2, C_10인 경우 오름차순 company_code는 C_1, C_10, C_2가 됩니다.

SELECT
    C.COMPANY_CODE,
    FOUNDER,
    COUNT_LM,
    COUNT_SM,
    COUNT_M,
    COUNT_E
FROM COMPANY AS C
JOIN (SELECT
        COMPANY_CODE,
        COUNT(DISTINCT(LEAD_MANAGER_CODE)) AS COUNT_LM
      FROM LEAD_MANAGER
      GROUP BY COMPANY_CODE) AS L
ON C.COMPANY_CODE = L.COMPANY_CODE
JOIN (SELECT
        COMPANY_CODE,
        COUNT(DISTINCT(SENIOR_MANAGER_CODE)) AS COUNT_SM
      FROM SENIOR_MANAGER
      GROUP BY COMPANY_CODE) AS S
ON C.COMPANY_CODE = S.COMPANY_CODE
JOIN (SELECT
        COMPANY_CODE,
        COUNT(DISTINCT(MANAGER_CODE)) AS COUNT_M
      FROM MANAGER
      GROUP BY COMPANY_CODE) AS M
ON C.COMPANY_CODE = M.COMPANY_CODE
JOIN (SELECT
        COMPANY_CODE,
        COUNT(DISTINCT(EMPLOYEE_CODE)) AS COUNT_E
      FROM EMPLOYEE
      GROUP BY COMPANY_CODE) AS E
ON C.COMPANY_CODE = E.COMPANY_CODE
ORDER BY C.COMPANY_CODE;
