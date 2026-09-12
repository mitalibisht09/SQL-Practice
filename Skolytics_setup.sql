USE skolytics;

-- Students table
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    roll_no INT,
    class_name VARCHAR(10),
    parent_name VARCHAR(100),
    contact VARCHAR(15),
    email VARCHAR(100)
);

-- Attendance table
CREATE TABLE attendance (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    date DATE,
    status VARCHAR(10),
    FOREIGN KEY (student_id)
    REFERENCES students(id)
);

-- Exams table
CREATE TABLE exams (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    exam_type VARCHAR(50),
    math INT,
    science INT,
    english INT,
    hindi INT,
    date DATE,
    FOREIGN KEY (student_id)
    REFERENCES students(id)
);

-- Users table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    password VARCHAR(100),
    role VARCHAR(20)
);


-- Students add karo
INSERT INTO students VALUES
(1, 'Garima Singh', 1,
'11A', 'Mrs. Singh',
'9999999999',
'garima@gmail.com'),

(2, 'Rahul Kumar', 2,
'11A', 'Mr. Kumar',
'8888888888',
'rahul@gmail.com'),

(3, 'Priya Verma', 3,
'11A', 'Mrs. Verma',
'7777777777',
'priya@gmail.com');

-- Users add karo
INSERT INTO users VALUES
(1, 'Admin',
'admin@dps.com',
'admin123', 'admin'),

(2, 'Mrs. Sharma',
'teacher@dps.com',
'teacher123', 'teacher'),

(3, 'Garima Singh',
'garima@gmail.com',
'garima123', 'student');