--  List the following details of each employee:
--  employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM employees AS e
INNER JOIN salaries AS s ON
e.emp_no=s.emp_no;

-- List first name, last name, and hire date for 
--employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

select *
from dept_manager

select *
from departments

--List the manager of each department with the following information:
--department number, department name, the manager's employee number, 
--last name, first name.

SELECT dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees as e
RIGHT JOIN dept_manager as dm
ON dm.emp_no = e.emp_no
RIGHT JOIN departments as d
ON d.dept_no = dm.dept_no;

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
FULL JOIN dept_emp AS de ON
de.emp_no=e.emp_no
FULL JOIN departments AS d ON
de.dept_no=d.dept_no;


--List first name, last name, and sex for employees whose
--first name is "Hercules" and last names begin with "B."

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name like 'B%'

--List all employees in the Sales department, 
--including their employee number, last name, first name, and department name

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
FULL JOIN dept_emp AS de ON
de.emp_no=e.emp_no
FULL JOIN departments AS d ON
de.dept_no=d.dept_no
WHERE dept_name = 'Sales';


--List all employees in the Sales and Development departments
--including their employee number, last name, first name, and department name

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
FULL JOIN dept_emp AS de ON
de.emp_no=e.emp_no
FULL JOIN departments AS d ON
de.dept_no=d.dept_no
WHERE dept_name IN ('Sales', 'Development');


--In descending order, list the frequency count of employee last names
--, i.e., how many employees share each last name.

SELECT last_name, COUNT(last_name) AS "employee count"
FROM employees
GROUP BY last_name
ORDER BY "employee count" DESC;

