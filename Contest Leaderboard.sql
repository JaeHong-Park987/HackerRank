-- 당신은 Julia의 마지막 코딩 콘테스트 도전을 훌륭하게 도와주었고 그녀는 당신도 이번 도전에 참여하길 원했습니다!
-- 해커의 총점은 모든 챌린지의 최대 점수를 합한 것입니다. 점수가 내림차순으로 정렬된 해커의 hacker_id, 이름, 총점을 출력하는 쿼리를 작성하세요. 
-- 두 명 이상의 해커가 동일한 총점을 달성한 경우 hacker_id를 오름차순으로 결과를 정렬합니다. 결과에서 총 점수가 0인 모든 해커를 제외합니다.

SELECT
    H.HACKER_ID,
    H.NAME,
    SUM(S.BEST_SCORE) AS TOTAL_SCORE
FROM HACKERS AS H
JOIN (SELECT
        HACKER_ID,
        CHALLENGE_ID,
        MAX(SCORE) AS BEST_SCORE
      FROM SUBMISSIONS
      GROUP BY HACKER_ID, CHALLENGE_ID
      HAVING BEST_SCORE != 0) AS S
ON H.HACKER_ID = S.HACKER_ID
GROUP BY H.HACKER_ID, H.NAME
ORDER BY TOTAL_SCORE DESC, H.HACKER_ID;
