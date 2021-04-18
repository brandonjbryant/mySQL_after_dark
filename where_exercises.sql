# 1. Create a file named where_exercises.sql. Make sure to use the employees database.
use employees;
# 2. Find all current or previous employees with first names 'Irena', 'Vidya', or 'Maya' using IN. Enter a comment with the number of records returned.
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya','Maya');
-- 709 observations

# 3. Find all current or previous employees with first names 'Irena', 'Vidya', or 'Maya', as in Q2, but use OR instead of IN. Enter a comment with the number of records returned. Does it match number of rows from Q2?
SELECT *
FROM employees
WHERE first_name = "IRENA"
OR first_name = "VIDYA"
OR first_name ="MAYA";
-- 709 obervations

# 4. Find all current or previous employees with first names 'Irena', 'Vidya', or 'Maya', using OR, and who is male. Enter a comment with the number of records returned.
SELECT *
FROM employees
WHERE gender ="M"
AND first_name  = "IRENA"
OR first_name = "VIDYA"
OR first_name ="MAYA";
-- 612 Rows

# 5. Find all current or previous employees whose last name starts with 'E'. Enter a comment with the number of employees whose last name starts with E.
SELECT * 
FROM employees
WHERE last_name LIKE "E%";
-- 7330 observations

# 6. Find all current or previous employees whose last name starts or ends with 'E'. Enter a comment with the number of employees whose last name starts or ends with E.
-- 30723 observations
SELECT *
FROM employees
WHERE last_name LIKE 'e%'
OR last_name LIKE '%e';

-- How many employees have a last name that ends with E, but does not start with E? (23393 observations)
SELECT *
FROM employees
WHERE last_name LIKE "%E"
AND last_name NOT LIKE "E%" ;


# 7. Find all current or previous employees employees whose last name starts and ends with 'E'. Enter a comment with the number of employees whose last name starts and ends with E.
-- 899 observations 
SELECT *
FROM employees 
WHERE last_name LIKE 'E%E';

-- How many employees' last names end with E, regardless of whether they start with E?
-- 24_292 observations 
SELECT * 
FROM employees
WHERE last_name LIKE "%E";

# 8. Find all current or previous employees hired in the 90s. Enter a comment with the number of employees returned.
-- 135_214 observations
SELECT * 
FROM employees
WHERE hire_date like '199%';

# 9. Find all current or previous employees born on Christmas. Enter a comment with the number of employees returned.
-- 842 observation
SELECT *
FROM employees
WHERE birth_date LIKE "%-12-25";

# 10. Find all current or previous employees hired in the 90s and born on Christmas. Enter a comment with the number of employees returned.
-- 362 observations
SELECT *
FROM employees 
WHERE hire_date LIKE "199%"
AND birth_date LIKE "%-12-25";

# 11. Find all current or previous employees with a 'q' in their last name. Enter a comment with the number of records returned.
-- 1873 observations
SELECT * 
FROM employees
WHERE LAST_NAME like "%q%";

# 12. Find all current or previous employees with a 'q' in their last name but not 'qu'. How many employees are found?
-- 547 observations
SELECT *
FROM employees
WHERE last_name LIKE "%q%"
AND last_name NOT LIKE "%qu%";