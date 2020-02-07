-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT ProductName as 'Product Name', CategoryName as 'Category Name' From Product as p
Join Category as c
On p.CategoryId = c.Id Order by C.Id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT Id as 'Order ID', CompanyName as 'Company Name' From [Order] as o
Join Shipper as s
On o.ShipVia = s.Id WHERE Orderdate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

Select OrderId as 'Order ID', Quantity, ProductName as 'Product Name' FROM OrderDetail as o
JOIN Product as p
On o.ProductId = p.ID
WHERE OrderId = '10251'
Group by p.ProductName
Order by p.ProductName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

Select Id as 'Order ID', CompanyName as 'Customer Company Name', LastName as 'Employee Name' FROM [Order] as o
JOIN Customer as c
On o.CustomerId = c.ID
JOIN Employee as e
On o.EmployeeId = e.ID;
