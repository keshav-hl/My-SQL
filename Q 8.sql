/* What is the average score of students in each class overall subject. */
SELECT 
    m.Class,
    ROUND(AVG(m.ScoredMarks), 2) AS AverageScore
FROM Marks m
GROUP BY m.Class
ORDER BY m.Class;
