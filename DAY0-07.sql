-- Q6. STOCK Table
-- Abhishek has created a table named STOCK to maintain records of packaged milk in his shop.
-- Code	Type	Volume	Qty	Price
-- AF0.5	F	0.5	300	38.00
-- MF0.5	F	0.5	250	36.50
-- MT1.0	T	1.0	150	64.00
-- AT1.0	T	1.0	100	66.00
-- PD1.0	D	1.0	50	52.00
-- PT0.5	T	0.5	78	30.00

-- Write SQL queries for the following:
-- 1. Display Type and the maximum Price for each Type of milk.
	SELECT Type , MAX(Price) 
    FROM stock
    GROUP BY Type; 
    
-- 2. For each record, increase the Price by 0.5 where Type is 'F'.
  UPDATE products
  SET Price = Price + 0.5
  WHERE Type = 'F';
  
-- 3. Display the total value of stock (total of Qty × Price).
SELECT Qty*Price AS total_value FROM  stock;

-- 4. Display details of all records where Code starts with 'A'.
SELECT * 
FROM stock 
WHERE Code LIKE "A%" ;

CREATE DATABASE MILK;

CREATE TABLE stock(
 Code VARCHAR(50),
 Type  VARCHAR(50) ,
 Volume INT NOT NULL ,
 Qty INT NOT NULL ,
 Price INT NOT NULL 
)

INSERT INTO stock 
(Code, Type, Volume, Qty, Price)
VALUES
('AF0.5', 'F', 0.5, 300, 38.00),
('MF0.5', 'F', 0.5, 250, 36.50),
('MT1.0', 'T', 1.0, 150, 64.00),
('AT1.0', 'T', 1.0, 100, 66.00),
('PD1.0', 'D', 1.0, 50, 52.00),
('PT0.5', 'T', 0.5, 78, 30.00);


SELECT * FROM stock;







