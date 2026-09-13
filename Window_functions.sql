SELECT 
    emp_name, 
    salary,
    RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employees; 


SELECT 
    emp_name, 
    salary,
    RANK() OVER (ORDER BY salary DESC) AS rank_col,
    DENSE_RANK() OVER (ORDER BY salary DESC) AS dense_rank_col,
    ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num_col
FROM employees;

SELECT 
    emp_name,
    dept_id,
    salary,
    RANK() OVER (PARTITION BY dept_id ORDER BY salary DESC) AS dept_rank
FROM employees;

SELECT 
    emp_name,
    dept_id,
    salary,
    AVG(salary) OVER (PARTITION BY dept_id) AS dept_avg_salary
FROM employees;

SELECT 
    emp_id,
    emp_name,
    salary,
    SUM(salary) OVER (ORDER BY emp_id) AS running_total
FROM employees
ORDER BY emp_id;