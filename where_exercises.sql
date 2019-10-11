USE employees;

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name like ('E%');

SELECT emp_no, first_name, last_name, hire_date
FROM employees
WHERE hire_date Like '199%';

SELECT emp_no, first_name, last_name, birth_date
FROM employees
WHERE birth_date like '%12-25%';

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name like ('%q%');

SELECT emp_no, first_name, last_name
FROM employees
WHERE (first_name ='Irena') OR (first_name ='Maya') OR (first_name ='Vidya');

SELECT emp_no, first_name, last_name, gender
FROM employees
WHERE (gender = 'M' AND  first_name ='Irena') OR (gender = 'M' AND first_name ='Maya') OR (gender = 'M' AND first_name ='Vidya') ;


SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name like ('E%') OR (last_name like '%E');

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name like ('E%') AND (last_name like '%E');


SELECT emp_no, first_name, last_name, hire_date, birth_date
FROM employees
WHERE hire_date Like '199%' AND birth_date like '%12-25%';

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name like ('%q%')
AND last_name NOT LIKE ('%qu%');