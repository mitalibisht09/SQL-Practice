USE e_commerce;

-- SELECT * FROM orders;
-- SELECT
-- id,
-- customer_id,
-- amount,
-- ROW_NUMBER() OVER (
-- PARTITION BY customer_id
-- ORDER BY order_date
-- ) AS order_rank
-- FROM orders; 


 SELECT
 customer_id,
 amount,
 RANK() OVER (PARTITION BY customer_id ORDER BY amount DESC) AS rank_no,
 DENSE_RANK() OVER (PARTITION BY customer_id ORDER BY amount DESC) AS dense_rank_no
 FROM orders;

-- SELECT
-- customer_id,
-- order_date,
-- amount,
-- LAG(amount) OVER (
-- PARTITION BY customer_id
-- ORDER BY order_date
-- ) AS previous_amount
-- FROM orders;



-- SELECT * FROM orders;

-- WITH temp_table AS (
-- SELECT customer_id, SUM(amount) AS total_amount
-- FROM orders
-- GROUP BY customer_id
-- )

SELECT *
FROM temp_table
WHERE total_amount > 3000
ORDER BY total_amount DESC;

-- Step 1: Create the employees table

-- CREATE TABLE employees (

-- id INT PRIMARY KEY AUTO_INCREMENT,

-- name VARCHAR(50) NOT NULL,

-- manager_id INT,

-- FOREIGN KEY (manager_id) REFERENCES employees (id)

-- );

-- Step 2: Insert sample data

-- INSERT INTO employees (id, name, manager_id) VALUES

-- (1, 'Raj', NULL),
-- (2, 'Aman', 1),
-- (3, 'Priya', 2),
-- (4, 'Neha', 2),
-- (5, 'Karan', 3);

-- Step 3: Check inserted data
-- SELECT * FROM employees;

WITH RECURSIVE emp_hierarchy AS (
SELECT id, name, manager_id , 1 AS level
FROM employees
WHERE manager_id IS NULL
UNION ALL


SELECT e.id, e.name, e.manager_id,eh,level +1
FROM employees e
JOIN emp_hierarchy eh
ON e.manager_id = eh.id
)
SELECT * FROM emp_hierarchy;