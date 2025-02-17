DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS titles;

CREATE TABLE departments (
	id SERIAL,
	dept_no VARCHAR NOT null PRIMARY KEY,
	dept_name VARCHAR
);

CREATE TABLE titles (
	id SERIAL,	
	title_id VARCHAR NOT NULL PRIMARY KEY,
	title VARCHAR
);

CREATE TABLE employees (
	id SERIAL,
	emp_no VARCHAR NOT NULL,
	emp_title_id VARCHAR REFERENCES titles(title_id),
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex TEXT,
	hire_date DATE,
	PRIMARY KEY (emp_no)
);


CREATE TABLE dept_emp (
	id SERIAL PRIMARY KEY,
	emp_no VARCHAR NOT NULL,
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_manager (
	id SERIAL PRIMARY KEY,
	dept_no VARCHAR NOT NULL,
	emp_no VARCHAR NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries (
	id SERIAL PRIMARY KEY,
	emp_no VARCHAR NOT NULL,
	salary INTEGER,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

