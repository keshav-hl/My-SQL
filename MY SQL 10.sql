/* Using the database clg_stud. */ 
use clg_stud;

/* Create the students table in the clg_stud database. */
CREATE TABLE students (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT 
);

/* Inserting the values to the table students. */
INSERT INTO students (rollno, name, marks) VALUES
(101, 'anil', 78),
(102, 'bhumika', 93),
(103, 'chetan', 85),
(104, 'dhruv', 96),
(105, 'emanuel', 92),
(106, 'farah', 82);

/* Displaying the table students. */
select * from students;

/* Get names of all the students who scored more than the class average. */
/*Step 1: Find the avg of class. */
/* Step 2: Find the names of the students with marks > avg. */
select avg(marks)
from students;

select name 
from students 
where marks > 87.6667;