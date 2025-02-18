-- select database
use northwind;

-- return all fields from categories
select *
from categories;

SELECT * -- all fields
FROM customers;

SELECT CustomerName, City, Country 
FROM Customers;

select productid, ProductName
from products;

select FirstName, LastName, BirthDate 
from employees;

select customername, address, city
From customers;

SELECT customername, Country 
FROM Customers;

-- customer countries
SELECT DISTINCT Country 
FROM Customers;

-- number of different countries
SELECT COUNT(DISTINCT Country) 
FROM Customers;

-- number of rows
SELECT COUNT(Country) 
FROM Customers;


-- Write SQL query to return different cities from suppliers table. 
SELECT DISTINCT City
From Suppliers;

-- Write SQL query to return number of cities from customers table.
SELECT COUNT(DISTINCT CITY) 
FROM CUSTOMERS;

-- where clause
SELECT * 
FROM Customers  
where Country = 'Mexico';

SELECT *
FROM Products
WHERE ProductID = 1;

-- Write SQL query to return Customers from London.
select * 
from customers 
where city = 'London';

-- Write SQL query to return number of Customers from USA.
select count(*)
FROM Customers 
WHERE Country = 'USA';

select count(*)
from customers
where country='USA';

SELECT * FROM Customers
WHERE CustomerID = 1;


SELECT * 
FROM Products
WHERE Price > 100;

SELECT * FROM Orders
WHERE OrderDate > "1996-07-30";

-- not equal to != or <>
select *
from customers
where country <> "UK";


-- Write SQL query to return Customers with their customerid is equal to and greater than 15.
select * 
from customers 
where customerID >= 15;



-- Write SQL query to return order details where order quantity is less than 3.
select * 
from order_details 
where quantity < 3;



-- Write SQL query to find details of employees who were born after 1960-01-01.
SELECT * 
FROM employees 
WHERE BirthDate > '1960-01-01';


SELECT * 
FROM Customers
WHERE Country = 'Germany' AND City = 'Berlin';

SELECT * 
FROM Customers
WHERE Country = 'Germany' or City = 'Berlin';


SELECT * FROM Suppliers
WHERE Country = 'Japan' AND City = 'Tokyo';


-- Write SQL query to find customer from UK and London.
 Select * 
 FROM Customers 
 WHERE Country = 'UK' AND City = 'London';

-- Write SQL query to find customer from UK and US.
 Select * 
 from Customers 
 Where Country = 'UK' and Country = 'USA';
 
 

-- Write SQL query to find products with price is less than 5 and productid more than 10.
SELECT * 
FROM Products 
WHERE Price < 5 AND ProductID > 10;


SELECT * 
FROM Customers
WHERE City = 'Berlin' OR City = 'Stuttgart';

SELECT * 
FROM Customers
WHERE Country = 'Germany' OR Country = 'Spain';


-- Write SQL query to find customers from Portland or Kirkland.
SELECT * 
FROM Customers 
WHERE City = 'Portland' or  city = "Kirkland";

-- Write SQL query to find orders before 1996-08-27 or after 1997-02-21.
select * 
from orders 
where orderdate < '1996-08-27' or orderdate > '1997-02-21';


-- Sorting Results
SELECT * 
FROM Customers
ORDER BY Country;

SELECT * 
FROM Customers
ORDER BY City;

SELECT * 
FROM Customers
ORDER BY PostalCode;

-- Write SQL query to return product names and order by Price.
SELECT Productname, price 
FROM products 
ORDER BY price;

SELECT * 
FROM Customers
ORDER BY Country DESC;


SELECT Productname, price 
FROM products 
ORDER BY price desc;


-- Write SQL query to return suppliers' information and sort the results by the city name in reverse alphabetical order.
SELECT * 
FROM suppliers 
ORDER BY City DESC;

SELECT * 
FROM Customers
ORDER BY Country, CustomerName;

SELECT * FROM Customers
ORDER BY Country ASC, CustomerName desc;

-- Write SQL query to sort employess by lastname and birthdate in decreasing order.
SELECT * FROM Employees 
ORDER BY LastName , BirthDate DESC;


-- Write an SQL query to retrieve all columns from the Customers table for customers located in the USA and sort them by CustomerName in ascending order.
select *
from Customers
where country = "USA"
order by Customername;

-- limit
SELECT * FROM Customers
LIMIT 3;

SELECT * FROM Products
ORDER BY PRICE 
LIMIT 5;

SELECT * FROM Customers
WHERE Country='Germany'
LIMIT 3;

SELECT * FROM Products
WHERE CategoryID=1
LIMIT 3;

-- Write an SQL query to get the top 10 products from the Products table with a Price greater than 20, limiting the result to 10 rows.
SELECT * FROM products 
where price>20 
order by price desc 
limit 10;


-- Write an SQL query to find the first 3 customer in the Customers table who live in 'London'.
 Select* From Customers 
 Where City='London' 
 order by customername
 Limit 3;

SELECT MIN(Price) AS SmallestPrice
FROM Products;

SELECT MAX(Price) AS LargestPrice
FROM Products;

select max(customername)
from customers;

select min(birthdate) as OldestEmployee
from employees;

-- Write an SQL query to find the customer with the most recent OrderDate in the Orders table.
SELECT MAX(OrderDate) AS mostrecent
from Orders;

-- Write an SQL query to find the product with the highest price from the Products table.
select max(price)
from products;

-- Write an SQL query to retrieve the product with the lowest Quantity in the OrderDetails table.
select min(quantity)
from order_details;

use northwind;
-- how many products
SELECT COUNT(ProductID)
FROM Products;

-- average price
SELECT AVG(Price)
FROM Products;

-- total price
SELECT SUM(Price)
FROM Products;

SELECT SUM(Quantity)
FROM Order_Details;

-- Write an SQL query to find the average quantity of products ordered in the OrderDetails table.
SELECT AVG(quantity) FROM Order_Details;

-- Write an SQL query to count the number of employees in the Employees table.
SELECT COUNT(employeeID) 
FROM employees;

-- Write an SQL query to calculate the total quantity of products ordered in the OrderDetails table.
SELECT SUM(Quantity) 
FROM Order_Details;

-- Write an SQL query to calculate the total price of all products in the Products table.
select sum(price) 
from products;

-- Like operator
SELECT * FROM Customers
WHERE CustomerName LIKE 'a%';

SELECT * FROM Customers
WHERE CustomerName LIKE '%a';

SELECT * FROM Customers
WHERE CustomerID LIKE "%2";

SELECT * FROM Customers
WHERE CustomerName LIKE '%or%';

SELECT * FROM Customers
WHERE CustomerName LIKE '_r%';

SELECT * FROM Customers
WHERE CustomerName LIKE '__r%';

-- customer food
SELECT * FROM Customers
WHERE ContactName LIKE '%Ana%';

-- choc
SELECT * FROM products
WHERE productname LIKE '%choc%';

SELECT * FROM Customers
WHERE CustomerName LIKE 'a__%';



-- Write an SQL query to find customers whose CustomerName does not start with 'a'.
SELECT * FROM Customers 
WHERE CustomerName  not like 'a%';


-- Write an SQL query to find all suppliers from countries that contain the substring 'land' (e.g., 'Finland', 'Poland') in the Country field.
SELECT * FROM Suppliers 
 WHERE Country LIKE '%land%';

-- Write an SQL query to find all employees whose FirstName contains the letter 'n ' as the second character.
select * from employees
where firstname like '_n%';

-- Write an SQL query to find all shippers whose ShipperName contains the word 'Express'.
Select * FROM Shippers WHERE 
ShipperName LIKE '%express%';

Select *
from northwind.customers
where NOT CustomerName like "a%";

-- In operator
SELECT * FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');

SELECT * FROM Customers
WHERE Country NOT IN ('Germany', 'France', 'UK');


-- London, Paris, Madrid
SELECT * FROM Customers
WHERE City IN ('Paris', 'London', 'Madrid');

-- The following SQL statement selects all customers that are from the same countries as the suppliers:
SELECT * FROM Customers
WHERE Country IN (SELECT Country FROM Suppliers);

-- Write an SQL query to find all customers from either Berlin, 'Paris', or 'Madrid' in the Customers table
Select * 
from customers where city IN('Berlin', 'Paris', 'Madrid');

-- Write an SQL query to find all orders that were shipped by ShipperID 1 or 3 from the Orders table.
SELECT OrderID, ShipperID 
FROM Orders WHERE ShipperID IN (1, 3);

-- Write an SQL query to find all products that have UnitPrice is 10, 20, or 30.
SELECT * FROM Products 
WHERE Price IN ('10','20', '30')
order by price;

-- Write an SQL query to find all customers who have placed an order. Use a subquery on the Orders table to match the customers. (Use subquery)
SELECT * FROM CUSTOMERS 
WHERE CUSTOMERID IN (SELECT CUSTOMERID FROM ORDERS);

-- between operator
SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20
order by price;

SELECT * FROM Products
WHERE Price NOT BETWEEN 10 AND 20
order by price;

SELECT * FROM Products
WHERE Productname BETWEEN "Geitost" AND "Konbu"
order by productname;


SELECT * FROM Orders
WHERE Orderdate BETWEEN "1996-07-04" AND "1996-12-31"
order by orderdate;

SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20
AND CategoryID NOT IN (1,2,3);

-- Write a query to select all products with a unit price between 50 and 100.
select * from northwind.products 
where price between 50 and 100;

-- Write a query to retrieve all orders placed between January 1, 1996, and December 31, 1996.
SELECT * FROM Orders 
WHERE Orderdate BETWEEN "1996-01-01" AND "1996-12-31" 
Order by orderdate; 

-- Write a query to retrieve order details where the quantity is between 5 and 15.
Select * From order_details 
Where Quantity Between 5 AND 15 
order by quantity;

SELECT CustomerID AS ID, CustomerName AS Customer
FROM Customers;


-- Retrieve all columns from the "Customers" table.
select 
from 
