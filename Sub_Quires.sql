use college;

CREATE TABLE student(
id INT PRIMARY KEY,
name VARCHAR(50),
marks int
);

INSERT INTO student (id, name, marks) VALUES
(101, 'Rahul', 85),
(102, 'Priya', 92),
(103, 'Amit', 78),
(104, 'Sneha', 88),
(105, 'Rohan', 67),
(106, 'Anjali', 95),
(107, 'Vikas', 74),
(108, 'Neha', 81),
(109, 'Arjun', 90),
(110, 'Kiran', 76);


SELECT AVG(marks)
FROM student;

SELECT name ,marks,id
FROM student 
WHERE marks>(SELECT AVG(marks) FROM student);

SELECT name,id
FROM student
WHERE id %2=0;


SELECT name,id
FROM student 
WHERE id IN (SELECT id
FROM student
WHERE id %2=0);

