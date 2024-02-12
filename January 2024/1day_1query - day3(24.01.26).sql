SELECT * FROM employees.dept_emp;

-- 현재 근무 중인 사원의 수를 구하여라.
select count(*) from dept_emp where to_date != '9999-01-01';