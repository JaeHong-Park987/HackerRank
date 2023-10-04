-- Julia는 학생들에게 몇 가지 코딩 과제를 만들도록 요청했습니다. 각 학생이 생성한 hacker_id, 이름 및 총 챌린지 수를 인쇄하는 쿼리를 작성하세요. 
-- 총 챌린지 수를 기준으로 결과를 내림차순으로 정렬합니다. 두 명 이상의 학생이 동일한 수의 챌린지를 생성한 경우 결과를 hacker_id를 기준으로 정렬합니다. 
-- 두 명 이상의 학생이 동일한 수의 챌린지를 생성했고 최대 챌린지 수보다 적은 경우 결과에서 해당 학생을 제외합니다.
SELECT
    H.HACKER_ID,
    H.NAME,
    COUNT(C.CHALLENGE_ID) AS COUNT_C
FROM HACKERS AS H
JOIN CHALLENGES AS C
ON H.HACKER_ID = C.HACKER_ID
GROUP BY H.HACKER_ID, H.NAME
HAVING COUNT_C = (SELECT MAX(COUNT_C)
                  FROM (SELECT COUNT(CHALLENGE_ID) AS COUNT_C
                        FROM CHALLENGES
                        GROUP BY HACKER_ID) AS A)
OR COUNT_C IN (SELECT COUNT_C
               FROM (SELECT COUNT(CHALLENGE_ID) AS COUNT_C
                     FROM CHALLENGES
                     GROUP BY HACKER_ID) AS A2
               GROUP BY COUNT_C
               HAVING COUNT(COUNT_C) = 1)
ORDER BY COUNT_C DESC, H.HACKER_ID;
