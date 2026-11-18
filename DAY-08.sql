-- QANO	 ANAME	    ADDRESS
-- 101	Nirja Singh	Bangalore
-- 102	Rohan Gupta	Chennai
-- 103	Ali Reza	Hyderabad
-- 104	Rishabh Jain	Chennai
-- 105	Simran Kaur	Chandigarh

-- Table: TRANSACT
-- TRNO	ANO	AMOUNT	TYPE	DOT
-- T001	101	2500	Withdraw	2017-12-21
-- T002	103	3000	Deposit	2017-06-01
-- T003	102	2000	Withdraw	2017-05-12
-- T004	103	1000	Deposit	2017-10-22
-- T005	101	12000	Deposit	2017-11-06

-- Part A — Write SQL queries
-- 1. To display details of all transactions of TYPE Deposit from table TRANSACT.
SELECT * FROM TRANSACT
WHERE TYPE ="Deposit";

-- 2. To display the ANO and AMOUNT of all Deposits and Withdrawals done in the month of October 2017 from table TRANSACT.
SELECT ANO ,AMOUNT FROM TRANSACT
WHERE DOT BETWEEN '2017-10-01' AND '2017-10-31';


-- 3. To display the last date of transaction (DOT) from the table TRANSACT for the accounts having ANO as 103.

-- 4. To display all ANO, ANAME and DOT of those persons from tables ACCOUNT and TRANSACT who have done transactions less than or equal to 3000.












CREATE DATABASE CLIENT;
USE CLIENT;

CREATE TABLE Account (
ANO INT PRIMARY KEY,
ANAME VARCHAR(50) ,
ADDRESS VARCHAR(50)
)

SELECT * FROM Account;


-- 101	Nirja Singh	Bangalore
-- 102	Rohan Gupta	Chennai
-- 103	Ali Reza	Hyderabad
-- 104	Rishabh Jain	Chennai
-- 105	Simran Kaur	Chandigarh

INSERT INTO Account
(ANO ,ANAME ,ADDRESS )
VALUES
(101 ,"Nirja singh" ,"Bangalore" ),
(102 ,"Rohan Gupta" ,"Chennai" ),
(103 ,"Ali Reza" ,"Hyderabad" ),
(104 ,"Rishabh Jain " ,"Chennai" ),
(105 ,"Simran Kaur" ,"Chandigarh" );

CREATE TABLE TRANSACT (
    TRNO VARCHAR(5) PRIMARY KEY,
    ANO INT,
    AMOUNT INT,
    TYPE VARCHAR(10),
    DOT DATE
);

INSERT INTO TRANSACT
(TRNO, ANO, AMOUNT, TYPE, DOT)
VALUES
('T001', 101, 2500, 'Withdraw', '2017-12-21'),
('T002', 103, 3000, 'Deposit',  '2017-06-01'),
('T003', 102, 2000, 'Withdraw', '2017-05-12'),
('T004', 103, 1000, 'Deposit',  '2017-10-22'),
('T005', 101, 12000, 'Deposit', '2017-11-06');


SELECT * FROM TRANSACT;


