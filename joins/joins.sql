SELECT students.name AS Sname, students.start_date AS Sstart, cohorts.name AS Cname, cohorts.start_date AS Cstart
FROM students 
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.start_date != students.start_date
ORDER BY Cstart;