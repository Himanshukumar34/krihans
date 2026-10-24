-- 1. Display all products priced above ₹5,000.
SELECT * FROM products
WHERE price>5000;

-- 2. Find all products in the Electronics category.
SELECT * FROM products
WHERE category="Electronics";

-- 3. Display products with stock below 10.
SELECT * FROM products
WHERE stock< 10;


-- 4. Find products located in Delhi.
SELECT * FROM products
WHERE city ="Delhi";

-- 5. Show products with a rating of 4.5 or higher.
SELECT product_name,rating FROM products
WHERE rating>=4.5;

-- 6. Find products priced between ₹1,000 and ₹5,000.
	SELECT * FROM products
    WHERE price BETWEEN 1000 AND 5000;
    
-- 7. Display products that are not in the Furniture category.
SELECT * FROM products
WHERE category!="Furniture";

-- 8. Find products priced below ₹1,000 with stock greater than 20.
SELECT * FROM products
WHERE price< 1000 and stock >20;

-- 9. Display all products from highest to lowest price.
SELECT * FROM products
ORDER BY price DESC;

-- 10. Sort products by rating from highest to lowest.
SELECT product_name , rating FROM products
ORDER BY rating DESC;

-- 11. Display products from lowest to highest stock quantity.
SELECT * FROM products
ORDER BY stock ASC;

-- 12. Show Delhi products sorted by price from highest to lowest.
SELECT * FROM products
WHERE city="Delhi"
ORDER BY price DESC;

-- 13. Sort products alphabetically by product name.
SELECT * FROM products
ORDER BY product_name ASC;

-- 15. Find Electronics products and sort them by price from lowest to highest.
SELECT * FROM products
WHERE category="Electronics" 
ORDER BY price ASC;

-- 16. Display the 3 most expensive products.-- 
SELECT * FROM products
ORDER BY price DESC 
LIMIT 3; 

-- 17. Find the 5 cheapest products.
SELECT * FROM products
ORDER BY price ASC
LIMIT 5;

-- 18. Show the 3 highest-rated products.
SELECT * FROM products
ORDER BY rating DESC 
LIMIT 3;

-- 19. Display the 5 products with the lowest stock.
SELECT * FROM products
ORDER BY stock ASC 
LIMIT 5;

-- 20. Find the 4 most expensive Electronics products.
SELECT * FROM products
WHERE category="Electronics"
ORDER BY price DESC
LIMIT 4;

-- 21. Display the 3 cheapest products located in Mumbai.
SELECT * FROM products 
WHERE city ="Mumbai"
ORDER BY price ASC
LIMIT 3;













