USE e_commerce;
SELECT * FROM orders;

-- CREATE VIEW high_range_orders AS
-- SELECT * FROM orders
-- WHERE status ='Completed' AND amount> 1500;
UPDATE high_range_orders SET status = 'Pending' WHERE id = 5;
SELECT * FROM high_range_orders;
SELECT * FROM orders


-- types of index

-- CREATE INDEX idx_city ON customer(city);

-- SELECT * FROM customer WHERE city ='Delhi';
-- CREATE UNIQUE INDEX idx_email_unique ON customer(email);
-- SELECT * FROM customer WHERE email = 'raj@example.com';

