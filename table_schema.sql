CREATE TABLE departments(
	dept_no integer NOT NULL,
	dept_name VARCHAR(30)
);

SELECT * FROM departments;

CREATE TABLE dept_emp(
	emp_no integer NOT NULL,
	dept_no integer NOT NULL,
	from_date DATE,
	to_date DATE 
);

CREATE TABLE dept_manager(
	dept_no integer NOT NULL,
	emp_no integer NOT NULL,
	from_date DATE,
	to_date DATE
);

CREATE TABLE employees(
	emp_no integer NOT NULL,
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	gender VARCHAR(30),
	hire_date DATE
);

CREATE TABLE salaries(
	emp_no integer NOT NULL,
	salary INT,
	from_date DATE,
	to_date DATE
);

CREATE TABLE titles(
	emp_no integer NOT NULL,
	title VARCHAR(30),
	from_date DATE,
	to_date DATE
);

SELECT * FROM titles;