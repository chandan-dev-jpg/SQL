CREATE DATABASE college;
USE college;


CREATE TABLE student(
id INT PRIMARY KEY ,
name VARCHAR(50) NOT NULL,
marks INT,
age INT,
city VARCHAR(50)
);


INSERT INTO student (id, name, marks, age, city)
VALUES
(1, 'Rahul', 85, 20, 'Hyderabad'),
(2, 'Priya', 92, 21, 'Bhubaneswar'),
(3, 'Amit', 78, 19, 'Delhi'),
(4, 'Sneha', 88, 22, 'Mumbai'),
(5, 'Rohan', 95, 20, 'Chennai'),
(6, 'Anjali', 81, 21, 'Bengaluru'),
(7, 'Karan', 76, 19, 'Kolkata'),
(8, 'Neha', 89, 22, 'Pune'),
(9, 'Arjun', 84, 20, 'Jaipur'),
(10, 'Pooja', 91, 21, 'Visakhapatnam');


ALTER TABLE student 
RENAME TO std ;

ALTER TABLE std
RENAME TO student;

ALTER TABLE student
MODIFY age VARCHAR(5);

ALTER TABLE student 
CHANGE age std_age INT;

ALTER TABLE student
ADD COLUMN gender varchar(50) ;

ALTER TABLE student
DROP COLUMN gender;


