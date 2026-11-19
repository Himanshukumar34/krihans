-- Question 1: Table – BOOK
-- Code	BNAME	TYPE
-- F101	The priest	Fiction
-- L102	German easy	Literature
-- C101	Tarzan in the lost world	Comic
-- F102	Untold Story	Fiction
-- C102	War heroes	Comic

-- Question 2: Table – MEMBER
-- MNO	MNAME	CODE	ISSUEDATE
-- M101	RAGHAV SINHA	L102	2016-10-13
-- M103	SARTHAK JOHN	F102	2017-02-23
-- M102	ANISHA KHAN	C101	2016-06-12


-- Q1. To display all details from table MEMBER in descending order of ISSUEDATE.
SELECT * 
FROM MEMBER
ORDER BY ISSUEDATE DESC;


-- Q2. To display the BNO and BNAME of all Fiction Type books from the table BOOK
SELECT Code,BNAME
FROM BOOK
WHERE TYPE ='Fiction';

-- Q3. To display the TYPE and number of books in each TYPE from the table BOOK.

-- Q4. To display all MNAME and ISSUEDATE of those members from table MEMBER who have books issued (i.e. ISSUEDATE) in the year 2017.









