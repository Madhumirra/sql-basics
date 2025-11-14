CREATE TABLE Sales (
    SaleID INT,
    Product VARCHAR(30),
    Amount INT
);

INSERT INTO Sales VALUES
(1, 'Laptop', 60000),
(2, 'Phone', 30000),
(3, 'Laptop', 55000),
(4, 'Mouse', 1000);

SELECT SUM(Amount) AS TotalSales FROM Sales;

-- OUTPUT:
-- 146000

SELECT AVG(Amount) AS AvgSale FROM Sales;

-- OUTPUT:
-- 36500

SELECT COUNT(*) AS TotalRows FROM Sales;

-- OUTPUT:
-- 4

SELECT Product, SUM(Amount) AS TotalProductSales
FROM Sales
GROUP BY Product;

-- OUTPUT:
-- Laptop | 115000
-- Phone  | 30000
-- Mouse  | 1000

SELECT Product, SUM(Amount) AS TotalProductSales
FROM Sales
GROUP BY Product
HAVING SUM(Amount) > 50000;

-- OUTPUT:
-- Laptop | 115000

