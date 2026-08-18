CREATE DATABASE practice_db2;
USE practice_db2;

CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    marks INT,
    city VARCHAR(50)
);

-- Conditional operators
SELECT * FROM students;
SELECT name ,age FROM students ;

SELECT * FROM students WHERE marks>80 LIMIT 3;
SELECT DISTINCT city FROM students;

SELECT * FROM STUDENTS WHERE city IN ('Delhi', 'Mumbai');

USE practice_db2;

-- Logical Operators (AND or NOT)
SELECT name,marks,city
FROM students
WHERE marks> 80 AND city ='Delhi';

SELECT name,marks,city
FROM students
WHERE marks> 80 OR city ='Delhi';

-- Range checking( BETWEEN ... AND ...)
SELECT name,marks
FROM students
WHERE marks BETWEEN 88 AND 99

-- SET MATCHING (IN & NOT IN )
SELECT name ,city
FROM students
WHERE city IN ('Delhi','Mumbai')


SELECT name ,city
FROM students
WHERE city  NOT IN ('Delhi','Mumbai')

-- like - case sensitive
-- Ilike -case-insensitive(postgresql only)

-- Name starting with 'A'
SELECT name FROM students
WHERE name LIKE 'A%';

-- Name ending with'a'
SELECT name FROM students
WHERE name LIKE '%a';

-- Name containg 'e'
SELECT name FROM students
WHERE name LIKE '%e';


USE practice_db2;


-- UPDATE students SET name ='John Sith' , age =28 WHERE id=3;
-- SELECT * FROM students;

-- INSERT INTO students VALUES(5,'Lokesh',24,69,'Goa');
-- DELETE FROM students WHERE id=9;
-- SELECT * FROM  students;

-- REPLACE INTO students (id,name,age,marks,city)VAlUES( 3, 'Aman', 23,95,'manali');
-- SELECT * FROM  students;

SELECT * FROM STUDENTS;
-- LEARNING JOIN FEATURE 
-- CLASS TABLE WITH TEACHER INCLUDE
-- CREATE TABLE classes(
--       id INT PRIMARY KEY,
--       class_name VARCHAR(50),
--       teacher VARCHAR(50)
-- );
-- -- ENROLLEMENT TABLE (MAPPING STUDENT -CLASSES  )   
-- CREATE TABLE enrollement(
--       id INT PRIMARY KEY,
--       student_id INT,
--       class_id INT,
--       FOREIGN KEY (student_id) REFERENCES Students(id),
--       FOREIGN KEY (Class_id) REFERENCES classes(id)
--       );
--       

-- INSERT INTO classes VALUES
-- (101, 'Math', 'Mr Sharma'),
-- (102, 'Physics', 'Dr Verma'),
-- (103, 'Chemistry','Ms.kapoor');

-- INSERT INTO enrollement VALUES
-- (1,1,101),
-- (2,1,102),
-- (3,2,103),
-- (4,3,101);

-- SELECT * FROM students;
-- SELECT * FROM classes;

-- SELECT  s.name AS student, c.class_name, c.teacher
-- FROM students s
-- JOIN enrollement e ON s.id = e.student_id
-- JOIN classes c ON e.class_id =c.id;

-- SELECT  s.name AS student, c.class_name, c.teacher
-- FROM students s
-- LEFT JOIN enrollement e ON s.id = e.student_id
-- LEFT JOIN classes c ON e.class_id =c.id;

-- SELECT  s.name AS student, c.class_name, c.teacher
-- FROM students s
-- RIGHT JOIN enrollement e ON s.id = e.student_id
-- RIGHT JOIN classes c ON e.class_id =c.id;

SELECT  s.name AS student, c.class_name, c.teacher
 FROM students s
 LEFT JOIN enrollement e ON s.id = e.student_id
 LEFT JOIN classes c ON e.class_id =c.id
 
 UNION
 
 SELECT  s.name AS student, c.class_name, c.teacher
FROM students s
RIGHT JOIN enrollement e ON s.id = e.student_id
RIGHT JOIN classes c ON e.class_id =c.id;