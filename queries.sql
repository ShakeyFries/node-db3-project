-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT ProductName, CategoryName 
FROM Product as P
Join Category as C
ON P.CategoryID = C.ID;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT CompanyName, id
FROM [Order] as O
Join Shipper as S
ON O.shipVia = S.ID
Where O.OrderDate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT ProductName, Quantity
FROM OrderDetail as OD
JOIN Product as P
ON P.Id = OD.ProductId
WHERE OD.OrderId = 10251
ORDER BY P.ProductName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT id AS OrderID, CompanyName, LastName
From [Order] as OD
JOIN Customer as C
JOIN Employee as E
ON OD.CustomerId = C.Id AND OD.EmployeeId = E.Id;