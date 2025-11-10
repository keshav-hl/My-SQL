/* Create a trigger whenever a record gets updated in marks table —
corresponding student total marks and percentage should get changed. */

DELIMITER $$

CREATE TRIGGER UpdateSummaryAfterMarksChange
AFTER UPDATE ON Marks
FOR EACH ROW
BEGIN
    DECLARE total INT;
    DECLARE percent DECIMAL(5,2);

    -- Calculate total marks for that student
    SELECT SUM(ScoredMarks), 
           (SUM(ScoredMarks) / SUM(MaxMark)) * 100
    INTO total, percent
    FROM Marks
    WHERE StudentID = NEW.StudentID;

    -- Update the Summary table
    UPDATE Summary
    SET TotalMarks = total,
        Percentage = percent
    WHERE StudentId = NEW.StudentID;
END$$

DELIMITER ;

/* Diplay the Summary table it is working or not. */
select * from Summary;

/* Update the marks and check the trigger is working or not. */
UPDATE Marks SET ScoredMarks = 98 WHERE StudentMarksID = 101;

/* Check the Summary table after updateing. */
select * from Summary;

/* Display the Marks table to cross verify the trigger is working are not. */
select * from Marks;
