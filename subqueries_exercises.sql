# Create a file named subqueries_exercises.sql and craft queries to return the results for the following criteria:
use employees;
#1. Find all the current employees with the same hire date as employee 101010 using a sub-query.
SELECT hire_date
FROM employees 
WHERE emp_no = 101010;-- hire_date : 1990-10-22

SELECT first_name, last_name, hire_date
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
	AND dept_emp.to_date > CURDATE()
WHERE hire_date = (SELECT
			hire_date 
		FROM employees
		WHERE emp_no = 101010
		); -- 55 current employees with the same hire date as employee 101010

#2. Find all the titles ever held by all current employees with the first name Aamod.
SELECT first_name
FROM employees AS e
JOIN salaries AS s ON e.emp_no = s.emp_no
	AND to_date > CURDATE()
WHERE first_name = 'Aamod'; -- 168 employees named Aamod

SELECT title
FROM employees AS e
JOIN titles AS t USING(emp_no)
WHERE first_name IN (
                    SELECT
                        first_name
                    FROM employees AS e
                    JOIN salaries AS s ON e.emp_no = s.emp_no
                    AND to_date > CURDATE()
                    WHERE first_name = 'Aamod'
                    )
GROUP BY title;
/*
Staff
Senior Staff
Engineer
Technique Leader
Senior Engineer
Assistant Engineer
*/

#How many people in the employees table are no longer working for the company? Give the answer in a comment in your code.
SELECT emp_no
FROM salaries 
WHERE to_date > CURDATE(); 

SELECT COUNT(emp_no) AS number_of_exemployees
FROM employees
WHERE emp_no NOT IN (
                    SELECT
                        emp_no
                    FROM salaries 
                    WHERE to_date > CURDATE()
					); -- 59900 people in the employees table no longer working for the company

#Find all the current department managers that are female. List their names in a comment in your code.
SELECT
		emp_no
	FROM dept_manager
	WHERE to_date > CURDATE()
	
SELECT CONCAT(first_name, ' ', last_name) AS female_managers
FROM employees
WHERE emp_no IN (
	SELECT
		emp_no
	FROM dept_manager
	WHERE to_date > CURDATE()
				)
AND gender = 'F';

/*
Isamu Legleitner
Karsten Sigstam
Leon DasSarma
Hilary Kambil
*/

#Find all the employees who currently have a higher salary than the companies overall, historical average salary.

SELECT
	AVG(salary) AS historical_average_salary
FROM salaries;
-- historical average salary 63810.7448

SELECT e.emp_no,
	first_name,
	last_name
FROM employees AS e
JOIN salaries AS s ON e.emp_no = s.emp_no
	AND to_date > CURDATE()
WHERE salary > (
	SELECT
		AVG(salary) AS historical_average_salary
	FROM salaries
	);
-- 154543 employees have higher salary than the historical average salary

#How many current salaries are within 1 standard deviation of the current highest salary? (Hint: you can use a built in function to calculate the standard deviation.) What percentage of all salaries is this?
SELECT (MAX(salary) - STDDEV(salary)) AS salary_within_one_stddev_of_max
FROM salaries
WHERE to_date > CURDATE();
-- 140910.04066365326


SELECT COUNT(salary) AS salaries_within_1_stddev
FROM salaries 
WHERE to_date > CURDATE()
AND salary > (
	SELECT
		(MAX(salary) - STDDEV(salary))
	FROM salaries
	WHERE to_date > CURDATE()
	);
		-- 83 current salaries are within 1std of the current highest salary

