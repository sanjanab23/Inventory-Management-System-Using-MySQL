CREATE VIEW ProductInventory AS
SELECT p.product_id, p.product_name, p.description, p.unit_price, p.quantity_in_stock, c.category_name
FROM Products p
JOIN Categories c ON p.category_id = c.category_id;



CREATE VIEW OrderDetailsWithProducts AS
SELECT od.order_detail_id, od.order_id, p.product_name, od.quantity_ordered, od.unit_price
FROM OrderDetails od
JOIN Products p ON od.product_id = p.product_id;



CREATE VIEW SalesSummaryByCustomer AS
SELECT s.sale_id, s.sale_date, c.customer_name, s.total_amount
FROM Sales s
JOIN Customers c ON s.customer_id = c.customer_id;



CREATE VIEW InventoryAdjustments AS
SELECT it.transaction_id, it.transaction_date, p.product_name, it.quantity_added, it.quantity_removed, it.transaction_type
FROM InventoryTransactions it
JOIN Products p ON it.product_id = p.product_id;



CREATE VIEW StockAlertsWithProducts AS
SELECT sa.alert_id, p.product_name, sa.alert_message, sa.alert_date
FROM StockAlerts sa
JOIN Products p ON sa.product_id = p.product_id;
