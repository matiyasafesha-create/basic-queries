-- List the product id, product name, unit price and category name of all
-- products. Order by category name and within that, by product name.


-- SELECT*
-- FROM products
SELECT p.ProductID,p.ProductName,p.UnitPrice,c.CategoryName
FROM products p
INNER JOIN categories c ON p.ProductID = c.CategoryID;
 




-- 2. List the product id, product name, unit price and supplier name of all
-- products that cost more than $75. Order by product name.

SELECT p.ProductID,p.ProductName, CONCAT('$',ROUND( p.UnitPrice,2)) AS "Filterd Price",s.CompanyName
FROM products p INNER JOIN suppliers s
ON p.ProductID = s.SupplierID
WHERE UnitPrice >= '75';


SELECT*
FROM suppliers;

SELECT*
FROM products;



-- 3. List the product id, product name, unit price, category name, and supplier
-- name of every product. Order by product name.

SELECT*
FROM suppliers;

SELECT*
FROM products;

SELECT*
FROM categories;



SELECT 
    p.ProductID,
    p.ProductName,
    p.UnitPrice,
    c.CategoryName,
    s.CompanyName
FROM products p
INNER JOIN suppliers s
    ON p.SupplierID = s.SupplierID
INNER JOIN categories c
    ON p.CategoryID = c.CategoryID
ORDER BY p.ProductName;



-- 4. What is the product name(s) and categories of the most expensive
-- products? HINT: Find the max price in a subquery and then use that in
-- your more complex query that joins products with categories.


SELECT ProductName,
 CONCAT('$',ROUND(UnitPrice,2)) AS  "Most Expensive" 
FROM products p 
INNER JOIN categories c 
ON p.CategoryID = c.CategoryID
WHERE UnitPrice = (SELECT MAX(UnitPrice) 
FROM products);
-- GROUP BY UnitPrice , ProductName;

SELECT*
FROM products;

SELECT*
FROM categories;




-- 5. List the order id, ship name, ship address, and shipping company name of
-- every order that shipped to Germany.

SELECT*
FROM shippers;

SELECT*
FROM orders;

SELECT o.OrderID,o.ShipName,o.ShipAddress,s.CompanyName
FROM orders o INNER JOIN shippers s 
ON o.ShipVia = s.ShipperID
WHERE ShipCountry = "Germany";






-- 6. List the order id, order date, ship name, ship address of all orders that
-- ordered "Sasquatch Ale"?

SELECT*
FROM orders;

SELECT*
FROM products;


SELECT*
FROM `order details`;
-- WHERE ProductName = "Sasquatch Ale";

SELECT o.OrderID,o.OrderDate,o.ShipName,o.ShipAddress
FROM orders o 
INNER JOIN 
`order details` od 
ON o.OrderID = od.OrderID
INNER JOIN products p 
ON p.ProductID = od.ProductID
WHERE p.ProductName = "Sasquatch Ale";


 


