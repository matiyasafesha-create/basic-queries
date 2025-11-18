-- 1. How many suppliers are there? Use a query!
SELECT Count(*)
FROM suppliers;
-- 29




-- 2. What is the sum of all the employee's salaries?

SELECT CONCAT('$',ROUND(SUM(Salary),2)) as Total_Salary
FROM employees;





-- 3. What is the price of the cheapest item that Northwind sells?

SELECT MIN(UnitPrice) AS Cheapest_Item_ON_Sale
FROM products;



-- 4. What is the average price of items that Northwind sells?
SELECT CONCAT('$',ROUND(AVG(UnitPrice),2)) AS "Average Price"
FROM products;




-- 5. What is the price of the most expensive item that Northwind sells?
SELECT CONCAT('$',ROUND(MAX(UnitPrice),2)) AS "Most Expensive Price"
FROM products;


select UnitPrice
FROM products;



-- 6. What is the supplier ID of each supplier and the number of items they
-- supply? You can answer this query by only looking at the Products table.

select  SupplierID,ProductName
FROM products
GROUP BY SupplierID,ProductName;


SELECT SupplierID, COUNT(*) AS "NUMBER OF ITEMS"
FROM products
GROUP BY SupplierID;





-- 7. What is the category ID of each category and the average price of each item
-- in the category? You can answer this query by only looking at the Products
-- table.

SELECT CategoryID, COUNT(*) AS Categories,CONCAT('$',ROUND(AVG(UnitPrice),2))
FROM products
GROUP BY CategoryID;


-- 8. For suppliers that provide at least 5 items to Northwind, what is the
-- supplier ID of each supplier and the number of items they supply? You
-- can answer this query by only looking at the Products table.


SELECT SupplierID, COUNT(*)
FROM products
GROUP BY SupplierID
HAVING COUNT(*) >= 5





-- 9. List the product id, product name, and inventory value (calculated by
-- multiplying unit price by the number of units on hand). Sort the results in
-- descending order by value. If two or more have the same value, order by
-- product name.

