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



