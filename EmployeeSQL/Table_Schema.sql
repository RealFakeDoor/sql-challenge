DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS titles;

-- Titles Table
CREATE TABLE titles (
    title_id VARCHAR(20) PRIMARY KEY,
    title VARCHAR(200)
);

-- Departments Table
CREATE TABLE departments (
    dept_no VARCHAR(10) PRIMARY KEY,
    dept_name VARCHAR(200)
);

-- Employees Table
CREATE TABLE Employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(20),
    birth_date VARCHAR(20),
    first_name VARCHAR(200),
    last_name VARCHAR(200),
    sex CHAR(1),
    hire_date VARCHAR(20),
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

--Update Date Format for Employees
UPDATE Employees
SET birth_date = TO_DATE(birth_date, 'MM/DD/YYYY');

UPDATE Employees
SET hire_date = TO_DATE(hire_date, 'MM/DD/YYYY');

-- Department Employees Table
CREATE TABLE dept_emp (
    emp_no INT,
	dept_no VARCHAR(10),
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

-- Salaries Table
CREATE TABLE salaries (
    emp_no INT PRIMARY KEY,
    salary INT,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

-- Department Managers Table
CREATE TABLE dept_manager (
    dept_no VARCHAR(10),
    emp_no INT,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

SELECT * FROM titles;
SELECT * FROM departments;
SELECT * FROM Employees;
SELECT * FROM dept_emp;
SELECT * FROM salaries;
SELECT * FROM dept_manager;



-- Check titles table has no repeat primary Keys.
SELECT title_id, COUNT(*) AS count
FROM titles
GROUP BY title_id
HAVING COUNT(*) > 1;


-- Check departments table for no repeat primary keys.
SELECT dept_no, COUNT(*) AS count
FROM departments
GROUP BY dept_no
HAVING COUNT(*) > 1;

-- Check Employees table for no repeat primary keys
SELECT emp_no, COUNT(*) AS count
FROM Employees
GROUP BY emp_no
HAVING COUNT(*) > 1;

-- Check dept_emp table for no repeat primary keys
SELECT emp_no, dept_no, COUNT(*) AS count
FROM dept_emp
GROUP BY emp_no, dept_no
HAVING COUNT(*) > 1;

-- Check salaries table for no repeat primary keys
SELECT emp_no, COUNT(*) AS count
FROM salaries
GROUP BY emp_no
HAVING COUNT(*) > 1;

-- Check dept_manager table for no repeat primary keys.
SELECT emp_no, dept_no, COUNT(*) AS count
FROM dept_manager
GROUP BY emp_no, dept_no
HAVING COUNT(*) > 1;

--CHECK THE UNIQUENESS OF EACH COLUMN.

-- Check titles table for uniqueness of 'title' column
SELECT title, COUNT(*) AS count
FROM titles
GROUP BY title
HAVING COUNT(*) > 1;

-- Check departments table for uniqueness of 'dept_name' column
SELECT dept_name, COUNT(*) AS count
FROM departments
GROUP BY dept_name
HAVING COUNT(*) > 1;

-- Check Employees table for uniqueness of 'first_name', 'last_name', 'birth_date', and 'hire_date' columns
SELECT first_name, last_name, birth_date, hire_date, COUNT(*) AS count
FROM Employees
GROUP BY first_name, last_name, birth_date, hire_date
HAVING COUNT(*) > 1;

-- Check dept_emp table for uniqueness of 'emp_no' and 'dept_no' columns
SELECT emp_no, dept_no, COUNT(*) AS count
FROM dept_emp
GROUP BY emp_no, dept_no
HAVING COUNT(*) > 1;

SELECT emp_no, COUNT(*) as count
From dept_emp
GROUP BY emp_no
HAVING COUNT(*) > 1;

-- Check salaries table for uniqueness of 'salary' column
SELECT salary, COUNT(*) AS count
FROM salaries
GROUP BY salary
HAVING COUNT(*) > 1;

-- Check dept_manager table for uniqueness of 'emp_no' and 'dept_no' columns
SELECT emp_no, dept_no, COUNT(*) AS count
FROM dept_manager
GROUP BY emp_no, dept_no
HAVING COUNT(*) > 1;

