CREATE TABLE Attendance (
    EmpID INT,
    PresentDate DATE
);

INSERT INTO Attendance VALUES
(101, '2025-01-05'),
(102, '2025-03-14'),
(101, '2025-04-01'),
(103, '2025-02-22');

SELECT CURRENT_DATE();

-- OUTPUT:
-- 2025-11-14  (example)

SELECT EmpID, YEAR(PresentDate) AS YearAttended FROM Attendance;

-- OUTPUT:
-- 101 | 2025
-- 102 | 2025
-- 101 | 2025
-- 103 | 2025

SELECT EmpID, MONTH(PresentDate) AS MonthAttended FROM Attendance;

-- OUTPUT:
-- 101 | 1
-- 102 | 3
-- 101 | 4
-- 103 | 2

SELECT EmpID, DAYNAME(PresentDate) AS DayName FROM Attendance;

-- OUTPUT:
-- 101 | Sunday
-- 102 | Friday
-- 101 | Tuesday
-- 103 | Saturday
