/* using the collage database. */
use collage;

/* It will work as the group by clause. */
select distinct city from student;

/* Example of the group by clause. */
select city from student group by city;

/* Having clause Examples. */
/* Count number of students in each city where max marks cross 90. */
select city, count(marks) as 'num of students' from student group by city having max(marks) > 90;

/* Sequence of the queries in the sql commands. */
/* select column
 from table 
 where condition 
 group by condition
 having condition
 order by column asc (or) desc; */
 
select city, count(marks) as 'num of students'
from student 
where marks > 90
group by city
having max(marks) > 90
order by city desc;

/* table related queries. */
update student
set grade = 'O'
where grade = 'A';

/* First we should come out of the safe update mode in my sql. */
set sql_safe_updates = 0; /* 0 means safe mode off. */
set sql_safe_updates = 1; /* 1 means safe mode on. */

/* Let me view the table. */
select * from student;

/* update query. */
update student 
set marks = 85 
where rollno = 105;

update student
set grade = "B"
where marks between 80 and 90;

update student 
set grade = 'A'
where marks between 90 and 100;

/* view the table student. */
select * from student;

/* In table related queries, Delete query. */
delete from student 
where marks = 82;

/* see the table wether it is deleted are not. */
select * from student;