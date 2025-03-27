Enter password: *********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 8.0.41 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| dipeshdb                |             
| ecommerce               |                 
| information_schema      |
| medicine_recommendation |
| mysql                   |
| performance_schema      |
| studentmanagementsystem |
| sys                     |
+-------------------------+
14 rows in set (0.01 sec)

mysql> use dipeshdb
Database changed
mysql> CREATE TABLE Student (
    ->     ID INT PRIMARY KEY AUTO_INCREMENT,
    ->     Firstname VARCHAR(50) NOT NULL,
    ->     Lastname VARCHAR(50) NOT NULL,
    ->     Gender VARCHAR(10) NOT NULL,
    ->     Age INT NOT NULL,
    ->     Address VARCHAR(100),
    ->     PhoneNo VARCHAR(15)
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> INSERT INTO Student (ID, Firstname, Lastname, Gender, Age, Address, PhoneNo)
    -> VALUES
    ->     (101, 'Aarav', 'Sharma', 'Male', 21, 'Mumbai, Maharashtra', '9876543210'),
    ->     (102, 'Ishita', 'Patel', 'Female', 22, 'Ahmedabad, Gujarat', '9823456789'),
    ->     (103, 'Rohan', 'Mehta', 'Male', 23, 'Bangalore, Karnataka', '9765432109'),
    ->     (104, 'Priya', 'Verma', 'Female', 20, 'Delhi', '9988776655'),
    ->     (105, 'Vikram', 'Reddy', 'Male', 24, 'Hyderabad, Telangana', '9123456780'),
    ->     (106, 'Neha', 'Joshi', 'Female', 21, 'Pune, Maharashtra', '9876541230');
Query OK, 6 rows affected (0.01 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> select * from Student;
+-----+-----------+----------+--------+-----+----------------------+------------+
| ID  | Firstname | Lastname | Gender | Age | Address              | PhoneNo    |
+-----+-----------+----------+--------+-----+----------------------+------------+
| 101 | Aarav     | Sharma   | Male   |  21 | Mumbai, Maharashtra  | 9876543210 |
| 102 | Ishita    | Patel    | Female |  22 | Ahmedabad, Gujarat   | 9823456789 |
| 103 | Rohan     | Mehta    | Male   |  23 | Bangalore, Karnataka | 9765432109 |
| 104 | Priya     | Verma    | Female |  20 | Delhi                | 9988776655 |
| 105 | Vikram    | Reddy    | Male   |  24 | Hyderabad, Telangana | 9123456780 |
| 106 | Neha      | Joshi    | Female |  21 | Pune, Maharashtra    | 9876541230 |
+-----+-----------+----------+--------+-----+----------------------+------------+
6 rows in set (0.00 sec)
mysql> SELECT * FROM Student ORDER BY Lastname ASC;
+-----+-----------+----------+--------+-----+----------------------+------------+
| ID  | Firstname | Lastname | Gender | Age | Address              | PhoneNo    |
+-----+-----------+----------+--------+-----+----------------------+------------+
| 106 | Neha      | Joshi    | Female |  21 | Pune, Maharashtra    | 9876541230 |
| 103 | Rohan     | Mehta    | Male   |  23 | Bangalore, Karnataka | 9765432109 |
| 102 | Ishita    | Patel    | Female |  22 | Ahmedabad, Gujarat   | 9823456789 |
| 105 | Vikram    | Reddy    | Male   |  24 | Hyderabad, Telangana | 9123456780 |
| 101 | Aarav     | Sharma   | Male   |  21 | Mumbai, Maharashtra  | 9876543210 |
| 104 | Priya     | Verma    | Female |  20 | Delhi                | 9988776655 |
+-----+-----------+----------+--------+-----+----------------------+------------+
6 rows in set (0.00 sec)
mysql> SELECT Gender, COUNT(*) AS TotalStudents FROM Student  GROUP BY Gender;
+--------+---------------+
| Gender | TotalStudents |
+--------+---------------+
| Male   |             3 |
| Female |             3 |
+--------+---------------+
2 rows in set (0.00 sec)

mysql>