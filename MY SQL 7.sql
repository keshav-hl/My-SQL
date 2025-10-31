/* using the database collage. */
use collage;

/* Creating the table department. */
create table dept(
id int primary key,
name varchar(50)
);

/* Inserting the values to the dept table. */
insert into dept 
values 
(101, "Big Data"),
(102, "Criptogrophy"),
(103, "parallel computing");

/* diaply the deptment table. */
select * from dept;

/* Creating the table teacher and forign key in the table. */
create table if not exists teacher(
id int primary key,
name varchar(50),
dept_id int,
foreign key(dept_id) references dept(id)
on delete cascade
on update cascade
);

/* Inserting the values into the teacher table. */
insert into teacher
values
(1, "keshav", 102),
(2, "pramod", 101),
(3, "shiva", 103);

/* Displaying the teacher table. */
select * from teacher;

/* Make updates and check wether cascadeing will work or not in forgin keys. */
update dept
set id = 101
where id = 01;

/* lets display the both table and verify. */
select * from dept;
select * from teacher;
/* yes, cascadeing is working in forign keys. */
