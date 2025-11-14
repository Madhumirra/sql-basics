CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Salary INT,
    Department VARCHAR(30)
);

INSERT INTO Employees VALUES
(101, 'Rahul', 30000, 'IT'),
(102, 'Mira', 45000, 'HR'),
(103, 'Kishore', 50000, 'Finance');

SELECT * FROM Employees;

-- OUTPUT:
-- 101 Rahul   30000 IT
-- 102 Mira    45000 HR
-- 103 Kishore 50000 Finance

UPDATE Employees SET Salary = 60000 WHERE EmpID = 103;

SELECT * FROM Employees;

-- OUTPUT after update:
-- 101 Rahul   30000 IT
-- 102 Mira    45000 HR
-- 103 Kishore 60000 Finance

DELETE FROM Employees WHERE EmpID = 102;

SELECT * FROM Employees;

-- OUTPUT after delete:
-- 101 Rahul   30000 IT
-- 103 Kishore 60000 Finance
