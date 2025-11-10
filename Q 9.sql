/* List out all the students who scored less than average marks of the class. */
SELECT 
    s.StudentId,
    CONCAT(s.FirstName, ' ', s.LastName) AS StudentName,
    m.Class,
    SUM(m.ScoredMarks) AS TotalMarks,
    class_avg.AvgMarks AS ClassAverage
FROM Student s
JOIN Marks m ON s.StudentId = m.StudentID
JOIN (
    SELECT Class, AVG(TotalClassMarks) AS AvgMarks
    FROM (
        SELECT Class, StudentID, SUM(ScoredMarks) AS TotalClassMarks
        FROM Marks
        GROUP BY Class, StudentID
    ) AS sub
    GROUP BY Class
) AS class_avg
ON m.Class = class_avg.Class
GROUP BY s.StudentId, m.Class, class_avg.AvgMarks
HAVING SUM(m.ScoredMarks) < class_avg.AvgMarks
ORDER BY m.Class, TotalMarks;

/* Display the table studend. */
select * from student;