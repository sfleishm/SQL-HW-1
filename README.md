## Homework Assignment for my Data Analytics Bootcamp - SQL Related

* Builds a table schema.
```SQL
CREATE TABLE titles(
	emp_no integer NOT NULL,
	title VARCHAR(30),
	from_date DATE,
	to_date DATE
);
```
* 8 Different Queries related to the tables.
```SQL
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

-- PART 7
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM employees AS e 
LEFT JOIN dept_emp AS de ON 
e.emp_no = de.emp_no
LEFT JOIN departments AS d ON
d.dept_no = de.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development'
ORDER BY e.emp_no ASC;
```
* Extra Credit at the end, finding a specific employee number. 
```SQL
SELECT first_name, last_name		
FROM employees						
WHERE emp_no = '499942';
```
