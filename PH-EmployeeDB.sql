-- Creating tables for PH-EmployeeDB
CREATE TABLE departments (
     dept_no VARCHAR(4) NOT NULL,
     dept_name VARCHAR(40) NOT NULL,
     PRIMARY KEY (dept_no),
     UNIQUE (dept_name)
);
CREATE TABLE employees (
	emp_no INT NOT NULL,
	birth_date Date NOT Null,
	first_name Varchar Not Null,
	last_name Varchar Not Null,
	Gender Varchar Not Null,
	hire_date Date Not Null,
	Primary Key (emp_no)
);

Create Table dept_Manager (
dept_no VARCHAR(4) Not Null,
	emp_no INT Not NULL,
	from_date DATE Not Null,
	to_date DATE Not Null,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)
); 

CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (emp_no)
);

CREATE TABLE Dept_emp (
	emp_no INT Not Null,
	dept_no Varchar (4) NOt Null,
	from_date Date Not Null,
	to_date Date Not Null,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	Foreign Key (dept_no) References departments (dept_no),
	Primary Key (dept_no,emp_no)
);

Create Table Titles (
	emp_no INT NOT Null,
	title VARCHAR (50) Not Null,
	from_date Date Not Null,
	to_date Date Not Null,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	Primary Key (emp_no, Title, from_date)
	
	);
SELECT * FROM departments;