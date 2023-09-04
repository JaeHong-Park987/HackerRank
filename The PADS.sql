# 문제 : 다음 두 가지 결과 세트를 생성합니다.

# 1. OCCUPATIONS의 모든 이름을 알파벳순으로 정렬한 목록을 쿼리하고 바로 뒤에 각 직업의 첫 글자를 괄호로 묶습니다(예: 괄호로 묶음). 예: AnActorName(A), ADoctorName(D), AProfessorName(P) 및 ASingerName(S).
# 2. OCCUPATIONS에서 각 직업의 발생 횟수를 쿼리합니다. 발생 항목을 오름차순으로 정렬하고 다음 형식으로 출력합니다.

# There are a total of [occupation_count] [occupation]s.
# 여기서 [occupation_count]는 OCCUPATIONS에서 직업의 발생 횟수이고 [occupation]은 소문자 직업 이름입니다. 둘 이상의 직업에 동일한 [occupation_count]가 있는 경우 알파벳순으로 정렬해야 합니다.

# 참고: 표에는 각 직업 유형에 대해 최소한 두 개의 항목이 있습니다.

SELECT
    CONCAT(NAME,"(",LEFT(OCCUPATION,1),")")
FROM OCCUPATIONS
ORDER BY NAME;

SELECT
    CONCAT("There are a total of ", COUNT(OCCUPATION), " ", LOWER(OCCUPATION), "s.")
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY COUNT(OCCUPATION);
