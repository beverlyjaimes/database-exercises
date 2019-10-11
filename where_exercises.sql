USE employees;
# Create a file named where_exercises.sql. Make sure to use the employees database.
# Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

# Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT *
FROM employees
WHERE last_name like ('E%');

# Find all employees hired in the 90s — 135,214 rows.
SELECT *
FROM employees
WHERE hire_date Like '199%';

# Find all employees born on Christmas — 842 rows.
SELECT emp_no, first_name, last_name, birth_date
FROM employees
WHERE birth_date like '%12-25%';

# Find all employees with a 'q' in their last name — 1,873 rows.
SELECT *
FROM employees
WHERE last_name like ('%q%');
# --------------------------------------------------------------------------

# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
SELECT *
FROM employees
WHERE (first_name ='Irena') OR (first_name ='Maya') OR (first_name ='Vidya');

# Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
SELECT *
FROM employees
WHERE  (first_name ='Irena' OR first_name ='Maya' OR  first_name ='Vidya') AND gender = 'M';

# Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT *
FROM employees
WHERE last_name like ('E%') OR (last_name like '%E');

# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT *
FROM employees
WHERE last_name like ('E%E');

# Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT *
FROM employees
WHERE hire_date Like '199%' AND birth_date like '%12-25%';

# Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT *
FROM employees
WHERE last_name like ('%q%')
AND last_name NOT LIKE ('%qu%');


#######you dont have to put () but it helps to read although they can affect the code#####