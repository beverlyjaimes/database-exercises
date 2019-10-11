USE employees;

-- Modify your first query to order by first name. The first result should be Irena Reutenauer and the last result should be Vidya Simmen.
SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;

-- Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig.
SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

-- Change the order by clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda.
SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;

-- Update your queries for employees with 'E' in their last name to sort the results by their employee number. Your results should not change!
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name like ('E%')
ORDER BY emp_no;

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name like ('E%');


-- Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
SELECT emp_no, first_name, last_name, hire_date, birth_date
FROM employees
WHERE hire_date Like '199%' AND birth_date like '%12-25%'
ORDER BY birth_date ASC, hire_date DESC ;


# ================================================================================================
# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.



    SELECT CONCAT_WS( ' ', first_name, last_name)
FROM employees
WHERE last_name like ('E%')
ORDER BY emp_no;

# For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You will also need to use now() or curdate())



SELECT CONCAT_WS(' ', first_name, last_name ,DATEDIFF(curdate() , hire_date)) AS 'DAYS WORKING'
FROM employees
WHERE hire_date Like '199%' AND birth_date like '%12-25%'
ORDER BY birth_date, hire_date DESC;
