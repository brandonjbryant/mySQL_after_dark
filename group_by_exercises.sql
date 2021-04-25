# In your script, use DISTINCT to find the unique titles in the titles table. How many unique titles have there ever been? Answer that in a comment in your SQL file.
SELECT DISTINCT title
FROM titles;
-- 7 unique titles

# Write a query to to find a list of all unique last names of all employees that start and end with 'E' using GROUP BY.
SELECT DISTINCT(last_name)
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name;
-- Erde
-- Eldridge
-- Etalle
-- Erie
-- Erbe

# Write a query to to find all unique combinations of first and last names of all employees whose last names start and end with 'E'.
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY first_name, last_name;
-- 846 observations

# Write a query to find the unique last names with a 'q' but not 'qu'. Include those names in a comment in your sql code.
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name;
-- Chleq
-- Lindqvist
-- Qiwen

# Add a COUNT() to your results (the query above) to find the number of employees with the same last name.
SELECT last_name,
	COUNT(last_name) AS name_count
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY last_name;
-- Chleq	189
-- Lindqvist	190
-- Qiwen	168

# Find all all employees with first names 'Irena', 'Vidya', or 'Maya'. Use COUNT(*) and GROUP BY to find the number of employees for each gender with those names.
SELECT gender,
	COUNT(*),
	first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender, first_name
ORDER BY first_name;
/*
M	144	Irena
F	97	Irena
F	90	Maya
M	146	Maya
M	151	Vidya
F	81	Vidya
*/


# Using your query that generates a username for all of the employees, generate a count employees for each unique username. Are there any duplicate usernames? SELECT 
	LOWER(
			CONCAT(
				SUBSTR(first_name, 1, 1),
				SUBSTR(last_name, 1, 4),
				'_',
				SUBSTR(birth_date, 6, 2),
				SUBSTR(birth_date, 3, 2)
				)
			) AS username,
	COUNT(*) AS num_of_duplicates
FROM employees
GROUP BY username
ORDER BY num_of_duplicates DESC;

# BONUS: How many duplicate usernames are there?
SELECT 
		LOWER(
				CONCAT(
					SUBSTR(first_name, 1, 1),
					SUBSTR(last_name, 1, 4),
					'_',
					SUBSTR(birth_date, 6, 2),
					SUBSTR(birth_date, 3, 2)
					)
				) AS username,
		COUNT(*) AS number_of_duplicates
FROM employees
GROUP BY username
HAVING number_of_duplicates > 1;
-- 13251 DUPLICATES
