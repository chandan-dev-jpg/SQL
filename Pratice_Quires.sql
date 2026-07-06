
USE college;
INSERT into
 student (id,name,age,city,marks)
VALUES
(101,"Raju",18,"Puri",90),
(102,"Rajesh",20,"Goa",80),
(103,"chandan",23,"Pune",78),
(104,"Akash",20,"ganjam",92),
(105,"Bikash",22,"chennai",93),
(106,"Dipak",24,"goa",98),
(107,"aman",25,"puri",67),
(108,"Gopal",23,"pune",89);
SELECT name,marks FROM student;

SELECT*FROM student WHERE marks>90;
SELECT*FROM student WHERE marks<90;

SELECT*FROM student WHERE city='puri';

select*from student order by name desc;

select*from student order by id asc;

select*from student where marks between 80 and 90;

select*from student where city in ("goa","pune");
select *from student where city not in ("goa","pune");

select * from student limit 3;

select  name,city from student limit 4;
select*from student order by city asc;

select name,marks from student order by name,marks desc;

select max(marks) from student;
select min(marks) from student;
select avg(marks) from student;

select city,marks,count(name)
from student 
group by city,marks;

select count(name),city
from student 
group by city
having max(marks)>90
order by city asc;
