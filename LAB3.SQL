Enter password: ******
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 8.0.36 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| anudip_lab         |
| danish             |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
8 rows in set (0.03 sec)

mysql> use anudip_lab;
Database changed
mysql> create table student(  stud_id varchar(10) primary key,  first_name varchar(20) not null, last_name varchar(20) not null );
Query OK, 0 rows affected (0.05 sec)

mysql> desc student;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| stud_id    | varchar(10) | NO   | PRI | NULL    |       |
| first_name | varchar(20) | NO   |     | NULL    |       |
| last_name  | varchar(20) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> INSERT INTO Student (stud_id, first_name, last_name) VALUES ('S1', 'Danish', 'Shaikh'),  ('S2', 'Shahid', 'Khan'), ('S3', 'Tanvesh', 'Vaity'), ('S4', 'Ayaan', 'Deshmukh');
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from student;
+---------+------------+-----------+
| stud_id | first_name | last_name |
+---------+------------+-----------+
| S1      | Danish     | Shaikh    |
| S2      | Shahid     | Khan      |
| S3      | Tanvesh    | Vaity     |
| S4      | Ayaan      | Deshmukh  |
+---------+------------+-----------+
4 rows in set (0.00 sec)

mysql> create table enrollment(  enrollment_id varchar(10) not null, course_id varchar(10) not null, stud_id varchar(10) not null, course_name varchar(30) not null,primary key(enrollment_id),foreign key(stud_id) references student(stud_id) );
Query OK, 0 rows affected (0.07 sec)

mysql> desc enrollment;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| enrollment_id | varchar(10) | NO   | PRI | NULL    |       |
| course_id     | varchar(10) | NO   |     | NULL    |       |
| stud_id       | varchar(10) | NO   | MUL | NULL    |       |
| course_name   | varchar(30) | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> INSERT INTO Enrollment (enrollment_id, course_id, stud_id, course_name) VALUES('E201', 'CS101', 'S1', 'Programming'),('E202', 'CS102', 'S1', 'Data Structures'),('E203', 'CS101', 'S2', 'Programming'),('E204', 'CS103', 'S2', 'Computer Networks'),('E205', 'CS102', 'S3', 'Data Structures'),('E206', 'CS104', 'S4', 'Operating Systems');
Query OK, 6 rows affected (0.01 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> select * from enrollment;
+---------------+-----------+---------+-------------------+
| enrollment_id | course_id | stud_id | course_name       |
+---------------+-----------+---------+-------------------+
| E201          | CS101     | S1      | Programming       |
| E202          | CS102     | S1      | Data Structures   |
| E203          | CS101     | S2      | Programming       |
| E204          | CS103     | S2      | Computer Networks |
| E205          | CS102     | S3      | Data Structures   |
| E206          | CS104     | S4      | Operating Systems |
+---------------+-----------+---------+-------------------+
6 rows in set (0.00 sec)

mysql> select s.stud_id, s.first_name, s.last_name, e.enrollment_id, e.course_id, e.course_name from student s  join enrollment e on s.stud_id = e.stud_id;
+---------+------------+-----------+---------------+-----------+-------------------+
| stud_id | first_name | last_name | enrollment_id | course_id | course_name       |
+---------+------------+-----------+---------------+-----------+-------------------+
| S1      | Danish     | Shaikh    | E201          | CS101     | Programming       |
| S1      | Danish     | Shaikh    | E202          | CS102     | Data Structures   |
| S2      | Shahid     | Khan      | E203          | CS101     | Programming       |
| S2      | Shahid     | Khan      | E204          | CS103     | Computer Networks |
| S3      | Tanvesh    | Vaity     | E205          | CS102     | Data Structures   |
| S4      | Ayaan      | Deshmukh  | E206          | CS104     | Operating Systems |
+---------+------------+-----------+---------------+-----------+-------------------+
6 rows in set (0.00 sec)

