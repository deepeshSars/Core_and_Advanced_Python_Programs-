mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| chatbot_db              |
| ecommerce               |
| hospital                |
| hotel                   |
| hotel_management        |
| hotel_system            |                
| information_schema      |
| medicine_recommendation |
| mysql                   |
| performance_schema      |
| studentmanagementsystem |
| sys                     |
+-------------------------+
14 rows in set (0.00 sec)

mysql> use ajitdb
Database changed
mysql> show tables;
+------------------+
| Tables_in_ajitdb |
+------------------+
| student          |
+------------------+
1 row in set (0.00 sec)

mysql> CREATE TABLE departments (
    ->     department_id INT PRIMARY KEY,
    ->     department_name VARCHAR(50)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> CREATE TABLE employees (
    ->     employee_id INT PRIMARY KEY,
    ->     employee_name VARCHAR(50),
    ->     department_id INT,
    ->     FOREIGN KEY (department_id) REFERENCES departments(department_id)
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> INSERT INTO departments (department_id, department_name) VALUES
    -> (1, 'HR'),
    -> (2, 'IT'),
    -> (3, 'Finance'),
    -> (4, 'Marketing');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> INSERT INTO employees (employee_id, employee_name, department_id) VALUES
    -> (101, 'Rajesh Sharma', 1),
    -> (102, 'Priya Iyer', 2),
    -> (103, 'Anil Mehta', 3),
    -> (104, 'Neha Gupta', 2),
    -> (105, 'Amit Patel', NULL);    -- Employee without department
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT employees.employee_name, departments.department_name
    -> FROM employees
    -> INNER JOIN departments ON employees.department_id = departments.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Rajesh Sharma | HR              |
| Priya Iyer    | IT              |
| Neha Gupta    | IT              |
| Anil Mehta    | Finance         |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> SELECT employees.employee_name, departments.department_name
    -> FROM employees
    -> LEFT JOIN departments ON employees.department_id = departments.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Rajesh Sharma | HR              |
| Priya Iyer    | IT              |
| Anil Mehta    | Finance         |
| Neha Gupta    | IT              |
| Amit Patel    | NULL            |
+---------------+-----------------+
5 rows in set (0.00 sec)