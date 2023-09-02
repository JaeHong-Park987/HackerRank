# 문제 : 세 변의 길이를 사용하여 TRIANGLES 테이블의 각 레코드 유형을 식별하는 쿼리를 작성하세요. 테이블의 각 레코드에 대해 다음 명령문 중 하나를 출력합니다.
# Equilateral : 3변의 길이가 같은 삼각형입니다.
# Isosceles: 2변의 길이가 같은 삼각형입니다.
# Scalene: 3변의 길이가 다른 삼각형입니다.
# Not A Triangle: 주어진 A, B, C 값은 삼각형을 형성하지 않습니다.

SELECT
    CASE
        WHEN A + B <= C OR A + C <= B OR B + C <= A THEN "Not A Triangle"
        WHEN A = B AND B = C AND A = C THEN "Equilateral" # A = B = C로 하게 되면 안된다.
        WHEN A != B AND B != C AND A != C THEN "Scalene"  # A != B != C로 하게 되면 안된다.
        ELSE "Isosceles"
    END AS Type_triangle
FROM TRIANGLES
