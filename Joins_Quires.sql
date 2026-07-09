USE college;

CREATE TABLE Employee(
id INT PRIMARY KEY,
name VARCHAR(50)
);

INSERT INTO Employee(id,name) 
VALUES (101,"raju"),
(102,"Rajesh"),
(103,"Raja"),
(104,"Rajedra"),
(105,"Rahul");


CREATE TABLE Department(
id INT PRIMARY KEY,
DepartmentName VARCHAR(50)
);


INSERT INTO Department(id,DepartmentName) 
VALUES (101,"Hr"),
(102,"Enginnering"),
(103,"Ot");


SELECT * FROM  Employee
INNER JOIN Department
ON Employee.id=Department.id;

SELECT*FROM Employee as emp
INNER JOIN Department as dept
ON emp.id=dept.id;

SELECT*FROM Employee as e
LEFT JOIN Department as d
ON e.id=d.id;

SELECT*FROM Employee as e
RIGHT JOIN Department as d
ON e.id=d.id;

SELECT*FROM Employee as e
LEFT JOIN Department as d
ON e.id=d.id
UNION
SELECT*FROM Employee as e
RIGHT JOIN Department as d
ON e.id=d.id;

SELECT*FROM Employee as e 
LEFT JOIN Department as d
ON e.id=d.id
WHERE d.id is NULL;

SELECT*FROM Employee as e
RIGHT JOIN Department as d
ON e.id=d.id
WHERE d.id IS NULL;


