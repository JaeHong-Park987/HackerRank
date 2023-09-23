-- 문제 : 각 이름이 알파벳순으로 정렬되어 해당 직업 아래에 표시되도록 OCCUPATIONS의 직업 열을 회전합니다. 출력 열 헤더는 각각 Doctor, Professor, Singer 및 Actor여야 합니다.
-- 참고 : 직업에 해당하는 이름이 더 이상 없으면 NULL을 인쇄합니다.
SELECT
    MAX(CASE
            WHEN OCCUPATION = 'Doctor' THEN NAME
        END) AS 'Doctor',
    MAX(CASE
            WHEN OCCUPATION = 'Professor' THEN NAME
        END) AS 'Professor',
    MAX(CASE
            WHEN OCCUPATION = 'Singer' THEN NAME
        END) AS 'Singer',
    MAX(CASE
            WHEN OCCUPATION = 'Actor' THEN NAME
        END) AS 'Actor'
FROM(SELECT
        NAME,
        OCCUPATION,
        ROW_NUMBER() OVER(PARTITION BY OCCUPATION ORDER BY NAME) AS ID
     FROM OCCUPATIONS) AS A
GROUP BY ID;
