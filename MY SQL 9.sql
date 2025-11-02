/* Creating clg_stud database. */
create database clg_stud;

/* using clg_stud database. */
use clg_stud;

/* Creating the student table for performing the joins. */ 
create table student(
stud_id int primary key,
stud_name varchar(50)
);

/* Inserting the values to the student table. */
insert into student(stud_id, stud_name)
values
(101, "keshav"),
(102, "pramod"),
(103, "shiva");

/* Displaying the student table. */
select * from student;

/* Creating the course table. */
create table course(
stud_id int primary key,
course_name varchar(50)
);

/* Inserting the values to the table course. */
insert into course(stud_id, course_name)
values
(102, "english"),
(105, "math"),
(103, "science"),
(107, "computer science");

/* Displaying the table course. */
select * from course;

/* let us perform inner join. */
select * 
from student
inner join course
on student.stud_id = course.stud_id;

/* Use alias in the inner join. */
select *
from student as s
inner join course as c
on s.stud_id = c.stud_id;

/* left join on the table student and course. */
select * 
from student as s
left join course as c
on s.stud_id = c.stud_id;

/* Right join on the table student and course. */
select *
from student as s
right join course as c
on s.stud_id = c.stud_id;

/* Full join on the student and course table. */
select * 
from student as s
left join course as c
on s.stud_id = c.stud_id
union
select * 
from student as s
right join course as c
on s.stud_id = c.stud_id;

/* Left Exclusive join on student and course tables. */
select * 
from student as s
left join course as c
on s.stud_id = c.stud_id
where c.stud_id is null;

/* Right Exclusive join on student and course tables. */
select * 
from student as s
right join course as c
on s.stud_id = c.stud_id
where s.stud_id is null;

/* Full Exclusive join on student and course tables. */
select * 
from student as s
left join course as c
on s.stud_id = c.stud_id
where c.stud_id is null
union
select * 
from student as s
right join course as c
on s.stud_id = c.stud_id
where s.stud_id is null;

/* Create a new table for Self join. */
CREATE TABLE Employee (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    manager_id INT NULL 
    );
    
/* Insert the values to the Empolyee table. */
INSERT INTO Employee (id, name, manager_id)
VALUES 
(101, 'adam', 103),
(102, 'bob', 104),
(103, 'casey', NULL),
(104, 'donald', 103);

/* Display the table employee. */
select * from Employee;

/* Now we can perform the self join on the table Employee. */
select a.name as Manager_name, b.name
from Employee as a
join Employee as b
on a.id = b.manager_id;  

/* union on the employee table. */
select name from employee
union
select name from employee;

/* Union all on the employee table. */
select name from employee
union all 
select name from employee;
