CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    position VARCHAR(100),
    salary DECIMAL(10, 2)
);


ALTER TABLE Employees
ADD COLUMN hire_date DATE;

DROP TABLE Employees;

CREATE INDEX idx_product_name ON Products (product_name);

TRUNCATE TABLE Employees;
