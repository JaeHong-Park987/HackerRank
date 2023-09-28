-- Julia는 방금 코딩 콘테스트를 마쳤습니다. 순위표를 구성하는 데 여러분의 도움이 필요합니다! 두 개 이상의 챌린지에서 만점을 달성한 해커의 이름과 hacker_id를 인쇄하는 쿼리를 작성하세요. 
-- 해커가 만점을 획득한 총 챌린지 수를 기준으로 내림차순으로 출력을 정렬하세요. 두 명 이상의 해커가 동일한 수의 챌린지에서 만점을 받은 경우 hacker_id를 오름차순으로 정렬합니다.
SELECT
    S.HACKER_ID,
    H.NAME
FROM CHALLENGES AS C
JOIN DIFFICULTY AS D
ON C.DIFFICULTY_LEVEL = D.DIFFICULTY_LEVEL
JOIN SUBMISSIONS AS S
ON C.CHALLENGE_ID = S.CHALLENGE_ID
JOIN HACKERS AS H
ON S.HACKER_ID = H.HACKER_ID
WHERE S.SCORE = D.SCORE
GROUP BY S.HACKER_ID, H.NAME
HAVING COUNT(*) >= 2
ORDER BY COUNT(*) DESC, S.HACKER_ID;
