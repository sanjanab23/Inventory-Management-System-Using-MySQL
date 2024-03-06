SELECT product_name, unit_price FROM Products;

SELECT * FROM Products WHERE quantity_in_stock > 0;

SELECT * FROM Products ORDER BY unit_price DESC;

SELECT * FROM Products LIMIT 5;

SELECT COUNT(*) FROM Products;

SELECT AVG(unit_price) FROM Products;

SELECT MAX(unit_price) FROM Products;

SELECT MIN(unit_price) FROM Products;

SELECT category_id, COUNT(*) FROM Products GROUP BY category_id;

SELECT category_id, COUNT(*) FROM Products GROUP BY category_id HAVING COUNT(*) > 5;

SELECT CONCAT(product_name, ' - $', unit_price) AS product_info FROM Products;

SELECT SUM(unit_price * quantity_in_stock) AS total_value FROM Products;

SELECT product_name, LENGTH(product_name) AS name_length FROM Products;

SELECT SUBSTRING(product_name, 1, 3) AS product_code FROM Products;

SELECT product_name, ROUND(unit_price, 2) AS rounded_price FROM Products;

SELECT product_name, CAST(unit_price AS INT) AS price_integer FROM Products;

SELECT product_name, RAND() AS random_number FROM Products;
