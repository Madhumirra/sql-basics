CREATE TABLE Employees2 (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Salary INT
);

INSERT INTO Employees2 VALUES
(1, 'Ravi', 35000),
(2, 'Anu', 50000),
(3, 'Meera', 45000),
(4, 'Sam', 30000);

-- Employees above average salary
SELECT Name, Salary
FROM Employees2
WHERE Salary > (SELECT AVG(Salary) FROM Employees2);

-- OUTPUT:
-- Anu  50000
-- Meera 45000

-- Max salary in each row
SELECT Name, Salary,
       (SELECT MAX(Salary) FROM Employees2) AS HighestSalary
FROM Employees2;

-- OUTPUT:
-- Ravi 35000 50000
-- Anu  50000 50000
-- Meera 45000 50000
-- Sam  30000 50000

-- Subquery with IN
SELECT Name FROM Employees2
WHERE EmpID IN (SELECT EmpID FROM Employees2 WHERE Salary > 40000);

-- OUTPUT:
-- Anu
-- Meera
