SELECT cohorts.name as cohort, COUNT(*) as total_submissions
FROM students
JOIN cohorts ON students.cohort_id = cohorts.id
JOIN assignment_submissions ON assignment_submissions.student_id = students.id
GROUP BY cohorts.name
ORDER BY COUNT(*) DESC;