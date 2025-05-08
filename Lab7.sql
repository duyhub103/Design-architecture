CREATE DATABASE PhoneShopDB;

USE PhoneShopDB;

-- Bảng Customers
CREATE TABLE Customers (
    CustomerId INT PRIMARY KEY IDENTITY(1,1),
    CustomerName NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) NOT NULL UNIQUE
);

-- Bảng Orders
CREATE TABLE Orders (
    OrderId INT PRIMARY KEY IDENTITY(1,1),
    CustomerId INT NOT NULL,
    OrderDate DATETIME NOT NULL,
    TotalAmount DECIMAL(18,2) NOT NULL,
    FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerId)
);

-- Thêm dữ liệu mẫu
INSERT INTO Customers (CustomerName, Email) VALUES ('Test Customer', 'test@example.com');

SELECT * FROM Orders;

SELECT * FROM Customers;