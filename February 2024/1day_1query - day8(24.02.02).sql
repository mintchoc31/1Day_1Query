-- 24.01.26 -> 24.02.02 완성
-- 퇴사한 사원들 중 5년 이상 근무했던 사원들의 수를 구하여라
select count(*) from dept_emp where to_date != "9999-01-01"
and timestampdiff(year, from_date, to_date) >= 5;

-- timestampdiff(year, from_date, to_date)를
-- timestampdiff(year, to_date, from_date)로 바꾸면 값이 나오지 않음. 
-- : timestampdiff(단위, 날짜1, 날짜2)일 때 날짜1-날짜2로 진행됨. 순서에 유의.

-- 쿼리 연습 (조건 설정)
-- 사원 중에 퇴사한 사원
-- where to_date != '9999-01-01'

-- 입사일~퇴사일 >= 5년  // 입사일+5년한 날짜 < 퇴사일 // DATEDIFF
-- from_date + 5
-- DATE_ADD()
-- timestampdiff(year, ?, ?)
-- ex) select timestampdiff(year, '1986-06-26', '9999-01-01'); = 8012

-- -- 의 수(count)
-- select count(*)

