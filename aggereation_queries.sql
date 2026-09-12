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
 
 SELECT 
    d.dept_name,
    COUNT(e.emp_id) AS employee_count,
    AVG(e.salary) AS avg_salary,
    MAX(e.salary) AS highest_salary
FROM departments d
LEFT JOIN employees e
    ON d.dept_id = e.dept_id
GROUP BY d.dept_name;


SELECT d.dept_name, AVG(e.salary) AS avg_salary
FROM employees e
INNER JOIN departments d
    ON e.dept_id = d.dept_id
GROUP BY d.dept_name
ORDER BY avg_salary DESC
LIMIT 1;


  
SELECT e.emp_name, e.dept_id
FROM employees e
WHERE e.dept_id IN (
    SELECT dept_id
    FROM employees
    GROUP BY dept_id
    HAVING COUNT(*) > 1

);

SELECT 
    e.emp_name,
    m.emp_name AS manager_name,
    e.salary - m.salary AS salary_difference
FROM employees e
INNER JOIN employees m
    ON e.manager_id = m.emp_id;
    
    
SELECT d.dept_name, SUM(e.salary) AS total_salary
FROM employees e
INNER JOIN departments d
    ON e.dept_id = d.dept_id
GROUP BY d.dept_name
HAVING SUM(e.salary) > 90000;
 
 
 SELECT d.dept_name, e.emp_name, e.salary
FROM employees e
INNER JOIN departments d
    ON e.dept_id = d.dept_id
WHERE e.salary = (
    SELECT MAX(e2.salary)
    FROM employees e2
    WHERE e2.dept_id = e.dept_id
);
 
