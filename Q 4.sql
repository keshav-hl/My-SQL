/* Create a view to display the top 5 students in each class. */
CREATE VIEW Top5StudentsPerClass AS
SELECT 
    s.StudentId,
    CONCAT(st.FirstName, ' ', st.LastName) AS StudentName,
    s.Class,
    s.TotalMarks,
    s.Percentage
FROM (
    SELECT 
        StudentId,
        Class,
        TotalMarks,
        Percentage,
        ROW_NUMBER() OVER (PARTITION BY Class ORDER BY Percentage DESC) AS rank_pos
    FROM Summary
) AS s
JOIN Student st ON s.StudentId = st.StudentId
WHERE s.rank_pos <= 5;

/*Display the top5Studentsperclass as the view of the table. */
SELECT * FROM Top5StudentsPerClass;
