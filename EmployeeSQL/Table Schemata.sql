CREATE TABLE departments(
	dept_no varchar(255) primary key,
	dept_name varchar(255)
);
CREATE TABLE dept_emp(
	emp_no int,
	dept_no varchar(255),
	from_date varchar(255),
	to_date varchar(255),
	PRIMARY KEY (emp_no, dept_no)
);
CREATE TABLE dept_manager(
	dept_no varchar(255),
	emp_no int,
	from_date varchar(255),
	to_date varchar(255),
	PRIMARY KEY (emp_no, dept_no)
);
CREATE TABLE employees(
	emp_no int primary key,
	birth_date varchar(255),
	first_name varchar(255),
	last_name varchar(255),
	gender varchar(255),
	hire_date varchar(255)
);

CREATE TABLE salaries(
	emp_no int,
	salary int,
	from_date varchar(255),
	to_date varchar(255),
	PRIMARY KEY (emp_no, salary)
);

CREATE TABLE titles(
	emp_no int,
	title varchar(255),
	from_date varchar(255),
	to_date varchar(255),
	PRIMARY KEY (emp_no, from_date)
);
