USE employees;
CREATE TABLE employees(
id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
salary INT,
department VARCHAR(50)
);

INSERT INTO employees(id,name,age,salary,department)VALUES
(1,'Rahul',25,55000,'IT'),
(2,'Simran',32,75000,'HR'),
(3,'Mohit',28,65000,'IT'),
(4,'Priya',35,80000,'Finance'),
(5,'Rohan',24,45000,'IT');

SELECT * FROM employees; -- to  check your table

SELECT name , salary FROM employees;

-- to find those employees whose salary is greater than 60,000
SELECT * FROM employees
WHERE salary > 60000;


-- find employees whose age is less than 30
SELECT * FROM employees
WHERE age < 30;

-- to find the employees who works in IT department
SELECT * FROM employees
WHERE department = 'IT';

-- employees whose salary is greater than equal to 75,000
SELECT * FROM employees
WHERE salary >= 75000;

-- find all employees whose salary is in between 50,000 and 80,000
SELECT * FROM employees
WHERE salary BETWEEN 50000 AND 80000 ;

-- find employees whose salary is NOT between 50000 and 80000
SELECT * FROM employees
WHERE salary NOT BETWEEN 50000 AND 80000;

-- find employees whose either from the IT department or the sales department
SELECT * FROM employees
WHERE department = 'IT' OR department = 'Sales';

-- find employees who are from the IT department AND  have a salary greater than 70000
SELECT * FROM employees
WHERE department = 'IT' AND salary > 70000;

-- to find employees who are from IT department ,are younger than 30 ,have a salary greater than 60000 
SELECT *
FROM employees
WHERE department = 'IT'
AND age < 30
AND salary > 60000;

-- find all the emloyees whose name starts with the letter A
SELECT *
FROM employees
WHERE name LIKE 'A%';


-- find all employees whose salary is between 50,000 and 80,000
SELECT *
FROM employees
WHERE salary BETWEEN 50000 AND 80000;

-- find all employees whose age is not between 25 and 30
SELECT *
FROM employees
WHERE age NOT BETWEEN 25 and 30;


-- find employees whose salary is above 70,000 Display only: name, department,salary
SELECT name,department,salary
FROM employees
WHERE salary > 70000;


-- Find all employees who are either (from IT and have a salary greater than 50000,or from HR and have a salary greater than 60,000
SELECT * FROM employees
WHERE (department = 'IT' AND salary > 50000)
OR (department = 'HR' AND salary > 60000);


-- find employees who are under 30 years old AND earn more than 50,000
SELECT * FROM employees
WHERE age < 30 AND salary > 50000;


-- find employees whose salary is NOT equal to 55,000
SELECT * FROM employees
WHERE salary <> 55000 ;


-- INTERVIEW - STYLE QUESTION 
-- The HR team wants employees who meet all three conditions:
-- salary equal greater than 60000 , Age < 30 , department is IT

SELECT * FROM employees 
WHERE  salary >= 60000 AND age<30 AND department = 'IT';

-- find all employees whose department is either IT , HR or Sales
SELECT * FROM employees
WHERE department IN ('IT','HR','Sales');

-- find all employees whose department is NOT IT, HR, or sales
SELECT * FROM employees
WHERE department NOT IN ('IT','HR','Sales');


-- find all employees whose name starts with the letter R
SELECT * FROM employees
WHERE name LIKE 'R%' ;

-- find all employees whose name ends with letter a
SELECT * FROM employees
WHERE name LIKE '%A';


-- find all employees whose name contains the letter a anywhere
SELECT * FROM employees
WHERE name LIKE '%A%';



