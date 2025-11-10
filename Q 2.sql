/* Create a stored procedure to insert, update student and marks information’s.
If the data exists already, it should update and if not it should insert. */

DELIMITER $$

CREATE PROCEDURE InsertOrUpdateStudentMarks(
    IN p_StudentId INT,
    IN p_FirstName VARCHAR(50),
    IN p_LastName VARCHAR(50),
    IN p_Gender CHAR(1),
    IN p_DOB DATE,
    IN p_AdmissionDate DATE,
    IN p_Address VARCHAR(100),
    IN p_StudentMarksID INT,
    IN p_Class VARCHAR(20),
    IN p_SubjectName VARCHAR(50),
    IN p_MaxMark INT,
    IN p_ScoredMarks INT
)
BEGIN
    -- Insert or Update Student
    IF EXISTS (SELECT * FROM Student WHERE StudentId = p_StudentId) THEN
        UPDATE Student
        SET FirstName = p_FirstName,
            LastName = p_LastName,
            Gender = p_Gender,
            DOB = p_DOB,
            AdmissionDate = p_AdmissionDate,
            Address = p_Address
        WHERE StudentId = p_StudentId;
    ELSE
        INSERT INTO Student(StudentId, FirstName, LastName, Gender, DOB, AdmissionDate, Address)
        VALUES (p_StudentId, p_FirstName, p_LastName, p_Gender, p_DOB, p_AdmissionDate, p_Address);
    END IF;

    -- Insert or Update Marks
    IF EXISTS (SELECT * FROM Marks WHERE StudentMarksID = p_StudentMarksID) THEN
        UPDATE Marks
        SET StudentID = p_StudentId,
            Class = p_Class,
            SubjectName = p_SubjectName,
            MaxMark = p_MaxMark,
            ScoredMarks = p_ScoredMarks
        WHERE StudentMarksID = p_StudentMarksID;
    ELSE
        INSERT INTO Marks(StudentMarksID, StudentID, Class, SubjectName, MaxMark, ScoredMarks)
        VALUES (p_StudentMarksID, p_StudentId, p_Class, p_SubjectName, p_MaxMark, p_ScoredMarks);
    END IF;
END$$

DELIMITER ;

/* Lets we check the Procedure. */
CALL InsertOrUpdateStudentMarks(
    1, 'Keshav', 'HL', 'M', '2004-05-20', '2021-07-15', 'Bangalore',
    101, '10A', 'Math', 100, 95
);

/* Display the student table. */
select * from student;

/* Display the Marks table to verify it is working or not. */
select * from Marks;
