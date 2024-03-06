SELECT * FROM Employees WHERE position = 'Manager';

INSERT INTO Employees (employee_id, employee_name, position, salary)
VALUES (1, 'John Doe', 'Manager', 50000.00);


UPDATE Employees
SET position = 'Senior Manager'
WHERE employee_id = 1;


DELETE FROM Employees
WHERE employee_id = 1;


MERGE INTO Employees AS target
USING NewEmployees AS source
ON (target.employee_id = source.employee_id)
WHEN MATCHED THEN
    UPDATE SET target.salary = source.salary
WHEN NOT MATCHED THEN
    INSERT (employee_id, employee_name, position, salary)
    VALUES (source.employee_id, source.employee_name, source.position, source.salary);


