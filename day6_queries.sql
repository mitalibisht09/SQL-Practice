-- USE e_commerce;
-- SELECT * FROM customer ;
-- DELIMITER //
-- CREATE PROCEDURE getCustomerByCity(IN p_city VARCHAR(50))
-- BEGIN
--      SELECT id,name,email,city FROM customer WHERE city = p_city;
--      
--      SELECT CONCAT('Total customer in ' , p_city,':', COUNT(*)) AS message FROM customer WHERE city=p_city;
-- END
-- // DELIMITER ;
-- CALL getCustomerByCity('Delhi');






 -- CREATE TABLE customer_logs (

--  id INT AUTO_INCREMENT PRIMARY KEY,
--  user_id INT,
--  deleted_at DATETIME

--  );
-- DROP TRIGGER IF EXISTS after_customer_delete;



--   DELIMITER //
--    CREATE TRIGGER after_customer_delete
--    AFTER DELETE ON customer
--   FOR EACH ROW
--    BEGIN
--    	INSERT INTO customer_logs(customer_id, deleted_at)
--   	VALUES (OLD.id, NOW());
--   END //
 
  -- DELIMITER ;
-- DELETE FROM customer WHERE id = 2;
--   SELECT * FROM customer;
  -- SELECT * FROM orders;
  -- SELECT * FROM customer_logs;
  
-- DELIMITER $$

--  CREATE FUNCTION calculate_total_price (price DECIMAL(10,2), qty INT)
--  RETURNS DECIMAL(10,2)
--  DETERMINISTIC
--  BEGIN 
--  RETURN price * qty;

-- END$$

--  DELIMITER ;

-- --  Call the function
--  SELECT calculate_total_price(100, 5);


-- DELIMITER $$
--  CREATE FUNCTION update_customer_email(cust_id INT, new_email VARCHAR(255))
--  RETURNS VARCHAR(255)
--  DETERMINISTIC
--  BEGIN
--     UPDATE customer
--  	SET email = new_email, city = 'Pune'
--  	WHERE id = cust_id; 
--  	RETURN 'Email updated successfully';
--  END$$


-- DELIMITER ;

--  SELECT update_customer_email(7, 'newmail@example.com');

SELECT * FROM customer;


