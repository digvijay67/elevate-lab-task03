create database if not exists Elevatetask05;
use Elevatetask05;

CREATE TABLE Customers (
  CustomerID INT PRIMARY KEY,
  CustomerName TEXT,
  City TEXT
);
CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  OrderDate TEXT,
  CustomerID INT,
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Customers VALUES
(1, 'Digvijaysing', 'Pune'),
(2, 'yash', 'Mumbai'),
(3, 'Raj', 'Delhi');

INSERT INTO Orders VALUES
(101, '2025-10-25', 1),
(102, '2025-10-26', 1),
(103, '2025-10-27', 2);

SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

select Customers.CustomerName , Orders.OrderID 
from Customers
LEFT JOIN Orders ON Customers.CustomerName = Orders.CustomerID;

select Customers.CustomerName , Orders.OrderDate
from Customers 
right join Orders on Customers.CustomerID = Orders.OrderDate ;

select Customers.CustomerName , Orders.CustomerID 
from Customers
left join Orders on Customers.customerName = orders.CustomerID
UNION
select Customers.CustomerName , Orders.OrderDate 
from Customers
right join Orders on Customers.CustomerName = Orders.OrderDate;

select Customers.CustomerName , Orders.CustomerID
from Customers 
Cross join Orders ;

select * from Customers
natural join Orders;

select Customers.CustomerName , Orders.OrderDate
from Customers , Orders;

select * 
from Customers
inner join Orders 
on Customers.CustomerID = Orders.CustomerID;

select *  from Customers
inner join Orders
using (CustomerID);