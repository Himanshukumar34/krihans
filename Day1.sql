use contact;

-- --Question 1 solved
 -- Display all columns from the Customers table.
 
select *
from customers ;


-- Question 2 Solved
-- Display only customer_name, city, and state from Customers.
select customer_name, city,state from customers;

-- Question 3 
-- Find all customers who live in Delhi.--  
select * from customers 
where state="delhi";

-- Question 4
-- Find all products with a unit_price greater than 5000.-- 
select * from orders
where unit_price>5000;

-- Question-5
/-- Find customers who live in Uttar Pradesh and belong to the Premium segment.-- 
select * from customers
where state="uttar pradesh" and  customer_segment="premium";

-- Question-6
-- Find products that belong to either Electronics or Furniture.-- 
select * from products
where category= "Furniture" or category= "Electronics";


-- Question-7-- 
-- Find orders where total_amount is between 5,000 and 20,000.-- 
select * from orders
where total_amount  between 5000 and 20000 ;

-- Question-8--
-- Find orders where the payment method is either UPI, Credit Card, or Debit Card.-- 
select * from orders
where payment_method in ("UPI","Credit card","Debit Card"); 


-- Question-9
-- Display all products ordered by unit_price from highest to lowest.-- 
select * from products
order by unit_price DESC;

-- Question-10--
-- Display the 10 most expensive products.--  
select* from products
order by  unit_price DESC
limit 10;	






