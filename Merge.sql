MERGE INTO Employees AS target
USING NewEmployees AS source
ON (target.employee_id = source.employee_id)
WHEN MATCHED THEN
    UPDATE SET target.employee_name = source.employee_name, target.position = source.position, target.salary = source.salary
WHEN NOT MATCHED THEN
    INSERT (employee_id, employee_name, position, salary)
    VALUES (source.employee_id, source.employee_name, source.position, source.salary);



MERGE INTO Employees AS target
USING NewEmployees AS source
ON (target.employee_id = source.employee_id)
WHEN MATCHED THEN
    UPDATE SET target.employee_name = source.employee_name, target.position = source.position, target.salary = source.salary
WHEN NOT MATCHED BY SOURCE THEN
    DELETE;


MERGE INTO Employees AS target
USING NewEmployees AS source
ON (target.employee_id = source.employee_id)
WHEN MATCHED AND source.salary > 50000 THEN
    UPDATE SET target.salary = source.salary
WHEN NOT MATCHED THEN
    INSERT (employee_id, employee_name, position, salary)
    VALUES (source.employee_id, source.employee_name, source.position, source.salary);

