
SELECT * FROM Employees;
SELECT * FROM Departments;
SELECT * FROM DepartmentEmployees;
SELECT * FROM DepartmentManager;
SELECT * FROM Salaries;
SELECT * FROM Titles;

-- 1) List the employee number, last name, first name, sex, and salary 
--    of each employee.

SELECT Employees.emp_no, last_name, first_name, sex, Salaries.salary
FROM Employees
LEFT JOIN Salaries
ON Employees.emp_no = Salaries.emp_no
ORDER BY emp_no;
	
-- 2) List the first name, last name, and hire date for the employees 
--    who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM Employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986
ORDER BY emp_no;

-- 3) List the manager of each department along with their department number, 
--    department name, employee number, last name, and first name.

SELECT Dept_Managers.dept_no, Departments.dept_name, Dept_Managers.emp_no, 
Employees.last_name, Employees.first_name
FROM Dept_Managers
LEFT JOIN Departments
ON Dept_Managers.dept_no = Departments.dept_no
LEFT JOIN Employees
ON Dept_Managers.emp_no = Employees.emp_no
ORDER BY emp_no;

-- 4) List the department number for each employee along with that employee's
--    employee number, last name, first name, and department name.

SELECT Employees.emp_no, Employees.last_name, Employees.first_name,
Dept_Employees.dept_no, Departments.dept_name
FROM Employees
INNER JOIN Dept_Employees
ON Employees.emp_no = Dept_Employees.emp_no 
INNER JOIN Departments
ON Departments.dept_no = Dept_Employees.dept_no
ORDER BY emp_no;

-- 5) List first name, last name, and sex of each employee whose first name is 
--    Hercules and whose last name begins with the letter B.

SELECT first_name, last_name, sex
FROM Employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- 6) List each employee in the Sales department, including their 
--    employee number, last name, and first name.

SELECT Employees.emp_no, last_name, first_name
FROM Employees
LEFT JOIN Dept_Employees
ON Employees.emp_no = Dept_Employees.emp_no
INNER JOIN Departments
ON Departments.dept_no = Dept_Employees.dept_no
WHERE dept_name = 'Sales';


-- 7) List each employee in the Sales and Development departments, including
--    their employee number, last name, first name, and department name.



-- 8) List the frequency counts, in descending order, of all the employee 
--    last names (that is, how many employees share each last name).




