SELECT 
    emp_name,
    salary,
    CASE
        WHEN salary >= 55000 THEN 'High'
        WHEN salary >= 40000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_category
FROM employees;

SELECT 
    SUM(CASE WHEN salary >= 55000 THEN 1 ELSE 0 END) AS high_count,
    SUM(CASE WHEN salary >= 40000 AND salary < 55000 THEN 1 ELSE 0 END) AS medium_count,
    SUM(CASE WHEN salary < 40000 THEN 1 ELSE 0 END) AS low_count
FROM employees;

SELECT 
    dept_id,
    SUM(CASE WHEN salary >= 55000 THEN 1 ELSE 0 END) AS high_count,
    SUM(CASE WHEN salary >= 40000 AND salary < 55000 THEN 1 ELSE 0 END) AS medium_count,
    SUM(CASE WHEN salary < 40000 THEN 1 ELSE 0 END) AS low_count
FROM employees
GROUP BY dept_id;

SELECT 
    emp_name,
    CASE
        WHEN emp_id IN (SELECT manager_id FROM employees WHERE manager_id IS NOT NULL)
        THEN 'Manager'
        ELSE 'Individual Contributor'
    END AS role_type
FROM employees;