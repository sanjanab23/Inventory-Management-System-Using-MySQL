SELECT p.category_id, c.category_name, COUNT(*) AS product_count
FROM Products p
INNER JOIN Categories c ON p.category_id = c.category_id
GROUP BY p.category_id, c.category_name;


SELECT c.customer_id, c.customer_name, COUNT(s.sale_id) AS total_sales
FROM Customers c
LEFT JOIN Sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.customer_name;


SELECT s.supplier_id, s.supplier_name, COUNT(o.order_id) AS total_orders
FROM Suppliers s
RIGHT JOIN Orders o ON s.supplier_id = o.supplier_id
GROUP BY s.supplier_id, s.supplier_name;


SELECT p.product_id, p.product_name, SUM(od.quantity_ordered) AS total_ordered, SUM(sd.quantity_sold) AS total_sold
FROM Products p
FULL OUTER JOIN OrderDetails od ON p.product_id = od.product_id
FULL OUTER JOIN SaleDetails sd ON p.product_id = sd.product_id
GROUP BY p.product_id, p.product_name;


SELECT e1.employee_id, e1.employee_name, e1.position, COUNT(*) AS subordinates_count
FROM Employees e1
LEFT JOIN Employees e2 ON e1.employee_id = e2.manager_id
GROUP BY e1.employee_id, e1.employee_name, e1.position;


SELECT p.category_id, c.category_name, COUNT(*) AS product_count
FROM Products p
CROSS JOIN Categories c
GROUP BY p.category_id, c.category_name;


SELECT p.product_id, p.product_name, s.supplier_name, SUM(od.quantity_ordered) AS total_ordered
FROM Products p
JOIN OrderDetails od ON p.product_id = od.product_id
JOIN Orders o ON od.order_id = o.order_id
JOIN Suppliers s ON o.supplier_id = s.supplier_id
GROUP BY p.product_id, p.product_name, s.supplier_name;

