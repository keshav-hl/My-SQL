/* Creating the database */
create database temp1;

/* Droping the database */
drop database temp1;

/* creating the database again */
create database collage;

/* using the database cillage */
use collage;

/* creating the table in the database collage */
create table students(
id int primary key,
name varchar(50),
age int not null
);

/* inserting the values to the table students. */
insert into students(id, name, age) values
(1, "keshav", 20);

/* inserting in different way. */
insert into students values(2, "Pramod", 21);

/* Displaying the table students. */
select * from students;

/* first we should  use the database collae */
use collage;

/* create new table student */
CREATE TABLE student (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

/* insert the values into the table */
INSERT INTO student (rollno, name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

/* display the table student. */
select * from student;

/* Accesing the columns form the student table. */
select name from student;
select name, marks, city from student;
select rollno, grade from student;

/* dispalying the unique values from the student table. */
select distinct city from student;

/* where condition */
select * from student where marks > 80;
select * from student where marks+10 > 100;
select * from student where city = 'Delhi';
select concat(marks,'  ', "'", grade, "'") as Marks from student where marks > 90;

/* Logical Operators (and, or, Between, in and not in)*/
select * from student where marks > 90 and city = 'Delhi';
select * from student where marks > 90 or city = 'Delhi';
select * from student where marks between 80 and 90;
select * from student where city in ("Delhi", "Mumbai");
select * from student where city not in ("Delhi", "Mumbai");

/* show the limet clause */
select * from student limit 3;
select * from student where marks > 80 limit 3;

/* Order by clause */
select * from student order by marks asc;
select * from student order by marks desc limit 3;

/* Aggregate Funictions (max, min, sum, avg, and count */
select max(marks) from student;
select min(marks) from student;
select sum(marks) from student;
select avg(marks) from student;
select count(city) from student;
