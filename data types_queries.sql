-- DATA TYPES
USE practice;
CREATE TABLE students (
    student_id INT,
    name VARCHAR(50),
    age INT,
    marks DECIMAL(5,2),
    email VARCHAR(100)
);


CREATE TABLE products (
     product_id INT,
     product_name VARCHAR(100),
     price decimal(10,2),
     quantity INT,
     description VARCHAR(255)
	);


CREATE TABLE employees2 (
     employee_id INT,
     employee_name VARCHAR(50),
     joining_date DATE,
     salary decimal(10,2),
     is_active BOOLEAN
);

CREATE TABLE order_details(
order_id INT,
customer_name VARCHAR(50),
order_amount decimal(10,2),
order_date DATE,
quantity INT,
is_delivered BOOLEAN
);


CREATE TABLE hospital_patient(
     patient_id INT,
     patient_name VARCHAR(50),
     age INT,
     admission_date DATE,
     bill_amount decimal(10,2),
     is_discharged BOOLEAN
);


CREATE TABLE employee(
employee_id INT PRIMARY KEY,
employee_name VARCHAR(50),
salary decimal(10,2) CHECK (salary >0),
department VARCHAR(50),
status VARCHAR(50) DEFAULT 'Active'
);

CREATE TABLE student (
student_id INT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
email VARCHAR(100) UNIQUE,
age INT
);


CREATE TABLE department (
department_id INT PRIMARY KEY,
department_name VARCHAR(50) NOT NULL
);
CREATE TABLE employee(
employee_id INT PRIMARY KEY,
employee_name VARCHAR(50) NOT NULL,
depaftment_id INT ,
FOREIGN KEY (department_id)
REFERENCES
department(department_id)
);


CREATE TABLE student(
student_id INT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
email VARCHAR(50) UNIQUE,
age INT CHECK (age>=18),
status VARCHAR(20) DEFAULT 'Active'
);

INSERT INTO student(student_id,name,age,email)VALUES
(101 , 'Riya' , 18 , 'riya@gmail.com');
SELECT *FROM student;

-- UPDATE
UPDATE student
set age = 19
WHERE student_id =101;

ALTER TABLE employees
ADD email VARCHAR(100);

ALTER TABLE employees
RENAME COLUMN name TO
employee_name;

-- in the employees table,change the salary column from INT to decimal(10,2)
ALTER TABLE employees
MODIFY	salary DECIMAL(10,2);

-- in the employees table delete /drop the email column
ALTER TABLE employees
DROP COLUMN email;

-- in the employees table,rename the table to staff
ALTER TABLE employees
RENAME TO staff;

ALTER TABLE staff
ADD phone VARCHAR(50) UNIQUE;

ALTER TABLE staff
ADD department VARCHAR(50) DEFAULT 'General';

ALTER TABLE staff 
DROP INDEX phone;

DROP TABLE students;
TRUNCATE TABLE students;

DROP TABLE employees;



