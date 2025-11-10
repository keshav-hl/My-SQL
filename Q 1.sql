/* Creating the database clg. */
create database clg;

/* use the database clg to create the tables. */  
use clg;

/* Creating the table student. */
CREATE TABLE Student (
    StudentId INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50),
    Gender CHAR(1),
    DOB DATE,
    AdmissionDate DATE,
    Address VARCHAR(100),
    CHECK (DOB < AdmissionDate)  -- ensures DOB is before AdmissionDate
);

/* inserting the values to the student table. */
INSERT INTO Student (StudentId, FirstName, LastName, Gender, DOB, AdmissionDate, Address)
VALUES 
(1, 'Keshav', 'HL', 'M', '2004-05-20', '2021-07-15', 'Bangalore'),
(2, 'Ananya', 'R', 'F', '2005-03-12', '2022-06-20', 'Mysore');

/* display the table student. */
select * from student;

/* Create the table Marks. */
CREATE TABLE Marks (
    StudentMarksID INT PRIMARY KEY,
    StudentID INT,
    Class VARCHAR(20),
    SubjectName VARCHAR(50),
    MaxMark INT CHECK (MaxMark > 0),
    ScoredMarks INT CHECK (ScoredMarks >= 0),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentId),
    CHECK (ScoredMarks <= MaxMark)  -- ✅ Table-level CHECK constraint
);

/* Inserting the values to the Marks. */
INSERT INTO Marks (StudentMarksID, StudentID, Class, SubjectName, MaxMark, ScoredMarks)
VALUES
(101, 1, '10A', 'Math', 100, 95),
(102, 1, '10A', 'Science', 100, 88),
(103, 2, '9B', 'English', 100, 92);

/* Display the table marks. */
Select * from Marks;

/*Create table Summary. */
CREATE TABLE Summary (
    StudentId INT,
    Class VARCHAR(20),
    TotalMarks INT,
    Percentage DECIMAL(5,2),
    FOREIGN KEY (StudentId) REFERENCES Student(StudentId)
);

/* Inserting the values to the Summary table. */
INSERT INTO Summary (StudentId, Class, TotalMarks, Percentage)
VALUES
(1, '10A', 183, 91.5),
(2, '9B', 92, 92.0);

/*Display the table Summary. */
select * from Summary;
