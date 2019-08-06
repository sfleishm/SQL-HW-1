SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;
--------------------------------------------------------------------------------------------
-- PART 1 
SELECT e.emp_no, e.first_name, e.last_name, e.gender, s.salary
FROM salaries AS s
INNER JOIN employees AS e ON 
e.emp_no = s.emp_no;

--SELECT first_name
--FROM employees
--WHERE first_name = 'Parto' AND last_name = 'Bamford';
--------------------------------------------------------------------------------------------
-- PART 2 
SELECT first_name, last_name
FROM employees
WHERE hire_date >= '1986-01-01 00:00:00' AND hire_date <'1987-01-01 00:00:00'
;
--https://stackoverflow.com/questions/9891025/sql-select-from-column-where-year-2010
--------------------------------------------------------------------------------------------
-- PART 3 
SELECT * 
FROM dept_manager;

SELECT dm.dept_no, d.dept_name, dm.emp_no, dm.from_date, dm.to_date, e.first_name, e.last_name 
FROM dept_manager AS dm
LEFT JOIN departments AS d ON 
dm.dept_no = d.dept_no
LEFT JOIN employees AS e ON 
dm.emp_no = e.emp_no
ORDER BY dm.dept_no ASC;
--------------------------------------------------------------------------------------------
-- PART 4
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM employees AS e 
LEFT JOIN dept_emp AS de ON 
e.emp_no = de.emp_no
LEFT JOIN departments AS d ON
d.dept_no = de.dept_no
ORDER BY e.emp_no ASC;
--------------------------------------------------------------------------------------------
-- PART 5 
SELECT * FROM employees;

SELECT first_name, last_name
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- Testing to see people with hercules
--SELECT first_name, last_name
--FROM employees
--WHERE first_name = 'Hercules';
--------------------------------------------------------------------------------------------
-- PART 6
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM employees AS e 
LEFT JOIN dept_emp AS de ON 
e.emp_no = de.emp_no
LEFT JOIN departments AS d ON
d.dept_no = de.dept_no
WHERE dept_name = 'Sales'
ORDER BY e.emp_no ASC;
--------------------------------------------------------------------------------------------
-- PART 7
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM employees AS e 
LEFT JOIN dept_emp AS de ON 
e.emp_no = de.emp_no
LEFT JOIN departments AS d ON
d.dept_no = de.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development'
ORDER BY e.emp_no ASC;
--------------------------------------------------------------------------------------------
-- PART 8
SELECT COUNT(last_name), last_name 
FROM employees
GROUP BY last_name
ORDER BY count(last_name) DESC;
--------------------------------------------------------------------------------------------
--     EPILOGUE 	 --				
SELECT first_name, last_name		
FROM employees						
WHERE emp_no = '499942';			
-- TOO SPOOKY FOR ME -- 			
