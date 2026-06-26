create table students(
    -> STU_ID int primary key,
    -> NAME varchar(100),
    -> EMAIL varchar(100),
    -> CITY varchar(50),
    -> ENROLLMENT_DATE DATE
    -> );


create table courses(
    -> course_id int primary key,
    -> course_name varchar(100),
    -> fee decimal(10,2)
    -> );


 create table enrollments(
    -> enrollment_id int,
    -> stu_id int,
    -> course_id int,
    -> foreign key ( stu_id) references students(stu_id),
    -> foreign key (course_id) references courses(course_id)
    -> );
