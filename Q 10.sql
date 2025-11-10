/* How many students are there in each class and gender wise. */
SELECT 
    m.Class,
    s.Gender,
    COUNT(DISTINCT s.StudentId) AS NumberOfStudents
FROM Student s
JOIN Marks m ON s.StudentId = m.StudentID
GROUP BY m.Class, s.Gender
ORDER BY m.Class, s.Gender;
