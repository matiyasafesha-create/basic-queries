-- 1. What is the name of the table that holds the items Northwind sells?
-- Product


-- 2. Write a query to list the product id, product name, and unit price of every
-- product.


SELECT ProductID,ProductName,UnitPrice
FROM products;


-- 3. Write a query to list the product id, product name, and unit price of every
-- product. Except this time, order then in ascending order by price.


SELECT ProductID,ProductName,UnitPrice
FROM products
order by UnitPrice Asc;


-- 4. What are the products that we carry where the unit price is $7.50 or less?

Select*
FROM Products
WHERE UnitPrice < 7.50;



-- 5. What are the products that we carry where we have at least 100 units on
-- hand? Order them in descending order by price.

SELECT *
FROM Products
WHERE UnitsInStock >= 100
ORDER By UnitPrice DESC



-- 6. What are the products that we carry where we have at least 100 units on
-- hand? Order them in descending order by price. If two or more have the
-- same price, list those in ascending order by product name.

SELECT *ill be back
FROM Products
WHERE UnitsInStock >= 100
ORDER By UnitsInStock DESC



-- 7. What are the products that we carry where we have no units on hand, but 1
-- or more units of them on backorder? Order them by product name.

SELECT *
FROM Products
WHERE UnitsInStock = 0 AND UnitsOnOrder >= 1
ORDER BY ProductName;







-- 8. What is the name of the table that holds the types (categories) of the items
-- Northwind sells?

SELECT*
FROM Categories;


-- 9. Write a query that lists all of the columns and all the rows of the categories
-- -- table? What is the category id of seafood?

SELECT *
FROM Categories
WHERE CategoryName = 'Seafood';
-- ID IS (8)



-- 10. Examine the Products table. How does it identify the type (category) of
-- each item sold? Write a query to list all of the seafood items we carry.

SELECT*
FROM Products
Limit 10;

SELECT *
FROM Categories
Limit 10;

SELECT *
FROM Products
WHERE CategoryID = 8
-- SO I went in and Saw the catagory ID in the table for sea food and used where ID 8 to find it on my products teble 



-- 11. What are the first and last names of all of the Northwind employees?

SELECT FirstName , LastName
FROM employees;



-- 12. What employees have "manager" in their titles?

SELECT*
FROM employees
WHERE Title LIKE '%Manager%';



-- 13. List the distinct job titles in employees.

SELECT DISTINCT Title
FROM employees;


-- 14. What employees have a salary that is between $2000 and $2500?

SELECT *
FROM employees
WHERE Salary  BETWEEN 2000 and 2500;


-- 15. List all the information about all of Northwind's suppliers.

SELECT*
FROM Suppliers;


-- 16. Examine the Products table. How do you know what supplier supplies
-- each product? Write a query to list all the items that "Tokyo Traders"
-- supplies to Northwind

