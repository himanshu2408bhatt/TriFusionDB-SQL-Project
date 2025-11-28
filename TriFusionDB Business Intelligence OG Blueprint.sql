CREATE DATABASE TriFusionDB;
USE TriFusionDB;
-- Customers
CREATE TABLE Customers (
  CustomerID INT PRIMARY KEY,
  Name VARCHAR(50),
  City VARCHAR(30),
  Phone VARCHAR(10)
);

-- Products
CREATE TABLE Products (
  ProductID INT PRIMARY KEY,
  Name VARCHAR(50),
  Category VARCHAR(30),
  Price DECIMAL(8,2),
  Stock INT
);

-- Orders
CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  CustomerID INT,
  ProductID INT,
  Quantity INT,
  OrderDate DATE,
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
  FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Services
CREATE TABLE Services (
  ServiceID INT PRIMARY KEY,
  Name VARCHAR(50),
  Cost DECIMAL(8,2)
);

-- Bookings
CREATE TABLE Bookings (
  BookingID INT PRIMARY KEY,
  CustomerID INT,
  ServiceID INT,
  BookingDate DATE,
  Status VARCHAR(20),
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
  FOREIGN KEY (ServiceID) REFERENCES Services(ServiceID)
);

-- Transactions
CREATE TABLE Transactions (
  TransactionID INT PRIMARY KEY,
  CustomerID INT,
  Amount DECIMAL(10,2),
  Method VARCHAR(20),
  TransactionDate DATE,
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Returns
CREATE TABLE Returns (
  ReturnID INT PRIMARY KEY,
  ProductID INT,
  CustomerID INT,
  ReturnDate DATE,
  Reason VARCHAR(100),
  FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

ALTER TABLE Products
ADD Discount DECIMAL(5,2) DEFAULT 0;

UPDATE Products SET Discount = 10 WHERE ProductID = 101;
UPDATE Products SET Discount = 5 WHERE ProductID = 102;

INSERT INTO Customers VALUES
(1, 'Amit Singh', 'Delhi', '9811111111'),
(2, 'Neha Mehta', 'Mumbai', '9822222222'),
(3, 'Raj Khanna', 'Chennai', '9833333333'),
(4, 'Tanvi Das', 'Kolkata', '9844444444'),
(5, 'Mohit Saini', 'Jaipur', '9855555555'),
(6, 'Shruti Rao', 'Bhopal', '9866666666'),
(7, 'Yash Thakur', 'Pune', '9877777777'),
(8, 'Deepika Joshi', 'Ahmedabad', '9888888888'),
(9, 'Aditya Kaul', 'Lucknow', '9899999999'),
(10, 'Reena Sharma', 'Hyderabad', '9800000000'),
(11, 'Karan Bedi', 'Nagpur', '9812345678'),
(12, 'Ritika Kapoor', 'Goa', '9823456789'),
(13, 'Sahil Verma', 'Indore', '9834567890'),
(14, 'Isha Malhotra', 'Surat', '9845678901'),
(15, 'Nikhil Rawat', 'Noida', '9856789012'),
(16, 'Meera Nair', 'Thiruvananthapuram', '9867890123'),
(17, 'Ravi Joshi', 'Patna', '9878901234'),
(18, 'Anjali Menon', 'Mysore', '9889012345'),
(19, 'Vikram Desai', 'Vadodara', '9890123456'),
(20, 'Pooja Reddy', 'Visakhapatnam', '9801234567');


INSERT INTO Products VALUES
(101, 'Smartphone', 'Electronics', 15000.00, 30),
(102, 'Washing Machine', 'Appliances', 22000.00, 10),
(103, 'Office Chair', 'Furniture', 6500.00, 15),
(104, 'Bluetooth Speaker', 'Electronics', 3000.00, 25),
(105, 'Cookware Set', 'Kitchenware', 2000.00, 50),
(106, 'LED TV', 'Electronics', 32000.00, 8),
(107, 'Mixer Grinder', 'Kitchenware', 5500.00, 12),
(108, 'Table Lamp', 'Furniture', 1800.00, 20),
(109, 'Air Conditioner', 'Appliances', 40000.00, 5),
(110, 'Laptop', 'Electronics', 55000.00, 6),
(111, 'Book Shelf', 'Furniture', 3500.00, 11),
(112, 'Juicer', 'Kitchenware', 3000.00, 18),
(113, 'Power Bank', 'Electronics', 1200.00, 40),
(114, 'Ceiling Fan', 'Appliances', 2800.00, 14),
(115, 'Sofa Set', 'Furniture', 25000.00, 4),
(116, 'Iron', 'Appliances', 1800.00, 22),
(117, 'Router', 'Electronics', 2500.00, 16),
(118, 'Coffee Maker', 'Kitchenware', 4500.00, 9),
(119, 'Desk Organizer', 'Furniture', 1200.00, 30),
(120, 'Smartwatch', 'Electronics', 8000.00, 12);


INSERT INTO Orders VALUES
(1, 1, 101, 1, '2025-07-01'),
(2, 2, 102, 1, '2025-07-02'),
(3, 3, 104, 2, '2025-07-02'),
(4, 4, 105, 1, '2025-07-03'),
(5, 5, 103, 1, '2025-07-03'),
(6, 6, 101, 1, '2025-07-04'),
(7, 7, 105, 3, '2025-07-04'),
(8, 8, 106, 1, '2025-07-05'),
(9, 9, 107, 1, '2025-07-06'),
(10, 10, 108, 2, '2025-07-07'),
(11, 11, 109, 1, '2025-07-08'),
(12, 12, 110, 1, '2025-07-09'),
(13, 13, 111, 1, '2025-07-10'),
(14, 14, 112, 2, '2025-07-11'),
(15, 15, 113, 3, '2025-07-12'),
(16, 16, 114, 1, '2025-07-13'),
(17, 17, 115, 1, '2025-07-14'),
(18, 18, 116, 2, '2025-07-15'),
(19, 19, 117, 1, '2025-07-16'),
(20, 20, 118, 1, '2025-07-17');

INSERT INTO Services VALUES
(201, 'Installation', 500.00),
(202, 'Repair Service', 800.00),
(203, 'Cleaning Service', 400.00),
(204, 'AMC', 1200.00),
(205, 'Demo Assistance', 300.00),
(206, 'Setup Help', 450.00),
(207, 'Software Update', 600.00),
(208, 'Hardware Check', 700.00),
(209, 'Warranty Extension', 1000.00),
(210, 'Remote Support', 350.00),
(211, 'Onsite Visit', 900.00),
(212, 'Device Sync', 550.00),
(213, 'Network Setup', 650.00),
(214, 'Battery Replacement', 750.00),
(215, 'Screen Repair', 850.00),
(216, 'Fan Cleaning', 300.00),
(217, 'Motor Check', 500.00),
(218, 'Cable Management', 200.00),
(219, 'Smart Home Setup', 1500.00),
(220, 'Voice Assistant Config', 400.00);


INSERT INTO Bookings VALUES
(1, 1, 201, '2025-07-05', 'Confirmed'),
(2, 2, 202, '2025-07-06', 'Completed'),
(3, 3, 203, '2025-07-07', 'Confirmed'),
(4, 4, 204, '2025-07-08', 'Pending'),
(5, 5, 205, '2025-07-09', 'Confirmed'),
(6, 6, 206, '2025-07-10', 'Completed'),
(7, 7, 207, '2025-07-11', 'Confirmed'),
(8, 8, 208, '2025-07-12', 'Completed'),
(9, 9, 209, '2025-07-13', 'Confirmed'),
(10, 10, 210, '2025-07-14', 'Completed'),
(11, 11, 211, '2025-07-15', 'Confirmed'),
(12, 12, 212, '2025-07-16', 'Completed'),
(13, 13, 213, '2025-07-17', 'Pending'),
(14, 14, 214, '2025-07-18', 'Confirmed'),
(15, 15, 215, '2025-07-19', 'Completed'),
(16, 16, 216, '2025-07-20', 'Confirmed'),
(17, 17, 217, '2025-07-21', 'Completed'),
(18, 18, 218, '2025-07-22', 'Confirmed'),
(19, 19, 219, '2025-07-23', 'Completed'),
(20, 20, 220, '2025-07-24', 'Confirmed');

INSERT INTO Transactions VALUES
(1, 1, 15500.00, 'UPI', '2025-07-01'),
(2, 2, 22800.00, 'Card', '2025-07-02'),
(3, 3, 6000.00, 'Cash', '2025-07-02'),
(4, 4, 2000.00, 'UPI', '2025-07-03'),
(5, 5, 6500.00, 'Card', '2025-07-03'),
(6, 6, 15000.00, 'Cash', '2025-07-04'),
(7, 7, 6000.00, 'UPI', '2025-07-04'),
(8, 8, 32000.00, 'Card', '2025-07-05'),
(9, 9, 5500.00, 'Cash', '2025-07-06'),
(10, 10, 3600.00, 'UPI', '2025-07-07'),
(11, 11, 40000.00, 'Card', '2025-07-08'),
(12, 12, 55000.00, 'UPI', '2025-07-09'),
(13, 13, 3800.00, 'Cash', '2025-07-10'),
(14, 14, 6000.00, 'Card', '2025-07-11'),
(15, 15, 3600.00, 'UPI', '2025-07-12'),
(16, 16, 2800.00, 'Cash', '2025-07-13'),
(17, 17, 25000.00, 'Card', '2025-07-14'),
(18, 18, 3600.00, 'UPI', '2025-07-15'),
(19, 19, 2500.00, 'Cash', '2025-07-16'),
(20, 20, 4500.00, 'Card', '2025-07-17');



INSERT INTO Returns VALUES
(1, 101, 1, '2025-07-06', 'Defective'),
(2, 104, 3, '2025-07-08', 'Wrong item'),
(3, 105, 4, '2025-07-09', 'Packaging issue'),
(4, 106, 8, '2025-07-10', 'Damaged during transit'),
(5, 113, 15, '2025-07-14', 'Not as described'),
(6, 102, 2, '2025-07-15', 'Defective'),
(7, 103, 5, '2025-07-16', 'Wrong item'),
(8, 107, 9, '2025-07-17', 'Packaging issue'),
(9, 108, 10, '2025-07-18', 'Damaged during transit'),
(10, 109, 11, '2025-07-19', 'Not as described'),
(11, 110, 12, '2025-07-20', 'Defective'),
(12, 111, 13, '2025-07-21', 'Wrong item'),
(13, 112, 14, '2025-07-22', 'Packaging issue'),
(14, 114, 16, '2025-07-23', 'Damaged during transit'),
(15, 115, 17, '2025-07-24', 'Not as described'),
(16, 116, 18, '2025-07-25', 'Defective'),
(17, 117, 19, '2025-07-26', 'Wrong item'),
(18, 118, 20, '2025-07-27', 'Packaging issue'),
(19, 119, 6, '2025-07-28', 'Damaged during transit'),
(20, 120, 7, '2025-07-29', 'Not as described');

-- January
INSERT INTO Orders VALUES (26, 6, 101, 1, '2025-01-10');
-- February
INSERT INTO Orders VALUES (27, 7, 102, 2, '2025-02-15');
-- March
INSERT INTO Orders VALUES (28, 8, 103, 1, '2025-03-20');
-- April
INSERT INTO Orders VALUES (29, 9, 104, 3, '2025-04-05');
-- May
INSERT INTO Orders VALUES (30, 10, 105, 2, '2025-05-12');
-- June
INSERT INTO Orders VALUES (31, 11, 106, 1, '2025-06-18');
-- July (already populated)
-- August
INSERT INTO Orders VALUES (32, 12, 107, 2, '2025-08-10');
-- September
INSERT INTO Orders VALUES (33, 13, 108, 1, '2025-09-15');
-- October
INSERT INTO Orders VALUES (34, 14, 109, 2, '2025-10-22');
-- November
INSERT INTO Orders VALUES (35, 15, 110, 1, '2025-11-30');
-- December
INSERT INTO Orders VALUES (36, 16, 101, 3, '2025-12-05');
---------------------------------------------------------
CREATE VIEW CustomerOrderSummary AS
SELECT 
  C.CustomerID,
  C.Name AS CustomerName,
  P.Name AS ProductName,
  O.Quantity,
  P.Price,
  (O.Quantity * P.Price) AS TotalCost,
  O.OrderDate
FROM Orders O
JOIN Customers C ON O.CustomerID = C.CustomerID
JOIN Products P ON O.ProductID = P.ProductID;

SELECT * FROM CustomerOrderSummary;
---------------------------------------------------------

CREATE VIEW ProductReturnSummary AS
SELECT 
  P.ProductID,
  P.Name AS ProductName,
  COUNT(R.ReturnID) AS ReturnCount
FROM Returns R
JOIN Products P ON R.ProductID = P.ProductID
GROUP BY P.ProductID, P.Name;

SELECT * FROM ProductReturnSummary;
----------------------------------------------------

DELIMITER $$

CREATE TRIGGER trg_reduce_stock_after_order
AFTER INSERT ON Orders
FOR EACH ROW
BEGIN
  UPDATE Products
  SET Stock = Stock - NEW.Quantity
  WHERE ProductID = NEW.ProductID;
END$$

DELIMITER ;

SELECT ProductID, Name, Stock FROM Products WHERE ProductID = 101;


----------------------------------------------------------------------
DELIMITER $$

CREATE PROCEDURE PlaceOrder (
  IN in_order_id INT,
  IN in_customer_id INT,
  IN in_product_id INT,
  IN in_quantity INT,
  IN in_order_date DATE
)
BEGIN
  -- Insert into Orders
  INSERT INTO Orders (OrderID, CustomerID, ProductID, Quantity, OrderDate)
  VALUES (in_order_id, in_customer_id, in_product_id, in_quantity, in_order_date);

  -- Update stock manually (if trigger not used)
  UPDATE Products
  SET Stock = Stock - in_quantity
  WHERE ProductID = in_product_id;
END$$

DELIMITER ;

CALL PlaceOrder(21, 1, 101, 2, '2025-07-30');
SELECT * FROM Orders WHERE OrderID = 21;
SELECT Name, Stock FROM Products WHERE ProductID = 101;
--------------------------------------------------------------

DELIMITER $$

CREATE FUNCTION CalculateTotalCost (
  in_product_id INT,
  in_quantity INT
)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
  DECLARE product_price DECIMAL(8,2);
  DECLARE total_cost DECIMAL(10,2);

  SELECT Price INTO product_price
  FROM Products
  WHERE ProductID = in_product_id;

  SET total_cost = product_price * in_quantity;
  RETURN total_cost;
END$$

DELIMITER ;

SELECT CalculateTotalCost(101, 2);
--------------------------------------------------------------
-- 1. Most Returned Products
-- Identify which products have the highest number of returns.
SELECT ProductID, COUNT(*) AS ReturnCount
FROM Returns
GROUP BY ProductID
ORDER BY ReturnCount DESC;

-- 2. Top Spending Customers
-- Find customers who spent the most on orders.
SELECT C.CustomerID, C.Name, SUM(P.Price * O.Quantity) AS TotalSpent
FROM Orders O
JOIN Customers C ON O.CustomerID = C.CustomerID
JOIN Products P ON O.ProductID = P.ProductID
GROUP BY C.CustomerID, C.Name
ORDER BY TotalSpent DESC;

-- 3. Low Stock Products
-- List products with stock less than 10.
SELECT ProductID, Name, Stock
FROM Products
WHERE Stock < 10;

-- 4. Most Booked Services
-- Find services with the highest booking count.
SELECT S.ServiceID, S.Name, COUNT(*) AS BookingCount
FROM Bookings B
JOIN Services S ON B.ServiceID = S.ServiceID
GROUP BY S.ServiceID, S.Name
ORDER BY BookingCount DESC;

-- 5. Inactive Customers
-- Customers who never placed an order.
SELECT C.CustomerID, C.Name
FROM Customers C
LEFT JOIN Orders O ON C.CustomerID = O.CustomerID
WHERE O.OrderID IS NULL;

-- 6. Unordered Products
-- Products that have never been ordered.
SELECT P.ProductID, P.Name
FROM Products P
LEFT JOIN Orders O ON P.ProductID = O.ProductID
WHERE O.OrderID IS NULL;

-- 7. Average Order Value
-- Calculate average value of all orders.
SELECT AVG(P.Price * O.Quantity) AS AvgOrderValue
FROM Orders O
JOIN Products P ON O.ProductID = P.ProductID;

-- 8. Most Used Payment Method
-- Find which payment method is most popular.
SELECT Method, COUNT(*) AS UsageCount
FROM Transactions
GROUP BY Method
ORDER BY UsageCount DESC;

-- 9. Top Service Users
-- Customers who booked the most services.
SELECT C.CustomerID, C.Name, COUNT(*) AS BookingCount
FROM Bookings B
JOIN Customers C ON B.CustomerID = C.CustomerID
GROUP BY C.CustomerID, C.Name
ORDER BY BookingCount DESC;

-- 10. Best-Selling Products
-- Products with highest total quantity sold.
SELECT P.ProductID, P.Name, SUM(O.Quantity) AS TotalUnitsSold
FROM Orders O
JOIN Products P ON O.ProductID = P.ProductID
GROUP BY P.ProductID, P.Name
ORDER BY TotalUnitsSold DESC;

-- 11. Frequent Returners
-- Customers who returned the most products.
SELECT CustomerID, COUNT(*) AS TotalReturns
FROM Returns
GROUP BY CustomerID
ORDER BY TotalReturns DESC;

-- 12. Pending Bookings
-- List all service bookings that are still pending.
SELECT B.BookingID, C.Name AS CustomerName, S.Name AS ServiceName, B.BookingDate
FROM Bookings B
JOIN Customers C ON B.CustomerID = C.CustomerID
JOIN Services S ON B.ServiceID = S.ServiceID
WHERE B.Status = 'Pending';

-- 13. Total Revenue
-- Sum of all transaction amounts.
SELECT SUM(Amount) AS TotalRevenue
FROM Transactions;

-- 14. Returned but Not Ordered Products
-- Products returned without any order record.
SELECT P.ProductID, P.Name
FROM Products P
JOIN Returns R ON P.ProductID = R.ProductID
LEFT JOIN Orders O ON P.ProductID = O.ProductID
WHERE O.OrderID IS NULL;

-- 15. Multi-Method Customers
-- Customers who used all three payment methods.
SELECT CustomerID
FROM Transactions
GROUP BY CustomerID
HAVING COUNT(DISTINCT Method) = 3;

-- 16. Product Return Rate
-- Ratio of returns to orders per product.
SELECT P.ProductID, P.Name,
       COUNT(R.ReturnID) / COUNT(O.OrderID) AS ReturnRate
FROM Products P
LEFT JOIN Returns R ON P.ProductID = R.ProductID
LEFT JOIN Orders O ON P.ProductID = O.ProductID
GROUP BY P.ProductID, P.Name;

-- 17. Busiest Order Day
-- Day with the highest number of orders.
SELECT OrderDate, COUNT(*) AS OrderCount
FROM Orders
GROUP BY OrderDate
ORDER BY OrderCount DESC
LIMIT 1;

-- 18. Dual-Activity Customers
-- Customers who placed orders and booked services.
SELECT C.CustomerID, C.Name
FROM Customers C
JOIN Orders O ON C.CustomerID = O.CustomerID
JOIN Bookings B ON C.CustomerID = B.CustomerID
GROUP BY C.CustomerID, C.Name;

-- 19. Ordered and Returned Products
-- Products ordered and returned by the same customer.
SELECT DISTINCT R.CustomerID, P.Name
FROM Returns R
JOIN Orders O ON R.CustomerID = O.CustomerID AND R.ProductID = O.ProductID
JOIN Products P ON R.ProductID = P.ProductID;

-- 20. Multiple Orders Same Day
-- Customers who placed more than one order on the same day.
SELECT CustomerID, OrderDate, COUNT(*) AS OrderCount
FROM Orders
GROUP BY CustomerID, OrderDate
HAVING COUNT(*) > 1;

# 21How would you detect duplicate customer records
SELECT Name, Phone, COUNT(*)
FROM Customers
GROUP BY Name, Phone
HAVING COUNT(*) > 1;

#22  monthly sales report?

SELECT MONTH(OrderDate) AS Month, SUM(P.Price * O.Quantity) AS MonthlySales
FROM Orders O
JOIN Products P ON O.ProductID = P.ProductID
GROUP BY MONTH(OrderDate)
ORDER BY Month;


#Show Monthly Sales by Category
SELECT MONTH(O.OrderDate) AS Month, P.Category, SUM(P.Price * O.Quantity) AS CategorySales
FROM Orders O
JOIN Products P ON O.ProductID = P.ProductID
GROUP BY MONTH(O.OrderDate), P.Category
ORDER BY Month, Category;

# Compare Monthly Sales with Returns
SELECT MONTH(O.OrderDate) AS Month,
       SUM(P.Price * O.Quantity) AS Sales,
       COUNT(R.ReturnID) AS Returns
FROM Orders O
JOIN Products P ON O.ProductID = P.ProductID
LEFT JOIN Returns R ON O.ProductID = R.ProductID AND O.CustomerID = R.CustomerID
GROUP BY MONTH(O.OrderDate);



# How would you handle seasonal demand in your product sales
SELECT MONTH(OrderDate) AS Month, SUM(P.Price * O.Quantity) AS MonthlySales
FROM Orders O JOIN Products P ON O.ProductID = P.ProductID
GROUP BY MONTH(OrderDate);

#How would you design a discount system for products or services?
SELECT ProductID, Name, Price, Discount,
       Price - (Price * Discount / 100) AS FinalPrice
FROM Products;

#How would you track customer satisfaction?
CREATE TABLE Feedback (
  FeedbackID INT PRIMARY KEY,
  CustomerID INT,
  OrderID INT,
  Rating INT,
  Comments TEXT
);

INSERT INTO Feedback VALUES
(1, 1, 101, 5, 'Excellent product and fast delivery'),
(2, 2, 102, 4, 'Good quality but packaging could be better'),
(3, 3, 103, 2, 'Received wrong item'),
(4, 4, 104, 3, 'Average experience'),
(5, 5, 105, 5, 'Loved it! Will order again'),
(6, 6, 106, 1, 'Product was damaged'),
(7, 7, 107, 4, 'Service was prompt'),
(8, 8, 108, 5, 'Great value for money'),
(9, 9, 109, 2, 'Late delivery'),
(10, 10, 110, 3, 'Okay product, decent service');

SELECT * FROM Feedback;
SELECT CustomerID, AVG(Rating) AS AvgRating
FROM Feedback
GROUP BY CustomerID;

SELECT * FROM Feedback
WHERE Rating <= 2;

# top rated orders
SELECT OrderID, Rating, Comments
FROM Feedback
WHERE Rating = 5;


# How would you handle multiple addresses per customer?
CREATE TABLE Addresses (
  AddressID INT PRIMARY KEY,
  CustomerID INT,
  AddressLine TEXT,
  City VARCHAR(50),
  State VARCHAR(50),
  ZipCode VARCHAR(10)
);

INSERT INTO Addresses VALUES
(1, 1, '123 MG Road', 'Delhi', 'Delhi', '110001'),
(2, 2, '456 Park Street', 'Kolkata', 'West Bengal', '700016'),
(3, 3, '789 Brigade Road', 'Bangalore', 'Karnataka', '560001'),
(4, 4, '101 FC Road', 'Pune', 'Maharashtra', '411004'),
(5, 5, '202 Anna Salai', 'Chennai', 'Tamil Nadu', '600002'),
(6, 6, '303 SG Highway', 'Ahmedabad', 'Gujarat', '380015'),
(7, 7, '404 Banjara Hills', 'Hyderabad', 'Telangana', '500034'),
(8, 8, '505 Sector 18', 'Noida', 'Uttar Pradesh', '201301'),
(9, 9, '606 Civil Lines', 'Jaipur', 'Rajasthan', '302006'),
(10, 10, '707 Marine Drive', 'Mumbai', 'Maharashtra', '400002');

SELECT * FROM Addresses;

SELECT C.Name, A.AddressLine, A.City, A.State, A.ZipCode
FROM Customers C
JOIN Addresses A ON C.CustomerID = A.CustomerID
WHERE C.CustomerID = 3;

SELECT C.Name, A.City
FROM Customers C
JOIN Addresses A ON C.CustomerID = A.CustomerID
WHERE A.City = 'Mumbai';

SELECT State, COUNT(*) AS CustomerCount
FROM Addresses
GROUP BY State;

SELECT C.CustomerID, C.Name
FROM Customers C
LEFT JOIN Addresses A ON C.CustomerID = A.CustomerID
WHERE A.AddressID IS NULL;

-------------------------------

# How would you prevent duplicate orders?
SELECT COUNT(*) FROM Orders
WHERE CustomerID = 1 AND ProductID = 101 AND OrderDate = '2025-07-01';

 # track inventory value?
 SELECT SUM(Stock * Price) AS InventoryValue FROM Products;
 
 # calculate customer lifetime value (CLV)?
 SELECT CustomerID, SUM(P.Price * O.Quantity) AS LifetimeValue
FROM Orders O JOIN Products P ON O.ProductID = P.ProductID
GROUP BY CustomerID;

# handle customer segmentation (e.g., VIPs)?

SELECT CustomerID,
       CASE
         WHEN SUM(P.Price * O.Quantity) > 50000 THEN 'VIP'
         ELSE 'Regular'
       END AS Tier
FROM Orders O
JOIN Products P ON O.ProductID = P.ProductID
GROUP BY CustomerID;

 # How would you detect and prevent overlapping bookings for the same customer?
 
INSERT INTO Bookings (BookingID, CustomerID, ServiceID, BookingDate, Status, StartTime, EndTime) VALUES
(23, 1, 205, '2025-07-10', 'Confirmed', '2025-07-10 10:00:00', '2025-07-10 11:00:00'),
(24, 2, 206, '2025-07-11', 'Pending', '2025-07-11 09:00:00', '2025-07-11 10:00:00'),
(25, 3, 207, '2025-07-12', 'Completed', '2025-07-12 14:00:00', '2025-07-12 15:00:00'),
(26, 4, 208, '2025-07-13', 'Confirmed', '2025-07-13 11:30:00', '2025-07-13 12:30:00'),
(27, 5, 209, '2025-07-14', 'Cancelled', '2025-07-14 16:00:00', '2025-07-14 17:00:00'),
(28, 6, 210, '2025-07-15', 'Confirmed', '2025-07-15 08:30:00', '2025-07-15 09:30:00'),
(29, 7, 211, '2025-07-16', 'Pending', '2025-07-16 13:00:00', '2025-07-16 14:00:00'),
(30, 8, 212, '2025-07-17', 'Completed', '2025-07-17 15:30:00', '2025-07-17 16:30:00'),
(31, 9, 213, '2025-07-18', 'Confirmed', '2025-07-18 10:15:00', '2025-07-18 11:15:00'),
(32, 10, 214, '2025-07-19', 'Confirmed', '2025-07-19 12:00:00', '2025-07-19 13:00:00');


 SELECT * FROM Bookings B1
JOIN Bookings B2 ON B1.CustomerID = B2.CustomerID
WHERE B1.BookingID <> B2.BookingID
  AND B1.StartTime < B2.EndTime
  AND B1.EndTime > B2.StartTime;
  
  # daily summary booking
  SELECT BookingDate, COUNT(*) AS TotalBookings
FROM Bookings
GROUP BY BookingDate
ORDER BY BookingDate;

# booking statuscountdown
SELECT Status, COUNT(*) AS Count
FROM Bookings
GROUP BY Status;

# customer booking history
SELECT C.Name, COUNT(B.BookingID) AS TotalBookings
FROM Bookings B
JOIN Customers C ON B.CustomerID = C.CustomerID
GROUP BY C.Name
ORDER BY TotalBookings DESC;