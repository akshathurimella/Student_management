#SELECT:
  
select * from students;
+--------+-------+-----------------+------------+-----------------+
| stu_id | name  | email           | city       | enrollment_date |
+--------+-------+-----------------+------------+-----------------+
|      1 | Ajay  | ajay@gmail.com  | hyderabad  | 2026-04-12      |
|      2 | Raj   | raj@gmail.com   | Vizag      | 2025-07-22      |
|      3 | Anshu | Anshu@gmail.com | chennai    | 2026-03-19      |
|      4 | Sneha | Sneha@gmail.com | vijayawada | 2025-12-20      |
|      5 | Kumar | kumar@gmail.com | kolkata    | 2024-11-03      |
+--------+-------+-----------------+------------+-----------------+


select * from courses;
+-----------+------------------+---------+
| course_id | course_name      | fee     |
+-----------+------------------+---------+
|       101 | SQL              | 5000.00 |
|       102 | Python           | 4500.00 |
|       103 | Data Science     | 6000.00 |
|       104 | Java             | 7000.00 |
|       105 | machine learning | 5500.00 |
+-----------+------------------+---------+


select * from enrollments;
+---------------+--------+-----------+
| enrollment_id | stu_id | course_id |
+---------------+--------+-----------+
|            11 |      1 |       101 |
|            22 |      2 |       102 |
|            33 |      3 |       103 |
|            44 |      4 |       104 |
|            55 |      5 |       105 |
+---------------+--------+-----------+


select name,city from students;
+-------+------------+
| name  | city       |
+-------+------------+
| Ajay  | hyderabad  |
| Raj   | Vizag      |
| Anshu | chennai    |
| Sneha | vijayawada |
| Kumar | kolkata    |
+-------+------------+

#UPDATE:  
update students set city = "Banglore" where stu_id = 4;

select * from students;
+--------+-------+-----------------+-----------+-----------------+
| stu_id | name  | email           | city      | enrollment_date |
+--------+-------+-----------------+-----------+-----------------+
|      1 | Ajay  | ajay@gmail.com  | hyderabad | 2026-04-12      |
|      2 | Raj   | raj@gmail.com   | Vizag     | 2025-07-22      |
|      3 | Anshu | Anshu@gmail.com | chennai   | 2026-03-19      |
|      4 | Sneha | Sneha@gmail.com | Banglore  | 2025-12-20      |
|      5 | Kumar | kumar@gmail.com | kolkata   | 2024-11-03      |
+--------+-------+-----------------+-----------+-----------------+


#CLAUSES:
LIMIT:

select * from courses limit 2;
+-----------+-------------+---------+
| course_id | course_name | fee     |
+-----------+-------------+---------+
|       101 | SQL         | 5000.00 |
|       102 | Python      | 4500.00 |
+-----------+-------------+---------+


WHERE CLAUSE:

select * from students where city = "chennai";
+--------+-------+-----------------+---------+-----------------+
| stu_id | name  | email           | city    | enrollment_date |
+--------+-------+-----------------+---------+-----------------+
|      3 | Anshu | Anshu@gmail.com | chennai | 2026-03-19      |
+--------+-------+-----------------+---------+-----------------+


 select * from courses where course_name = "SQL";
+-----------+-------------+---------+
| course_id | course_name | fee     |
+-----------+-------------+---------+
|       101 | SQL         | 5000.00 |
+-----------+-------------+---------+


GROUP BY:


mysql> select course_name,max(fee) from courses group by course_name;
+--------------+----------+
| course_name  | max(fee) |
+--------------+----------+
| SQL          |  5000.00 |
| Python       |  4500.00 |
| Data Science |  6000.00 |
| Java         |  7000.00 |
+--------------+----------+

HAVING CLAUSE:

mysql> select course_name,max(fee) from courses group by course_name having max(fee)>5000;
+--------------+----------+
| course_name  | max(fee) |
+--------------+----------+
| Data Science |  6000.00 |
| Java         |  7000.00 |
+--------------+----------+



GROUPBY WITH ALIAS NAME:

mysql> select course_name,max(fee) as max_fee from courses group by course_name having max(fee)>5000;
+--------------+---------+
| course_name  | max_fee |
+--------------+---------+
| Data Science | 6000.00 |
| Java         | 7000.00 |
+--------------+---------+



ORDER BY:


mysql> select name from students order by name asc;
+-------+
| name  |
+-------+
| Ajay  |
| Anshu |
| Kumar |
| Raj   |
| Sneha |
+-------+


mysql> select name from students order by name desc;
+-------+
| name  |
+-------+
| Sneha |
| Raj   |
| Kumar |
| Anshu |
| aksha |
+-------+


alter table students add column course_id int ;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

ALTER:

mysql> select * from students;
+--------+-------+-----------------+-----------+-----------------+-----------+
| stu_id | name  | email           | city      | enrollment_date | course_id |
+--------+-------+-----------------+-----------+-----------------+-----------+
|      1 | aksha | aksha@gmail.com | hyderabad | 2026-04-12      |      NULL |
|      2 | Raj   | raj@gmail.com   | Vizag     | 2025-07-22      |      NULL |
|      3 | Anshu | Anshu@gmail.com | chennai   | 2026-03-19      |      NULL |
|      4 | Sneha | Sneha@gmail.com | Banglore  | 2025-12-20      |      NULL |
|      5 | Kumar | kumar@gmail.com | kolkata   | 2024-11-03      |      NULL |
+--------+-------+-----------------+-----------+-----------------+-----------+
4 rows in set (0.00 sec)


mysql> update students set course_id =102 where stu_id = 2;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update students set course_id =101 where stu_id = 4;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update students set course_id =104 where stu_id = 1;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update students set course_id =103 where stu_id = 3;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update students set course_id =105 where stu_id = 5;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from students;
+--------+-------+-----------------+-----------+-----------------+-----------+
| stu_id | name  | email           | city      | enrollment_date | course_id |
+--------+-------+-----------------+-----------+-----------------+-----------+
|      1 | aksha | aksha@gmail.com | hyderabad | 2026-04-12      |       104 |
|      2 | Raj   | raj@gmail.com   | Vizag     | 2025-07-22      |       102 |
|      3 | Anshu | Anshu@gmail.com | chennai   | 2026-03-19      |       103 |
|      4 | Sneha | Sneha@gmail.com | Banglore  | 2025-12-20      |       101 |
|      5 | Kumar | kumar@gmail.com | kolkata   | 2024-11-03      |       105 |
+--------+-------+-----------------+-----------+-----------------+-----------+
