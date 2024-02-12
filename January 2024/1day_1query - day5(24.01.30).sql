-- 퇴사한 직원들의 평균 근속연수를 구하라. (직원들의 근무 기간 중 휴가 등으로 인한 공백은 없는 것을 전제로 한다.)

-- 쿼리 조건
-- 재직자가 아니어야 함 : to_date != '9999-01-01' 
-- 근무 기간 구하기: SELECT TIMESTAMPDIFF(YEAR, '2021-02-01', '2022-03-01'); // year(to_date) - year(from_date)
/* 평균 구하기
	SELECT AVG(column_name)
	FROM table_name
	WHERE condition;
*/

select AVG(year(to_date) - year(from_date)) from dept_emp
	where to_date != '9999-01-01';

-- 그 외의 쿼리 모음
-- 전체 직원 수(331603): select count(*) from dept_emp; 
-- 퇴사자 수(91479): select count(*) from dept_emp where to_date != '9999-01-01';
-- 재직자 수 구하기(240124): select count(*) from dept_emp where to_date = '9999-01-01'; 
-- 직원들의 근무연수 평균(퇴직+재직): select AVG(year(to_date) - year(from_date)) from dept_emp; 
-- 직원 번호와 그 직원의 근속연수를 리스트로 보여줌: select emp_no, year(to_date) - year(from_date) from dept_emp; 