-- Write SQL queries for the following:
-- 1. Display all records from Employee.
SELECT * FROM employee;

-- 2. Display only Name and Salary.
SELECT Name , Salary FROM employee;

-- 3. Display employees whose salary is greater than 30000.
SELECT * FROM employee
WHERE Salary>30000;

-- 4. Display employees working in the IT department.
SELECT * FROM employee
WHERE Department ='IT';

-- 5. Display all employees in descending order of Salary.
SELECT * FROM employee
ORDER BY Salary DESC;

-- 6. Display the first 3 records.
SELECT * FROM employee
LIMIT 3;

