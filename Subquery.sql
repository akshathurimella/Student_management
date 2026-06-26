 select name from students where stu_id in (select stu_id from enrollments where course_id = 101);
+-------+
| name  |
+-------+
| aksha |
+-------+
