SELECT * FROM employees.employees;


-- 1990년 이전에 입사한 직원의 수를 구하시오.
select * from employees where hire_date = '1986-06-26'; -- 특정 날짜에 입사한 사람에 대한 데이터값
select * from employees where hire_date < '1986-06-26'; -- 특정 날짜 이전에 입사한 사람에 대한 데이터값
select * from employees where hire_date < '1990-01-01'; -- 1990년 1월 1일 이전에 입사한 사람에 대한 데이터값
select count(*) from employees where hire_date < '1990-01-01';
select count(*) from employees;