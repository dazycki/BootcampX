SELECT assignments.id as id, assignments.name as name, assignments.day as day, assignments.chapter as chapter, COUNT(*) as total_requests
FROM assistance_requests
JOIN assignments ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY COUNT(*) DESC;