-- 최연소 매니저의 이름을 구하라
select d.emp_no, e.birth_date,  e.first_name, e.last_name
from dept_manager as d
inner join employees as e
on d.emp_no = e.emp_no
order by e.birth_date desc
limit 1;
