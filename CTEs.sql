
WITH dept_avg AS (
    SELECT dept_id, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY dept_id
)
SELECT e.emp_name, e.dept_id, e.salary, d.avg_salary
FROM employees e
INNER JOIN dept_avg d
    ON e.dept_id = d.dept_id
WHERE e.salary > d.avg_salary;

WITH ranked_employees AS (
    SELECT 
        emp_name, 
        salary,
        ROW_NUMBER() OVER (ORDER BY salary DESC) AS rn
    FROM employees
)
SELECT emp_name, salary
FROM ranked_employees
WHERE rn <= 2;


WITH ranked_employees AS (
    SELECT 
        emp_name, 
        salary,
        ROW_NUMBER() OVER (ORDER BY salary DESC) AS rn
    FROM employees
)
SELECT emp_name, salary
FROM ranked_employees
WHERE rn <= 2;


WITH RECURSIVE mgr_chain AS (
    -- Anchor member: starting point (Riya herself)
    SELECT emp_id, emp_name, manager_id, 0 AS level
    FROM employees
    WHERE emp_name = 'Riya'

    UNION ALL

    -- Recursive member: keep joining upward to find each manager
    SELECT e.emp_id, e.emp_name, e.manager_id, mc.level + 1
    FROM employees e
    INNER JOIN mgr_chain mc
        ON e.emp_id = mc.manager_id
)
SELECT emp_name, level
FROM mgr_chain;



WITH RECURSIVE org_chart AS (
    -- Anchor: top-level people (no manager)
    SELECT emp_id, emp_name, manager_id, 0 AS level
    FROM employees
    WHERE manager_id IS NULL

    UNION ALL

    -- Recursive: find people whose manager is already in org_chart
    SELECT e.emp_id, e.emp_name, e.manager_id, oc.level + 1
    FROM employees e
    INNER JOIN org_chart oc
        ON e.manager_id = oc.emp_id
)
SELECT emp_name, level FROM org_chart;