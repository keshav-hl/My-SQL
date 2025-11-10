/* Select all the male students in each class and subject wise top score. */
SELECT 
    m.Class,
    m.SubjectName,
    CONCAT(s.FirstName, ' ', s.LastName) AS StudentName,
    s.Gender,
    m.ScoredMarks AS TopScore
FROM Marks m
JOIN Student s ON m.StudentID = s.StudentId
WHERE s.Gender = 'M'
  AND (m.Class, m.SubjectName, m.ScoredMarks) IN (
        SELECT Class, SubjectName, MAX(ScoredMarks)
        FROM Marks m2
        JOIN Student s2 ON m2.StudentID = s2.StudentId
        WHERE s2.Gender = 'M'
        GROUP BY Class, SubjectName
    )
ORDER BY m.Class, m.SubjectName;
