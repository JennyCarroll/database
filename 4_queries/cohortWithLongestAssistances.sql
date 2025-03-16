SELECT cohorts.name, avg(completed_at - started_at) as average_assistance_time
FROM assistance_requests 
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC
LIMIT 1;



-- waiting for Andy's response to my question
-- the reason I cant do it like below is because a subquery only works if it returns a single value
-- SELECT (
-- SELECT cohorts.name AS name, avg((completed_at - started_at)) AS average_assistance_time
-- FROM assistance_requests
-- JOIN students ON students.id = student_id
-- JOIN cohorts ON cohorts.id = cohort_id
-- GROUP BY cohorts.name
-- ) as TEST, MAX(TEST.average_assistance_time)
-- HAVING MAX(avg(completed_at - started_at));


-- JOIN students ON students.id = student_id
-- JOIN assignments ON assignment_id = assignments.id
-- JOIN teachers ON teachers.id = teacher_id
-- JOIN cohorts ON cohorts.id = cohort_id