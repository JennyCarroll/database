SELECT sum(assignment_submissions.duration) as test
FROM assignment_submissions
JOIN students.id = student_id
ON students
WHERE name = 'Ibrahim Schimmel'