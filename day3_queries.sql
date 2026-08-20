 CREATE TABLE courses (
     id INT AUTO_INCREMENT PRIMARY KEY,
     course_name VARCHAR(100) NOT NULL UNIQUE,
     description TEXT,
     duration INT CHECK (duration>0),
     start_date DATE NOT NULL,
     end_date DATE,
     CONSTRAINT chk_dates CHECK (end_date IS NULL OR end_date >start_date)
);

-- ALTER TABLE courses
-- ADD COLUMN created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- ALTER TABLE  courses DROP COLUMN duration;SELECT * FROM student
-- ALTER TABLE courses
-- ADD COLUMN course_duration INT CHECK (course_duration>0)

 
 
 -- USE e_commerce;
--  CREATE TABLE customer (
-- 	id INT AUTO_INCREMENT PRIMARY KEY,
-- 	name VARCHAR (100) UNIQUE NOT NULL ,
-- 	email VARCHAR (150) UNIQUE NOT NULL,
-- 	city VARCHAR(100)
-- );


 
 -- CREATE TABLE orders(
--    id SERIAL PRIMARY KEY,
--    customer_id INT NOT NULL,
--     amount DECIMAL (10,2),
--     status VARCHAR (20),
--     order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--     CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES customer(id)
-- );

--     INSERT INTO customer(name,email,city)VALUES
--  ('Raj' , 'raj@example,com' , 'Delhi'),
--  ('Priya', 'priya@example.com' , 'Mumbai'),
--  ( 'Aman' , 'aman@example.com','Pune'),
--  ('Simran', 'simran@exampe.com','Delhi'),
--  ('Karan','karan@example.com','Banglore');

--  INSERT INTO orders (customer_id ,amount,status,order_date)VALUES
--  (1, 2000, 'completed', '2025-08-01'),
--  (2, 1500, 'completed', '2025-08-02'),
--  (1, 3000, 'Pending', '2025-08-03'),
--  (3, 1200, 'completed', '2025-08-04'),
--  (4, 2500, 'completed', '2025-08-05'),
--  (2, 1800, 'pending', '2025-08-06'),
--  (5, 3500, 'completed', '2025-08-07');

-- SELECT * FROM orders;
--  SELECT COUNT(*) AS total_order FROM orders;
 -- SELECT SUM(amount) AS total_sales FROM orders;
--  SELECT AVG(amount) AS average_sales FROM orders;
--  SELECT MIN(amount) AS lowest_order, MAX(amount) AS highest_order FROM orders;

-- SELECT 
--     c.name, COUNT(*) AS total_orders,SUM(O.amount) AS total_spent
-- FROM customer c
-- JOIN orders o ON  c.id = o.customer_id
-- WHERE o.status = 'Completed'
-- GROUP BY c.id
-- ORDER BY total_spent DESC;



-- SELECT DATE_FORMAT(order_date, '%y-%m') AS month, SUM(amount) AS total_sales
-- FROM orders
-- WHERE status= 'completed'
-- Group By month
-- ORDER BY month;

-- customer with spending >2000
SELECT c.name,SUM(o.amount) AS total_spent
FROM customer c
JOIN orders o ON c.id =o.customer_id
WHERE o.status = 'completed'
GROUP BY c.name
HAVING SUM(o.amount)>2000
ORDER BY total_spent DESC;


-- --subqueries
-- SELECT ustomer_id , amount
-- FROM orders
-- WHERE amount > (SELECT AVG(amount) FROM orders);   

    

    