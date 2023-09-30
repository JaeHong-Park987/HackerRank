-- Harry Potter와 그의 친구들은 Ron과 함께 Ollivander 's에 있으며 마침내 Charlie의 오래된 부러진 지팡이를 교체했습니다.
-- 헤르미온느는 가장 강력하고 나이가 많은 비사악한 지팡이를 구입하는 데 필요한 최소 금 갈레온 수를 추천합니다.
-- 론이 관심 있는 지팡이의 id, age, coin_needed, power를 출력하는 쿼리를 작성하세요. 힘을 내림차순으로 정렬하고, 둘 이상의 지팡이가 동일한 힘을 가지고 있는 경우, age를 내림차순으로 정렬합니다.

SELECT
    A.ID,
    B.AGE,
    A.COINS_NEEDED,
    A.POWER
FROM WANDS AS A
JOIN WANDS_PROPERTY AS B
ON A.CODE = B.CODE
WHERE (B.AGE, A.COINS_NEEDED, A.POWER) 
IN (SELECT
        WP.AGE,
        MIN(W.COINS_NEEDED),
        W.POWER
    FROM WANDS AS W
    JOIN WANDS_PROPERTY AS WP
    ON W.CODE = WP.CODE
    WHERE WP.IS_EVIL != 1
    GROUP BY WP.AGE, W.POWER)
ORDER BY A.POWER DESC, B.AGE DESC
