-- 2000년도 입사자의 급여 평균을 구하라

-- 연습
-- select * from salaries
-- where DATE_FORMAT(from_date,'%Y') = '2000'
-- and select avg(salary) from salaries; 

-- 쿼리 1
select avg(salary) from salaries where DATE_FORMAT(from_date,'%Y') = '2000';

-- 쿼리 2
SELECT AVG(salary) FROM salaries WHERE YEAR(from_date) = 2000;

-- 쿼리1 = 쿼리2
