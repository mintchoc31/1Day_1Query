-- 10년 이상 근무한 매니저 직급 직원들의 수를 구하라.

select count(*) from dept_manager where timestampdiff(year, from_date, to_date) >= 10;
