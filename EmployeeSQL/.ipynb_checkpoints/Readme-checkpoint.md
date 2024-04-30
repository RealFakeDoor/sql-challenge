## Employee Database README
This repository contains SQL scripts for creating a database schema and performing various queries on an employee database. Below, you'll find information on the table schema and the queries provided in the SQL scripts.

Usage:
1. Create Tables using Table Schema.
2. Import CSV data into the tables in the same order the tables were created.
3. Use queries in Employees Queries to sort data into required tables and formats.

**<u>SQL - Table Schema</u>**

The database schema consists of the following tables:

**titles:** Contains information about employee titles.
- title: Employee title (VARCHAR(200))
- title_ID: Title ID (Primary Key) (VARCHAR(20))

**departments:** Stores department information.
- dept_no: Department number (Primary Key) (VARCHAR(10))
- dept_name: Department name (VARCHAR(200))

**Employees:** Stores employee details such as employee number, name, sex, birth date, and hire date.
- emp_no: Employee number (Primary Key) (INT)
- emp_title_id: Employee title ID (Foreign Key to titles table) (VARCHAR(20))
- birth_date: Date of birth (VARCHAR(20))
- first_name: First name (VARCHAR(200))
- last_name: Last name (VARCHAR(200))
- sex: Sex (CHAR(1))
- hire_date: Hire date (VARCHAR(20))

**dept_emp:** Represents the relationship between employees and departments.
- emp_no: Employee number (Primary Key, Foreign Key to Employees table) (INT)
- dept_no: Department number (Primary Key, Foreign Key to departments table) (VARCHAR(10))

**salaries:** Contains employee salary information.
- emp_no: Employee number (Primary Key, Foreign Key to Employees table) (INT)
- salary: Salary (INT)

**dept_manager:** Represents the managers of each department.
- dept_no: Department number (Primary Key, Foreign Key to departments table) (VARCHAR(10))
- emp_no: Employee number (Primary Key, Foreign Key to Employees table) (INT)


NOTE: ONCE THE TABLES HAVE BEEN MADE, Ensure that the database CSV's are imported in the same order the tables are created.




**<u>Queries<u>**

**List all employee details:** 
Retrieves employee number, last name, first name, sex, and salary of each employee.

**List employees hired in 1986:** 
Retrieves the first name, last name, and hire date of employees hired in the year 1986.

**List department managers:** 
Retrieves the manager of each department along with their department number, department name, employee number, last name, and first name.

**List employees with specific criteria:** 
Retrieves first name, last name, and sex of employees whose first name is "Hercules" and whose last name begins with the letter "B".

**List employees in the Sales department:** 
Retrieves employee number, last name, and first name of employees in the Sales department.

**List employees in Sales and Development departments:** 
Retrieves employee number, last name, first name, and department name of employees in the Sales and Development departments.

**List frequency counts of employee last names:**
Retrieves the frequency counts, in descending order, of all employee last names 
(i.e., how many employees share each last name). 