SELECT teachers.name AS teacher, students.name as student, assignments.name as assignment, (completed_at - started_at) AS duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN assignments ON assignment_id = assignments.id
JOIN teachers ON teachers.id = teacher_id
ORDER BY duration;