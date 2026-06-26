SELECT s.name, c.course_name
FROM students s
JOIN enrollments e
    ON s.stu_id = e.stu_id
JOIN courses c
    ON e.course_id = c.course_id;


select students.stu_id,students.course_id,courses.course_id,courses.course_name
    -> from students
    -> right join
    -> courses
    -> on students.course_id = courses.course_id;
+--------+-----------+-----------+--------------+
| stu_id | course_id | course_id | course_name  |
+--------+-----------+-----------+--------------+
|      4 |       101 |       101 | SQL          |
|      2 |       102 |       102 | Python       |
|      3 |       103 |       103 | Data Science |
|      1 |       104 |       104 | Java         |
+--------+-----------+-----------+--------------+
