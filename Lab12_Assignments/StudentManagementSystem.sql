Microsoft Windows [Version 10.0.26100.3194]
(c) Microsoft Corporation. All rights reserved.

C:\Users\Dipesh>mysql -u root -p
Enter password: *********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 68
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
| chatbot_db              |
| ecommerce               |
| hotel                   |
| hotel_management        |
| hotel_system            |
| information_schema      |
| medicine_recommendation |
| mysql                   |
| performance_schema      |
| sys                     |
+-------------------------+
11 rows in set (0.00 sec)

mysql> CREATE DATABASE StudentManagementSystem;
Query OK, 1 row affected (0.01 sec)

mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| chatbot_db              |
| ecommerce               |
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
12 rows in set (0.00 sec)

mysql> use StudentManagementSystem;
Database changed
mysql> CREATE TABLE Student (
    ->     StudentID INT AUTO_INCREMENT PRIMARY KEY,
    ->     FirstName VARCHAR(50) NOT NULL,
    ->     LastName VARCHAR(50) NOT NULL,
    ->     DateOfBirth DATE NOT NULL,
    ->     Gender ENUM('Male', 'Female', 'Other') NOT NULL,
    ->     Email VARCHAR(100) UNIQUE NOT NULL,
    ->     Phone VARCHAR(15) NOT NULL
    -> );
Query OK, 0 rows affected (0.06 sec)

mysql> CREATE TABLE Course (
    ->     CourseID INT AUTO_INCREMENT PRIMARY KEY,
    ->     CourseTitle VARCHAR(100) NOT NULL,
    ->     Credits INT NOT NULL
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> CREATE TABLE Instructor (
    ->     InstructorID INT AUTO_INCREMENT PRIMARY KEY,
    ->     FirstName VARCHAR(50) NOT NULL,
    ->     LastName VARCHAR(50) NOT NULL,
    ->     Email VARCHAR(100) UNIQUE NOT NULL
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> CREATE TABLE Enrollment (
    ->     EnrollmentID INT AUTO_INCREMENT PRIMARY KEY,
    ->     EnrollmentDate DATE NOT NULL,
    ->     StudentID INT,
    ->     CourseID INT,
    ->     InstructorID INT,
    ->     FOREIGN KEY (StudentID) REFERENCES Student(StudentID) ON DELETE CASCADE,
    ->     FOREIGN KEY (CourseID) REFERENCES Course(CourseID) ON DELETE CASCADE,
    ->     FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID) ON DELETE CASCADE
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> CREATE TABLE Score (
    ->     ScoreID INT AUTO_INCREMENT PRIMARY KEY,
    ->     CourseID INT,
    ->     StudentID INT,
    ->     DateOfExam DATE NOT NULL,
    ->     CreditObtained FLOAT NOT NULL,
    ->     FOREIGN KEY (CourseID) REFERENCES Course(CourseID) ON DELETE CASCADE,
    ->     FOREIGN KEY (StudentID) REFERENCES Student(StudentID) ON DELETE CASCADE
    -> );
Query OK, 0 rows affected (0.07 sec)

mysql> CREATE TABLE Feedback (
    ->     FeedbackID INT AUTO_INCREMENT PRIMARY KEY,
    ->     StudentID INT,
    ->     Date DATE NOT NULL,
    ->     InstructorName VARCHAR(100) NOT NULL,
    ->     Feedback TEXT NOT NULL,
    ->     FOREIGN KEY (StudentID) REFERENCES Student(StudentID) ON DELETE CASCADE
    -> );
Query OK, 0 rows affected (0.06 sec)

mysql> INSERT INTO Student (FirstName, LastName, DateOfBirth, Gender, Email, Phone)
    -> VALUES
    -> ('Aarav', 'Patel', '2000-05-15', 'Male', 'aarav.patel@example.com', '9876543210'),
    -> ('Ishita', 'Sharma', '1999-08-21', 'Female', 'ishita.sharma@example.com', '9123456789'),
    -> ('Rohan', 'Mehta', '2001-03-10', 'Male', 'rohan.mehta@example.com', '9988776655'),
    -> ('Neha', 'Verma', '1998-11-30', 'Female', 'neha.verma@example.com', '9345678901'),
    -> ('Vikas', 'Rao', '2002-07-18', 'Male', 'vikas.rao@example.com', '9786543210');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Course (CourseTitle, Credits)
    -> VALUES
    -> ('Mathematics', 4),
    -> ('Computer Science', 3),
    -> ('Physics', 4),
    -> ('Chemistry', 3),
    -> ('English Literature', 2);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Instructor (FirstName, LastName, Email)
    -> VALUES
    -> ('Anil', 'Kumar', 'anil.kumar@example.com'),
    -> ('Priya', 'Gupta', 'priya.gupta@example.com'),
    -> ('Suresh', 'Nair', 'suresh.nair@example.com'),
    -> ('Meera', 'Reddy', 'meera.reddy@example.com'),
    -> ('Rahul', 'Shah', 'rahul.shah@example.com');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Enrollment (EnrollmentDate, StudentID, CourseID, InstructorID)
    -> VALUES
    -> ('2025-03-01', 1, 1, 1),
    -> ('2025-03-02', 2, 2, 2),
    -> ('2025-03-03', 3, 3, 3),
    -> ('2025-03-04', 4, 4, 4),
    -> ('2025-03-05', 5, 5, 5);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Score (CourseID, StudentID, DateOfExam, CreditObtained)
    -> VALUES
    -> (1, 1, '2025-03-10', 3.9),
    -> (2, 2, '2025-03-11', 3.7),
    -> (3, 3, '2025-03-12', 4.0),
    -> (4, 4, '2025-03-13', 3.5),
    -> (5, 5, '2025-03-14', 3.8);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Feedback (StudentID, Date, InstructorName, Feedback)
    -> VALUES
    -> (1, '2025-03-15', 'Anil Kumar', 'Excellent teaching methods.'),
    -> (2, '2025-03-16', 'Priya Gupta', 'Very knowledgeable instructor.'),
    -> (3, '2025-03-17', 'Suresh Nair', 'Good explanations, but needs more examples.'),
    -> (4, '2025-03-18', 'Meera Reddy', 'Clear and concise teaching.'),
    -> (5, '2025-03-19', 'Rahul Shah', 'Interactive and informative sessions.');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Student;
+-----------+-----------+----------+-------------+--------+---------------------------+------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email                     | Phone      |
+-----------+-----------+----------+-------------+--------+---------------------------+------------+
|         1 | Aarav     | Patel    | 2000-05-15  | Male   | aarav.patel@example.com   | 9876543210 |
|         2 | Ishita    | Sharma   | 1999-08-21  | Female | ishita.sharma@example.com | 9123456789 |
|         3 | Rohan     | Mehta    | 2001-03-10  | Male   | rohan.mehta@example.com   | 9988776655 |
|         4 | Neha      | Verma    | 1998-11-30  | Female | neha.verma@example.com    | 9345678901 |
|         5 | Vikas     | Rao      | 2002-07-18  | Male   | vikas.rao@example.com     | 9786543210 |
+-----------+-----------+----------+-------------+--------+---------------------------+------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Course;
+----------+--------------------+---------+
| CourseID | CourseTitle        | Credits |
+----------+--------------------+---------+
|        1 | Mathematics        |       4 |
|        2 | Computer Science   |       3 |
|        3 | Physics            |       4 |
|        4 | Chemistry          |       3 |
|        5 | English Literature |       2 |
+----------+--------------------+---------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Instructor;
+--------------+-----------+----------+-------------------------+
| InstructorID | FirstName | LastName | Email                   |
+--------------+-----------+----------+-------------------------+
|            1 | Anil      | Kumar    | anil.kumar@example.com  |
|            2 | Priya     | Gupta    | priya.gupta@example.com |
|            3 | Suresh    | Nair     | suresh.nair@example.com |
|            4 | Meera     | Reddy    | meera.reddy@example.com |
|            5 | Rahul     | Shah     | rahul.shah@example.com  |
+--------------+-----------+----------+-------------------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Enrollment;
+--------------+----------------+-----------+----------+--------------+
| EnrollmentID | EnrollmentDate | StudentID | CourseID | InstructorID |
+--------------+----------------+-----------+----------+--------------+
|            1 | 2025-03-01     |         1 |        1 |            1 |
|            2 | 2025-03-02     |         2 |        2 |            2 |
|            3 | 2025-03-03     |         3 |        3 |            3 |
|            4 | 2025-03-04     |         4 |        4 |            4 |
|            5 | 2025-03-05     |         5 |        5 |            5 |
+--------------+----------------+-----------+----------+--------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Score;
+---------+----------+-----------+------------+----------------+
| ScoreID | CourseID | StudentID | DateOfExam | CreditObtained |
+---------+----------+-----------+------------+----------------+
|       1 |        1 |         1 | 2025-03-10 |            3.9 |
|       2 |        2 |         2 | 2025-03-11 |            3.7 |
|       3 |        3 |         3 | 2025-03-12 |              4 |
|       4 |        4 |         4 | 2025-03-13 |            3.5 |
|       5 |        5 |         5 | 2025-03-14 |            3.8 |
+---------+----------+-----------+------------+----------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Feedback;
+------------+-----------+------------+----------------+---------------------------------------------+
| FeedbackID | StudentID | Date       | InstructorName | Feedback                                    |
+------------+-----------+------------+----------------+---------------------------------------------+
|          1 |         1 | 2025-03-15 | Anil Kumar     | Excellent teaching methods.                 |
|          2 |         2 | 2025-03-16 | Priya Gupta    | Very knowledgeable instructor.              |
|          3 |         3 | 2025-03-17 | Suresh Nair    | Good explanations, but needs more examples. |
|          4 |         4 | 2025-03-18 | Meera Reddy    | Clear and concise teaching.                 |
|          5 |         5 | 2025-03-19 | Rahul Shah     | Interactive and informative sessions.       |
+------------+-----------+------------+----------------+---------------------------------------------+
5 rows in set (0.00 sec)

mysql>