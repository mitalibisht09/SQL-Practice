-- USE e_commerce;
-- CREATE USER 'admin_user'@'localhost' IDENTIFIED BY 'StrongPassword123';
-- GRANT SELECT,INSERT,UPDATE,DELETE ON e_commerce.* TO 'admin_user'@'localhost';

--  GRANT ALL PRIVILEGES ON e_commerce.* TO'admin_user'@'localhost';

-- REVOKE SELECT,INSERT,UPDATE,DELETE ON e_commerce .* FROM 'admin_user'@'localhost';
-- REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'admin_user'@'localhost';
-- FLUSH PRIVILEGES;

-- SHOW GRANTS FOR 'admin__users'@'localhost';
-- UPDATE customer
-- SET card_number=AES_ENCRYPT('1234567890123456', 'securekey');

-- CREATE USER 'admin_user1'@'localhost' IDENTIFIED BY 'Admin@123';
-- CREATE USER 'manager_user'@'localhost' IDENTIFIED BY 'Manager@123';
-- CREATE USER 'employee_user'@'localhost' IDENTIFIED BY 'Employee@123';
-- CREATE ROLE 'admin_role';
-- CREATE ROLE 'manager_role';
-- CREATE ROLE 'employee_role';

-- GRANT ALL PRIVILEGES ON e_commerce.* TO 'admin_role';
-- GRANT SELECT, INSERT, UPDATE, DELETE ON e_commerce.* TO 'manager_role';
-- GRANT SELECT ON e_commerce.* TO 'employee_role';
-- GRANT 'admin_role' To 'admin_user1'@'localhost';
-- GRANT 'manager_role' TO 'manager_user'@'localhost';
-- GRANT 'employee_role' TO 'employee_user'@'localhost';

-- It ensures that when users log in, their assigned role is automatically activated.
-- SET DEFAULT ROLE 'admin_role' TO 'admin_user1'@'localhost';
-- SET DEFAULT ROLE 'manager_role' TO 'manager_user'@'localhost';
-- SET DEFAULT ROLE 'employee_role' To 'employee_user'@'localhost';
-- SHOW GRANTS FOR 'admin_user1'@'localhost';
-- SHOW GRANTS FOR 'manager_user'@'localhost';
-- SHOW GRANTS FOR 'employee_user'@'localhost';

SHOW GRANTS FOR 'admin_role';
SHOW GRANTS FOR 'manager_role';
SHOW GRANTS FOR 'employee_role';
