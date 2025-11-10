/* Calculate total marks and percentage directly from Marks. */
SELECT 
    s.StudentId,
    CONCAT(s.FirstName, ' ', s.LastName) AS StudentName,
    m.Class,
    SUM(m.ScoredMarks) AS TotalMarks,
    (SUM(m.ScoredMarks) / SUM(m.MaxMark)) * 100 AS CalculatedPercentage
FROM Student s
JOIN Marks m ON s.StudentId = m.StudentID
GROUP BY s.StudentId, m.Class;

/* Validation Query. */
SELECT 
    s.StudentId,
    CONCAT(s.FirstName, ' ', s.LastName) AS StudentName,
    su.Class,
    su.TotalMarks AS StoredTotal,
    su.Percentage AS StoredPercentage,
    SUM(m.ScoredMarks) AS CalculatedTotal,
    (SUM(m.ScoredMarks) / SUM(m.MaxMark)) * 100 AS CalculatedPercentage,
    CASE 
        WHEN ROUND(su.Percentage, 2) = ROUND((SUM(m.ScoredMarks) / SUM(m.MaxMark)) * 100, 2)
        THEN '✅ Correct'
        ELSE '❌ Incorrect'
    END AS ValidationStatus
FROM Student s
JOIN Marks m ON s.StudentId = m.StudentID
JOIN Summary su ON s.StudentId = su.StudentId
GROUP BY s.StudentId, su.Class, su.TotalMarks, su.Percentage;
