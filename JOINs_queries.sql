CREATE TABLE department(
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50)
);

INSERT INTO department VALUES
(1, 'IT'),
(2, 'HR'),
(3,'Finance'),
(4,'Marketing');

CREATE TABLE employees(
emp_id INT PRIMARY KEY,
emp_name VARCHAr(50),
dept_id INT,
manager_id INT,
salary INT
);

INSERT INTO employees VALUES
(101,'Aman' ,1, NULL,60000),
(102, 'Riya',1,101,45000),
(103,'Kunal',2,NULL,50000),
(104, 'Simran',2,103,40000),
(105,'Vikas',3,NULL,55000),
(106, 'Neha',NULL,NULL,30000);

USE department;
SELECT e.emp_name , d.dept_name
FROM employees e 
INNER JOIN department d
     ON e.dept_id = d.dept_id;
     
-- question 2
SELECT e.emp_name,p.project_name
FROM employees e_commerce
INNER JOIN em_project ep
    ON e.emp_id = ep.emp_id
INNER JOIN projects p
    ON ep.project_id = p.project_id;


-- question 3
SELECT e.emp_name,d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id =d.dept_id



-- question 4
SELECT e.emp_name
FROM employees e
LEFT JOIN department d
    ON e.dept_id = d.dept_id
WHERE d.dept_idnIS NULL;


-- question 5
SELECT d.dept_name
FROM department d
LEFT JOIN employees e
    ON d.dept_id = e.dept_id
WHERE e.emp_id IS NULL;

SELECT 
    e.emp_name AS employee_name,
    m.emp_name AS manager_name
FROM employees e
LEFT JOIN employees m
     ON e.manager_id = m.emp_id;
     

-- Question 7
SELECT 
    e.emp_name AS employee_name,
    e.salary AS employee_salary,
    m.emp_name AS manager_name,
    m.salary AS manager_salary
FROM employees e
INNER JOIN empoyees m
    ON e.manager_id = m.emp_id
WHERE e.salary > m.salary;
    
    
-- question 8
SELECT e.emp_name ,d.dept_name
FROM department d
LEFT JOIN employees e
    ON d.dept_id =e.dept_id;
    
    
-- question 9
SELECT e.emp_name, p.project_name
FROM employees e
CROSS JOIN projects p;


-- question 10
SELECT
     e.emp_name,
     d.dept_name,
     p.project_name
FROM employees e
INNER JOIN department d
   ON e.dept_id = d.dept_id
INNER JOIN emp_project ep
   ON e.emp_id = ep.emp_id
INNER JOIN projects p
    ON ep.project_id = p.project_id;
    
    
-- question 11
SELECT 
    d.dept_name,
    AVG(e.salary) AS avg_salary
FROM department d
INNER JOIN employees e
    ON d.dept_id = e.dept_id
GROUP BY d.dept_name;


SELECT
   d.dept_name,
   e.emp_name,
   e.salary 
FROM employees e
INNER JOIN department d
    ON e.dept_id = d.dept_id
WHERE e.salary=(
     SELECT MAX(e2.salary)
     FROM employees e2
     WHERE e2.dept_id = e.dept_id
);

SELECT emp_name ,dept_name
FROM employees
NATURAL JOIN department;



CREATE TABLE salary(
band_name VARCHAR(20),
min_salary INT,
max_salary INT
);

INSERT INTO salary_bands (band_name, min_salary ,max_salary ) VALUES
('low',0,39999),
('Medium',40000,54999),
('High',55000,100000);

SELECT 
   e.emp_name,
   e.salary,
   sb.band_name
FROM emplyoees e
INNER  JOIN salary_bands sb
    ON e.salary BETWEEN sb.min_salary AND sb.max_salary;



SELECT dept_name
FROM departments 
WHERE dept_id NOT IN(
    SELECT dept_id
    FROM employees
    WHERE dept_id IS NOT NULL
);


SELECT dept_name
FROM departments d
WHERE NOT EXISTS (
   SELECT 1
   FROM employees e
   WHERE e.dept_id = d.dept_id
);
