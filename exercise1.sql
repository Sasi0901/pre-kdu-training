-- Exercise 1: Database

-- Starting with queries and outputs according to the given assignment and in the end all the queries and outputs.

-- Create Database Employee
CREATE DATABASE employee;

-- (3) Create Following tables ....

    --(i)

    CREATE TABLE department(
        department_id int(10) NOT NULL AUTO_INCREMENT,
        department_name varchar(50) NOT NULL,
        PRIMARY KEY(department_id)
        );

    INSERT INTO department VALUES (1,"Engineering");

    INSERT INTO department VALUES (2,"HR"),(3,"Marketing"),(4,"Planning"),(5,"Admin"),(6,"Sales");

    -- (ii)

    CREATE TABLE employee (
        employee_id int(10) NOT NULL AUTO_INCREMENT,
        employee_name varchar(50) NOT NULL,
        salary int(20),
        department_id int(10) NOT NULL,
        PRIMARY KEY(employee_id),
        FOREIGN KEY(department_id) REFERENCES department(department_id)
        );
    INSERT INTO employee VALUES (1,"Sasi Rachapotu",35000,1);
    INSERT INTO employee VALUES (2,"Virat Kohli",50000,3),(3,"Rohit Sharma",80000,2),(4,"M.S Dhoni",90000,4),(5,"Venkatesh Sai",30000,1);
    SELECT * from employee;

    -- (4) Write Queries for the following

    -- (i) Print employee_id, employee_name and department_name

    SELECT employee_id,employee_name,department_name from employee INNER JOIN department ON (employee.department_id=department.department_id);

    /* Sample Output
    +-------------+----------------+-----------------+
    | employee_id | employee_name  | department_name |
    +-------------+----------------+-----------------+
    |           1 | Sasi Rachapotu | Engineering     |
    |           2 | Virat Kohli    | Marketing       |
    |           3 | Rohit Sharma   | HR              |
    |           4 | M.S Dhoni      | Planning        |
    |           5 | Venkatesh Sai  | Engineering     |
    +-------------+----------------+-----------------+
    5 rows in set (0.00 sec)
    */

    -- (ii) Write a Query that prints all the employees and their salaries in descending order of their salary

    SELECT employee_name,salary from employee ORDER BY salary DESC;

    /* Sample Output
    +----------------+--------+
    | employee_name  | salary |
    +----------------+--------+
    | M.S Dhoni      |  90000 |
    | Rohit Sharma   |  80000 |
    | Virat Kohli    |  50000 |
    | Sasi Rachapotu |  35000 |
    | Venkatesh Sai  |  30000 |
    +----------------+--------+
    5 rows in set (0.00 sec)
    */

    -- (iii) Write a Query that prints the average salary of employees in each department with the department name

    SELECT department_name, AVG(salary) as "Average Salary" from employee INNER JOIN department ON (employee.department_id = department.department_id) GROUP BY department_name;

    /* Sample Output
    +-----------------+----------------+
    | department_name | Average Salary |
    +-----------------+----------------+
    | Engineering     |     32500.0000 |
    | Marketing       |     50000.0000 |
    | HR              |     80000.0000 |
    | Planning        |     90000.0000 |
    +-----------------+----------------+
    4 rows in set (0.01 sec)
    */

/*  All queries and outputs performed in mysql

    C:\Users\DELL>mysql -u root -p
    Enter password: **************
    Welcome to the MySQL monitor.  Commands end with ; or \g.
    Your MySQL connection id is 17
    Server version: 8.2.0 MySQL Community Server - GPL

    Copyright (c) 2000, 2023, Oracle and/or its affiliates.

    Oracle is a registered trademark of Oracle Corporation and/or its
    affiliates. Other names may be trademarks of their respective
    owners.

    Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

    mysql> show databases
        -> ;
    +--------------------+
    | Database           |
    +--------------------+
    | information_schema |
    | mysql              |
    | performance_schema |
    | sys                |
    +--------------------+
    4 rows in set (0.01 sec)

    mysql> CREATE DATABASE employee
        -> ;
    Query OK, 1 row affected (0.07 sec)

    mysql> show databases;
    +--------------------+
    | Database           |
    +--------------------+
    | employee           |
    | information_schema |
    | mysql              |
    | performance_schema |
    | sys                |
    +--------------------+
    5 rows in set (0.00 sec)

    mysql> use employee;
    Database changed

    mysql> CREATE TABLE department(
        -> department_id int(10) NOT NULL AUTO_INCREMENT,
        -> department_name varchar(50) NOT NULL,
        -> PRIMARY KEY(department_id)
        -> );
    Query OK, 0 rows affected, 1 warning (0.11 sec)

    mysql> show tables;
    +--------------------+
    | Tables_in_employee |
    +--------------------+
    | department         |
    +--------------------+
    1 row in set (0.01 sec)

    mysql> select * from department;
    Empty set (0.00 sec)

    mysql> INSERT INTO department VALUES (1,"Engineering");
    Query OK, 1 row affected (0.01 sec)

    mysql> INSERT INTO department VALUES (2,"HR"),(3,"Marketing"),(4,"Planning"),(5,"Admin"),(6,"Sales");
    Query OK, 5 rows affected (0.01 sec)
    Records: 5  Duplicates: 0  Warnings: 0

    mysql> SELECT * from department;
    +---------------+-----------------+
    | department_id | department_name |
    +---------------+-----------------+
    |             1 | Engineering     |
    |             2 | HR              |
    |             3 | Marketing       |
    |             4 | Planning        |
    |             5 | Admin           |
    |             6 | Sales           |
    +---------------+-----------------+
    6 rows in set (0.00 sec)

    mysql> CREATE TABLE employee (
        -> employee_id int(10) NOT NULL AUTO_INCREMENT,
        -> employee_name varchar(50) NOT NULL,
        -> salary int(20),
        -> department_id int(10) NOT NULL,
        -> PRIMARY KEY(employee_id),
        -> FOREIGN KEY(department_id) REFERENCES department(department_id)
        -> );
    Query OK, 0 rows affected, 3 warnings (0.05 sec)

    mysql> INSERT INTO employee VALUES (1,"Sasi Rachapotu",35000,1);
    Query OK, 1 row affected (0.01 sec)

    mysql> INSERT INTO employee VALUES (2,"Virat Kohli",50000,3),(3,"Rohit Sharma",80000,2),(4,"M.S Dhoni",90000,4),(5,"Venkatesh Sai",30000,1);
    Query OK, 4 rows affected (0.01 sec)
    Records: 4  Duplicates: 0  Warnings: 0

    mysql> SELECT * from employee;
    +-------------+----------------+--------+---------------+
    | employee_id | employee_name  | salary | department_id |
    +-------------+----------------+--------+---------------+
    |           1 | Sasi Rachapotu |  35000 |             1 |
    |           2 | Virat Kohli    |  50000 |             3 |
    |           3 | Rohit Sharma   |  80000 |             2 |
    |           4 | M.S Dhoni      |  90000 |             4 |
    |           5 | Venkatesh Sai  |  30000 |             1 |
    +-------------+----------------+--------+---------------+
    5 rows in set (0.00 sec)

    mysql>

    mysql> show tables;
    +--------------------+
    | Tables_in_employee |
    +--------------------+
    | department         |
    | employee           |
    +--------------------+
    2 rows in set (0.00 sec)



    mysql> SELECT employee_id,employee_name,department_name from employee INNER JOIN department ON (employee.department_id=department.department_id);
    +-------------+----------------+-----------------+
    | employee_id | employee_name  | department_name |
    +-------------+----------------+-----------------+
    |           1 | Sasi Rachapotu | Engineering     |
    |           2 | Virat Kohli    | Marketing       |
    |           3 | Rohit Sharma   | HR              |
    |           4 | M.S Dhoni      | Planning        |
    |           5 | Venkatesh Sai  | Engineering     |
    +-------------+----------------+-----------------+
    5 rows in set (0.00 sec)

    mysql> SELECT employee_name,salary from employee ORDER BY salary DESC;
    +----------------+--------+
    | employee_name  | salary |
    +----------------+--------+
    | M.S Dhoni      |  90000 |
    | Rohit Sharma   |  80000 |
    | Virat Kohli    |  50000 |
    | Sasi Rachapotu |  35000 |
    | Venkatesh Sai  |  30000 |
    +----------------+--------+
    5 rows in set (0.00 sec)

    mysql> SELECT department_name, AVG(salary) as "Average Salary" from employee INNER JOIN department ON (employee.department_id = department.department_id) GROUP BY department_name;
    +-----------------+----------------+
    | department_name | Average Salary |
    +-----------------+----------------+
    | Engineering     |     32500.0000 |
    | Marketing       |     50000.0000 |
    | HR              |     80000.0000 |
    | Planning        |     90000.0000 |
    +-----------------+----------------+
    4 rows in set (0.01 sec)
    */
