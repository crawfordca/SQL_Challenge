DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;


CREATE TABLE departments (
	id serial PRIMARY KEY,
	dept_no VARCHAR not null,
	dept_name VARCHAR
);

CREATE TABLE dept_emp (
	id serial PRIMARY KEY,
	emp_no INTEGER,
	dept_no VARCHAR
);

CREATE TABLE dept_manager (
	id serial PRIMARY KEY
	dept_no VARCHAR,
	emp_no INTEGER
);

CREATE TABLE employees (
	id serial PRIMARY KEY,
	emp_no INTEGER,
	emp_title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex TEXT,
	hire_date DATE
);

CREATE TABLE salaries (
	id serial PRIMARY KEY,
	emp_no INTEGER,
	salary INTEGER
);

CREATE TABLE titles (
	id serial PRIMARY KEY,	
	title_id VARCHAR,
	title VARCHAR
);

