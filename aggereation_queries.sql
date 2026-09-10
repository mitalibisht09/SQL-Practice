SELECT COUNT(*) as total_employees
FROM employees;

SELECT MAX(salary) AS highest_salary,MIN(salary) AS lowest_salary
FROM employees;

SELECT dept_id, COUNT(*) AS employee_count
FROM employees
GROUP BY dept_id;

SELECT dept_id ,COUNT(*) AS employee_count
FROM employees
GROUP BY dept_id
HAVING COUNT(*) >1;

SELECT MAX(salary) AS second_highest_salary
FROM employees
WHERE salary<(
 SELECT MAX(salary) FROM employees
 );
