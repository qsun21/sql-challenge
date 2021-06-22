-- DROP IF EXISTS titles;

CREATE TABLE titles (
	title_id VARCHAR(30) PRIMARY KEY,
	title VARCHAR(30)
);

CREATE TABLE employees (
	emp_no VARCHAR(30) PRIMARY KEY,
	emp_title_id VARCHAR(30),
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex CHAR(1),
	hire_date DATE,
	CONSTRAINT fk_emp_titled_id
		FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE salaries (
	emp_no VARCHAR(30),
	salary BIGINT,
	CONSTRAINT fk_emp_no
		FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE departments (
	dept_no VARCHAR(30) PRIMARY KEY,
	dept_name VARCHAR(100)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(30),
	emp_no VARCHAR(30),
	CONSTRAINT fk_dept_no
		FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	CONSTRAINT fk_emp_no
		FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp (
	emp_no VARCHAR(30),
	dept_no VARCHAR(30),
	CONSTRAINT fk_dept_no
		FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	CONSTRAINT fk_emp_no
		FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);