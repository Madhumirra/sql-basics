CREATE TABLE Customers (
    CustID INT PRIMARY KEY,
    CustName VARCHAR(50)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustID INT,
    Product VARCHAR(40)
);

INSERT INTO Customers VALUES
(1, 'Arun'),
(2, 'Meera'),
(3, 'Siva');

INSERT INTO Orders VALUES
(101, 1, 'Laptop'),
(102, 2, 'Phone'),
(103, 1, 'Keyboard');

-- INNER JOIN
SELECT Customers.CustName, Orders.Product
FROM Customers
INNER JOIN Orders ON Customers.CustID = Orders.CustID;

-- OUTPUT:
-- Arun  Laptop
-- Meera Phone
-- Arun  Keyboard

-- LEFT JOIN
SELECT Customers.CustName, Orders.Product
FROM Customers
LEFT JOIN Orders ON Customers.CustID = Orders.CustID;

-- OUTPUT:
-- Arun  Laptop
-- Arun  Keyboard
-- Meera Phone
-- Siva  NULL

-- RIGHT JOIN
SELECT Customers.CustName, Orders.Product
FROM Customers
RIGHT JOIN Orders ON Customers.CustID = Orders.CustID;

-- OUTPUT:
-- Arun  Laptop
-- Meera Phone
-- Arun  Keyboard
