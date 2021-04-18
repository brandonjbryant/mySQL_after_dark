
#Tables Exercises
#1 Open Sequel Pro and login to the database server
# 2 Save your work in a file named tables_exercises.sql


# 3 Use the employees database
USE employees;

# 4 List all the tables in the database
SHOW TABLES;

# 5 Explore the employees table. What different data types are present on this table?
#int, date, varchar, enum
DESCRIBE employees;

# 6 Which table(s) do you think contain a numeric type column?
#dept_emp_lastest_date, employees, employees_with_departments, salaries


# 7 Which table(s) do you think contain a string type column?
#all tables
 
# 8 Which table(s) do you think contain a date type column?
#dept_emp_latest_date, current_dept_emp

# 9. What is the relationship between the employees and the departments tables?
#Employees are categorized by department.

# 10 Show the SQL that created the dept_manager table.
SHOW CREATE TABLE dept_manager;