/* Select top scoring student name subject and class wise. */
SELECT 
    m.Class,
    m.SubjectName,
    CONCAT(s.FirstName, ' ', s.LastName) AS StudentName,
    m.ScoredMarks AS TopScore
FROM Marks m
JOIN Student s ON m.StudentID = s.StudentId
WHERE (m.Class, m.SubjectName, m.ScoredMarks) IN (
    SELECT Class, SubjectName, MAX(ScoredMarks)
    FROM Marks
    GROUP BY Class, SubjectName
)
ORDER BY m.Class, m.SubjectName;
