SELECT *
FROM employees

SELECT * 
FROM salaries


SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM employees AS e
INNER JOIN salaries AS s ON
e.emp_no=s.emp_no;


SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

select *
from dept_emp

select *
from departments

SELECT dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees as e
RIGHT JOIN dept_manager as dm
ON dm.emp_no = e.emp_no
RIGHT JOIN departments as d
ON d.dept_no = dm.dept_no;

