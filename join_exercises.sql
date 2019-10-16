USE employees;

# Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.
# 2 Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.
SELECT departments.dept_name, CONCAT(employees.first_name,' ', employees.last_name) AS DEPARTMENT_MANAGER
FROM employees
JOIN dept_manager  on employees.emp_no = dept_manager.emp_no
JOIN departments  on dept_manager.dept_no = departments.dept_no
WHERE to_date > NOW()
ORDER BY dept_name;

# 3 Find the name of all departments currently managed by women.
SELECT departments.dept_name AS DEPARTMENT_NAME, CONCAT_WS(' ', employees.first_name, employees.last_name) AS MANAGER_NAME
FROM employees
JOIN dept_manager  on employees.emp_no = dept_manager.emp_no
JOIN departments  on dept_manager.dept_no = departments.dept_no
WHERE dept_manager.to_date > NOW() AND employees.gender = 'F'
ORDER BY dept_name;

# 4 Find the current titles of employees currently working in the Customer Service department.
SELECT titles.title, COUNT(*)
FROM titles
JOIN employees on titles.emp_no = employees.emp_no
JOIN dept_emp  on employees.emp_no = dept_emp.emp_no
WHERE dept_emp.to_date > NOW() AND titles.to_date > NOW() AND dept_no = 'd009'
group by titles.title;

# 5 Find the current salary of all current managers.
SELECT departments.dept_name, CONCAT(employees.first_name,' ', employees.last_name) AS Name, salaries.salary
FROM employees
JOIN dept_manager on employees.emp_no = dept_manager.emp_no
JOIN departments on dept_manager.dept_no = departments.dept_no
JOIN salaries on employees.emp_no = salaries.emp_no
WHERE dept_manager.to_date > NOW() AND salaries.to_date > NOW()
ORDER BY dept_name;

SELECT * FROM departments;