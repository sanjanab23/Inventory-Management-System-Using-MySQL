CREATE TRIGGER UpdateProductQuantityOnOrder
AFTER INSERT ON OrderDetails
FOR EACH ROW
BEGIN
    UPDATE Products
    SET quantity_in_stock = quantity_in_stock - NEW.quantity_ordered
    WHERE product_id = NEW.product_id;
END;



CREATE TRIGGER UpdateProductQuantityOnSale
AFTER INSERT ON SaleDetails
FOR EACH ROW
BEGIN
    UPDATE Products
    SET quantity_in_stock = quantity_in_stock - NEW.quantity_sold
    WHERE product_id = NEW.product_id;
END;



CREATE TRIGGER InsertStockAlertOnLowInventory
AFTER UPDATE ON Products
FOR EACH ROW
BEGIN
    IF NEW.quantity_in_stock < 10 THEN
        INSERT INTO StockAlerts (product_id, alert_message, alert_date)
        VALUES (NEW.product_id, 'Low stock alert', CURDATE());
    END IF;
END;
