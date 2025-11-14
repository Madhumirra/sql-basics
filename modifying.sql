UPDATE Employees
SET Salary = 55000
WHERE EmpID = 101;

-- OUTPUT:
-- Salary of EmpID 101 updated to 55000


DELETE FROM Employees
WHERE EmpID = 103;

-- OUTPUT:
-- Row with EmpID 103 deleted

START TRANSACTION;

UPDATE Employees SET Salary = 70000 WHERE EmpID = 101;

-- If you want to undo this update:
ROLLBACK;

-- OUTPUT:
-- Salary goes back to the previous value.

--Used to save changes permanently.
COMMIT;

TRUNCATE TABLE Employees;

-- OUTPUT:
-- All rows deleted, table empty but structure exists

DROP TABLE Employees;

-- OUTPUT:
-- Table removed permanently

ALTER TABLE Employees
ADD COLUMN Email VARCHAR(50);

-- OUTPUT:
-- Column added

ALTER TABLE Employees
MODIFY Salary BIGINT;

-- OUTPUT:
-- Salary datatype changed

ALTER TABLE Employees
DROP COLUMN Department;

-- OUTPUT:
-- Column removed

RENAME TABLE Employees TO Staff;

-- OUTPUT:
-- Table name changed to Staff

--and ,OR
SELECT * FROM Employees
WHERE Salary > 50000 AND Department = 'IT';

SELECT * FROM Employees
WHERE Age < 30 OR Department = 'HR';





