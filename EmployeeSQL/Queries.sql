--#1
select e.emp_no, e.last_name, e.first_name, e.gender, s.salary
from employees e JOIN salaries s
ON e.emp_no = s.emp_no


--#2
select emp_no, last_name, first_name
from employees
where hire_date LIKE '1986%'


--#3
select 	d.dept_no AS "Dept. Number", 
		d.dept_name AS "Dept. Name",
		dm.emp_no AS "Employee Number", 
		e.last_name AS "Last Name", 
		e.first_name AS "First Name", 
		dm.from_date AS "Start Date", 
		dm.to_date AS "End Date"
from departments d 
	JOIN dept_manager dm ON dm.dept_no = d.dept_no
	JOIN employees e ON dm.emp_no = e.emp_no
	JOIN titles t ON t.emp_no = e.emp_no
where t.title LIKE 'Manager'


--#4
select 	d.dept_no AS "Dept Number",
		e.last_name AS "Last Name",
		e.first_name AS "First Name",
		d.dept_name AS "Dept Name"
from employees e 
	JOIN dept_emp de ON e.emp_no = de.emp_no
	JOIN departments d ON d.dept_no = de.dept_no


--#5
select *
from employees
where first_name = 'Hercules'
AND last_name LIKE 'B%'


--#6
select 	e.emp_no AS "Employee Number",
		e.first_name AS "First Name",
		e.last_name AS "Last Name",
		d.dept_name AS "Dept Name"
from employees e 
	JOIN dept_emp de ON e.emp_no = de.emp_no
	JOIN departments d ON d.dept_no = de.dept_no
where dept_name IN
	(
	select dept_name
	from departments
	where dept_name = 'Sales'
	)
;


--#7
select 	e.emp_no AS "Employee Number",
		e.first_name AS "First Name",
		e.last_name AS "Last Name",
		d.dept_name AS "Dept Name"
from employees e 
	JOIN dept_emp de ON e.emp_no = de.emp_no
	JOIN departments d ON d.dept_no = de.dept_no
where dept_name IN
	(
	select dept_name
	from departments
	where dept_name = 'Sales'
		OR dept_name = 'Development'
	)
;


--#8
select COUNT(last_name),  last_name
from employees
group by last_name
order by count(last_name) DESC
