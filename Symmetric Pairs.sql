-- X와 Y라는 두 개의 열을 포함하는 Functions 테이블이 제공됩니다.
-- X1 = Y2 및 X2 = Y1인 경우 두 쌍 (X1, Y1) 및 (X2, Y2)는 대칭 쌍이라고 합니다.
-- 모든 대칭 쌍을 X 값만큼 오름차순으로 출력하는 쿼리를 작성하세요. X1 ≤ Y1이 되는 행을 나열하세요.
SELECT
    F1.X,
    F1.Y
FROM FUNCTIONS AS F1
JOIN FUNCTIONS AS F2
ON F1.X = F2.Y AND F2.X = F1.Y
WHERE F1.X <= F1.Y
GROUP BY F1.X, F1.Y
HAVING F1.X = F1.Y AND COUNT(*) > 2
OR F1.X != F1.Y
ORDER BY F1.X;
