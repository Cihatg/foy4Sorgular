use foy_4;


CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    first_name NVARCHAR(50),
    last_name NVARCHAR(50),
    department NVARCHAR(50),
    salary DECIMAL(10, 2)
);


INSERT INTO Employees (employee_id, first_name, last_name, department, salary) 
VALUES
    (1, 'John', 'Doe', 'Sales', 5000.00),
    (2, 'Jane', 'Smith', 'Marketing', 6000.00),
    (3, 'Michael', 'Johnson', 'Sales', 5500.00),
    (4, 'Emily', 'Brown', 'HR', 4800.00),
    (5, 'William', 'Taylor', 'Marketing', 6200.00);


CREATE INDEX idx_department ON Employees (department);

SELECT * FROM Employees WHERE department = 'Sales';

SELECT * FROM Employees WHERE department LIKE 'M%';



