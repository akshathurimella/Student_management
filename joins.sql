SELECT s.name, c.course_name
FROM students s
JOIN enrollments e
    ON s.stu_id = e.stu_id
JOIN courses c
    ON e.course_id = c.course_id;
