INSERT INTO Categories (category_name) VALUES
('Electronics'),
('Clothing'),
('Books'),
('Furniture');


INSERT INTO Suppliers (supplier_name, contact_name, contact_email, contact_phone) VALUES
('Supplier A', 'John Doe', 'john.doe@example.com', '123-456-7890'),
('Supplier B', 'Jane Smith', 'jane.smith@example.com', '987-654-3210'),
('Supplier C', 'Alice Johnson', 'alice.johnson@example.com', '555-123-4567');


INSERT INTO Products (product_name, description, unit_price, quantity_in_stock, category_id) VALUES
('Laptop', 'High-performance laptop', 1200.00, 10, 1),
('T-Shirt', 'Cotton t-shirt', 20.00, 50, 2),
('Book', 'Bestseller novel', 15.00, 30, 3),
('Sofa', 'Comfortable sofa', 500.00, 5, 4);


INSERT INTO Customers (customer_name, contact_email, contact_phone, address) VALUES
('Customer A', 'customerA@example.com', '111-222-3333', '123 Main St'),
('Customer B', 'customerB@example.com', '444-555-6666', '456 Elm St'),
('Customer C', 'customerC@example.com', '777-888-9999', '789 Oak St');


INSERT INTO Employees (employee_name, position, salary, hire_date) VALUES
('Employee A', 'Manager', 50000.00, '2020-01-01'),
('Employee B', 'Sales Associate', 30000.00, '2020-02-01'),
('Employee C', 'Cashier', 25000.00, '2020-03-01');


INSERT INTO Locations (location_name, address) VALUES
('Main Store', '123 Oak St'),
('Branch Store', '456 Pine St');


INSERT INTO InventoryTransactions (transaction_date, product_id, quantity_added, quantity_removed, transaction_type) VALUES
('2024-01-01', 1, 20, 0, 'Purchase'),
('2024-02-01', 2, 30, 0, 'Purchase'),
('2024-03-01', 3, 40, 0, 'Purchase');


INSERT INTO StockAlerts (product_id, alert_message, alert_date) VALUES
(1, 'Low stock alert', '2024-03-15'),
(2, 'Low stock alert', '2024-03-15');
