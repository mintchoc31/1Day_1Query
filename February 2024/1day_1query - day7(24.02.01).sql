-- 사원번호 13000의 부서명과 근무 기간을 구하여라. 
select e.emp_no, e.dept_no, d.dept_name, e.from_date, e.to_date
from departments as d
inner join dept_emp as e
on d.dept_no = e.dept_no
where emp_no = 13000;


-- join 연습
/*
select e.emp_no, e.dept_no, d.dept_name, e.from_date, e.to_date
from departments as d
inner join dept_emp as e
on d.dept_no = e.dept_no;
*/

