/* Aggregate  Functions. */
/* first create a new table called students. */
create table students(
student_id int not null auto_increment,
email varchar(50),
stu_fname varchar(50),
stu_lname varchar(50),
login_count int,
course_count int,
signup_month int,
primary key(student_id)
);

/* display the tables in the database */
show tables;

/* insert 20 values to the table students. */
INSERT INTO students (email, stu_fname, stu_lname, login_count, course_count, signup_month) VALUES
("k@gmail.com", "Keshav", "HL", 5, 2, 6),
("ravi@gmail.com", "Ravi", "Kumar", 8, 3, 5),
("ananya@gmail.com", "Ananya", "Sharma", 10, 4, 7),
("megha@gmail.com", "Megha", "Rao", 6, 2, 4),
("arjun@gmail.com", "Arjun", "Patel", 9, 5, 8),
("sneha@gmail.com", "Sneha", "Verma", 4, 1, 3),
("rahul@gmail.com", "Rahul", "Singh", 12, 6, 9),
("priya@gmail.com", "Priya", "Nair", 7, 3, 5),
("vijay@gmail.com", "Vijay", "Das", 11, 5, 10),
("aisha@gmail.com", "Aisha", "Khan", 3, 1, 2),
("manish@gmail.com", "Manish", "Goyal", 5, 2, 6),
("neha@gmail.com", "Neha", "Reddy", 6, 3, 7),
("varun@gmail.com", "Varun", "Joshi", 8, 4, 5),
("isha@gmail.com", "Isha", "Gupta", 4, 1, 3),
("rohan@gmail.com", "Rohan", "Mehta", 10, 4, 9),
("tanya@gmail.com", "Tanya", "Bansal", 7, 2, 8),
("nitesh@gmail.com", "Nitesh", "Yadav", 9, 5, 10),
("diya@gmail.com", "Diya", "Menon", 5, 2, 6),
("vivek@gmail.com", "Vivek", "Pandey", 8, 4, 9),
("sara@gmail.com", "Sara", "Fernandes", 3, 1, 2);

/* Display the table students. */
select * from students; 

/* Tasks of Concatenation for the student table. */
/* 1. Give me the full name of all the students. */
select concat(stu_fname,' ', stu_lname) as FullName from students;

/* 2. Give me fullname and the login_count of all students in the table. */
select concat(stu_fname, " ", stu_lname) as FullName, login_count from students;

/* Tasks of replace for the student table. */
/* 3. while getting all the first name change a to @. */
select replace(stu_fname, 'a', '@') as stu_fname from students;

/* 4. Get all list of email, If email is longer then 7 character, turncate it with ... */
select concat(substring(email, 1,7),'...') as email from students;

/* 5. Get me lenth of all email. */
select email, length(email) as email_length from students;
/* OR */
select email, char_length(email) as email_length from students;

/* 6. Reverse the email in student table. */
select reverse(email) as reversed_email from students;

/* 7. Get all the first_name as upper in the student table. */
select upper(stu_fname) as first_name from students;
