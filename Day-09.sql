-- LAB TABLE
-- LABNO	LAB_NAME	INCHARGE	CAPACITY	FLOOR
-- L001	CHEMISTRY	Daisy	20	I
-- L002	BIOLOGY	Venky	20	II
-- L003	MATH	Preeti	15	I
-- L004	LANGUAGE	Daisy	36	III
-- L005	COMPUTER	Mary Kom	37	II

-- 9. Identify the columns that can be considered candidate keys.
-- LABNO

-- 10. Write the degree and cardinality of the table.
-- DEGREE=5
-- CARDINALITY=5

-- 11. Write an SQL statement to insert a new row with appropriate data.
INSERT INTO LAB
(LABNO ,LAB_NAME ,INCHARGE ,CAPACITY ,FLOOR )
VALUES
('L006' ,'PYHSICS' ,'HIMANSHU' ,30 ,'IIII' );

-- 12. Increase the capacity of all labs by 10 students that are on Floor I
UPDATE 

	
-- 13. Add a PRIMARY KEY constraint to the column LABNO.
-- 14. Write an SQL command to delete the LAB table. 







SELECT * FROM LAB; 


CREATE TABLE LAB(
LABNO VARCHAR(50) ,
LAB_NAME VARCHAR(50),
INCHARGE VARCHAR(50),
CAPACITY INT ,
FLOOR VARCHAR(5)
);


INSERT INTO LAB (LABNO, LAB_NAME, INCHARGE, CAPACITY, FLOOR)
VALUES
('L001', 'CHEMISTRY', 'Daisy', 20, 'I'),
('L002', 'BIOLOGY', 'Venky', 20, 'II'),
('L003', 'MATH', 'Preeti', 15, 'I'),
('L004', 'LANGUAGE', 'Daisy', 36, 'III'),
('L005', 'COMPUTER', 'Mary Kom', 37, 'II');

