-- Pewlett Hackard Table Schema

-- DROP TABLE Employees;
CREATE TABLE Employees (
    emp_no int unique,
    emp_title_id varchar,
    birth_date date,
    first_name varchar,
    last_name varchar,
    sex varchar,
    hire_date date,
    PRIMARY KEY (emp_no)
);

-- DROP TABLE Departments;
CREATE TABLE Departments (
    dept_no varchar,
    dept_name varchar NOT NULL,
	PRIMARY KEY (dept_no)
);

-- DROP TABLE Dept_Employees;
CREATE TABLE Dept_Employees (
    emp_no int,
    dept_no varchar,
    PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

-- DROP TABLE Dept_Managers;
CREATE TABLE Dept_Managers (
    dept_no varchar,
    emp_no int,
    PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

-- DROP TABLE Salaries;
CREATE TABLE Salaries (
    emp_no int,
    salary int,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

-- DROP TABLE Titles;
CREATE TABLE Titles (
    title_id varchar unique,
    title varchar NOT NULL,
	PRIMARY KEY (title_id)
);

ALTER TABLE Employees
ADD FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id);

SELECT * FROM Employees;
SELECT * FROM Departments;
SELECT * FROM DepartmentEmployees;
SELECT * FROM DepartmentManager;
SELECT * FROM Salaries;
SELECT * FROM Titles;
