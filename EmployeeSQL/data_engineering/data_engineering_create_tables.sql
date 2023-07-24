--Create departments table 
CREATE TABLE departments (
	dept_no VARCHAR(10) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(50) NOT NULL
	
);

--Create titles table
CREATE TABLE titles (
	title_id VARCHAR(10) PRIMARY KEY NOT NULL,
	title VARCHAR(20) NOT NULL
);

--Create employees table
CREATE TABLE employees (
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR(10) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(1),
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

--Create dept_emp table
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

--Create dept_manager table
CREATE TABLE dept_manager (
	dept_no VARCHAR(10) NOT NULL,
	emp_no INT NOT NULL, 
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--Create salaries table
CREATE TABLE salaries (
	emp_no INT PRIMARY KEY NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


--Review tables
select * from departments;
select * from dept_emp;
select * from dept_manager;
select * from employees;	
select * from salaries;	
select * from titles;