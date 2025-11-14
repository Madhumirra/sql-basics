-- Create a simple table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(10)
);

INSERT INTO Students VALUES 
(1, 'Ravi', 20, 'Male'),
(2, 'Anu', 22, 'Female'),
(3, 'Kumar', 21, 'Male'),
(4, 'Priya', 23, 'Female');

SELECT * FROM Students;

--OUTPUT:
-- +-----------+-------+-----+--------+
-- | StudentID | Name  | Age | Gender |
-- +-----------+-------+-----+--------+
-- |     1     | Ravi  |  20 | Male   |
-- |     2     | Anu   |  22 | Female |
-- |     3     | Kumar |  21 | Male   |
-- |     4     | Priya |  23 | Female |
-- +-----------+-------+-----+--------+

SELECT * FROM Students WHERE Age > 21;

-- OUTPUT:
-- 2 | Anu  | 22 | Female
-- 4 | Priya| 23 | Female

SELECT * FROM Students ORDER BY Age DESC;

-- OUTPUT:
-- Priya 23
-- Anu 22
-- Kumar 21
-- Ravi 20

SELECT * FROM Students WHERE Name LIKE 'A%';

-- OUTPUT:
-- Anu 22 Female
