-- 현재 재직 중인 직원들 중에 가장 나이가 어린 직원의 이름을 구하시오.
select e.first_name,
 	   e.last_name,
       e.birth_date,
       d.to_date
from employees e, dept_emp d
where e.birth_date = ( 
	select MAX(birth_date)
    from employees
);
