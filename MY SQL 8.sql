/* Table related queries by using alter table. */
alter table student
add column age int not null default 20;

/* lets we display the table student. */
select * from student;

/* lets we modify the column. */
alter table student
modify age varchar(2);

/* lets make some changes are verification. */
update student 
set age = 100
where rollno = 105;

/* It is not possible to add the 100 in the row 105. */
alter table student
modify age int;

/* display the student table. */
select * from student;

/* Rename the column age. */
alter table student
change age stu_age int;

/* Drop the column stu_age in the student table. */
alter table student
drop column stu_age;

/* lets check the stu_age is deleted or not. */
select * from student;

/* Let we check can we re-name table name. */
alter table student 
rename clg_student;

/* Truncate is used for the deleting all the data in the table. */
/* Drop table will complete table. */
truncate table student;

/* Practice question on the above concepts. */
/* 1. Change the name of column "name" to "full_name". */
alter table clg_student
change name full_name varchar(50);

/* 2. Delete all the students who scored marks less than 80. */
delete from clg_student where marks < 80;
/* Lets we see the table to verify the rows are deleted are not. */
select * from clg_student;
/* Yes, it has been deleted. */

/* 3. Delete the column grades in the clg_student table. */
alter table clg_student
drop column grade;

/* lets we check the wether grade column is deleted are not. */
select * from clg_student; 
