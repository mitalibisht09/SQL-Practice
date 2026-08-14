
USE my_first_db;
SHOW TABLES ;

CREATE TABLE students(id INT PRIMARY KEY AUTO_INCREMENT,
					   name VARCHAR(50),
                       age INT
);
SHOW TABLES ;

INSERT INTO students (name,age) VALUES ('Mitali', 19);
INSERT INTO students (name,age) VALUES ('Rahul' , 20);
SELECT * FROM students ;