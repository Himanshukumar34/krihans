-- Display the total number of students.
SELECT COUNT(*) FROM students;
	
    
-- Find the total marks of all students.
SELECT SUM(marks) FROM students ;


-- Calculate the average marks of all students.
SELECT AVG(marks) FROM students;


-- Find the highest marks obtained by a student.
SELECT MAX(marks) FROM students;


-- Find the lowest marks obtained by a student.
SELECT MIN(marks) FROM students;


-- Count the number of female students.
SELECT  COUNT( gender)
FROM students
WHERE gender ="Female";


-- Calculate the average marks of male students.
SELECT AVG(marks) 
FROM students
WHERE gender ="male";


-- Find the maximum marks obtained by BCA students.
SELECT MAX(marks)
FROM students
WHERE course = "BCA";


-- Find the minimum marks obtained by BBA students.
SELECT MIN(marks)
FROM students
WHERE course = "BBA";


-- Calculate the total marks obtained by B.Tech students.

SELECT SUM(marks)
FROM students 
WHERE course= "B.Tech";
















