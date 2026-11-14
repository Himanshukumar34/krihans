CREATE DATABASE Library ;

-- Create a database named library.
-- Tasks:
-- Create a table books with columns: book_id, book_title, author, price, category.
-- Insert 10 books.
-- Add a new column publisher using ALTER.
-- Update the price of a particular book.
-- Change the category of a book.
-- Delete a book by book_id.
-- Display all books.
-- Display books whose price is greater than 500.


CREATE TABLE books(
 book_id INT NOT NULL PRIMARY KEY,
 book_title VARCHAR(50) ,
 author VARCHAR(50) NOT NULL,
 price  FLOAT NOT NULL,
 category VARCHAR(50));
  
  SELECT * FROM  books;

INSERT INTO books
(book_id ,book_title ,author ,price ,category )
VALUES
(1 ,"prabhupada" ,"himanshu" ,400.00 ,"yes" ),
(2 ,"prabhupada" ,"himanshu" ,50000 ,"yes" ),
(3 ,"prabhupada" ,"himanshu" ,560000 ,"no" ),
(4 ,"prabhupada" ,"himanshu" ,4000.0 ,"yes" ),
(5 ,"prabhupada" ,"himanshu" ,45852 ,"no" ),
(6 ,"prabhupada" ,"himanshu" ,90000 ,"yes" ),
(7 ,"prabhupada" ,"himanshu" ,500.00 ,"no" ),
(8 ,"prabhupada" ,"himanshu" ,60000 ,"yes" ),
(9 ,"prabhupada" ,"himanshu" ,700000 ,"yes" ),
(10 ,"prabhupada" ,"himanshu" ,8200.00 ,"yes" );

ALTER TABLE books
ADD COLUMN publisher VARCHAR(50);


UPDATE books
SET price =50000
WHERE book_id=5;

UPDATE books 
SET category="krishna"
WHERE book_id=4;

DELETE  FROM books 
WHERE book_id=10;






