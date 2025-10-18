-- Day 30 clauses and operators
create database university;
use university;

create table Students(
student_id int primary key,
students_name varchar(100),
email varchar(100),
courses_name varchar(100),
Gender enum("m", "F"),
gpa decimal(10,2),
course_id int
);

insert into 
Students (student_id,students_name,email,courses_name,Gender,gpa,course_id)
values
(1, 'Pavina', 'pavinar@email.com', 'computerscience' , 'F', 9.2,201),
(2, 'Anand', 'anandlikku@email.com', 'Accounts', 'm', 8.2,202),
(3, 'vishwa', null , 'RDS','m', 8.3,203),
(4, 'Likhith','likku@email.com', 'Medical science' , 'm',9.8,204),
(5, 'tithiksha', null, 'fashion designing','F' , 9.7,205);

-- 1 Distinct and where
select distinct courses_name
from Students;

select distinct courses_name
from Students
where course_id=204;

-- 2 with null and without null
select student_id,students_name
from Students
where email is null;

select student_id,students_name
from Students
where email is not null;

-- in, between, not between
select student_id,students_name
from Students
where course_id in(201, 204);

select student_id,students_name,gpa
from Students
where gpa between 9.0 and 9.8;

select student_id,students_name,gpa
from Students
where gpa not between 9.0 and 9.8;




