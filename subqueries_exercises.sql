USE employees;

#
# SELECT * FROM dept_manager
# WHERE dept_no =(
#     select dept_no from departments where dept_name = 'Sales'
#     );
#
# SELECT first_name, last_name from employees
# where emp_no IN (
#     select emp_no from dept_manager
#     );

# Find all the employees with the same hire date as employee 101010 using a subquery.
#
# 69 Rows

SELECT * FROM employees
WHERE hire_date =(
    select hire_date from employees where emp_no = '101010'
    );

#
# Find all the titles held by all employees with the first name Aamod.
#
# 314 total titles, 6 unique titles
#
# Find all the current department managers that are female.
#
#
# +------------+------------+
# | first_name | last_name  |
# +------------+------------+
# | Isamu      | Legleitner |
# | Karsten    | Sigstam    |
# | Leon       | DasSarma   |
# | Hilary     | Kambil     |
# +------------+------------+

