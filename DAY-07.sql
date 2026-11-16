-- Q32. Suman has created a table named WORKER with the following records:
-- WID	WNAME	WAGE	HOURS	TYPE	SITEID
-- W01	Ahmed J	1500	200	Unskilled	103
-- W11	Naveen S	520	100	Skilled	101
-- W02	Jacob B	780	95	Unskilled	101
-- W15	Nihal K	560	110	Semiskilled	NULL
-- W10	Anju S	1200	130	Skilled	103

-- (a) Write SQL statements for:
-- 1. Display the names and wages of workers whose wages are between 800 and 1500.
SELECT WNAME,WAGE FROM Workers
WHERE WAGE BETWEEN 800 AND 1500;


-- 2. Display the records of workers whose SITEID is not known.
SELECT * FROM Workers
WHERE SITEID IS NULL;


-- 3. Display WNAME, WAGE and HOURS of workers whose TYPE is 'Skilled'.
SELECT WNAME ,WAGE ,HOURS FROM Workers
WHERE TYPE ="skilled";


-- 4. Change the WAGE to 1200 for workers whose TYPE is 'Semiskilled'.
UPDATE Workers 
SET WAGE =1200
WHERE TYPE ="Semiskilled";


SET SQL_SAFE_UPDATES = 0;


CREATE DATABASE PAID;
USE  PAID;

CREATE TABLE Workers(
WID VARCHAR(50) PRIMARY KEY,
WNAME VARCHAR(50) NOT NULL ,
WAGE INT ,
HOURS INT ,
TYPE VARCHAR(50) NOT NULL, 
SITEID INT 
)

INSERT INTO Workers
(WID ,WNAME ,WAGE ,HOURS ,TYPE ,SITEID )
VALUES("W01" ,"Ahmed J" ,1500 ,200 ,"Unskilled" ,103 ),
      ("W11" ,"Naveen S" ,520 ,100 ,"skilled" ,101 ),
      ("W02" ,"Jacob B" ,780 ,95 ,"Unskilled" ,101 ),
	  ("W15","Nihal K" ,560 ,110 ,"Semiskilled" ,NULL ),
	  ("W10" ,"Anju S" ,1200 ,130 ,"skilled" ,103 );

SELECT * FROM Workers ;
















