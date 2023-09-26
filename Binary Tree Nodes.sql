-- N과 P라는 두 개의 열을 포함하는 테이블 BST가 제공됩니다. 여기서 N은 이진 트리의 노드 값을 나타내고 P는 N의 부모입니다.
-- 노드 값에 따라 정렬된 이진 트리의 노드 유형을 찾는 쿼리를 작성하세요. 각 노드에 대해 다음 중 하나를 출력합니다.

-- 루트: 노드가 루트 노드인 경우.
-- 리프: 노드가 리프 노드인 경우.
-- 내부: 노드가 루트 노드도 리프 노드도 아닌 경우.

SELECT
    N,
    CASE
        WHEN P IS NULL THEN 'Root'
        WHEN N IN (SELECT P FROM BST) THEN 'Inner'
        ELSE 'Leaf'
    END AS TREE
FROM BST
ORDER BY N
