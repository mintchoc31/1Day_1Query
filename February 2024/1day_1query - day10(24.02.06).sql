-- Development(d005) 부서에서 가장 오래 일한 직원의 사원번호를 구하시오.
select e.emp_no, e.dept_no, d.dept_name, e.from_date, e.to_date
from departments as d
inner join dept_emp as e
on d.dept_no = e.dept_no
where e.dept_no = 'd005'
order by datediff(e.to_date, e.from_date) desc
limit 1;

-- ORDER BY DATEDIFF(e.to_date, e.from_date) DESC: 근무 기간을 계산해서 내림차순으로 정렬
-- LIMIT 1: 리스트 중 첫번째 결과만 선택함.