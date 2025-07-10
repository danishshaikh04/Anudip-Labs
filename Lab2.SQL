
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
Server version: 8.0.36 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases
    -> show databases ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'show databases' at line 2
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| danish             |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
7 rows in set (0.00 sec)

mysql> create database anudip_lab;
Query OK, 1 row affected (0.02 sec)

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
8 rows in set (0.00 sec)

mysql> use anudip_lab;
Database changed

mysql> CREATE TABLE CUSTOMER(customer_id INT primary key, name varchar(50),email varchar(50), address varchar(100),city varchar(20), phone_number varchar(10), pin_code varchar(10));
Query OK, 0 rows affected (0.06 sec)

mysql> desc customer;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| customer_id  | int          | NO   | PRI | NULL    |       |
| name         | varchar(50)  | YES  |     | NULL    |       |
| email        | varchar(50)  | YES  |     | NULL    |       |
| address      | varchar(100) | YES  |     | NULL    |       |
| city         | varchar(20)  | YES  |     | NULL    |       |
| phone_number | varchar(10)  | YES  |     | NULL    |       |
| pin_code     | varchar(10)  | YES  |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
7 rows in set (0.03 sec)


mysql> INSERT INTO CUSTOMER VALUES (1, 'Ayaan Khan', 'ayaan@gmail.com', '12 MG Road', 'Mumbai', '9876543210', '400001'),
(2, 'Fatima Shaikh', 'fatima@gmail.com', '45 Hill View', 'Pune', '7894561230', '411001'),
(3, 'Irfan Pathan', 'irfan@gmail.com', '22 Green Park', 'Delhi', '7891234560', '110001'),
(4, 'Zoya Siddiqui', 'zoya@gmail.com', '76 Rose Lane', 'Hyderabad', '9123456789', '500001'),
(5, 'Rizwan Sheikh', 'rizwan@gmail.com', '88 Lake Road', 'Lucknow', '9998887776', '226001');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from customer;
+-------------+---------------+------------------+---------------+-----------+--------------+----------+
| customer_id | name          | email            | address       | city      | phone_number | pin_code |
+-------------+---------------+------------------+---------------+-----------+--------------+----------+
|           1 | Ayaan Khan    | ayaan@gmail.com  | 12 MG Road    | Mumbai    | 9876543210   | 400001   |
|           2 | Fatima Shaikh | fatima@gmail.com | 45 Hill View  | Pune      | 7894561230   | 411001   |
|           3 | Irfan Pathan  | irfan@gmail.com  | 22 Green Park | Delhi     | 7891234560   | 110001   |
|           4 | Zoya Siddiqui | zoya@gmail.com   | 76 Rose Lane  | Hyderabad | 9123456789   | 500001   |
|           5 | Rizwan Sheikh | rizwan@gmail.com | 88 Lake Road  | Lucknow   | 9998887776   | 226001   |
+-------------+---------------+------------------+---------------+-----------+--------------+----------+
5 rows in set (0.00 sec)

mysql> create table product( product_id INT PRIMARY KEY, product_name varchar(100) not null, category varchar(100) not null, sub_category varchar(100) not null, orignal_price INT not null, selling_price INT not null , stocK INT not null);
Query OK, 0 rows affected (0.07 sec)

mysql> desc product;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| product_id    | int          | NO   | PRI | NULL    |       |
| product_name  | varchar(100) | NO   |     | NULL    |       |
| category      | varchar(100) | NO   |     | NULL    |       |
| sub_category  | varchar(100) | NO   |     | NULL    |       |
| orignal_price | int          | NO   |     | NULL    |       |
| selling_price | int          | NO   |     | NULL    |       |
| stocK         | int          | NO   |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> INSERT INTO PRODUCT VALUES(101, 'wireless Mouse', 'Electronics', 'Accessories',799,599,50),(102,'Bluetooth speaker','Electronics', 'Audio',2999,1999,30);
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> INSERT INTO PRODUCT VALUES(103, 'T-Shirt', 'Clothing', 'Men',699,599,100),(104,'Dress','Clothing', 'Women',5999,5599,80);
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> INSERT INTO PRODUCT VALUES(105, 'water_bottle', 'Home','Kitchen', 299,199,100);
Query OK, 1 row affected (0.01 sec)

mysql> select * from product;
+------------+-------------------+-------------+--------------+---------------+---------------+-------+
| product_id | product_name      | category    | sub_category | orignal_price | selling_price | stocK |
+------------+-------------------+-------------+--------------+---------------+---------------+-------+
|        101 | wireless Mouse    | Electronics | Accessories  |           799 |           599 |    50 |
|        102 | Bluetooth speaker | Electronics | Audio        |          2999 |          1999 |    30 |
|        103 | T-Shirt           | Clothing    | Men          |           699 |           599 |   100 |
|        104 | Dress             | Clothing    | Women        |          5999 |          5599 |    80 |
|        105 | water_bottle      | Home        | Kitchen      |           299 |           199 |   100 |
+------------+-------------------+-------------+--------------+---------------+---------------+-------+
5 rows in set (0.00 sec)

mysql> CREATE TABLE ORDER_TABLE ( Order_id INT PRIMARY KEY, Customer_id INT , Product_id INT ,  quantity INT not null, Total_price INT not null, Order_status VARCHAR(50) not null, Order_date varchar(20) not null,  Payment_mode VARCHAR(50) not null, FOREIGN KEY (Customer_id) REFERENCES CUSTOMER(Customer_id),FOREIGN KEY (Product_id) REFERENCES PRODUCT(Product_id) );
Query OK, 0 rows affected (0.08 sec)

mysql> desc order_table;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| Order_id     | int         | NO   | PRI | NULL    |       |
| Customer_id  | int         | YES  | MUL | NULL    |       |
| Product_id   | int         | YES  | MUL | NULL    |       |
| quantity     | int         | NO   |     | NULL    |       |
| Total_price  | int         | NO   |     | NULL    |       |
| Order_status | varchar(50) | NO   |     | NULL    |       |
| Order_date   | varchar(20) | NO   |     | NULL    |       |
| Payment_mode | varchar(50) | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
8 rows in set (0.00 sec)

mysql> INSERT INTO ORDER_TABLE VALUES  (301, 1, 101, 2, 1198, 'Shipped', '2025-07-01', 'UPI'), (302, 2, 103, 1, 599, 'Delivered', '2025-07-02', 'Card'), (303, 3, 105, 3, 597, 'Pending', '2025-07-03', 'Cash'), (304, 4, 104, 1, 5599, 'Processing', '2025-07-04', 'UPi'), (305, 5, 102, 1, 1999, 'Delivered', '2025-07-05', 'UPI');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from order_table;
+----------+-------------+------------+----------+-------------+--------------+------------+--------------+
| Order_id | Customer_id | Product_id | quantity | Total_price | Order_status | Order_date | Payment_mode |
+----------+-------------+------------+----------+-------------+--------------+------------+--------------+
|      301 |           1 |        101 |        2 |        1198 | Shipped      | 2025-07-01 | UPI          |
|      302 |           2 |        103 |        1 |         599 | Delivered    | 2025-07-02 | Card         |
|      303 |           3 |        105 |        3 |         597 | Pending      | 2025-07-03 | Cash         |
|      304 |           4 |        104 |        1 |        5599 | Processing   | 2025-07-04 | UPi          |
|      305 |           5 |        102 |        1 |        1999 | Delivered    | 2025-07-05 | UPI          |
+----------+-------------+------------+----------+-------------+--------------+------------+--------------+
5 rows in set (0.00 sec)
