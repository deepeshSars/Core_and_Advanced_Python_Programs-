mysql> CREATE DATABASE EmployeeDB;
Query OK, 1 row affected (0.07 sec)

mysql> USE EmployeeDB;
Database changed

mysql> CREATE TABLE Employee (emp_id INT PRIMARY KEY,first_name VARCHAR(50),last_name VARCHAR(50),age INT,email VARCHAR(100));
Query OK, 0 rows affected (0.11 sec)

mysql> INSERT INTO Employee (emp_id, first_name, last_name, age, email)VALUES(1, 'John', 'Doe', 28, 'john.doe@example.com'),(2, 'Jane', 'Smith', 32, 'jane.smith@example.com'),(3, 'Mike', 'Brown', 40, 'mike.brown@example.com'),(4, 'Emma', 'Johnson', 22, 'emma.johnson@example.com');
Query OK, 4 rows affected (0.05 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> SELECT first_name, last_name FROM Employee;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| John       | Doe       |
| Jane       | Smith     |
| Mike       | Brown     |
| Emma       | Johnson   |
+------------+-----------+
4 rows in set (0.01 sec)

mysql> SELECT first_name, last_name, age FROM Employee WHERE age > 30;
+------------+-----------+------+
| first_name | last_name | age  |
+------------+-----------+------+
| Jane       | Smith     |   32 |
| Mike       | Brown     |   40 |
+------------+-----------+------+
2 rows in set (0.02 sec)

mysql> UPDATE Employee SET age = age + 1 WHERE age > 25;
Query OK, 3 rows affected (0.03 sec)
Rows matched: 3  Changed: 3  Warnings: 0

mysql> SELECT * FROM Employee;
+--------+------------+-----------+------+--------------------------+
| emp_id | first_name | last_name | age  | email                    |
+--------+------------+-----------+------+--------------------------+
|      1 | John       | Doe       |   29 | john.doe@example.com     |
|      2 | Jane       | Smith     |   33 | jane.smith@example.com   |
|      3 | Mike       | Brown     |   41 | mike.brown@example.com   |
|      4 | Emma       | Johnson   |   22 | emma.johnson@example.com |
+--------+------------+-----------+------+--------------------------+
4 rows in set (0.02 sec)